package local.voicebridge;

/** Conservative observation ownership. Home events do not prove who launched Home,
 * so they may retain a result briefly, but must NEVER launch or focus the store. */
public final class VoiceSessionPolicy {
    private VoiceSessionPolicy() {}

    public static boolean canObserve(boolean active, boolean present, String foreground,
                                     long assistantEvent, long finished) {
        // TTL can extend a live session, never create one from a cached event.
        return active || (present && "com.android.vending".equals(foreground)
                && assistantEvent > finished);
    }

    public static boolean holdResult(String origin, boolean assistantSeen, String result,
                                     String foreground, long elapsed) {
        return "com.android.vending".equals(origin) && assistantSeen
                && result != null && !result.trim().isEmpty()
                && elapsed >= 0 && elapsed <= 18000
                && ("com.google.android.apps.tv.launcherx".equals(foreground)
                    || "com.overdevs.at4k".equals(foreground));
    }

    public static boolean canInsert(String foreground) {
        return "com.android.vending".equals(foreground);
    }
}
