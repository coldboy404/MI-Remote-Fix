package local.voicebridge;

import android.accessibilityservice.AccessibilityService;
import android.view.InputDevice;
import android.view.KeyEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityWindowInfo;
import java.util.List;
import android.util.Log;
import java.util.HashMap;

/** Routes each complete vertical key press consistently; no injection or text reads. */
public final class InputPassthrough {
    private static final HashMap<Long, Press> presses = new HashMap<Long, Press>();
    private static final class Press {
        final long downTime;
        int route;
        Press(long downTime, int route) { this.downTime = downTime; this.route = route; }
    }
    private InputPassthrough() {}
    public static void clear() { presses.clear(); }
    public static void removeDevice(int device) {
        java.util.Iterator<Long> it = presses.keySet().iterator();
        while (it.hasNext()) if ((int)(it.next().longValue() >> 32) == device) it.remove();
    }
    // 0: native, 1: consume; -1: existing helper behavior.
    public static int route(AccessibilityService service, KeyEvent event) {
        InputDevice device = event.getDevice();
        int key = event.getKeyCode();
        if (device == null || device.getVendorId() != 0x2717 || device.getProductId() != 0x32b8
                || (key != KeyEvent.KEYCODE_DPAD_UP && key != KeyEvent.KEYCODE_DPAD_DOWN)) return -1;
        long id = ((long)event.getDeviceId() << 32) | (key & 0xffffffffL);
        Press press = presses.get(id);
        int action = event.getAction();
        if (action == KeyEvent.ACTION_DOWN) {
            if (press == null || press.downTime != event.getDownTime()) {
                int route = event.getRepeatCount() == 0 && focusedInput(service) ? 2 : -1;
                if (inputMethodVisible(service)) route = 0;
                press = new Press(event.getDownTime(), route);
                if (presses.size() >= 32) presses.clear();
                presses.put(id, press);
                if (route == 2) Log.i("RemoteInput", "focused input vertical press device=" + event.getDeviceId() + " key=" + key);
            }
            if (press.route == 2 && event.getRepeatCount() == 0) {
                press.route = moveFocus(service, key == KeyEvent.KEYCODE_DPAD_UP ? 33 : 130) ? 1 : 0;
            }
            return press.route;
        }
        if (action == KeyEvent.ACTION_UP) {
            if (press != null && press.downTime == event.getDownTime()) {
                presses.remove(id);
                if (press.route == 1 || press.route == 0) {
                    Log.i("RemoteInput", "focused input release device=" + event.getDeviceId() + " key=" + key + " route=" + press.route);
                    return press.route;
                }
            }
            // Do not let a stale UP cancel a newer press in the old handler.
            if (press != null && (press.route == 1 || press.route == 0)) return press.route;
        }
        return -1;
    }
    private static boolean inputMethodVisible(AccessibilityService service) {
        List<AccessibilityWindowInfo> windows = null;
        try {
            windows = service.getWindows();
            if (windows == null) return true;
            for (AccessibilityWindowInfo window : windows) {
                if (window == null || window.getType() != AccessibilityWindowInfo.TYPE_INPUT_METHOD) continue;
                android.graphics.Rect bounds = new android.graphics.Rect();
                window.getBoundsInScreen(bounds);
                if (!bounds.isEmpty()) {
                    Log.i("RemoteInput", "IME visible: native vertical navigation");
                    return true;
                }
            }
            return false;
        } catch (RuntimeException error) {
            Log.w("RemoteInput", "IME window state unavailable; native navigation");
            return true;
        } finally {
            if (windows != null) for (AccessibilityWindowInfo window : windows) {
                if (window != null) window.recycle();
            }
        }
    }
    private static boolean moveFocus(AccessibilityService service, int direction) {
        if (inputMethodVisible(service)) return false;
        AccessibilityNodeInfo root = null;
        AccessibilityNodeInfo node = null;
        AccessibilityNodeInfo target = null;
        try {
            root = service.getRootInActiveWindow();
            if (root == null) return false;
            node = root.findFocus(AccessibilityNodeInfo.FOCUS_INPUT);
            if (node == null) node = findFocused(root, 0, new int[]{128});
            if (node == null) return false;
            target = node.focusSearch(direction);
            if (target != null && !target.equals(node) && target.isVisibleToUser() && target.isEnabled()) {
                boolean moved = target.performAction(AccessibilityNodeInfo.ACTION_FOCUS);
                Log.i("RemoteInput", "focusSearch direction=" + direction + " moved=" + moved);
                if (moved) return true;
            }
            if (target != null && target != node) target.recycle();
            target = null;
            // Compose virtual nodes may expose no directional focusSearch result.
            if (node.getPackageName() == null || node.getWindowId() != root.getWindowId()) return false;
            android.graphics.Rect origin = new android.graphics.Rect();
            node.getBoundsInScreen(origin);
            Candidate best = new Candidate();
            try {
                findVertical(root, node, origin, direction, 0, new int[]{128}, best);
                if (best.node == null) {
                    Log.i("RemoteInput", "vertical fallback no target direction=" + direction);
                    return false;
                }
                boolean moved = best.node.performAction(AccessibilityNodeInfo.ACTION_FOCUS);
                Log.i("RemoteInput", "vertical fallback direction=" + direction + " moved=" + moved + " target=" + best.node.getClassName());
                return moved;
            } finally {
                if (best.node != null) best.node.recycle();
            }
        } catch (RuntimeException error) {
            Log.w("RemoteInput", "focusSearch failed " + error.getClass().getSimpleName());
            return false;
        } finally {
            if (target != null && target != node) target.recycle();
            if (node != null) node.recycle();
            if (root != null) root.recycle();
        }
    }
    private static final class Candidate {
        AccessibilityNodeInfo node;
        long score = Long.MAX_VALUE;
    }
    private static void findVertical(AccessibilityNodeInfo node, AccessibilityNodeInfo source,
            android.graphics.Rect origin, int direction, int depth, int[] budget, Candidate best) {
        if (node == null || depth > 20 || --budget[0] < 0 || origin.isEmpty()) return;
        if (!node.equals(source) && !node.isFocused() && node.isFocusable()
                && node.isVisibleToUser() && node.isEnabled()
                && node.getWindowId() == source.getWindowId()
                && source.getPackageName() != null && node.getPackageName() != null
                && source.getPackageName().toString().contentEquals(node.getPackageName())) {
            android.graphics.Rect bounds = new android.graphics.Rect();
            node.getBoundsInScreen(bounds);
            boolean vertical = direction == 130 ? bounds.top >= origin.bottom : bounds.bottom <= origin.top;
            boolean overlap = bounds.right > origin.left && bounds.left < origin.right;
            if (!bounds.isEmpty() && vertical && overlap) {
                long gap = direction == 130 ? (long)bounds.top - origin.bottom : (long)origin.top - bounds.bottom;
                long score = gap * 100000L + Math.abs((long)bounds.centerX() - origin.centerX());
                if (score < best.score) {
                    if (best.node != null) best.node.recycle();
                    best.node = AccessibilityNodeInfo.obtain(node);
                    best.score = score;
                }
            }
        }
        for (int i = 0; i < node.getChildCount() && budget[0] > 0; i++) {
            AccessibilityNodeInfo child = node.getChild(i);
            if (child == null) continue;
            try { findVertical(child, source, origin, direction, depth + 1, budget, best); }
            finally { child.recycle(); }
        }
    }
    private static boolean focusedInput(AccessibilityService service) {
        AccessibilityNodeInfo root = null;
        AccessibilityNodeInfo node = null;
        try {
            root = service.getRootInActiveWindow();
            if (root == null) return false;
            node = root.findFocus(AccessibilityNodeInfo.FOCUS_INPUT);
            if (node == null) node = findFocused(root, 0, new int[]{128});
            for (int depth = 0; node != null && depth < 5; depth++) {
                CharSequence cls = node.getClassName();
                String name = cls == null ? "" : cls.toString();
                if (node.isVisibleToUser() && node.isEnabled() && (node.isEditable()
                        || name.contains("EditText") || name.contains("TextInput")
                        || (node.getActions() & AccessibilityNodeInfo.ACTION_SET_TEXT) != 0)) return true;
                AccessibilityNodeInfo parent = node.getParent();
                node.recycle(); node = parent;
            }
        } catch (RuntimeException ignored) {
            // Unavailable trees must not disrupt existing navigation.
        } finally {
            if (node != null) node.recycle();
            if (root != null) root.recycle();
        }
        return false;
    }
    private static AccessibilityNodeInfo findFocused(AccessibilityNodeInfo node, int depth, int[] budget) {
        if (node == null || depth > 20 || --budget[0] < 0) return null;
        if (node.isFocused()) return AccessibilityNodeInfo.obtain(node);
        for (int i = 0; i < node.getChildCount() && budget[0] > 0; i++) {
            AccessibilityNodeInfo child = node.getChild(i);
            if (child == null) continue;
            try {
                AccessibilityNodeInfo found = findFocused(child, depth + 1, budget);
                if (found != null) return found;
            } finally { child.recycle(); }
        }
        return null;
    }
}
