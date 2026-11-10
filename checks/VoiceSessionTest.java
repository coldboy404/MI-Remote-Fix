import local.voicebridge.VoiceSessionPolicy;

public final class VoiceSessionTest {
    static int checks;
    static void check(boolean ok) { checks++; if (!ok) throw new AssertionError(checks); }
    public static void main(String[] args) {
        String store = "com.android.vending", home = "com.overdevs.at4k";
        check(VoiceSessionPolicy.holdResult(store, true, "你好Friday", home, 2000));
        check(VoiceSessionPolicy.holdResult(store, true, "query", "com.google.android.apps.tv.launcherx", 18000));
        check(!VoiceSessionPolicy.holdResult(store, true, "query", home, 18001));
        check(!VoiceSessionPolicy.holdResult(store, true, "query", home, -1));
        for (String text : new String[]{null, "", "  "})
            check(!VoiceSessionPolicy.holdResult(store, true, text, home, 10));
        check(!VoiceSessionPolicy.holdResult(store, false, "query", home, 10));
        check(!VoiceSessionPolicy.holdResult("other", true, "query", home, 10));
        check(!VoiceSessionPolicy.holdResult(store, true, "query", "org.netflix", 10));
        for (String pkg : new String[]{home, "com.google.android.apps.tv.launcherx", "org.netflix", null}) {
            check(!VoiceSessionPolicy.canInsert(pkg));
            check(!VoiceSessionPolicy.canObserve(false, true, pkg, 100, 0));
        }
        check(VoiceSessionPolicy.canInsert(store));
        check(VoiceSessionPolicy.canObserve(false, true, store, 100, 99));
        // Consumed/cancelled evidence cannot resurrect after the old cooldown.
        check(!VoiceSessionPolicy.canObserve(false, true, store, 100, 100));
        check(!VoiceSessionPolicy.canObserve(false, true, store, 100, 200));
        check(!VoiceSessionPolicy.canObserve(false, true, store, 0, 200));
        check(!VoiceSessionPolicy.canObserve(false, false, store, 300, 200));
        check(VoiceSessionPolicy.canObserve(true, false, store, 0, 200));
        System.out.println("VoiceSessionPolicy: " + checks + " checks passed");
    }
}
