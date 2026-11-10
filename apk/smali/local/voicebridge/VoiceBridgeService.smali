.class public Llocal/voicebridge/VoiceBridgeService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "VoiceBridgeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llocal/voicebridge/VoiceBridgeService$Listener;
    }
.end annotation


# static fields
.field public static final ACTION_CONFIG:Ljava/lang/String; = "local.voicebridge.CONFIG"

.field public static final ACTION_SET_TEXT:Ljava/lang/String; = "local.voicebridge.SET_TEXT"

.field public static final ACTION_TEST:Ljava/lang/String; = "local.voicebridge.TEST"

.field public static final ACTION_TEST_QUERY:Ljava/lang/String; = "local.voicebridge.TEST_QUERY"

.field public static final EXTRA_CONFIG_ONLY:Ljava/lang/String; = "configOnly"

.field public static final EXTRA_DEBUG_TREE:Ljava/lang/String; = "debugTree"

.field public static final EXTRA_DEVICE_FILTER:Ljava/lang/String; = "deviceFilter"

.field public static final EXTRA_FD:Ljava/lang/String; = "fd"

.field public static final EXTRA_INITIAL_DELAY:Ljava/lang/String; = "initialDelay"

.field public static final EXTRA_KEYS_ENABLED:Ljava/lang/String; = "keysEnabled"

.field public static final EXTRA_KEY_MODE:Ljava/lang/String; = "keyMode"

.field public static final EXTRA_MODE:Ljava/lang/String; = "mode"

.field public static final EXTRA_NON_MIC:Ljava/lang/String; = "nonMic"

.field public static final EXTRA_PATH:Ljava/lang/String; = "path"

.field public static final EXTRA_PUBLIC_EXTRA:Ljava/lang/String; = "publicExtra"

.field public static final EXTRA_REPEAT_DELAY:Ljava/lang/String; = "repeatDelay"

.field public static final EXTRA_SERVICE:Ljava/lang/String; = "service"

.field public static final EXTRA_TEXT:Ljava/lang/String; = "text"

.field public static final EXTRA_VOICE_ENABLED:Ljava/lang/String; = "voiceEnabled"

.field public static final EXTRA_VOICE_WAIT:Ljava/lang/String; = "voiceWait"

.field private static final GOOGLE_TTS:Ljava/lang/String; = "com.google.android.tts/com.google.android.apps.speech.tts.googletts.service.GoogleTTSRecognitionService"

.field private static final G_AUDIO_SOURCE:Ljava/lang/String; = "com.google.recognition.extra.AUDIO_SOURCE"

.field private static final KATNISS:Ljava/lang/String; = "com.google.android.katniss"

.field private static final KATNISS_RS:Ljava/lang/String; = "com.google.android.katniss/com.google.android.apps.tvsearch.voice.recognition.KatnissRecognitionService"

.field private static final KATNISS_TTL_MS:J = 0x2ee0L

.field private static final LEGACY_REMOTE_PRODUCT:I = 0x32b8

.field private static final OBSERVATION_TIMEOUT_MS:J = 0x3a98L

.field private static final ORIGIN_TTL_MS:J = 0xea60L

.field private static final PLAY_STORE:Ljava/lang/String; = "com.android.vending"

.field private static final PREF:Ljava/lang/String; = "voicebridge"

.field private static final PREF_DEBUG_TREE:Ljava/lang/String; = "debugTree"

.field private static final PREF_DEVICE_FILTER:Ljava/lang/String; = "deviceFilter"

.field private static final PREF_INITIAL_DELAY:Ljava/lang/String; = "initialDelay"

.field private static final PREF_KEYS_ENABLED:Ljava/lang/String; = "keysEnabled"

.field private static final PREF_KEY_MODE:Ljava/lang/String; = "keyMode"

.field private static final PREF_REPEAT_DELAY:Ljava/lang/String; = "repeatDelay"

.field private static final PREF_VOICE_ENABLED:Ljava/lang/String; = "voiceEnabled"

.field private static final PREF_VOICE_WAIT:Ljava/lang/String; = "voiceWait"

.field private static final PROVIDER_AUTHORITY:Ljava/lang/String; = "com.google.android.apps.tvsearch.voice.controller.AudioFileDescriptorProvider"

.field private static final P_AUDIO_SOURCE:Ljava/lang/String; = "android.speech.extra.AUDIO_SOURCE"

.field private static final REMOTE_PRODUCT:I = 0x32b9

.field private static final REMOTE_VENDOR:I = 0x2717

.field public static final TAG:Ljava/lang/String; = "VoiceBridge"

.field private static final VOICE_QUERY_STABLE_MS:J = 0x1f4L

.field private static volatile instance:Llocal/voicebridge/VoiceBridgeService;


# instance fields
.field private volatile assistDownMs:J

.field private volatile assistantSeen:Z

.field private volatile autoObservationStarted:Z

.field private volatile bestCandidate:Ljava/lang/String;

.field private volatile bestScore:F

.field private final captureAssistant:Ljava/lang/Runnable;

.field private volatile configLoaded:Z

.field private final consumedKeys:Landroid/util/SparseBooleanArray;

.field private volatile debugTree:Z

.field private volatile deviceFilter:Ljava/lang/String;

.field private volatile eventSeq:J

.field private final finishObservation:Ljava/lang/Runnable;

.field private volatile initialDelayMs:J

.field private final inputDevices:Landroid/hardware/input/InputManager$InputDeviceListener;

.field private inputManager:Landroid/hardware/input/InputManager;

.field private volatile insertAttempts:I

.field private final insertPending:Ljava/lang/Runnable;

.field private volatile keyMode:Ljava/lang/String;

.field private volatile keysEnabled:Z

.field private volatile lastAssistantEventMs:J

.field private volatile lastAssistantTriggerLogMs:J

.field private volatile lastCaptureMs:J

.field private volatile lastDumpMs:J

.field private volatile lastEventLogMs:J

.field private volatile lastEventSignature:Ljava/lang/String;

.field private volatile lastForegroundPackage:Ljava/lang/String;

.field private volatile lastKatnissEventMs:J

.field private volatile lastMode:Ljava/lang/String;

.field private volatile lastPlateDetectionLogMs:J

.field private volatile lastPlayStoreEditable:Z

.field private volatile lastPlayStoreSeenMs:J

.field private volatile lastPlayStoreText:Ljava/lang/String;

.field private volatile lastVoicePlateWindowLogMs:J

.field private volatile lastVoiceQuery:Ljava/lang/String;

.field private volatile lastVoiceQueryChangeMs:J

.field private volatile lastWindowCaptureMs:J

.field private final legacyConsumedKeys:Landroid/util/SparseBooleanArray;

.field private final legacyNavigationRepeater:Llocal/voicebridge/LegacyNavigationRepeater;

.field private final main:Landroid/os/Handler;

.field private final navigationRepeater:Llocal/voicebridge/NavigationRepeater;

.field private volatile observationActive:Z

.field private volatile observationBaselineText:Ljava/lang/String;

.field private volatile observationFinishedMs:J

.field private volatile observedForegroundMs:J

.field private volatile originEditable:Z

.field private volatile originPackage:Ljava/lang/String;

.field private volatile originText:Ljava/lang/String;

.field private final passThroughKeys:Landroid/util/SparseBooleanArray;

.field private volatile pendingText:Ljava/lang/String;

.field private readPfd:Landroid/os/ParcelFileDescriptor;

.field private recognizer:Landroid/speech/SpeechRecognizer;

.field private final releasedDpadAt:[J

.field private final releasedDpadDevices:[I

.field private final releasedDpadDownTimes:[J

.field private final releasedDpadPairedDevices:[I

.field private final releasedDpadPairedDownTimes:[J

.field private volatile repeatDelayMs:J

.field private volatile rmsCount:J

.field private volatile rmsMax:F

.field private screenOffReceiver:Landroid/content/BroadcastReceiver;

.field private screenOffRegistered:Z

.field private final seenText:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile setTextDone:Z

.field private volatile setTextInProgress:Z

.field private volatile stableVoiceQuery:Ljava/lang/String;

.field private final trackedDpadDevices:[I

.field private final trackedDpadDownAt:[J

.field private final trackedDpadDownTimes:[J

.field private final trackedDpadPairedDevices:[I

.field private final trackedDpadPairedDownTimes:[J

.field private final trackedDpadPresses:[Z

.field private volatile voiceEnabled:Z

.field private volatile voicePlateDetectionLogged:Z

.field private volatile voicePlateFinishAtMs:J

.field private volatile voicePlateGoneMs:J

.field private volatile voicePlateSeen:Z

.field private volatile voiceWaitMs:J

.field private final windowWatch:Ljava/lang/Runnable;

.field private writePfd:Landroid/os/ParcelFileDescriptor;

.field private writer:Ljava/lang/Thread;

.field private volatile writing:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetassistantSeen(Llocal/voicebridge/VoiceBridgeService;)Z
    .locals 0

    iget-boolean p0, p0, Llocal/voicebridge/VoiceBridgeService;->assistantSeen:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetautoObservationStarted(Llocal/voicebridge/VoiceBridgeService;)Z
    .locals 0

    iget-boolean p0, p0, Llocal/voicebridge/VoiceBridgeService;->autoObservationStarted:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbestCandidate(Llocal/voicebridge/VoiceBridgeService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Llocal/voicebridge/VoiceBridgeService;->bestCandidate:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbestScore(Llocal/voicebridge/VoiceBridgeService;)F
    .locals 0

    iget p0, p0, Llocal/voicebridge/VoiceBridgeService;->bestScore:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdebugTree(Llocal/voicebridge/VoiceBridgeService;)Z
    .locals 0

    iget-boolean p0, p0, Llocal/voicebridge/VoiceBridgeService;->debugTree:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfinishObservation(Llocal/voicebridge/VoiceBridgeService;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Llocal/voicebridge/VoiceBridgeService;->finishObservation:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinsertAttempts(Llocal/voicebridge/VoiceBridgeService;)I
    .locals 0

    iget p0, p0, Llocal/voicebridge/VoiceBridgeService;->insertAttempts:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetinsertPending(Llocal/voicebridge/VoiceBridgeService;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Llocal/voicebridge/VoiceBridgeService;->insertPending:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastAssistantEventMs(Llocal/voicebridge/VoiceBridgeService;)J
    .locals 2

    iget-wide v0, p0, Llocal/voicebridge/VoiceBridgeService;->lastAssistantEventMs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetlastForegroundPackage(Llocal/voicebridge/VoiceBridgeService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Llocal/voicebridge/VoiceBridgeService;->lastForegroundPackage:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastKatnissEventMs(Llocal/voicebridge/VoiceBridgeService;)J
    .locals 2

    iget-wide v0, p0, Llocal/voicebridge/VoiceBridgeService;->lastKatnissEventMs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetlastVoiceQuery(Llocal/voicebridge/VoiceBridgeService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Llocal/voicebridge/VoiceBridgeService;->lastVoiceQuery:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastWindowCaptureMs(Llocal/voicebridge/VoiceBridgeService;)J
    .locals 2

    iget-wide v0, p0, Llocal/voicebridge/VoiceBridgeService;->lastWindowCaptureMs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetlegacyNavigationRepeater(Llocal/voicebridge/VoiceBridgeService;)Llocal/voicebridge/LegacyNavigationRepeater;
    .locals 0

    iget-object p0, p0, Llocal/voicebridge/VoiceBridgeService;->legacyNavigationRepeater:Llocal/voicebridge/LegacyNavigationRepeater;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmain(Llocal/voicebridge/VoiceBridgeService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Llocal/voicebridge/VoiceBridgeService;->main:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnavigationRepeater(Llocal/voicebridge/VoiceBridgeService;)Llocal/voicebridge/NavigationRepeater;
    .locals 0

    iget-object p0, p0, Llocal/voicebridge/VoiceBridgeService;->navigationRepeater:Llocal/voicebridge/NavigationRepeater;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetobservationActive(Llocal/voicebridge/VoiceBridgeService;)Z
    .locals 0

    iget-boolean p0, p0, Llocal/voicebridge/VoiceBridgeService;->observationActive:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetoriginPackage(Llocal/voicebridge/VoiceBridgeService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Llocal/voicebridge/VoiceBridgeService;->originPackage:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpendingText(Llocal/voicebridge/VoiceBridgeService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Llocal/voicebridge/VoiceBridgeService;->pendingText:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrmsCount(Llocal/voicebridge/VoiceBridgeService;)J
    .locals 2

    iget-wide v0, p0, Llocal/voicebridge/VoiceBridgeService;->rmsCount:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetrmsMax(Llocal/voicebridge/VoiceBridgeService;)F
    .locals 0

    iget p0, p0, Llocal/voicebridge/VoiceBridgeService;->rmsMax:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsetTextDone(Llocal/voicebridge/VoiceBridgeService;)Z
    .locals 0

    iget-boolean p0, p0, Llocal/voicebridge/VoiceBridgeService;->setTextDone:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsetTextInProgress(Llocal/voicebridge/VoiceBridgeService;)Z
    .locals 0

    iget-boolean p0, p0, Llocal/voicebridge/VoiceBridgeService;->setTextInProgress:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstableVoiceQuery(Llocal/voicebridge/VoiceBridgeService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Llocal/voicebridge/VoiceBridgeService;->stableVoiceQuery:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvoicePlateDetectionLogged(Llocal/voicebridge/VoiceBridgeService;)Z
    .locals 0

    iget-boolean p0, p0, Llocal/voicebridge/VoiceBridgeService;->voicePlateDetectionLogged:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetvoicePlateFinishAtMs(Llocal/voicebridge/VoiceBridgeService;)J
    .locals 2

    iget-wide v0, p0, Llocal/voicebridge/VoiceBridgeService;->voicePlateFinishAtMs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetvoicePlateSeen(Llocal/voicebridge/VoiceBridgeService;)Z
    .locals 0

    iget-boolean p0, p0, Llocal/voicebridge/VoiceBridgeService;->voicePlateSeen:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetwritePfd(Llocal/voicebridge/VoiceBridgeService;)Landroid/os/ParcelFileDescriptor;
    .locals 0

    iget-object p0, p0, Llocal/voicebridge/VoiceBridgeService;->writePfd:Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwriting(Llocal/voicebridge/VoiceBridgeService;)Z
    .locals 0

    iget-boolean p0, p0, Llocal/voicebridge/VoiceBridgeService;->writing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputinsertAttempts(Llocal/voicebridge/VoiceBridgeService;I)V
    .locals 0

    iput p1, p0, Llocal/voicebridge/VoiceBridgeService;->insertAttempts:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastKatnissEventMs(Llocal/voicebridge/VoiceBridgeService;J)V
    .locals 0

    iput-wide p1, p0, Llocal/voicebridge/VoiceBridgeService;->lastKatnissEventMs:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastWindowCaptureMs(Llocal/voicebridge/VoiceBridgeService;J)V
    .locals 0

    iput-wide p1, p0, Llocal/voicebridge/VoiceBridgeService;->lastWindowCaptureMs:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputobservationActive(Llocal/voicebridge/VoiceBridgeService;Z)V
    .locals 0

    iput-boolean p1, p0, Llocal/voicebridge/VoiceBridgeService;->observationActive:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputobservationFinishedMs(Llocal/voicebridge/VoiceBridgeService;J)V
    .locals 0

    iput-wide p1, p0, Llocal/voicebridge/VoiceBridgeService;->observationFinishedMs:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpendingText(Llocal/voicebridge/VoiceBridgeService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Llocal/voicebridge/VoiceBridgeService;->pendingText:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputrmsCount(Llocal/voicebridge/VoiceBridgeService;J)V
    .locals 0

    iput-wide p1, p0, Llocal/voicebridge/VoiceBridgeService;->rmsCount:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputrmsMax(Llocal/voicebridge/VoiceBridgeService;F)V
    .locals 0

    iput p1, p0, Llocal/voicebridge/VoiceBridgeService;->rmsMax:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsetTextDone(Llocal/voicebridge/VoiceBridgeService;Z)V
    .locals 0

    iput-boolean p1, p0, Llocal/voicebridge/VoiceBridgeService;->setTextDone:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsetTextInProgress(Llocal/voicebridge/VoiceBridgeService;Z)V
    .locals 0

    iput-boolean p1, p0, Llocal/voicebridge/VoiceBridgeService;->setTextInProgress:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputvoicePlateDetectionLogged(Llocal/voicebridge/VoiceBridgeService;Z)V
    .locals 0

    iput-boolean p1, p0, Llocal/voicebridge/VoiceBridgeService;->voicePlateDetectionLogged:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputwritePfd(Llocal/voicebridge/VoiceBridgeService;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    iput-object p1, p0, Llocal/voicebridge/VoiceBridgeService;->writePfd:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputwriting(Llocal/voicebridge/VoiceBridgeService;Z)V
    .locals 0

    iput-boolean p1, p0, Llocal/voicebridge/VoiceBridgeService;->writing:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancel(Llocal/voicebridge/VoiceBridgeService;)V
    .locals 0

    invoke-direct {p0}, Llocal/voicebridge/VoiceBridgeService;->cancel()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcaptureAssistantWindows(Llocal/voicebridge/VoiceBridgeService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->captureAssistantWindows(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mchooseFinalText(Llocal/voicebridge/VoiceBridgeService;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Llocal/voicebridge/VoiceBridgeService;->chooseFinalText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mclearNavigation(Llocal/voicebridge/VoiceBridgeService;)V
    .locals 0

    invoke-direct {p0}, Llocal/voicebridge/VoiceBridgeService;->clearNavigation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcollectNodeTexts(Llocal/voicebridge/VoiceBridgeService;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Llocal/voicebridge/VoiceBridgeService;->collectNodeTexts(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdescribeTree(Llocal/voicebridge/VoiceBridgeService;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Llocal/voicebridge/VoiceBridgeService;->describeTree(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mensureVoicePlateObservation(Llocal/voicebridge/VoiceBridgeService;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Llocal/voicebridge/VoiceBridgeService;->ensureVoicePlateObservation(ZLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfindVoicePlateInWindows(Llocal/voicebridge/VoiceBridgeService;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 0

    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->findVoicePlateInWindows(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minsertTextIntoPlaySearch(Llocal/voicebridge/VoiceBridgeService;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->insertTextIntoPlaySearch(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mrecordVoiceQuery(Llocal/voicebridge/VoiceBridgeService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Llocal/voicebridge/VoiceBridgeService;->recordVoiceQuery(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msafe(Llocal/voicebridge/VoiceBridgeService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mscanForegroundWindow(Llocal/voicebridge/VoiceBridgeService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->scanForegroundWindow(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendNavigationAction(Llocal/voicebridge/VoiceBridgeService;I)Z
    .locals 0

    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->sendNavigationAction(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstopWriter(Llocal/voicebridge/VoiceBridgeService;)V
    .locals 0

    invoke-direct {p0}, Llocal/voicebridge/VoiceBridgeService;->stopWriter()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtoast(Llocal/voicebridge/VoiceBridgeService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->toast(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mvoicePlatePresent(Llocal/voicebridge/VoiceBridgeService;)Z
    .locals 0

    invoke-direct {p0}, Llocal/voicebridge/VoiceBridgeService;->voicePlatePresent()Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 7

    .line 39
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    .line 85
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Llocal/voicebridge/VoiceBridgeService;->main:Landroid/os/Handler;

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->seenText:Ljava/util/Set;

    const/high16 v0, -0x3d100000    # -120.0f

    .line 93
    iput v0, p0, Llocal/voicebridge/VoiceBridgeService;->rmsMax:F

    .line 94
    const-string v0, "none"

    iput-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->lastMode:Ljava/lang/String;

    .line 95
    const-string v0, "observe"

    iput-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->keyMode:Ljava/lang/String;

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Llocal/voicebridge/VoiceBridgeService;->debugTree:Z

    .line 97
    iput-boolean v0, p0, Llocal/voicebridge/VoiceBridgeService;->keysEnabled:Z

    .line 98
    iput-boolean v0, p0, Llocal/voicebridge/VoiceBridgeService;->voiceEnabled:Z

    const-wide/16 v2, 0x1f4

    .line 99
    iput-wide v2, p0, Llocal/voicebridge/VoiceBridgeService;->initialDelayMs:J

    const-wide/16 v2, 0xa0

    .line 100
    iput-wide v2, p0, Llocal/voicebridge/VoiceBridgeService;->repeatDelayMs:J

    .line 101
    const-string v0, "xiaomi"

    iput-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->deviceFilter:Ljava/lang/String;

    const-wide/16 v2, 0xbb8

    .line 102
    iput-wide v2, p0, Llocal/voicebridge/VoiceBridgeService;->voiceWaitMs:J

    .line 106
    const-string v0, ""

    iput-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->originPackage:Ljava/lang/String;

    .line 108
    iput-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->originText:Ljava/lang/String;

    .line 110
    iput-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->bestCandidate:Ljava/lang/String;

    .line 111
    iput-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->observationBaselineText:Ljava/lang/String;

    .line 114
    iput-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->pendingText:Ljava/lang/String;

    .line 118
    iput-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->lastEventSignature:Ljava/lang/String;

    .line 127
    iput-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->lastForegroundPackage:Ljava/lang/String;

    .line 129
    iput-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->lastPlayStoreText:Ljava/lang/String;

    .line 135
    iput-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->lastVoiceQuery:Ljava/lang/String;

    .line 136
    iput-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->stableVoiceQuery:Ljava/lang/String;

    .line 149
    new-instance v0, Llocal/voicebridge/NavigationRepeater;

    new-instance v2, Llocal/voicebridge/VoiceBridgeService$1;

    invoke-direct {v2, p0}, Llocal/voicebridge/VoiceBridgeService$1;-><init>(Llocal/voicebridge/VoiceBridgeService;)V

    const-wide/16 v3, 0x1f4

    const-wide/16 v5, 0x6e

    invoke-direct/range {v0 .. v6}, Llocal/voicebridge/NavigationRepeater;-><init>(Landroid/os/Handler;Llocal/voicebridge/NavigationRepeater$Sink;JJ)V

    iput-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->navigationRepeater:Llocal/voicebridge/NavigationRepeater;

    .line 153
    new-instance v0, Llocal/voicebridge/LegacyNavigationRepeater;

    new-instance v2, Llocal/voicebridge/VoiceBridgeService$2;

    invoke-direct {v2, p0}, Llocal/voicebridge/VoiceBridgeService$2;-><init>(Llocal/voicebridge/VoiceBridgeService;)V

    invoke-direct {v0, v1, v2}, Llocal/voicebridge/LegacyNavigationRepeater;-><init>(Landroid/os/Handler;Llocal/voicebridge/LegacyNavigationRepeater$Sink;)V

    iput-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->legacyNavigationRepeater:Llocal/voicebridge/LegacyNavigationRepeater;

    .line 157
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->consumedKeys:Landroid/util/SparseBooleanArray;

    .line 158
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->passThroughKeys:Landroid/util/SparseBooleanArray;

    .line 159
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->legacyConsumedKeys:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x4

    .line 160
    new-array v1, v0, [Z

    iput-object v1, p0, Llocal/voicebridge/VoiceBridgeService;->trackedDpadPresses:[Z

    .line 161
    new-array v1, v0, [I

    iput-object v1, p0, Llocal/voicebridge/VoiceBridgeService;->trackedDpadDevices:[I

    .line 162
    new-array v1, v0, [J

    iput-object v1, p0, Llocal/voicebridge/VoiceBridgeService;->trackedDpadDownTimes:[J

    .line 163
    new-array v1, v0, [J

    iput-object v1, p0, Llocal/voicebridge/VoiceBridgeService;->trackedDpadDownAt:[J

    const/4 v1, -0x1

    .line 164
    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v2

    iput-object v2, p0, Llocal/voicebridge/VoiceBridgeService;->trackedDpadPairedDevices:[I

    .line 165
    new-array v2, v0, [J

    iput-object v2, p0, Llocal/voicebridge/VoiceBridgeService;->trackedDpadPairedDownTimes:[J

    .line 166
    new-array v2, v0, [I

    iput-object v2, p0, Llocal/voicebridge/VoiceBridgeService;->releasedDpadDevices:[I

    .line 167
    new-array v2, v0, [J

    iput-object v2, p0, Llocal/voicebridge/VoiceBridgeService;->releasedDpadDownTimes:[J

    .line 168
    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v1

    iput-object v1, p0, Llocal/voicebridge/VoiceBridgeService;->releasedDpadPairedDevices:[I

    .line 169
    new-array v1, v0, [J

    iput-object v1, p0, Llocal/voicebridge/VoiceBridgeService;->releasedDpadPairedDownTimes:[J

    .line 170
    new-array v0, v0, [J

    iput-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->releasedDpadAt:[J

    .line 172
    new-instance v0, Llocal/voicebridge/VoiceBridgeService$3;

    invoke-direct {v0, p0}, Llocal/voicebridge/VoiceBridgeService$3;-><init>(Llocal/voicebridge/VoiceBridgeService;)V

    iput-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->inputDevices:Landroid/hardware/input/InputManager$InputDeviceListener;

    .line 185
    new-instance v0, Llocal/voicebridge/VoiceBridgeService$4;

    invoke-direct {v0, p0}, Llocal/voicebridge/VoiceBridgeService$4;-><init>(Llocal/voicebridge/VoiceBridgeService;)V

    iput-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->captureAssistant:Ljava/lang/Runnable;

    .line 205
    new-instance v0, Llocal/voicebridge/VoiceBridgeService$5;

    invoke-direct {v0, p0}, Llocal/voicebridge/VoiceBridgeService$5;-><init>(Llocal/voicebridge/VoiceBridgeService;)V

    iput-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->finishObservation:Ljava/lang/Runnable;

    .line 243
    new-instance v0, Llocal/voicebridge/VoiceBridgeService$6;

    invoke-direct {v0, p0}, Llocal/voicebridge/VoiceBridgeService$6;-><init>(Llocal/voicebridge/VoiceBridgeService;)V

    iput-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->insertPending:Ljava/lang/Runnable;

    .line 274
    new-instance v0, Llocal/voicebridge/VoiceBridgeService$7;

    invoke-direct {v0, p0}, Llocal/voicebridge/VoiceBridgeService$7;-><init>(Llocal/voicebridge/VoiceBridgeService;)V

    iput-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->windowWatch:Ljava/lang/Runnable;

    return-void
.end method

.method private actionForDpad(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x13

    return p0

    :pswitch_1
    const/16 p0, 0x12

    return p0

    :pswitch_2
    const/16 p0, 0x11

    return p0

    :pswitch_3
    const/16 p0, 0x10

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private beginObservation()V
    .locals 5

    .line 1283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Llocal/voicebridge/VoiceBridgeService;->assistDownMs:J

    const-wide/16 v0, 0x0

    .line 1284
    iput-wide v0, p0, Llocal/voicebridge/VoiceBridgeService;->lastAssistantEventMs:J

    const/4 v2, 0x0

    .line 1285
    iput-boolean v2, p0, Llocal/voicebridge/VoiceBridgeService;->assistantSeen:Z

    const/4 v3, 0x1

    .line 1286
    iput-boolean v3, p0, Llocal/voicebridge/VoiceBridgeService;->observationActive:Z

    .line 1287
    iput-boolean v2, p0, Llocal/voicebridge/VoiceBridgeService;->setTextDone:Z

    .line 1288
    iput v2, p0, Llocal/voicebridge/VoiceBridgeService;->insertAttempts:I

    .line 1289
    const-string v3, ""

    iput-object v3, p0, Llocal/voicebridge/VoiceBridgeService;->pendingText:Ljava/lang/String;

    .line 1290
    iput-object v3, p0, Llocal/voicebridge/VoiceBridgeService;->bestCandidate:Ljava/lang/String;

    const/high16 v4, -0x40800000    # -1.0f

    .line 1291
    iput v4, p0, Llocal/voicebridge/VoiceBridgeService;->bestScore:F

    .line 1292
    iget-object v4, p0, Llocal/voicebridge/VoiceBridgeService;->seenText:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 1293
    iput-object v3, p0, Llocal/voicebridge/VoiceBridgeService;->originPackage:Ljava/lang/String;

    .line 1294
    iput-boolean v2, p0, Llocal/voicebridge/VoiceBridgeService;->originEditable:Z

    .line 1295
    iput-object v3, p0, Llocal/voicebridge/VoiceBridgeService;->originText:Ljava/lang/String;

    .line 1296
    iget-object v4, p0, Llocal/voicebridge/VoiceBridgeService;->lastPlayStoreText:Ljava/lang/String;

    iput-object v4, p0, Llocal/voicebridge/VoiceBridgeService;->observationBaselineText:Ljava/lang/String;

    .line 1297
    iput-boolean v2, p0, Llocal/voicebridge/VoiceBridgeService;->voicePlateSeen:Z

    .line 1298
    iput-boolean v2, p0, Llocal/voicebridge/VoiceBridgeService;->autoObservationStarted:Z

    .line 1299
    iput-boolean v2, p0, Llocal/voicebridge/VoiceBridgeService;->voicePlateDetectionLogged:Z

    .line 1300
    iput-boolean v2, p0, Llocal/voicebridge/VoiceBridgeService;->setTextInProgress:Z

    .line 1301
    iput-wide v0, p0, Llocal/voicebridge/VoiceBridgeService;->voicePlateGoneMs:J

    .line 1302
    iput-wide v0, p0, Llocal/voicebridge/VoiceBridgeService;->voicePlateFinishAtMs:J

    .line 1303
    iput-object v3, p0, Llocal/voicebridge/VoiceBridgeService;->lastVoiceQuery:Ljava/lang/String;

    .line 1304
    iput-object v3, p0, Llocal/voicebridge/VoiceBridgeService;->stableVoiceQuery:Ljava/lang/String;

    .line 1305
    iput-wide v0, p0, Llocal/voicebridge/VoiceBridgeService;->lastVoiceQueryChangeMs:J

    .line 1306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Llocal/voicebridge/VoiceBridgeService;->observedForegroundMs:J

    .line 1307
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->main:Landroid/os/Handler;

    iget-object v1, p0, Llocal/voicebridge/VoiceBridgeService;->captureAssistant:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1308
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->main:Landroid/os/Handler;

    iget-object v1, p0, Llocal/voicebridge/VoiceBridgeService;->finishObservation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1309
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->main:Landroid/os/Handler;

    iget-object v1, p0, Llocal/voicebridge/VoiceBridgeService;->insertPending:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1310
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->keyMode:Ljava/lang/String;

    iget-boolean p0, p0, Llocal/voicebridge/VoiceBridgeService;->debugTree:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "observationStart keyMode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " debugTree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VoiceBridge"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private buildRecognizerIntent(Ljava/lang/String;Ljava/lang/String;IZZ)Landroid/content/Intent;
    .locals 5

    .line 1744
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1745
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1746
    const-string v1, "android.speech.extra.LANGUAGE"

    const-string v2, "zh-CN"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1747
    const-string v1, "android.speech.extra.PARTIAL_RESULTS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1748
    const-string v1, "android.speech.extra.MAX_RESULTS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1749
    const-string v1, "calling_package"

    invoke-virtual {p0}, Llocal/voicebridge/VoiceBridgeService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1752
    const-string v1, "mic"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1754
    :cond_0
    const-string v1, "pfd"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    const-string v4, "asset"

    if-nez v1, :cond_6

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1757
    const-string v1, "uri"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "VoiceBridge"

    if-eqz v1, :cond_3

    if-nez p2, :cond_1

    move-object p1, v3

    goto :goto_0

    .line 1758
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 1759
    sget-object p2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 1760
    const-string p2, "com.google.recognition.extra.AUDIO_SOURCE"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1761
    invoke-direct {p0, v0, p4}, Llocal/voicebridge/VoiceBridgeService;->putCommon(Landroid/content/Intent;Z)V

    return-object v0

    .line 1763
    :cond_2
    const-string p0, "uri mode requires -e path content://..."

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1764
    :cond_3
    const-string p2, "provider"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1765
    invoke-direct {p0, p3, v2}, Llocal/voicebridge/VoiceBridgeService;->openProviderPfd(IZ)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1766
    invoke-direct {p0, v0, p1, p4, p5}, Llocal/voicebridge/VoiceBridgeService;->putAudioExtra(Landroid/content/Intent;Landroid/os/Parcelable;ZZ)V

    return-object v0

    .line 1767
    :cond_4
    const-string p2, "scan"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1768
    invoke-direct {p0, p3}, Llocal/voicebridge/VoiceBridgeService;->scanProvider(I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1769
    invoke-direct {p0, v0, p1, p4, p5}, Llocal/voicebridge/VoiceBridgeService;->putAudioExtra(Landroid/content/Intent;Landroid/os/Parcelable;ZZ)V

    return-object v0

    .line 1770
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "unknown mode="

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1755
    :cond_6
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {p0, p2, p1}, Llocal/voicebridge/VoiceBridgeService;->makePipe(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1756
    invoke-direct {p0, v0, p1, p4, p5}, Llocal/voicebridge/VoiceBridgeService;->putAudioExtra(Landroid/content/Intent;Landroid/os/Parcelable;ZZ)V

    return-object v0

    :cond_7
    :goto_1
    return-object v3
.end method

.method private cancel()V
    .locals 1

    .line 1980
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->recognizer:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_0

    .line 1981
    :try_start_0
    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1982
    :catchall_0
    :try_start_1
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->recognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    const/4 v0, 0x0

    .line 1983
    iput-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->recognizer:Landroid/speech/SpeechRecognizer;

    .line 1985
    :cond_0
    invoke-direct {p0}, Llocal/voicebridge/VoiceBridgeService;->stopWriter()V

    .line 1986
    invoke-direct {p0}, Llocal/voicebridge/VoiceBridgeService;->closePipe()V

    return-void
.end method

.method private holdVoiceResult()Z
    .locals 8
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->originPackage:Ljava/lang/String;
    iget-boolean v1, p0, Llocal/voicebridge/VoiceBridgeService;->assistantSeen:Z
    invoke-direct {p0}, Llocal/voicebridge/VoiceBridgeService;->chooseFinalText()Ljava/lang/String;
    move-result-object v2
    iget-object v3, p0, Llocal/voicebridge/VoiceBridgeService;->lastForegroundPackage:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v4
    iget-wide v6, p0, Llocal/voicebridge/VoiceBridgeService;->assistDownMs:J
    sub-long/2addr v4, v6
    invoke-static/range {v0 .. v5}, Llocal/voicebridge/VoiceSessionPolicy;->holdResult(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)Z
    move-result v0
    return v0
.end method

.method public restoreVoiceSearchOrigin()V
    .locals 3

    iget-boolean v0, p0, Llocal/voicebridge/VoiceBridgeService;->observationActive:Z
    if-eqz v0, :restore_done
    iget-boolean v0, p0, Llocal/voicebridge/VoiceBridgeService;->setTextInProgress:Z
    if-eqz v0, :restore_done
    invoke-direct {p0}, Llocal/voicebridge/VoiceBridgeService;->holdVoiceResult()Z
    move-result v0
    if-eqz v0, :restore_done

    :restore_try
    invoke-virtual {p0}, Llocal/voicebridge/VoiceBridgeService;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v0
    const-string v1, "com.android.vending"
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    move-result-object v0
    if-eqz v0, :restore_done
    # Reuse existing search task, never clear it or synthesize HOME/BACK.
    const v1, 0x10020000
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    invoke-virtual {p0, v0}, Llocal/voicebridge/VoiceBridgeService;->startActivity(Landroid/content/Intent;)V
    const-string v0, "VoiceBridge"
    const-string v1, "restored Store task for recognized voice result"
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :restore_end
    .catch Ljava/lang/RuntimeException; {:restore_try .. :restore_end} :restore_failed
    goto :restore_done
    :restore_failed
    move-exception v2
    const-string v0, "VoiceBridge"
    const-string v1, "voice Store restore failed; bounded fill will expire"
    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :restore_done
    return-void
.end method

.method private cancelObservation()V
    .locals 2

    # Retire cached evidence as well as callbacks.
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    iput-wide v0, p0, Llocal/voicebridge/VoiceBridgeService;->observationFinishedMs:J
    const-wide/16 v0, 0x0
    iput-wide v0, p0, Llocal/voicebridge/VoiceBridgeService;->lastKatnissEventMs:J
    iput-wide v0, p0, Llocal/voicebridge/VoiceBridgeService;->lastAssistantEventMs:J

    const/4 v0, 0x0

    .line 1700
    iput-boolean v0, p0, Llocal/voicebridge/VoiceBridgeService;->observationActive:Z

    .line 1701
    iput-boolean v0, p0, Llocal/voicebridge/VoiceBridgeService;->setTextInProgress:Z

    .line 1702
    const-string v0, ""

    iput-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->pendingText:Ljava/lang/String;

    .line 1703
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->main:Landroid/os/Handler;

    iget-object v1, p0, Llocal/voicebridge/VoiceBridgeService;->captureAssistant:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1704
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->main:Landroid/os/Handler;

    iget-object v1, p0, Llocal/voicebridge/VoiceBridgeService;->finishObservation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1705
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->main:Landroid/os/Handler;

    iget-object p0, p0, Llocal/voicebridge/VoiceBridgeService;->insertPending:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private candidateScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)F
    .locals 2

    .line 1489
    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->isNoise(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1490
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    .line 1491
    invoke-direct {p0, p2}, Llocal/voicebridge/VoiceBridgeService;->isAssistantPackage(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/high16 p0, 0x41400000    # 12.0f

    add-float/2addr v0, p0

    .line 1492
    :cond_1
    const-string p0, "voiceQuery"

    invoke-virtual {p3, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_2

    const/high16 p0, 0x42c80000    # 100.0f

    add-float/2addr v0, p0

    .line 1493
    :cond_2
    const-string p0, "keyboardQuery"

    invoke-virtual {p3, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_3

    const/high16 p0, 0x42700000    # 60.0f

    add-float/2addr v0, p0

    .line 1494
    :cond_3
    const-string p0, "assistantEditable"

    invoke-virtual {p3, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_4

    const/high16 p0, 0x41f00000    # 30.0f

    add-float/2addr v0, p0

    .line 1495
    :cond_4
    const-string p0, "nodeText"

    invoke-virtual {p3, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-gez p0, :cond_5

    const-string p0, "eventText"

    invoke-virtual {p3, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_6

    :cond_5
    const/high16 p0, 0x40800000    # 4.0f

    add-float/2addr v0, p0

    .line 1496
    :cond_6
    const-string p0, ".*[\u4e00-\u9fff].*"

    invoke-virtual {p1, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/high16 p0, 0x40c00000    # 6.0f

    add-float/2addr v0, p0

    .line 1497
    :cond_7
    const-string p0, ".*[a-zA-Z].*"

    invoke-virtual {p1, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    const/high16 p2, 0x40000000    # 2.0f

    if-eqz p0, :cond_8

    add-float/2addr v0, p2

    :cond_8
    const/16 p0, 0x3f

    .line 1498
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-gez p0, :cond_9

    const p0, 0xff1f

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-gez p0, :cond_9

    return v0

    :cond_9
    add-float/2addr v0, p2

    return v0
.end method

.method private captureAssistantWindows(Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    .line 1331
    const-string v7, "VoiceBridge"

    iget-boolean v1, v0, Llocal/voicebridge/VoiceBridgeService;->observationActive:Z

    if-eqz v1, :cond_c

    .line 1333
    :try_start_0
    invoke-virtual {v0}, Llocal/voicebridge/VoiceBridgeService;->getWindows()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1334
    const-string v8, " pkg="

    const/4 v9, 0x0

    const-string v2, "windowCapture phase="

    if-eqz v1, :cond_6

    .line 1335
    :try_start_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1336
    new-instance v1, Llocal/voicebridge/VoiceBridgeService$9;

    invoke-direct {v1, v0}, Llocal/voicebridge/VoiceBridgeService$9;-><init>(Llocal/voicebridge/VoiceBridgeService;)V

    invoke-static {v10, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1341
    iget-boolean v1, v0, Llocal/voicebridge/VoiceBridgeService;->debugTree:Z

    if-eqz v1, :cond_0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v11, v9

    .line 1342
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ge v11, v1, :cond_7

    .line 1343
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1345
    :try_start_2
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_1

    .line 1346
    :try_start_3
    const-string v3, ""

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v0, v3}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1347
    :goto_2
    iget-boolean v4, v0, Llocal/voicebridge/VoiceBridgeService;->debugTree:Z

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    move-result v5

    .line 1348
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getLayer()I

    move-result v12

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Llocal/voicebridge/VoiceBridgeService;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v2, :cond_2

    .line 1349
    const-string v13, "null"

    goto :goto_3

    :cond_2
    invoke-direct {v0, v2}, Llocal/voicebridge/VoiceBridgeService;->nodeBrief(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v13

    :goto_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "window["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] type="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, " active="

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " layer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " title="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " root="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1347
    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v2, :cond_5

    .line 1350
    invoke-direct {v0, v3}, Llocal/voicebridge/VoiceBridgeService;->isAssistantPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, v0, Llocal/voicebridge/VoiceBridgeService;->assistantSeen:Z

    if-nez v1, :cond_4

    iget-boolean v1, v0, Llocal/voicebridge/VoiceBridgeService;->debugTree:Z

    if-eqz v1, :cond_5

    .line 1351
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":window"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3}, Llocal/voicebridge/VoiceBridgeService;->isAssistantPackage(Ljava/lang/String;)Z

    move-result v5

    const/4 v4, 0x0

    move-object/from16 v16, v3

    move-object v3, v1

    move-object v1, v2

    move-object/from16 v2, v16

    invoke-direct/range {v0 .. v5}, Llocal/voicebridge/VoiceBridgeService;->collectNodeTexts(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1352
    iget-boolean v2, v0, Llocal/voicebridge/VoiceBridgeService;->debugTree:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Window"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v9, v3}, Llocal/voicebridge/VoiceBridgeService;->describeTree(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;II)V

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 1356
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getWindows=null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    :cond_7
    invoke-virtual {v0}, Llocal/voicebridge/VoiceBridgeService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 1360
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v0, v2}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1361
    iget-boolean v3, v0, Llocal/voicebridge/VoiceBridgeService;->debugTree:Z

    if-eqz v3, :cond_8

    invoke-direct {v0, v1}, Llocal/voicebridge/VoiceBridgeService;->nodeBrief(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activeRoot phase="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " node="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    :cond_8
    invoke-direct {v0, v2}, Llocal/voicebridge/VoiceBridgeService;->isAssistantPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "com.android.vending"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-boolean v3, v0, Llocal/voicebridge/VoiceBridgeService;->assistantSeen:Z

    if-eqz v3, :cond_a

    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":active"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2}, Llocal/voicebridge/VoiceBridgeService;->isAssistantPackage(Ljava/lang/String;)Z

    move-result v5

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Llocal/voicebridge/VoiceBridgeService;->collectNodeTexts(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1363
    :cond_a
    iget-boolean v2, v0, Llocal/voicebridge/VoiceBridgeService;->debugTree:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v3, "final"

    if-eqz v2, :cond_b

    :try_start_4
    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "Active"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v9, v4}, Llocal/voicebridge/VoiceBridgeService;->describeTree(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;II)V

    .line 1364
    :cond_b
    iget-boolean v1, v0, Llocal/voicebridge/VoiceBridgeService;->debugTree:Z

    if-eqz v1, :cond_c

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Windows"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Llocal/voicebridge/VoiceBridgeService;->dumpWindows(Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    .line 1367
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "captureAssistantWindows phase="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    :goto_4
    return-void
.end method

.method private chooseFinalText()Ljava/lang/String;
    .locals 4

    .line 538
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->stableVoiceQuery:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->stableVoiceQuery:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 539
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    invoke-direct {p0, v0}, Llocal/voicebridge/VoiceBridgeService;->isNoise(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    .line 540
    :cond_1
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->lastVoiceQuery:Ljava/lang/String;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->lastVoiceQuery:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 541
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_3

    invoke-direct {p0, v0}, Llocal/voicebridge/VoiceBridgeService;->isNoise(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    return-object v0

    .line 542
    :cond_3
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->bestCandidate:Ljava/lang/String;

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->bestCandidate:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 543
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_5

    invoke-direct {p0, v0}, Llocal/voicebridge/VoiceBridgeService;->isNoise(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    return-object v1
.end method

.method private clamp(JJJ)J
    .locals 0

    .line 1696
    invoke-static {p5, p6, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    invoke-static {p3, p4, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private clearNavigation()V
    .locals 1

    invoke-static {}, Llocal/voicebridge/InputPassthrough;->clear()V

    .line 588
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->navigationRepeater:Llocal/voicebridge/NavigationRepeater;

    invoke-virtual {v0}, Llocal/voicebridge/NavigationRepeater;->stop()V

    .line 589
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->legacyNavigationRepeater:Llocal/voicebridge/LegacyNavigationRepeater;

    invoke-virtual {v0}, Llocal/voicebridge/LegacyNavigationRepeater;->stop()V

    .line 590
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->consumedKeys:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 591
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->passThroughKeys:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 592
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->legacyConsumedKeys:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 593
    invoke-direct {p0}, Llocal/voicebridge/VoiceBridgeService;->clearTrackedNewRemoteKeys()V

    return-void
.end method

.method private clearNewRemoteNavigation()V
    .locals 1

    .line 597
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->navigationRepeater:Llocal/voicebridge/NavigationRepeater;

    invoke-virtual {v0}, Llocal/voicebridge/NavigationRepeater;->stop()V

    .line 598
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->consumedKeys:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 599
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->passThroughKeys:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 600
    invoke-direct {p0}, Llocal/voicebridge/VoiceBridgeService;->clearTrackedNewRemoteKeys()V

    return-void
.end method

.method private clearTrackedNewRemoteKeys()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 604
    :goto_0
    iget-object v2, p0, Llocal/voicebridge/VoiceBridgeService;->trackedDpadPresses:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 605
    aput-boolean v0, v2, v1

    .line 606
    iget-object v2, p0, Llocal/voicebridge/VoiceBridgeService;->trackedDpadDevices:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    .line 607
    iget-object v2, p0, Llocal/voicebridge/VoiceBridgeService;->trackedDpadDownTimes:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v1

    .line 608
    iget-object v2, p0, Llocal/voicebridge/VoiceBridgeService;->trackedDpadDownAt:[J

    aput-wide v4, v2, v1

    .line 609
    iget-object v2, p0, Llocal/voicebridge/VoiceBridgeService;->trackedDpadPairedDevices:[I

    aput v3, v2, v1

    .line 610
    iget-object v2, p0, Llocal/voicebridge/VoiceBridgeService;->trackedDpadPairedDownTimes:[J

    aput-wide v4, v2, v1

    .line 611
    iget-object v2, p0, Llocal/voicebridge/VoiceBridgeService;->releasedDpadDevices:[I

    aput v3, v2, v1

    .line 612
    iget-object v2, p0, Llocal/voicebridge/VoiceBridgeService;->releasedDpadDownTimes:[J

    aput-wide v4, v2, v1

    .line 613
    iget-object v2, p0, Llocal/voicebridge/VoiceBridgeService;->releasedDpadPairedDevices:[I

    aput v3, v2, v1

    .line 614
    iget-object v2, p0, Llocal/voicebridge/VoiceBridgeService;->releasedDpadPairedDownTimes:[J

    aput-wide v4, v2, v1

    .line 615
    iget-object v2, p0, Llocal/voicebridge/VoiceBridgeService;->releasedDpadAt:[J

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private closePipe()V
    .locals 1

    .line 1859
    :try_start_0
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->writePfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1860
    :catch_0
    :cond_0
    :try_start_1
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->readPfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    const/4 v0, 0x0

    .line 1861
    iput-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->writePfd:Landroid/os/ParcelFileDescriptor;

    .line 1862
    iput-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->readPfd:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method private collectCandidate(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1468
    iget-boolean v0, p0, Llocal/voicebridge/VoiceBridgeService;->observationActive:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 1469
    const-string v0, "playStoreQuery"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const-string v0, "voiceQuery"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1470
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Llocal/voicebridge/VoiceBridgeService;->stableVoiceQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1471
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xa0

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 1472
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb4

    if-gt v0, v1, :cond_2

    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->isNoise(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1473
    invoke-direct {p0, p2}, Llocal/voicebridge/VoiceBridgeService;->isVoiceCandidatePackage(Ljava/lang/String;)Z

    move-result v0

    const-string v1, " text="

    const-string v2, " where="

    const-string v3, "VoiceBridge"

    if-nez v0, :cond_1

    const-string v0, "assistantEditable"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    .line 1474
    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "candidateSkip pkg="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1477
    :cond_1
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->seenText:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1478
    invoke-direct {p0, p1, p2, p3}, Llocal/voicebridge/VoiceBridgeService;->candidateScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    .line 1479
    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "candidate score="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    cmpg-float p2, v0, p2

    if-lez p2, :cond_2

    .line 1481
    iget p2, p0, Llocal/voicebridge/VoiceBridgeService;->bestScore:F

    cmpl-float p2, v0, p2

    if-lez p2, :cond_2

    .line 1482
    iput-object p1, p0, Llocal/voicebridge/VoiceBridgeService;->bestCandidate:Ljava/lang/String;

    .line 1483
    iput v0, p0, Llocal/voicebridge/VoiceBridgeService;->bestScore:F

    .line 1484
    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "bestCandidate updated text="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " score="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private collectNavigable(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    const/16 v0, 0x18

    if-gt p3, v0, :cond_2

    .line 1209
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x78

    if-gt v0, v1, :cond_2

    .line 1211
    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1212
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEditable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1213
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    const/16 v2, 0x64

    if-ge v1, v2, :cond_2

    .line 1214
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    add-int/lit8 v3, p3, 0x1

    invoke-direct {p0, v2, p2, v3}, Llocal/voicebridge/VoiceBridgeService;->collectNavigable(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    :cond_2
    return-void
.end method

.method private collectNodeTexts(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 1417
    invoke-direct/range {v0 .. v5}, Llocal/voicebridge/VoiceBridgeService;->collectNodeTexts(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method private collectNodeTexts(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v7, p4

    .line 1421
    const-string v8, "VoiceBridge"

    const-string v1, "com.google.android.katniss"

    .line 0
    const-string v4, "node "

    if-eqz p1, :cond_f

    const/16 v5, 0x12

    if-gt v7, v5, :cond_f

    .line 1423
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v0, v5}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 1424
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-direct {v0, v9}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 1425
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getHintText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-direct {v0, v10}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 1426
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-direct {v0, v11}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 1427
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 1428
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEditable()Z

    move-result v13

    .line 1429
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const/16 v16, 0x1

    if-nez v14, :cond_0

    invoke-virtual {v12, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-gez v14, :cond_0

    const/4 v14, 0x0

    goto :goto_0

    :cond_0
    move/from16 v14, v16

    .line 1430
    :goto_0
    iget-object v15, v0, Llocal/voicebridge/VoiceBridgeService;->observationBaselineText:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    move/from16 v17, v14

    .line 1431
    iget-boolean v14, v0, Llocal/voicebridge/VoiceBridgeService;->observationActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v18, v14

    const-string v14, "StreamingTextView"

    const-string v6, "com.android.vending"

    if-eqz v18, :cond_1

    move-object/from16 v18, v1

    :try_start_1
    iget-object v1, v0, Llocal/voicebridge/VoiceBridgeService;->originPackage:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1432
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v11, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "\u8bf4\u8bdd\u5373\u53ef\u5f00\u59cb\u641c\u7d22"

    .line 1433
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1434
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v15, v0, Llocal/voicebridge/VoiceBridgeService;->originText:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move/from16 v1, v16

    goto :goto_1

    :cond_1
    move-object/from16 v18, v1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz p5, :cond_3

    if-eqz v17, :cond_3

    .line 1435
    const-string v15, "/id/user_query"

    .line 1436
    invoke-virtual {v12, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_4

    invoke-virtual {v11, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    :cond_3
    if-eqz v1, :cond_5

    :cond_4
    move/from16 v1, v16

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    if-eqz p5, :cond_6

    if-eqz v17, :cond_6

    .line 1438
    const-string v14, "/id/keyboard_input"

    .line 1439
    invoke-virtual {v12, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    if-eqz v13, :cond_6

    move/from16 v14, v16

    goto :goto_3

    :cond_6
    const/4 v14, 0x0

    :goto_3
    if-eqz p5, :cond_7

    if-eqz v17, :cond_7

    .line 1440
    const-string v15, "/id/prompt_text"

    .line 1441
    invoke-virtual {v12, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_8

    const-string v15, "/id/response"

    invoke-virtual {v12, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_8

    const-string v15, "/id/suggestions_scrollview"

    .line 1442
    invoke-virtual {v12, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_8

    const-string v15, "/id/suggestions_container"

    invoke-virtual {v12, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_8

    const-string v15, "/id/keyboard_icon"

    .line 1443
    invoke-virtual {v12, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_8

    const-string v15, "/id/logo_view"

    invoke-virtual {v12, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_8

    const-string v15, "/id/voiceplate_background_amati"

    .line 1444
    invoke-virtual {v12, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_8

    :cond_7
    const/16 v16, 0x0

    .line 1445
    :cond_8
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v15

    if-gtz v15, :cond_9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v15

    if-gtz v15, :cond_9

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    if-gtz v15, :cond_9

    if-eqz v13, :cond_a

    .line 1446
    :cond_9
    iget-boolean v15, v0, Llocal/voicebridge/VoiceBridgeService;->debugTree:Z

    if-eqz v15, :cond_a

    invoke-direct {v0, v11}, Llocal/voicebridge/VoiceBridgeService;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1447
    invoke-direct {v0, v12}, Llocal/voicebridge/VoiceBridgeService;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v5}, Llocal/voicebridge/VoiceBridgeService;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move/from16 v17, v1

    .line 1448
    invoke-direct {v0, v9}, Llocal/voicebridge/VoiceBridgeService;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v10}, Llocal/voicebridge/VoiceBridgeService;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move/from16 v19, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, " d="

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, " pkg="

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, " cls="

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, " id="

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, " editable="

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, " text="

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, " desc="

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " hint="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1446
    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_a
    move/from16 v17, v1

    move/from16 v19, v14

    :goto_4
    if-eqz v17, :cond_b

    .line 1451
    invoke-direct {v0, v5, v3}, Llocal/voicebridge/VoiceBridgeService;->recordVoiceQuery(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    if-eqz v19, :cond_c

    .line 1453
    const-string v1, "keyboardQuery"

    move-object/from16 v4, v18

    invoke-direct {v0, v5, v4, v1}, Llocal/voicebridge/VoiceBridgeService;->collectCandidate(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    if-nez v16, :cond_e

    .line 1455
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEditable()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1456
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "assistantEditable"

    invoke-direct {v0, v5, v2, v1}, Llocal/voicebridge/VoiceBridgeService;->collectCandidate(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1458
    :cond_d
    const-string v1, "nodeText"

    invoke-direct {v0, v5, v2, v1}, Llocal/voicebridge/VoiceBridgeService;->collectCandidate(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    const-string v1, "nodeDesc"

    invoke-direct {v0, v9, v2, v1}, Llocal/voicebridge/VoiceBridgeService;->collectCandidate(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    :cond_e
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v6

    const/4 v15, 0x0

    :goto_6
    if-ge v15, v6, :cond_f

    const/16 v1, 0x50

    if-ge v15, v1, :cond_f

    move-object/from16 v9, p1

    .line 1463
    invoke-virtual {v9, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    add-int/lit8 v4, v7, 0x1

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Llocal/voicebridge/VoiceBridgeService;->collectNodeTexts(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    goto :goto_6

    :catchall_0
    move-exception v0

    .line 1464
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "collectNodeTexts failed d="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " err="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void
.end method

.method private cs(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 2023
    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private describe(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4

    .line 1792
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    .line 1793
    const-string p0, "{}"

    return-object p0

    .line 1794
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "{"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1795
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1796
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1797
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v2, :cond_1

    const-string v2, "null"

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/16 p0, 0x7d

    .line 1799
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private describeTree(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;II)V
    .locals 5

    if-eqz p1, :cond_2

    if-gt p3, p4, :cond_2

    .line 1405
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x5

    if-le p3, v0, :cond_0

    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->textPresent(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1406
    :cond_0
    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->nodeBrief(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tree "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " d="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceBridge"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    const/16 v2, 0x3c

    if-ge v1, v2, :cond_2

    .line 1410
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1411
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, p3, 0x1

    invoke-direct {p0, v2, v3, v4, p4}, Llocal/voicebridge/VoiceBridgeService;->describeTree(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    :cond_2
    return-void
.end method

.method private dumpWindows(Ljava/lang/String;I)V
    .locals 11

    .line 1390
    const-string v0, "VoiceBridge"

    :try_start_0
    invoke-virtual {p0}, Llocal/voicebridge/VoiceBridgeService;->getWindows()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1391
    const-string v2, "dump "

    if-nez v1, :cond_0

    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " windows=null"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    .line 1392
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 1393
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityWindowInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1395
    :try_start_2
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    const/4 v6, 0x0

    .line 1396
    :goto_1
    :try_start_3
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v7

    .line 1397
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {p0, v5}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Llocal/voicebridge/VoiceBridgeService;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v6, :cond_1

    const-string v8, "null"

    goto :goto_2

    :cond_1
    invoke-direct {p0, v6}, Llocal/voicebridge/VoiceBridgeService;->nodeBrief(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v8

    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " window["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] type="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " title="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " root="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1396
    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_2

    .line 1398
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "W"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x8

    invoke-static {p2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-direct {p0, v6, v5, v3, v7}, Llocal/voicebridge/VoiceBridgeService;->describeTree(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :catchall_1
    move-exception p0

    .line 1400
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "dumpWindows failed phase="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-void
.end method

.method private ensureVoicePlateObservation(ZLjava/lang/String;)V
    .locals 13

    # Only fresh assistant evidence in the store may create a session.
    iget-boolean v0, p0, Llocal/voicebridge/VoiceBridgeService;->observationActive:Z
    move v1, p1
    iget-object v2, p0, Llocal/voicebridge/VoiceBridgeService;->lastForegroundPackage:Ljava/lang/String;
    iget-wide v3, p0, Llocal/voicebridge/VoiceBridgeService;->lastKatnissEventMs:J
    iget-wide v5, p0, Llocal/voicebridge/VoiceBridgeService;->observationFinishedMs:J
    invoke-static/range {v0 .. v6}, Llocal/voicebridge/VoiceSessionPolicy;->canObserve(ZZLjava/lang/String;JJ)Z
    move-result v0
    if-nez v0, :session_observe_allowed
    return-void
    :session_observe_allowed

    .line 371
    const-string v0, "observe"

    iget-object v1, p0, Llocal/voicebridge/VoiceBridgeService;->keyMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 372
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2ee0

    const/4 v4, 0x1

    if-nez p1, :cond_0

    .line 373
    iget-wide v5, p0, Llocal/voicebridge/VoiceBridgeService;->lastKatnissEventMs:J

    sub-long v5, v0, v5

    cmp-long v5, v5, v2

    if-gtz v5, :cond_0

    .line 375
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ":katnissTTL"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move p1, v4

    :cond_0
    const-wide/16 v5, 0x0

    if-nez p1, :cond_1

    .line 377
    iget-boolean v7, p0, Llocal/voicebridge/VoiceBridgeService;->observationActive:Z

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Llocal/voicebridge/VoiceBridgeService;->autoObservationStarted:Z

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Llocal/voicebridge/VoiceBridgeService;->voicePlateSeen:Z

    if-eqz v7, :cond_1

    iget-wide v7, p0, Llocal/voicebridge/VoiceBridgeService;->voicePlateFinishAtMs:J

    sub-long v7, v0, v7

    cmp-long v7, v7, v5

    if-gez v7, :cond_1

    iget-wide v7, p0, Llocal/voicebridge/VoiceBridgeService;->lastAssistantEventMs:J

    sub-long v7, v0, v7

    const-wide/16 v9, 0x1388

    cmp-long v7, v7, v9

    if-gez v7, :cond_1

    .line 380
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ":activeAssistant"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move p1, v4

    .line 403
    :cond_1
    iget-boolean v7, p0, Llocal/voicebridge/VoiceBridgeService;->observationActive:Z

    .line 382
    const-string v8, "VoiceBridge"

    if-eqz p1, :cond_4

    if-nez v7, :cond_3

    .line 383
    iget-boolean p1, p0, Llocal/voicebridge/VoiceBridgeService;->setTextDone:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Llocal/voicebridge/VoiceBridgeService;->setTextInProgress:Z

    if-nez p1, :cond_3

    iget-wide v2, p0, Llocal/voicebridge/VoiceBridgeService;->observationFinishedMs:J

    sub-long v2, v0, v2

    const-wide/16 v9, 0x4b0

    cmp-long p1, v2, v9

    if-lez p1, :cond_3

    iget-object p1, p0, Llocal/voicebridge/VoiceBridgeService;->lastForegroundPackage:Ljava/lang/String;

    .line 385
    const-string v2, "com.android.vending"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-wide v9, p0, Llocal/voicebridge/VoiceBridgeService;->lastPlayStoreSeenMs:J

    cmp-long p1, v9, v5

    if-lez p1, :cond_3

    iget-wide v9, p0, Llocal/voicebridge/VoiceBridgeService;->lastPlayStoreSeenMs:J

    sub-long v9, v0, v9

    const-wide/32 v11, 0xea60

    cmp-long p1, v9, v11

    if-gtz p1, :cond_3

    .line 387
    :cond_2
    invoke-direct {p0}, Llocal/voicebridge/VoiceBridgeService;->beginObservation()V

    .line 388
    iput-boolean v4, p0, Llocal/voicebridge/VoiceBridgeService;->autoObservationStarted:Z

    .line 389
    iput-object v2, p0, Llocal/voicebridge/VoiceBridgeService;->originPackage:Ljava/lang/String;

    .line 390
    iget-boolean p1, p0, Llocal/voicebridge/VoiceBridgeService;->lastPlayStoreEditable:Z

    iput-boolean p1, p0, Llocal/voicebridge/VoiceBridgeService;->originEditable:Z

    .line 391
    iget-object p1, p0, Llocal/voicebridge/VoiceBridgeService;->lastPlayStoreText:Ljava/lang/String;

    iput-object p1, p0, Llocal/voicebridge/VoiceBridgeService;->originText:Ljava/lang/String;

    .line 392
    iget-object p1, p0, Llocal/voicebridge/VoiceBridgeService;->lastPlayStoreText:Ljava/lang/String;

    iput-object p1, p0, Llocal/voicebridge/VoiceBridgeService;->observationBaselineText:Ljava/lang/String;

    const-wide/16 v2, 0x3a98

    add-long/2addr v2, v0

    .line 393
    iput-wide v2, p0, Llocal/voicebridge/VoiceBridgeService;->voicePlateFinishAtMs:J

    .line 394
    iget-boolean p1, p0, Llocal/voicebridge/VoiceBridgeService;->originEditable:Z

    iget-object v2, p0, Llocal/voicebridge/VoiceBridgeService;->originText:Ljava/lang/String;

    .line 395
    invoke-direct {p0, v2}, Llocal/voicebridge/VoiceBridgeService;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-wide v9, p0, Llocal/voicebridge/VoiceBridgeService;->lastPlayStoreSeenMs:J

    sub-long/2addr v0, v9

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "voicePlateDetected origin=PlayStore editable="

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " text="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " ttl="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "ms where="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 394
    invoke-static {v8, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object p1, p0, Llocal/voicebridge/VoiceBridgeService;->keyMode:Ljava/lang/String;

    iget-boolean p2, p0, Llocal/voicebridge/VoiceBridgeService;->debugTree:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "observationStart keyMode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " debugTree="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " trigger=voicePlate"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-direct {p0}, Llocal/voicebridge/VoiceBridgeService;->startWindowWatch()V

    .line 398
    iget-object p1, p0, Llocal/voicebridge/VoiceBridgeService;->main:Landroid/os/Handler;

    iget-object p2, p0, Llocal/voicebridge/VoiceBridgeService;->captureAssistant:Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 400
    :cond_3
    iput-boolean v4, p0, Llocal/voicebridge/VoiceBridgeService;->voicePlateSeen:Z

    .line 401
    iput-wide v5, p0, Llocal/voicebridge/VoiceBridgeService;->voicePlateGoneMs:J

    .line 402
    iput-boolean v4, p0, Llocal/voicebridge/VoiceBridgeService;->assistantSeen:Z

    return-void

    :cond_4
    if-eqz v7, :cond_5

    .line 403
    iget-boolean p1, p0, Llocal/voicebridge/VoiceBridgeService;->autoObservationStarted:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Llocal/voicebridge/VoiceBridgeService;->voicePlateSeen:Z

    if-eqz p1, :cond_5

    iget-wide v9, p0, Llocal/voicebridge/VoiceBridgeService;->voicePlateGoneMs:J

    cmp-long p1, v9, v5

    if-nez p1, :cond_5

    iget-wide v4, p0, Llocal/voicebridge/VoiceBridgeService;->lastKatnissEventMs:J

    sub-long v4, v0, v4

    cmp-long p1, v4, v2

    if-lez p1, :cond_5

    iget-wide v2, p0, Llocal/voicebridge/VoiceBridgeService;->lastAssistantEventMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x9c4

    cmp-long p1, v2, v4

    if-lez p1, :cond_5

    .line 406
    iput-wide v0, p0, Llocal/voicebridge/VoiceBridgeService;->voicePlateGoneMs:J

    const/4 p1, 0x0

    .line 407
    iput-boolean p1, p0, Llocal/voicebridge/VoiceBridgeService;->voicePlateSeen:Z

    .line 408
    iget-object p1, p0, Llocal/voicebridge/VoiceBridgeService;->lastVoiceQuery:Ljava/lang/String;

    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->stableVoiceQuery:Ljava/lang/String;

    .line 409
    invoke-direct {p0, v0}, Llocal/voicebridge/VoiceBridgeService;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "voicePlateGone where="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " query="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " stable="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 408
    invoke-static {v8, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object p1, p0, Llocal/voicebridge/VoiceBridgeService;->main:Landroid/os/Handler;

    iget-object p2, p0, Llocal/voicebridge/VoiceBridgeService;->captureAssistant:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 411
    iget-object p1, p0, Llocal/voicebridge/VoiceBridgeService;->main:Landroid/os/Handler;

    iget-object p2, p0, Llocal/voicebridge/VoiceBridgeService;->finishObservation:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 412
    iget-object p1, p0, Llocal/voicebridge/VoiceBridgeService;->main:Landroid/os/Handler;

    iget-object p2, p0, Llocal/voicebridge/VoiceBridgeService;->captureAssistant:Ljava/lang/Runnable;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 413
    iget-object p1, p0, Llocal/voicebridge/VoiceBridgeService;->main:Landroid/os/Handler;

    iget-object p0, p0, Llocal/voicebridge/VoiceBridgeService;->finishObservation:Ljava/lang/Runnable;

    const-wide/16 v0, 0x258

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void
.end method

.method private findEditables(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/16 v0, 0x14

    if-gt p3, v0, :cond_1

    .line 1590
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v0, :cond_1

    .line 1591
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1592
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    const/16 v2, 0x50

    if-ge v1, v2, :cond_1

    .line 1593
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    add-int/lit8 v3, p3, 0x1

    invoke-direct {p0, v2, p2, v3}, Llocal/voicebridge/VoiceBridgeService;->findEditables(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private findFocusedNode(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 1178
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x2

    .line 1180
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    return-object v0

    :catchall_0
    :cond_2
    const/4 v0, 0x0

    .line 1183
    invoke-direct {p0, p1, v0}, Llocal/voicebridge/VoiceBridgeService;->findFocusedNodeRecursive(Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method private findFocusedNodeRecursive(Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/16 v1, 0x18

    if-gt p2, v1, :cond_2

    .line 1189
    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1190
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_2

    .line 1192
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    add-int/lit8 v4, p2, 0x1

    invoke-direct {p0, v3, v4}, Llocal/voicebridge/VoiceBridgeService;->findFocusedNodeRecursive(Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p1

    :catchall_0
    :cond_2
    return-object v0
.end method

.method private findVoicePlateInWindows(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 12

    .line 345
    const-string v0, "VoiceBridge"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Llocal/voicebridge/VoiceBridgeService;->getWindows()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 346
    const-string v3, " root="

    if-eqz v2, :cond_2

    .line 347
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityWindowInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 349
    :try_start_2
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v5, v1

    :goto_0
    if-eqz v5, :cond_0

    .line 350
    :try_start_3
    invoke-direct {p0, v5}, Llocal/voicebridge/VoiceBridgeService;->isVoicePlateNode(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 352
    iget-wide v8, p0, Llocal/voicebridge/VoiceBridgeService;->lastVoicePlateWindowLogMs:J

    sub-long v8, v6, v8

    const-wide/16 v10, 0x190

    cmp-long v2, v8, v10

    if-ltz v2, :cond_1

    .line 353
    iput-wide v6, p0, Llocal/voicebridge/VoiceBridgeService;->lastVoicePlateWindowLogMs:J

    .line 354
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v2

    .line 355
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    move-result v4

    invoke-direct {p0, v5}, Llocal/voicebridge/VoiceBridgeService;->nodeBrief(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object p0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "voicePlateWindow "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " active="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 354
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v5

    .line 361
    :cond_2
    invoke-virtual {p0}, Llocal/voicebridge/VoiceBridgeService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 362
    invoke-direct {p0, v2}, Llocal/voicebridge/VoiceBridgeService;->isVoicePlateNode(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 363
    invoke-direct {p0, v2}, Llocal/voicebridge/VoiceBridgeService;->nodeBrief(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "voicePlateActive "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-object v2

    :catchall_1
    move-exception p0

    .line 366
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "findVoicePlateInWindows failed where="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " err="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v1
.end method

.method private focusNodeOrAncestor(Landroid/view/accessibility/AccessibilityNodeInfo;I)Z
    .locals 3

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    if-eqz p1, :cond_3

    if-gt v0, p2, :cond_3

    .line 1166
    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEditable()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 1167
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1169
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1

    :catchall_0
    :cond_3
    return p0
.end method

.method public static get()Llocal/voicebridge/VoiceBridgeService;
    .locals 1

    .line 545
    sget-object v0, Llocal/voicebridge/VoiceBridgeService;->instance:Llocal/voicebridge/VoiceBridgeService;

    return-object v0
.end method

.method private handleLegacyRemoteKey(Landroid/view/KeyEvent;)Z
    .locals 8

    invoke-static {p0, p1}, Llocal/voicebridge/InputPassthrough;->route(Landroid/accessibilityservice/AccessibilityService;Landroid/view/KeyEvent;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    move v7, v0

    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->legacyNavigationRepeater:Llocal/voicebridge/LegacyNavigationRepeater;

    invoke-virtual {v0}, Llocal/voicebridge/LegacyNavigationRepeater;->stop()V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->legacyConsumedKeys:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    return v7

    .line 985
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 986
    invoke-direct {p0, v2}, Llocal/voicebridge/VoiceBridgeService;->actionForDpad(I)I

    move-result v3

    const/4 v6, 0x0

    if-nez v3, :cond_2

    .line 988
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Llocal/voicebridge/VoiceBridgeService;->legacyNavigationRepeater:Llocal/voicebridge/LegacyNavigationRepeater;

    invoke-virtual {p0}, Llocal/voicebridge/LegacyNavigationRepeater;->stop()V

    :cond_1
    return v6

    .line 991
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    .line 992
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    .line 993
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_3

    .line 994
    iget-object p1, p0, Llocal/voicebridge/VoiceBridgeService;->legacyConsumedKeys:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    .line 995
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->legacyNavigationRepeater:Llocal/voicebridge/LegacyNavigationRepeater;

    invoke-virtual {v0, v1, v2, v4, v5}, Llocal/voicebridge/LegacyNavigationRepeater;->release(IIJ)V

    .line 996
    iget-object p0, p0, Llocal/voicebridge/VoiceBridgeService;->legacyConsumedKeys:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    return p1

    .line 999
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_4

    return v6

    .line 1000
    :cond_4
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->legacyNavigationRepeater:Llocal/voicebridge/LegacyNavigationRepeater;

    invoke-virtual/range {v0 .. v5}, Llocal/voicebridge/LegacyNavigationRepeater;->press(IIIJ)Z

    move-result p1

    .line 1002
    iget-object p0, p0, Llocal/voicebridge/VoiceBridgeService;->legacyConsumedKeys:Landroid/util/SparseBooleanArray;

    if-eqz p1, :cond_5

    .line 1001
    invoke-virtual {p0, v2, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 1002
    :cond_5
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-eqz p0, :cond_6

    :goto_0
    return v7

    :cond_6
    return v6
.end method

.method private handleNewRemoteKey(Landroid/view/KeyEvent;)Z
    .locals 9

    .line 947
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 948
    invoke-direct {p0, v2}, Llocal/voicebridge/VoiceBridgeService;->actionForDpad(I)I

    move-result v3

    const/4 v8, 0x1

    if-nez v3, :cond_1

    .line 950
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Llocal/voicebridge/VoiceBridgeService;->clearNewRemoteNavigation()V

    :cond_0
    return v8

    .line 954
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    .line 955
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    .line 956
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    .line 958
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->isDuplicateRemoteDpadEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 959
    iget-boolean p1, p0, Llocal/voicebridge/VoiceBridgeService;->keysEnabled:Z

    if-nez p1, :cond_2

    .line 960
    invoke-direct {p0}, Llocal/voicebridge/VoiceBridgeService;->clearNewRemoteNavigation()V

    .line 961
    invoke-virtual {p0, v3}, Llocal/voicebridge/VoiceBridgeService;->performGlobalAction(I)Z

    return v8

    .line 964
    :cond_2
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->navigationRepeater:Llocal/voicebridge/NavigationRepeater;

    invoke-virtual/range {v0 .. v7}, Llocal/voicebridge/NavigationRepeater;->startPress(IIIJJ)Z

    return v8

    :cond_3
    move-wide v3, v4

    move-wide v5, v6

    .line 968
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 969
    iget-object p1, p0, Llocal/voicebridge/VoiceBridgeService;->navigationRepeater:Llocal/voicebridge/NavigationRepeater;

    invoke-virtual {p1, v2, v1, v3, v4}, Llocal/voicebridge/NavigationRepeater;->ownsPress(IIJ)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 970
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->navigationRepeater:Llocal/voicebridge/NavigationRepeater;

    invoke-virtual/range {v0 .. v6}, Llocal/voicebridge/NavigationRepeater;->confirmLongPress(IIJJ)Z

    :cond_4
    return v8

    .line 975
    :cond_5
    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->isDuplicateRemoteDpadEvent(Landroid/view/KeyEvent;)Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v8, :cond_6

    .line 976
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->navigationRepeater:Llocal/voicebridge/NavigationRepeater;

    invoke-virtual/range {v0 .. v6}, Llocal/voicebridge/NavigationRepeater;->release(IIJJ)V

    :cond_6
    return v8
.end method

.method private handleRemoteKey(Landroid/view/KeyEvent;)Z
    .locals 12

    .line 889
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 890
    invoke-direct {p0, v2}, Llocal/voicebridge/VoiceBridgeService;->actionForDpad(I)I

    move-result v3

    const/4 v7, 0x0

    if-nez v3, :cond_1

    .line 892
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Llocal/voicebridge/VoiceBridgeService;->clearNavigation()V

    :cond_0
    return v7

    .line 895
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 896
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->consumedKeys:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 897
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->passThroughKeys:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 899
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v8, 0x1

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 900
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->navigationRepeater:Llocal/voicebridge/NavigationRepeater;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual {v0, v2, v1, v3, v4}, Llocal/voicebridge/NavigationRepeater;->ownsPress(IIJ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 901
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->navigationRepeater:Llocal/voicebridge/NavigationRepeater;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    .line 902
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    .line 901
    invoke-virtual/range {v0 .. v6}, Llocal/voicebridge/NavigationRepeater;->confirmLongPress(IIJJ)Z

    .line 903
    iget-object p0, p0, Llocal/voicebridge/VoiceBridgeService;->consumedKeys:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v2, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return v8

    .line 906
    :cond_3
    iget-object p1, p0, Llocal/voicebridge/VoiceBridgeService;->consumedKeys:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    if-eqz p1, :cond_4

    return v8

    .line 907
    :cond_4
    iget-object p0, p0, Llocal/voicebridge/VoiceBridgeService;->passThroughKeys:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-eqz p0, :cond_5

    return v7

    :cond_5
    return v8

    .line 910
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v8, :cond_a

    .line 911
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->consumedKeys:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v9

    .line 912
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->passThroughKeys:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    .line 913
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->consumedKeys:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 914
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->passThroughKeys:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 915
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->navigationRepeater:Llocal/voicebridge/NavigationRepeater;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual {v0, v2, v1, v3, v4}, Llocal/voicebridge/NavigationRepeater;->ownsPress(IIJ)Z

    move-result v11

    .line 916
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->navigationRepeater:Llocal/voicebridge/NavigationRepeater;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    .line 917
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    .line 916
    invoke-virtual/range {v0 .. v6}, Llocal/voicebridge/NavigationRepeater;->release(IIJJ)V

    if-eqz v11, :cond_7

    return v8

    :cond_7
    if-eqz v9, :cond_8

    return v8

    :cond_8
    if-eqz v10, :cond_9

    return v7

    :cond_9
    return v8

    .line 923
    :cond_a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    .line 924
    iget-boolean v0, p0, Llocal/voicebridge/VoiceBridgeService;->keysEnabled:Z

    if-nez v0, :cond_c

    .line 925
    invoke-direct {p0}, Llocal/voicebridge/VoiceBridgeService;->clearNewRemoteNavigation()V

    .line 926
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_b

    .line 927
    invoke-virtual {p0, v3}, Llocal/voicebridge/VoiceBridgeService;->performGlobalAction(I)Z

    .line 928
    iget-object p0, p0, Llocal/voicebridge/VoiceBridgeService;->consumedKeys:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v2, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_b
    return v8

    .line 932
    :cond_c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_e

    .line 933
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_e

    .line 934
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->navigationRepeater:Llocal/voicebridge/NavigationRepeater;

    .line 935
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    .line 934
    invoke-virtual/range {v0 .. v7}, Llocal/voicebridge/NavigationRepeater;->startPress(IIIJJ)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 936
    iget-object p0, p0, Llocal/voicebridge/VoiceBridgeService;->consumedKeys:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v2, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_d
    return p1

    :cond_e
    return v7
.end method

.method private hasFocusedInput(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1247
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->findFocusedNode(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->isTextLike(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    return v0
.end method

.method private hasSliderAncestor(Landroid/view/accessibility/AccessibilityNodeInfo;I)Z
    .locals 11

    .line 1069
    const-string v0, "\u53ef\u8c03\u6570\u503c"

    const-string v1, "ProgressBar"

    const-string v2, "SeekBar"

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-eqz p1, :cond_4

    if-gt v4, p2, :cond_4

    .line 1072
    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {p0, v5}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 1073
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {p0, v6}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1074
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_3

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1075
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v5

    move v6, v3

    :goto_1
    if-ge v6, v5, :cond_2

    const/16 v7, 0x14

    if-ge v6, v7, :cond_2

    .line 1077
    invoke-virtual {p1, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1079
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-direct {p0, v9}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 1080
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {p0, v7}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1081
    invoke-virtual {v9, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1082
    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    return v8

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1085
    :cond_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return v8

    :catchall_0
    :cond_4
    return v3
.end method

.method private insertTextIntoPlaySearch(Ljava/lang/String;)Z
    .locals 9

    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->lastForegroundPackage:Ljava/lang/String;
    invoke-static {v0}, Llocal/voicebridge/VoiceSessionPolicy;->canInsert(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :insert_owned
    const/4 v0, 0x0
    return v0
    :insert_owned
    # Cached foreground alone is insufficient: require the active root too.
    invoke-virtual {p0}, Llocal/voicebridge/VoiceBridgeService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;
    move-result-object v0
    if-eqz v0, :insert_not_owned
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;
    move-result-object v0
    invoke-direct {p0, v0}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Llocal/voicebridge/VoiceSessionPolicy;->canInsert(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :insert_root_owned
    :insert_not_owned
    const/4 v0, 0x0
    return v0
    :insert_root_owned

    .line 1554
    const-string v0, "VoiceBridge"

    const/4 v1, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_b

    .line 1556
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1557
    invoke-virtual {p0}, Llocal/voicebridge/VoiceBridgeService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1558
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1559
    :cond_0
    invoke-virtual {p0}, Llocal/voicebridge/VoiceBridgeService;->getWindows()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1561
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityWindowInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1563
    :try_start_1
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_1

    .line 1564
    :try_start_2
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1567
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertRoots count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " text="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    .line 1568
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    .line 1569
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1570
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {p0, v5}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 1571
    const-string v6, "com.android.vending"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1572
    iget-boolean v5, p0, Llocal/voicebridge/VoiceBridgeService;->debugTree:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insert"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    invoke-direct {p0, v4, v5, v1, v6}, Llocal/voicebridge/VoiceBridgeService;->describeTree(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;II)V

    :cond_3
    const/4 v5, 0x1

    .line 1573
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1574
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEditable()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "focused"

    invoke-direct {p0, v6, p1, v7}, Llocal/voicebridge/VoiceBridgeService;->performSetText(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    return v5

    .line 1575
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1576
    invoke-direct {p0, v4, v7, v1}, Llocal/voicebridge/VoiceBridgeService;->findEditables(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;I)V

    .line 1577
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1578
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v7, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    .line 1579
    :cond_6
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v8

    if-nez v8, :cond_7

    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    .line 1580
    :cond_7
    const-string v8, "foundEditable"

    invoke-direct {p0, v7, p1, v8}, Llocal/voicebridge/VoiceBridgeService;->performSetText(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    return v5

    :cond_8
    if-eqz v6, :cond_9

    .line 1582
    const-string v4, "nonEditableFocused"

    invoke-direct {p0, v6, p1, v4}, Llocal/voicebridge/VoiceBridgeService;->performSetText(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    return v5

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 1584
    :cond_a
    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertTextIntoPlaySearch no editable Play Store node text="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    .line 1585
    const-string p1, "insertTextIntoPlaySearch failed"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    :goto_3
    return v1
.end method

.method private inspectPlayStoreWindow(Ljava/lang/String;)V
    .locals 7

    .line 466
    const-string v0, "VoiceBridge"

    invoke-direct {p0}, Llocal/voicebridge/VoiceBridgeService;->shouldObserveWindows()Z

    move-result v1

    if-nez v1, :inspect_voice_window

    return-void

    :inspect_voice_window
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 467
    invoke-virtual {p0}, Llocal/voicebridge/VoiceBridgeService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 468
    const-string v3, "com.android.vending"

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {p0, v4}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    :cond_0
    invoke-virtual {p0}, Llocal/voicebridge/VoiceBridgeService;->getWindows()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 471
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityWindowInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 473
    :try_start_2
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_1

    .line 474
    :try_start_3
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {p0, v5}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 477
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    const/4 v4, 0x1

    .line 478
    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 479
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEditable()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":focus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v5, v1, v4}, Llocal/voicebridge/VoiceBridgeService;->recordPlayStoreNode(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 483
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 484
    invoke-direct {p0, v3, v4, v5}, Llocal/voicebridge/VoiceBridgeService;->findEditables(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;I)V

    .line 485
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 486
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":editable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Llocal/voicebridge/VoiceBridgeService;->recordPlayStoreNode(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;I)V

    goto :goto_2

    .line 490
    :cond_5
    const-string p0, "windowWatch"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 491
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playStoreWindow "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " roots="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " editable=false"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    .line 493
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "inspectPlayStoreWindow failed where="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " err="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return-void
.end method

.method private isAssistantPackage(Ljava/lang/String;)Z
    .locals 0

    .line 1533
    const-string p0, "com.google.android.katniss"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "com.android.systemui"

    .line 1534
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "com.google.android.googlequicksearchbox"

    .line 1535
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "com.google.android.apps.googleassistant"

    .line 1536
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "com.google.android.as"

    .line 1537
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "com.google.android.apps.tv.launcherx"

    .line 1538
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "com.google.android.apps.tv.dreamx"

    .line 1539
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "com.google.android.tv.remote.service"

    .line 1540
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "android"

    .line 1541
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private isDpadKey(I)Z
    .locals 0

    const/16 p0, 0x13

    if-eq p1, p0, :cond_0

    const/16 p0, 0x14

    if-eq p1, p0, :cond_0

    const/16 p0, 0x15

    if-eq p1, p0, :cond_0

    const/16 p0, 0x16

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private isDuplicateRemoteDpadEvent(Landroid/view/KeyEvent;)Z
    .locals 18

    move-object/from16 v0, p0

    .line 812
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    return v3

    :pswitch_0
    move v1, v2

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_3
    move v1, v3

    .line 819
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    .line 820
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    .line 821
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    .line 822
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v7

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 823
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v11

    const-string v12, " primary="

    const-string v13, "VoiceBridge"

    if-nez v11, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v11

    if-nez v11, :cond_4

    .line 824
    iget-object v11, v0, Llocal/voicebridge/VoiceBridgeService;->trackedDpadPresses:[Z

    aget-boolean v14, v11, v1

    if-eqz v14, :cond_3

    .line 830
    iget-object v14, v0, Llocal/voicebridge/VoiceBridgeService;->trackedDpadDownAt:[J

    aget-wide v14, v14, v1

    sub-long v14, v7, v14

    cmp-long v16, v14, v9

    if-ltz v16, :cond_2

    const-wide/16 v16, 0x15e

    cmp-long v14, v14, v16

    if-gtz v14, :cond_2

    iget-object v14, v0, Llocal/voicebridge/VoiceBridgeService;->trackedDpadDownTimes:[J

    aget-wide v14, v14, v1

    cmp-long v14, v5, v14

    if-nez v14, :cond_2

    .line 832
    iget-object v3, v0, Llocal/voicebridge/VoiceBridgeService;->trackedDpadDevices:[I

    aget v3, v3, v1

    if-eq v4, v3, :cond_1

    iget-object v3, v0, Llocal/voicebridge/VoiceBridgeService;->trackedDpadPairedDevices:[I

    aget v7, v3, v1

    if-gez v7, :cond_1

    .line 833
    aput v4, v3, v1

    .line 834
    iget-object v3, v0, Llocal/voicebridge/VoiceBridgeService;->trackedDpadPairedDownTimes:[J

    aput-wide v5, v3, v1

    .line 835
    iget-object v3, v0, Llocal/voicebridge/VoiceBridgeService;->navigationRepeater:Llocal/voicebridge/NavigationRepeater;

    invoke-virtual {v3, v4, v5, v6}, Llocal/voicebridge/NavigationRepeater;->registerPairedNode(IJ)V

    .line 836
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    iget-object v0, v0, Llocal/voicebridge/VoiceBridgeService;->trackedDpadDevices:[I

    aget v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "dpad duplicate-node key="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " duplicate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2

    .line 843
    :cond_2
    aput-boolean v3, v11, v1

    .line 845
    :cond_3
    aput-boolean v2, v11, v1

    .line 846
    iget-object v2, v0, Llocal/voicebridge/VoiceBridgeService;->trackedDpadDevices:[I

    aput v4, v2, v1

    .line 847
    iget-object v2, v0, Llocal/voicebridge/VoiceBridgeService;->trackedDpadDownTimes:[J

    aput-wide v5, v2, v1

    .line 848
    iget-object v2, v0, Llocal/voicebridge/VoiceBridgeService;->trackedDpadDownAt:[J

    aput-wide v7, v2, v1

    .line 849
    iget-object v2, v0, Llocal/voicebridge/VoiceBridgeService;->trackedDpadPairedDevices:[I

    const/4 v4, -0x1

    aput v4, v2, v1

    .line 850
    iget-object v2, v0, Llocal/voicebridge/VoiceBridgeService;->trackedDpadPairedDownTimes:[J

    aput-wide v9, v2, v1

    .line 851
    iget-object v0, v0, Llocal/voicebridge/VoiceBridgeService;->releasedDpadAt:[J

    aput-wide v9, v0, v1

    return v3

    .line 854
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v11

    if-nez v11, :cond_5

    .line 858
    iget-object v0, v0, Llocal/voicebridge/VoiceBridgeService;->trackedDpadPresses:[Z

    aget-boolean v0, v0, v1

    xor-int/2addr v0, v2

    return v0

    .line 860
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v11

    if-ne v11, v2, :cond_9

    .line 861
    iget-object v11, v0, Llocal/voicebridge/VoiceBridgeService;->trackedDpadPresses:[Z

    aget-boolean v11, v11, v1

    if-eqz v11, :cond_7

    .line 862
    iget-object v2, v0, Llocal/voicebridge/VoiceBridgeService;->trackedDpadDevices:[I

    aget v2, v2, v1

    if-eq v4, v2, :cond_6

    iget-object v2, v0, Llocal/voicebridge/VoiceBridgeService;->trackedDpadPairedDevices:[I

    aget v9, v2, v1

    if-eq v4, v9, :cond_6

    if-gez v9, :cond_6

    .line 865
    aput v4, v2, v1

    .line 866
    iget-object v2, v0, Llocal/voicebridge/VoiceBridgeService;->trackedDpadPairedDownTimes:[J

    aput-wide v5, v2, v1

    .line 867
    iget-object v2, v0, Llocal/voicebridge/VoiceBridgeService;->navigationRepeater:Llocal/voicebridge/NavigationRepeater;

    invoke-virtual {v2, v4, v5, v6}, Llocal/voicebridge/NavigationRepeater;->registerPairedNode(IJ)V

    .line 868
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    iget-object v5, v0, Llocal/voicebridge/VoiceBridgeService;->trackedDpadDevices:[I

    aget v5, v5, v1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "dpad release-node key="

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " release="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :cond_6
    iget-object v2, v0, Llocal/voicebridge/VoiceBridgeService;->releasedDpadDevices:[I

    iget-object v4, v0, Llocal/voicebridge/VoiceBridgeService;->trackedDpadDevices:[I

    aget v4, v4, v1

    aput v4, v2, v1

    .line 872
    iget-object v2, v0, Llocal/voicebridge/VoiceBridgeService;->releasedDpadDownTimes:[J

    iget-object v4, v0, Llocal/voicebridge/VoiceBridgeService;->trackedDpadDownTimes:[J

    aget-wide v4, v4, v1

    aput-wide v4, v2, v1

    .line 873
    iget-object v2, v0, Llocal/voicebridge/VoiceBridgeService;->releasedDpadPairedDevices:[I

    iget-object v4, v0, Llocal/voicebridge/VoiceBridgeService;->trackedDpadPairedDevices:[I

    aget v4, v4, v1

    aput v4, v2, v1

    .line 874
    iget-object v2, v0, Llocal/voicebridge/VoiceBridgeService;->releasedDpadPairedDownTimes:[J

    iget-object v4, v0, Llocal/voicebridge/VoiceBridgeService;->trackedDpadPairedDownTimes:[J

    aget-wide v4, v4, v1

    aput-wide v4, v2, v1

    .line 875
    iget-object v2, v0, Llocal/voicebridge/VoiceBridgeService;->releasedDpadAt:[J

    aput-wide v7, v2, v1

    .line 876
    iget-object v0, v0, Llocal/voicebridge/VoiceBridgeService;->trackedDpadPresses:[Z

    aput-boolean v3, v0, v1

    return v3

    .line 881
    :cond_7
    iget-object v0, v0, Llocal/voicebridge/VoiceBridgeService;->releasedDpadAt:[J

    aget-wide v0, v0, v1

    cmp-long v4, v0, v9

    if-lez v4, :cond_8

    cmp-long v4, v7, v0

    if-ltz v4, :cond_8

    sub-long/2addr v7, v0

    const-wide/16 v0, 0x1f4

    cmp-long v0, v7, v0

    if-gtz v0, :cond_8

    return v2

    :cond_8
    return v3

    :cond_9
    return v2

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isInputMethodWindowVisible()Z
    .locals 3

    const/4 v0, 0x0

    .line 1235
    :try_start_0
    invoke-virtual {p0}, Llocal/voicebridge/VoiceBridgeService;->getWindows()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    return v0

    .line 1237
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    if-eqz v1, :cond_1

    .line 1238
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 p0, 0x1

    return p0

    :catchall_0
    :cond_2
    return v0
.end method

.method private isLegacyRemote(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 800
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 801
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result p1

    const/16 v0, 0x101

    if-ne p1, v0, :cond_0

    .line 802
    invoke-virtual {p0}, Landroid/view/InputDevice;->getVendorId()I

    move-result p1

    const/16 v0, 0x2717

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/InputDevice;->getProductId()I

    move-result p0

    const/16 p1, 0x32b8

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isNoise(Ljava/lang/String;)Z
    .locals 23

    .line 1503
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1504
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    move-object/from16 v1, p0

    .line 1505
    iget-object v1, v1, Llocal/voicebridge/VoiceBridgeService;->originText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const/16 v1, 0x2e

    .line 1506
    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "\u6b63\u5728\u8046\u542c"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "\u8046\u542c\u4e2d"

    aput-object v4, v3, v2

    const-string v4, "\u8bf7\u8bf4\u8bdd"

    const/4 v6, 0x2

    aput-object v4, v3, v6

    const-string v4, "\u8bf7\u5f00\u59cb\u8bf4\u8bdd"

    const/4 v7, 0x3

    aput-object v4, v3, v7

    const-string v4, "\u8bf4\u8bdd"

    const/4 v8, 0x4

    aput-object v4, v3, v8

    const-string v4, "\u6b63\u5728\u8bc6\u522b"

    const/4 v9, 0x5

    aput-object v4, v3, v9

    const-string v4, "\u8bc6\u522b\u4e2d"

    const/4 v10, 0x6

    aput-object v4, v3, v10

    const-string v4, "\u601d\u8003\u4e2d"

    const/4 v11, 0x7

    aput-object v4, v3, v11

    const-string v4, "\u6b63\u5728\u641c\u7d22"

    const/16 v12, 0x8

    aput-object v4, v3, v12

    const-string v4, "\u641c\u7d22\u4e2d"

    const/16 v13, 0x9

    aput-object v4, v3, v13

    const-string v4, "\u8bf7\u7a0d\u5019"

    const/16 v14, 0xa

    aput-object v4, v3, v14

    const-string v4, "\u8bf7\u91cd\u8bd5"

    const/16 v15, 0xb

    aput-object v4, v3, v15

    const/16 v4, 0xc

    const-string v16, "\u518d\u8bd5\u4e00\u6b21"

    aput-object v16, v3, v4

    const-string v17, "\u672a\u8bc6\u522b"

    move/from16 p1, v2

    const/16 v2, 0xd

    aput-object v17, v3, v2

    const/16 v17, 0xe

    const-string v18, "\u6ca1\u6709\u542c\u5230"

    aput-object v18, v3, v17

    const/16 v17, 0xf

    const-string v18, "listening"

    aput-object v18, v3, v17

    const/16 v17, 0x10

    const-string v18, "speak now"

    aput-object v18, v3, v17

    const/16 v17, 0x11

    const-string v18, "try again"

    aput-object v18, v3, v17

    const/16 v17, 0x12

    const-string v18, "searching"

    aput-object v18, v3, v17

    const/16 v17, 0x13

    const-string v18, "google"

    aput-object v18, v3, v17

    const/16 v17, 0x14

    const-string v18, "google assistant"

    aput-object v18, v3, v17

    const/16 v17, 0x15

    const-string v18, "no speech detected"

    aput-object v18, v3, v17

    const/16 v17, 0x16

    const-string v18, "speech not detected"

    aput-object v18, v3, v17

    const/16 v17, 0x17

    const-string v18, "\u641c\u7d22"

    aput-object v18, v3, v17

    const/16 v17, 0x18

    const-string v18, "\u8bed\u97f3\u641c\u7d22"

    aput-object v18, v3, v17

    const/16 v17, 0x19

    const-string v18, "\u53d6\u6d88"

    aput-object v18, v3, v17

    const/16 v17, 0x1a

    const-string v18, "\u8fd4\u56de"

    aput-object v18, v3, v17

    const/16 v17, 0x1b

    const-string v18, "ok"

    aput-object v18, v3, v17

    const/16 v17, 0x1c

    const-string v18, "okay"

    aput-object v18, v3, v17

    const/16 v17, 0x1d

    const-string v18, "\u8bbe\u7f6e"

    aput-object v18, v3, v17

    const/16 v17, 0x1e

    const-string v18, "\u4e3b\u9875"

    aput-object v18, v3, v17

    const/16 v17, 0x1f

    const-string v18, "\u5e2e\u52a9"

    aput-object v18, v3, v17

    const/16 v17, 0x20

    const-string v18, "\u9ea6\u514b\u98ce"

    aput-object v18, v3, v17

    const/16 v17, 0x21

    const-string v18, "\u8bed\u97f3"

    aput-object v18, v3, v17

    const/16 v17, 0x22

    const-string v18, "\u8bd5\u8bd5\u8fd9\u6837\u8bf4"

    aput-object v18, v3, v17

    const/16 v17, 0x23

    const-string v19, "\u4f60\u53ef\u4ee5\u8fd9\u6837\u95ee"

    aput-object v19, v3, v17

    const/16 v17, 0x24

    const-string v20, "\u6309\u8bed\u97f3\u952e"

    aput-object v20, v3, v17

    const/16 v17, 0x25

    const-string v21, "\u957f\u6309\u8bed\u97f3\u952e"

    aput-object v21, v3, v17

    const/16 v17, 0x26

    const-string v22, "\u8bf7\u95ee\u6211\u4e00\u4e2a\u95ee\u9898\uff0c\u6216\u5c1d\u8bd5\u4efb\u4e00\u4e2a\u5efa\u8bae"

    aput-object v22, v3, v17

    const/16 v17, 0x27

    const-string v22, "\u641c\u7d22\u6709\u8da3\u7684\u8282\u76ee"

    aput-object v22, v3, v17

    const/16 v17, 0x28

    const-string v22, "\u5929\u6c14\u600e\u6837"

    aput-object v22, v3, v17

    const/16 v17, 0x29

    const-string v22, "\u53d1\u9001\u53cd\u9988"

    aput-object v22, v3, v17

    const/16 v17, 0x2a

    const-string v22, "\u8f93\u5165\u6a21\u5f0f"

    aput-object v22, v3, v17

    const/16 v17, 0x2b

    const-string v22, "\u5efa\u8bae"

    aput-object v22, v3, v17

    const/16 v17, 0x2c

    const-string v22, "\u8bf4\u8bdd\u5373\u53ef\u5f00\u59cb\u641c\u7d22"

    aput-object v22, v3, v17

    const/16 v17, 0x2d

    const-string v22, "\u641c\u7d22\u64cd\u4f5c"

    aput-object v22, v3, v17

    move/from16 p0, v4

    move v4, v5

    :goto_0
    if-ge v4, v1, :cond_3

    .line 1521
    aget-object v1, v3, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return p1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    const/16 v1, 0x2e

    goto :goto_0

    .line 1522
    :cond_3
    new-array v1, v2, [Ljava/lang/String;

    aput-object v18, v1, v5

    aput-object v19, v1, p1

    aput-object v21, v1, v6

    aput-object v20, v1, v7

    aput-object v16, v1, v8

    const-string v3, "\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    aput-object v3, v1, v9

    const-string v3, "\u7f51\u7edc\u4e0d\u53ef\u7528"

    aput-object v3, v1, v10

    const-string v3, "\u51fa\u4e86\u70b9\u95ee\u9898"

    aput-object v3, v1, v11

    const-string v3, "\u65e0\u6cd5\u8fde\u63a5"

    aput-object v3, v1, v12

    const-string v3, "\u70b9\u6309\u9ea6\u514b\u98ce"

    aput-object v3, v1, v13

    const-string v3, "try saying"

    aput-object v3, v1, v14

    const-string v3, "check your connection"

    aput-object v3, v1, v15

    const-string v3, "something went wrong"

    aput-object v3, v1, p0

    :goto_1
    if-ge v5, v2, :cond_5

    .line 1528
    aget-object v3, v1, v5

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_4

    return p1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1529
    :cond_5
    const-string v1, "[0-9:/\\s\\-_.]+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isRemote(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 793
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 795
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    return v0

    .line 796
    :cond_1
    invoke-virtual {p0}, Landroid/view/InputDevice;->getVendorId()I

    move-result p1

    const/16 v2, 0x2717

    if-ne p1, v2, :cond_2

    invoke-virtual {p0}, Landroid/view/InputDevice;->getProductId()I

    move-result p0

    const/16 p1, 0x32b9

    if-ne p0, p1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method private isSliderFocused()Z
    .locals 6

    const/4 v0, 0x0

    .line 1047
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1048
    invoke-virtual {p0}, Llocal/voicebridge/VoiceBridgeService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1049
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1050
    :cond_0
    invoke-virtual {p0}, Llocal/voicebridge/VoiceBridgeService;->getWindows()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1051
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1053
    :try_start_1
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    .line 1054
    :try_start_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1056
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1057
    invoke-direct {p0, v2}, Llocal/voicebridge/VoiceBridgeService;->findFocusedNode(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1059
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v3}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1060
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {p0, v4}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1061
    const-string v5, "SeekBar"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "ProgressBar"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "\u53ef\u8c03\u6570\u503c"

    .line 1062
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x5

    invoke-direct {p0, v2, v3}, Llocal/voicebridge/VoiceBridgeService;->hasSliderAncestor(Landroid/view/accessibility/AccessibilityNodeInfo;I)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_3

    :cond_4
    const/4 p0, 0x1

    return p0

    :catchall_1
    :cond_5
    return v0
.end method

.method private isTextInputFocused()Z
    .locals 4

    const/4 v0, 0x0

    .line 1220
    :try_start_0
    invoke-virtual {p0}, Llocal/voicebridge/VoiceBridgeService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 1221
    invoke-direct {p0, v1}, Llocal/voicebridge/VoiceBridgeService;->hasFocusedInput(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 1222
    :cond_0
    invoke-virtual {p0}, Llocal/voicebridge/VoiceBridgeService;->getWindows()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 1224
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1226
    :try_start_1
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v3, 0x0

    .line 1227
    :goto_0
    :try_start_2
    invoke-direct {p0, v3}, Llocal/voicebridge/VoiceBridgeService;->hasFocusedInput(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_2

    return v2

    :catchall_1
    :cond_3
    return v0
.end method

.method private isTextLike(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1202
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1203
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEditable()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "EditText"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "TextInput"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "WebView"

    .line 1204
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Input"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0

    :catchall_0
    return v0
.end method

.method private isVoiceCandidatePackage(Ljava/lang/String;)Z
    .locals 2

    .line 1545
    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->isAssistantPackage(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    if-eqz p1, :cond_2

    .line 1546
    const-string v1, "com.android.vending"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1547
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1548
    const-string v1, "google"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    const-string v1, "katniss"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    const-string v1, "assistant"

    .line 1549
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    const-string v1, "voice"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    const-string v1, "search"

    .line 1550
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    const-string v1, "tvsearch"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_1

    return p0

    :cond_1
    return v0

    :cond_2
    return p0
.end method

.method private isVoicePlateNode(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 6

    .line 322
    const-string v0, "com.google.android.katniss"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    .line 324
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 325
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 326
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-gez v4, :cond_3

    const-string v4, "interactor_voiceplate_main"

    .line 327
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_3

    const-string v4, "voiceplate_background_amati"

    .line 328
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_3

    const-string v4, "/id/search_bar"

    .line 329
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_3

    const-string v4, "/id/user_query"

    .line 330
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_3

    .line 331
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 332
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 333
    const-string v2, "StreamingTextView"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u8bf4\u8bdd\u5373\u53ef\u5f00\u59cb\u641c\u7d22"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 335
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    const/16 v3, 0x50

    if-ge v2, v3, :cond_4

    .line 337
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-direct {p0, v3}, Llocal/voicebridge/VoiceBridgeService;->isVoicePlateNode(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    return v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v5

    :catchall_0
    move-exception p0

    .line 339
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "isVoicePlateNode failed err="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VoiceBridge"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v1
.end method

.method private loadConfig()V
    .locals 15

    .line 621
    const-string v7, "VoiceBridge"

    const-string v8, "initialDelay"

    const-string v9, "xiaomi"

    .line 0
    const-string v10, "loadConfig keyMode="

    .line 621
    :try_start_0
    const-string v1, "voicebridge"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Llocal/voicebridge/VoiceBridgeService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 622
    const-string v1, "keyMode"

    const-string v3, "observe"

    invoke-interface {v11, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Llocal/voicebridge/VoiceBridgeService;->normalizeKeyMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Llocal/voicebridge/VoiceBridgeService;->keyMode:Ljava/lang/String;

    .line 623
    const-string v1, "debugTree"

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Llocal/voicebridge/VoiceBridgeService;->debugTree:Z

    .line 624
    const-string v1, "keysEnabled"

    const/4 v12, 0x1

    invoke-interface {v11, v1, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Llocal/voicebridge/VoiceBridgeService;->keysEnabled:Z

    .line 625
    const-string v1, "voiceEnabled"

    invoke-interface {v11, v1, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Llocal/voicebridge/VoiceBridgeService;->voiceEnabled:Z

    const-wide/16 v13, 0x1f4

    .line 626
    invoke-interface {v11, v8, v13, v14}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v3, 0x190

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    move-wide v1, v13

    :cond_0
    const-wide/16 v3, 0x190

    const-wide/16 v5, 0x5dc

    move-object v0, p0

    .line 631
    invoke-direct/range {v0 .. v6}, Llocal/voicebridge/VoiceBridgeService;->clamp(JJJ)J

    move-result-wide v1

    iput-wide v1, p0, Llocal/voicebridge/VoiceBridgeService;->initialDelayMs:J

    .line 633
    const-string v1, "repeatDelay"

    const-wide/16 v2, 0xa0

    invoke-interface {v11, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Llocal/voicebridge/VoiceBridgeService;->repeatDelayMs:J

    .line 634
    iput-object v9, p0, Llocal/voicebridge/VoiceBridgeService;->deviceFilter:Ljava/lang/String;

    .line 635
    iget-wide v1, p0, Llocal/voicebridge/VoiceBridgeService;->initialDelayMs:J

    invoke-interface {v11, v8, v13, v14}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v1, v1, v3

    const-string v2, "deviceFilter"

    if-nez v1, :cond_1

    .line 636
    :try_start_1
    invoke-interface {v11, v2, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 637
    :cond_1
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-wide v3, p0, Llocal/voicebridge/VoiceBridgeService;->initialDelayMs:J

    invoke-interface {v1, v8, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 639
    :cond_2
    const-string v1, "voiceWait"

    const-wide/16 v2, 0xbb8

    invoke-interface {v11, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Llocal/voicebridge/VoiceBridgeService;->voiceWaitMs:J

    .line 640
    iget-object v1, p0, Llocal/voicebridge/VoiceBridgeService;->navigationRepeater:Llocal/voicebridge/NavigationRepeater;

    iget-wide v2, p0, Llocal/voicebridge/VoiceBridgeService;->initialDelayMs:J

    iget-wide v4, p0, Llocal/voicebridge/VoiceBridgeService;->repeatDelayMs:J

    invoke-virtual {v1, v2, v3, v4, v5}, Llocal/voicebridge/NavigationRepeater;->setDelays(JJ)V

    .line 641
    iput-boolean v12, p0, Llocal/voicebridge/VoiceBridgeService;->configLoaded:Z

    .line 642
    iget-object v1, p0, Llocal/voicebridge/VoiceBridgeService;->keyMode:Ljava/lang/String;

    iget-boolean v2, p0, Llocal/voicebridge/VoiceBridgeService;->debugTree:Z

    iget-boolean v3, p0, Llocal/voicebridge/VoiceBridgeService;->keysEnabled:Z

    iget-boolean v0, p0, Llocal/voicebridge/VoiceBridgeService;->voiceEnabled:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " debugTree="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " keysEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " voiceEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 644
    const-string v1, "loadConfig failed"

    invoke-static {v7, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private makePipe(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;
    .locals 5

    .line 1804
    const-string v0, "VoiceBridge"

    .line 0
    const-string v1, "pipe created readFd="

    const/4 v2, 0x0

    .line 1804
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    .line 1805
    aget-object v4, v3, v4

    iput-object v4, p0, Llocal/voicebridge/VoiceBridgeService;->readPfd:Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x1

    .line 1806
    aget-object v3, v3, v4

    iput-object v3, p0, Llocal/voicebridge/VoiceBridgeService;->writePfd:Landroid/os/ParcelFileDescriptor;

    if-eqz p2, :cond_0

    .line 1807
    invoke-virtual {p0}, Llocal/voicebridge/VoiceBridgeService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string p2, "zh-test.pcm"

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    move-object p1, v2

    goto :goto_0

    .line 1808
    :cond_1
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    if-nez p1, :cond_2

    .line 1810
    const-string p1, "pipe source missing: use mode asset or -e path /sdcard/...pcm"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    invoke-direct {p0}, Llocal/voicebridge/VoiceBridgeService;->closePipe()V

    return-object v2

    .line 1814
    :cond_2
    iget-object p2, p0, Llocal/voicebridge/VoiceBridgeService;->writePfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    .line 1815
    iput-boolean v4, p0, Llocal/voicebridge/VoiceBridgeService;->writing:Z

    .line 1816
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Llocal/voicebridge/VoiceBridgeService$11;

    invoke-direct {v4, p0, p2, p1}, Llocal/voicebridge/VoiceBridgeService$11;-><init>(Llocal/voicebridge/VoiceBridgeService;Ljava/io/FileDescriptor;Ljava/io/InputStream;)V

    const-string p1, "voicebridge-pipe"

    invoke-direct {v3, v4, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v3, p0, Llocal/voicebridge/VoiceBridgeService;->writer:Ljava/lang/Thread;

    .line 1843
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1844
    iget-object p1, p0, Llocal/voicebridge/VoiceBridgeService;->readPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result p1

    iget-object p2, p0, Llocal/voicebridge/VoiceBridgeService;->writePfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " writeFd="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    iget-object p0, p0, Llocal/voicebridge/VoiceBridgeService;->readPfd:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    .line 1847
    const-string p2, "makePipe failed"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1848
    invoke-direct {p0}, Llocal/voicebridge/VoiceBridgeService;->closePipe()V

    return-object v2
.end method

.method private maybeCaptureWindows(Ljava/lang/String;)V
    .locals 4

    .line 1378
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->main:Landroid/os/Handler;

    iget-object v1, p0, Llocal/voicebridge/VoiceBridgeService;->captureAssistant:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1379
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->main:Landroid/os/Handler;

    iget-object v1, p0, Llocal/voicebridge/VoiceBridgeService;->captureAssistant:Ljava/lang/Runnable;

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1380
    iget-boolean v0, p0, Llocal/voicebridge/VoiceBridgeService;->debugTree:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "Direct"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Llocal/voicebridge/VoiceBridgeService;->maybeDumpWindows(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private maybeDumpWindows(Ljava/lang/String;I)V
    .locals 6

    # Diagnostics are opt-in and never run while merely navigating.
    iget-boolean v0, p0, Llocal/voicebridge/VoiceBridgeService;->debugTree:Z

    if-eqz v0, :dump_disabled

    iget-boolean v0, p0, Llocal/voicebridge/VoiceBridgeService;->observationActive:Z

    if-nez v0, :dump_enabled

    :dump_disabled
    return-void

    :dump_enabled

    .line 1383
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1384
    iget-wide v2, p0, Llocal/voicebridge/VoiceBridgeService;->lastDumpMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xfa

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    return-void

    .line 1385
    :cond_0
    iput-wide v0, p0, Llocal/voicebridge/VoiceBridgeService;->lastDumpMs:J

    .line 1386
    invoke-direct {p0, p1, p2}, Llocal/voicebridge/VoiceBridgeService;->dumpWindows(Ljava/lang/String;I)V

    return-void
.end method

.method private moveFocusFromInput(I)Z
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1093
    const-string v2, "VoiceBridge"

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1094
    invoke-virtual {v0}, Llocal/voicebridge/VoiceBridgeService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1095
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1096
    :cond_0
    invoke-virtual {v0}, Llocal/voicebridge/VoiceBridgeService;->getWindows()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 1097
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityWindowInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1099
    :try_start_1
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-object v7, v6

    :goto_1
    if-eqz v7, :cond_1

    .line 1100
    :try_start_2
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1104
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1105
    invoke-direct {v0, v7}, Llocal/voicebridge/VoiceBridgeService;->findFocusedNode(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    .line 1106
    invoke-direct {v0, v8}, Llocal/voicebridge/VoiceBridgeService;->isTextLike(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    :cond_4
    move-object v7, v6

    move-object v8, v7

    :goto_2
    if-nez v8, :cond_5

    return v3

    .line 1113
    :cond_5
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 1114
    invoke-virtual {v8, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 1115
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1116
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v0, v10, v9, v3}, Llocal/voicebridge/VoiceBridgeService;->collectNavigable(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;I)V

    goto :goto_3

    .line 1119
    :cond_6
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    .line 1120
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    .line 1121
    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-direct {v0, v11}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 1122
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const v12, 0x7fffffff

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const/16 v14, 0x21

    if-eqz v13, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v13, :cond_a

    if-eq v13, v8, :cond_a

    .line 1123
    invoke-virtual {v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 1124
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 1125
    invoke-virtual {v13, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 1126
    invoke-virtual {v15}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_a

    invoke-virtual {v15, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_a

    .line 1127
    invoke-virtual {v15}, Landroid/graphics/Rect;->centerX()I

    move-result v16

    .line 1128
    invoke-virtual {v15}, Landroid/graphics/Rect;->centerY()I

    move-result v17

    if-ne v1, v14, :cond_7

    sub-int v14, v10, v17

    goto :goto_5

    :cond_7
    sub-int v14, v17, v10

    :goto_5
    if-lez v14, :cond_a

    sub-int v16, v16, v4

    .line 1132
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move/from16 v17, v3

    .line 1133
    :try_start_3
    iget v3, v5, Landroid/graphics/Rect;->right:I

    move/from16 v18, v4

    iget v4, v15, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, v5, Landroid/graphics/Rect;->left:I

    iget v15, v15, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr v3, v4

    .line 1134
    invoke-virtual {v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v0, v4}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    shl-int/lit8 v14, v14, 0x2

    add-int v14, v14, v16

    .line 1136
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_8

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v4, :cond_8

    const v4, 0x186a0

    add-int/2addr v14, v4

    :cond_8
    if-gtz v3, :cond_9

    add-int/lit16 v14, v14, 0x320

    :cond_9
    if-ge v14, v12, :cond_b

    move-object v6, v13

    move v12, v14

    goto :goto_6

    :cond_a
    move/from16 v17, v3

    move/from16 v18, v4

    :cond_b
    :goto_6
    move/from16 v3, v17

    move/from16 v4, v18

    goto/16 :goto_4

    :cond_c
    move/from16 v17, v3

    .line 1140
    const-string v3, " to="

    const-string v4, " from="

    const-string v5, " toPkg="

    const-string v9, " fromPkg="

    const-string v10, "inputFocusMove direction="

    if-eqz v6, :cond_d

    const/4 v11, 0x6

    :try_start_4
    invoke-direct {v0, v6, v11}, Llocal/voicebridge/VoiceBridgeService;->focusNodeOrAncestor(Landroid/view/accessibility/AccessibilityNodeInfo;I)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 1142
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {v0, v7}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1143
    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-direct {v0, v11}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-direct {v0, v12}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 1144
    invoke-direct {v0, v8}, Llocal/voicebridge/VoiceBridgeService;->nodeBrief(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v6}, Llocal/voicebridge/VoiceBridgeService;->nodeBrief(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " moved=true rootPkg="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1141
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_d
    if-ne v1, v14, :cond_e

    const/16 v11, 0x10

    goto :goto_7

    :cond_e
    const/16 v11, 0x11

    .line 1149
    :goto_7
    invoke-virtual {v0, v11}, Llocal/voicebridge/VoiceBridgeService;->performGlobalAction(I)Z

    move-result v11

    .line 1151
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {v0, v7}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1152
    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-direct {v0, v12}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1153
    const-string v13, "none"

    if-nez v6, :cond_f

    move-object v14, v13

    goto :goto_8

    :cond_f
    :try_start_5
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-direct {v0, v14}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 1154
    :goto_8
    invoke-direct {v0, v8}, Llocal/voicebridge/VoiceBridgeService;->nodeBrief(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v8

    if-eqz v6, :cond_10

    invoke-direct {v0, v6}, Llocal/voicebridge/VoiceBridgeService;->nodeBrief(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v13

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " moved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rootPkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1150
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return v11

    :catchall_1
    move-exception v0

    goto :goto_9

    :catchall_2
    move-exception v0

    move/from16 v17, v3

    .line 1157
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "inputFocusMove failed "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v17
.end method

.method private nodeBrief(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;
    .locals 8

    const-string v0, "cls="

    .line 2005
    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Llocal/voicebridge/VoiceBridgeService;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Llocal/voicebridge/VoiceBridgeService;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2006
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEditable()Z

    move-result v3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v4

    .line 2007
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v5

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {p0, v6}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Llocal/voicebridge/VoiceBridgeService;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2008
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {p0, v7}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Llocal/voicebridge/VoiceBridgeService;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2009
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getHintText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " id="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " editable="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " focused="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " visible="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " text="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " desc="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " hint="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 2010
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "nodeBriefError="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private normalizeKeyMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1689
    const-string p0, "observe"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1690
    const-string v0, "assistant"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 1691
    :cond_0
    const-string p0, "key"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "mic"

    return-object p0

    :cond_1
    return-object p1

    :cond_2
    return-object p0
.end method

.method private onAssistDown()V
    .locals 9

    .line 1252
    iget-boolean v0, p0, Llocal/voicebridge/VoiceBridgeService;->voiceEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 1253
    :cond_0
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->keyMode:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "assistDown keyMode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceBridge"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    const-string v0, "observe"

    iget-object v2, p0, Llocal/voicebridge/VoiceBridgeService;->keyMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "assistant"

    iget-object v2, p0, Llocal/voicebridge/VoiceBridgeService;->keyMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1259
    const-string v0, "gatt"

    iget-object v2, p0, Llocal/voicebridge/VoiceBridgeService;->keyMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1260
    const-string v0, "GATT \u91c7\u96c6\u5c1a\u672a\u5b9e\u73b0"

    invoke-direct {p0, v0}, Llocal/voicebridge/VoiceBridgeService;->toast(Ljava/lang/String;)V

    .line 1261
    const-string p0, "gatt key mode is not implemented yet"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1264
    :cond_1
    iget-object v3, p0, Llocal/voicebridge/VoiceBridgeService;->keyMode:Ljava/lang/String;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v4, "gtts"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Llocal/voicebridge/VoiceBridgeService;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void

    :cond_2
    move-object v2, p0

    .line 1255
    invoke-direct {v2}, Llocal/voicebridge/VoiceBridgeService;->beginObservation()V

    .line 1256
    invoke-direct {v2}, Llocal/voicebridge/VoiceBridgeService;->recordOrigin()V

    return-void
.end method

.method private onAssistUp()V
    .locals 6

    .line 1268
    iget-boolean v0, p0, Llocal/voicebridge/VoiceBridgeService;->voiceEnabled:Z

    if-eqz v0, :cond_1

    .line 1269
    const-string v0, "observe"

    iget-object v1, p0, Llocal/voicebridge/VoiceBridgeService;->keyMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "assistant"

    iget-object v1, p0, Llocal/voicebridge/VoiceBridgeService;->keyMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1276
    const-string v0, "gatt"

    iget-object v1, p0, Llocal/voicebridge/VoiceBridgeService;->keyMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1277
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->recognizer:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->stopListening()V

    .line 1278
    :cond_0
    invoke-direct {p0}, Llocal/voicebridge/VoiceBridgeService;->stopWriter()V

    :cond_1
    return-void

    .line 1270
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Llocal/voicebridge/VoiceBridgeService;->assistDownMs:J

    sub-long/2addr v0, v2

    iget-boolean v2, p0, Llocal/voicebridge/VoiceBridgeService;->assistantSeen:Z

    iget-object v3, p0, Llocal/voicebridge/VoiceBridgeService;->bestCandidate:Ljava/lang/String;

    .line 1271
    invoke-direct {p0, v3}, Llocal/voicebridge/VoiceBridgeService;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "assistUp observe elapsed="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms assistantSeen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " best="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1270
    const-string v1, "VoiceBridge"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->main:Landroid/os/Handler;

    iget-object v1, p0, Llocal/voicebridge/VoiceBridgeService;->captureAssistant:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1273
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->main:Landroid/os/Handler;

    iget-object v1, p0, Llocal/voicebridge/VoiceBridgeService;->finishObservation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1274
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->main:Landroid/os/Handler;

    iget-object v1, p0, Llocal/voicebridge/VoiceBridgeService;->captureAssistant:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1275
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->main:Landroid/os/Handler;

    iget-object v1, p0, Llocal/voicebridge/VoiceBridgeService;->finishObservation:Ljava/lang/Runnable;

    iget-wide v2, p0, Llocal/voicebridge/VoiceBridgeService;->voiceWaitMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private openProviderPfd(IZ)Landroid/os/ParcelFileDescriptor;
    .locals 7

    .line 1867
    const-string v0, "VoiceBridge"

    .line 0
    const-string v1, "provider open OK uri="

    const-string v2, "provider open uri="

    const-string v3, "content://com.google.android.apps.tvsearch.voice.controller.AudioFileDescriptorProvider/"

    .line 1867
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    if-eqz p2, :cond_0

    .line 1868
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    :cond_0
    invoke-virtual {p0}, Llocal/voicebridge/VoiceBridgeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "r"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 1870
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_1

    const/4 v5, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v5

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " pfd="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " fd="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception v1

    if-eqz p2, :cond_2

    .line 1873
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    .line 1874
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Llocal/voicebridge/VoiceBridgeService;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "provider open failed fd="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " err="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " msg="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1873
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private parseService(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 0

    if-eqz p1, :cond_1

    .line 1736
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "default"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "gtts"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1739
    const-string p0, "katniss"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "com.google.android.katniss/com.google.android.apps.tvsearch.voice.recognition.KatnissRecognitionService"

    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    .line 1740
    :cond_0
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    .line 1737
    :cond_1
    const-string p0, "com.google.android.tts/com.google.android.apps.speech.tts.googletts.service.GoogleTTSRecognitionService"

    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method private performSetText(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 1598
    const-string v0, "VoiceBridge"

    .line 0
    const-string v1, "\u5df2\u586b\u5165: "

    const-string v2, "setText="

    .line 1598
    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1599
    const-string v4, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/high16 v4, 0x200000

    .line 1600
    invoke-virtual {p1, v4, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    move-result v3

    .line 1601
    invoke-direct {p0, p2}, Llocal/voicebridge/VoiceBridgeService;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->nodeBrief(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " where="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " text="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " node="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_0

    .line 1602
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->toast(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return v3

    :catchall_0
    move-exception p0

    .line 1604
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "performSetText failed where="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method private putAudioExtra(Landroid/content/Intent;Landroid/os/Parcelable;ZZ)V
    .locals 1

    if-eqz p4, :cond_0

    .line 1775
    const-string v0, "android.speech.extra.AUDIO_SOURCE"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 1776
    :cond_0
    const-string v0, "com.google.recognition.extra.AUDIO_SOURCE"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1777
    :goto_0
    invoke-direct {p0, p1, p3}, Llocal/voicebridge/VoiceBridgeService;->putCommon(Landroid/content/Intent;Z)V

    if-eqz p4, :cond_1

    .line 1779
    const-string p0, "android.speech.extra.AUDIO_SOURCE_CHANNEL_COUNT"

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1780
    const-string p0, "android.speech.extra.AUDIO_SOURCE_ENCODING"

    const/4 p2, 0x2

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1781
    const-string p0, "android.speech.extra.AUDIO_SOURCE_SAMPLING_RATE"

    const/16 p2, 0x3e80

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method private putCommon(Landroid/content/Intent;Z)V
    .locals 1

    .line 1786
    const-string p0, "com.google.recognition.extra.AUDIO_SOURCE_CHANNEL_COUNT"

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1787
    const-string p0, "com.google.recognition.extra.AUDIO_SOURCE_SAMPLING_RATE"

    const/16 v0, 0x3e80

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1788
    const-string p0, "com.google.recognition.extra.EXTRA_AUDIO_SOURCE_NON_MIC"

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method private recordOrigin()V
    .locals 8

    .line 1315
    const-string v0, "VoiceBridge"

    .line 0
    const-string v1, "origin pkg="

    .line 1315
    :try_start_0
    invoke-virtual {p0}, Llocal/voicebridge/VoiceBridgeService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1316
    const-string p0, "origin root=null"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1317
    :cond_0
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v3}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Llocal/voicebridge/VoiceBridgeService;->originPackage:Ljava/lang/String;

    const/4 v3, 0x1

    .line 1318
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1320
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEditable()Z

    move-result v4

    iput-boolean v4, p0, Llocal/voicebridge/VoiceBridgeService;->originEditable:Z

    .line 1321
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v3}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Llocal/voicebridge/VoiceBridgeService;->originText:Ljava/lang/String;

    .line 1323
    :cond_1
    iget-object v3, p0, Llocal/voicebridge/VoiceBridgeService;->originPackage:Ljava/lang/String;

    iget-boolean v4, p0, Llocal/voicebridge/VoiceBridgeService;->originEditable:Z

    iget-object v5, p0, Llocal/voicebridge/VoiceBridgeService;->originText:Ljava/lang/String;

    .line 1324
    invoke-direct {p0, v5}, Llocal/voicebridge/VoiceBridgeService;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2}, Llocal/voicebridge/VoiceBridgeService;->nodeBrief(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " editable="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " text="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " root="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1323
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    iget-boolean v1, p0, Llocal/voicebridge/VoiceBridgeService;->debugTree:Z

    if-eqz v1, :cond_2

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Llocal/voicebridge/VoiceBridgeService;->lastDumpMs:J

    const-string v1, "origin"

    const/4 v3, 0x4

    invoke-direct {p0, v1, v3}, Llocal/voicebridge/VoiceBridgeService;->dumpWindows(Ljava/lang/String;I)V

    .line 1326
    :cond_2
    iget-boolean v1, p0, Llocal/voicebridge/VoiceBridgeService;->debugTree:Z

    if-eqz v1, :cond_3

    const-string v1, "originTree"

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-direct {p0, v2, v1, v3, v4}, Llocal/voicebridge/VoiceBridgeService;->describeTree(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    .line 1327
    const-string v1, "recordOrigin failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private recordPlayStoreNode(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;I)V
    .locals 7

    if-eqz p1, :cond_3

    .line 498
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 499
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 500
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 501
    iget-boolean v4, p0, Llocal/voicebridge/VoiceBridgeService;->lastPlayStoreEditable:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    iget-object v4, p0, Llocal/voicebridge/VoiceBridgeService;->lastPlayStoreText:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move v4, v5

    .line 502
    :goto_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEditable()Z

    move-result v6

    iput-boolean v6, p0, Llocal/voicebridge/VoiceBridgeService;->lastPlayStoreEditable:Z

    .line 503
    iput-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->lastPlayStoreText:Ljava/lang/String;

    .line 504
    iput-wide v2, p0, Llocal/voicebridge/VoiceBridgeService;->lastPlayStoreSeenMs:J

    if-nez v4, :cond_1

    .line 505
    const-string v2, "windowWatch"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 507
    :cond_1
    invoke-direct {p0, v0}, Llocal/voicebridge/VoiceBridgeService;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->nodeBrief(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "playStoreEditable "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v3, " text="

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v2, " node="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 506
    const-string p3, "VoiceBridge"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_2
    iget-object p1, p0, Llocal/voicebridge/VoiceBridgeService;->observationBaselineText:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 511
    iget-boolean p3, p0, Llocal/voicebridge/VoiceBridgeService;->observationActive:Z

    if-eqz p3, :cond_3

    const-string p3, "com.android.vending"

    iget-object v2, p0, Llocal/voicebridge/VoiceBridgeService;->originPackage:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    const-string p3, "StreamingTextView"

    .line 512
    invoke-virtual {v1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 513
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    const-string v1, "\u8bf4\u8bdd\u5373\u53ef\u5f00\u59cb\u641c\u7d22"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-le p3, v5, :cond_3

    .line 514
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Llocal/voicebridge/VoiceBridgeService;->originText:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 515
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ":playStoreQuery"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Llocal/voicebridge/VoiceBridgeService;->recordVoiceQuery(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private recordVoiceQuery(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 520
    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xa0

    const/16 v2, 0x20

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 521
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb4

    if-gt v1, v2, :cond_3

    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->isNoise(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\u8bf4\u8bdd\u5373\u53ef\u5f00\u59cb\u641c\u7d22"

    .line 522
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 523
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 524
    iget-object v3, p0, Llocal/voicebridge/VoiceBridgeService;->lastVoiceQuery:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "VoiceBridge"

    if-nez v3, :cond_1

    .line 525
    iput-object p1, p0, Llocal/voicebridge/VoiceBridgeService;->lastVoiceQuery:Ljava/lang/String;

    .line 526
    iput-wide v1, p0, Llocal/voicebridge/VoiceBridgeService;->lastVoiceQueryChangeMs:J

    .line 527
    iput-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->stableVoiceQuery:Ljava/lang/String;

    .line 528
    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "voiceQuery changed "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v3, " text="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_1
    iget-object p2, p0, Llocal/voicebridge/VoiceBridgeService;->stableVoiceQuery:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_2

    iget-wide v5, p0, Llocal/voicebridge/VoiceBridgeService;->lastVoiceQueryChangeMs:J

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x1f4

    cmp-long p2, v1, v5

    if-ltz p2, :cond_2

    .line 531
    iput-object p1, p0, Llocal/voicebridge/VoiceBridgeService;->stableVoiceQuery:Ljava/lang/String;

    .line 532
    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "voiceQueryStable text="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_2
    const-string p2, "com.google.android.katniss"

    const-string v0, "voiceQuery"

    invoke-direct {p0, p1, p2, v0}, Llocal/voicebridge/VoiceBridgeService;->collectCandidate(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private safe(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    .line 2026
    const-string p0, ""

    return-object p0

    :cond_0
    const/16 p0, 0xd

    const/16 v0, 0x20

    .line 2027
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0xa

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x9

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 2028
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0xf0

    if-le p1, v0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "..."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private scanForegroundWindow(Ljava/lang/String;)V
    .locals 5

    # Idle windowWatch must not query remote accessibility trees.
    invoke-direct {p0}, Llocal/voicebridge/VoiceBridgeService;->shouldObserveWindows()Z

    move-result v0

    if-nez v0, :scan_voice_windows

    return-void

    :scan_voice_windows

    .line 426
    const-string v0, "VoiceBridge"

    :try_start_0
    invoke-virtual {p0}, Llocal/voicebridge/VoiceBridgeService;->getWindows()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 428
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 429
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 430
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 431
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 433
    :try_start_1
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    .line 435
    :try_start_2
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 436
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v2}, Llocal/voicebridge/VoiceBridgeService;->isAssistantPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 437
    iget-object v1, p0, Llocal/voicebridge/VoiceBridgeService;->lastForegroundPackage:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 438
    iput-object v2, p0, Llocal/voicebridge/VoiceBridgeService;->lastForegroundPackage:Ljava/lang/String;

    .line 439
    const-string v3, "com.android.vending"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 440
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Llocal/voicebridge/VoiceBridgeService;->observedForegroundMs:J

    .line 441
    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->inspectPlayStoreWindow(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    .line 443
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "foreground package="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " where="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 448
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "scanForegroundWindow failed where="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " err="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method private scanProvider(I)Landroid/os/ParcelFileDescriptor;
    .locals 4

    if-lez p1, :cond_0

    const/4 v0, 0x1

    .line 1880
    invoke-direct {p0, p1, v0}, Llocal/voicebridge/VoiceBridgeService;->openProviderPfd(IZ)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p1, 0x14

    :goto_0
    const/16 v0, 0x400

    .line 1881
    const-string v1, "VoiceBridge"

    if-gt p1, v0, :cond_2

    const/4 v0, 0x0

    .line 1882
    invoke-direct {p0, p1, v0}, Llocal/voicebridge/VoiceBridgeService;->openProviderPfd(IZ)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1

    add-int/lit8 p0, p1, -0x14

    .line 1884
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "provider scan HIT fd="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " failures="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1888
    :cond_2
    const-string p0, "provider scan no hit 20..1024"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private sendNavigationAction(I)Z
    .locals 4

    .line 1018
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1019
    invoke-virtual {p0}, Llocal/voicebridge/VoiceBridgeService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1020
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1021
    :cond_0
    invoke-virtual {p0}, Llocal/voicebridge/VoiceBridgeService;->getWindows()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1022
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1024
    :try_start_1
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_1

    .line 1025
    :try_start_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1028
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1029
    invoke-direct {p0, v1}, Llocal/voicebridge/VoiceBridgeService;->findFocusedNode(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 1030
    invoke-direct {p0, v1}, Llocal/voicebridge/VoiceBridgeService;->isTextLike(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v2, v1

    :cond_4
    if-eqz v2, :cond_7

    const/16 v0, 0x10

    if-eq p1, v0, :cond_5

    const/16 v1, 0x11

    if-ne p1, v1, :cond_7

    :cond_5
    if-ne p1, v0, :cond_6

    const/16 v0, 0x21

    goto :goto_2

    :cond_6
    const/16 v0, 0x82

    .line 1037
    :goto_2
    invoke-direct {p0, v0}, Llocal/voicebridge/VoiceBridgeService;->moveFocusFromInput(I)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_7

    const/4 p0, 0x1

    return p0

    .line 1042
    :catchall_1
    :cond_7
    invoke-virtual {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->performGlobalAction(I)Z

    move-result p0

    return p0
.end method

.method private setupNavigationHooks()V
    .locals 5

    .line 572
    :try_start_0
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->inputManager:Landroid/hardware/input/InputManager;

    if-nez v0, :cond_0

    .line 573
    const-string v0, "input"

    invoke-virtual {p0, v0}, Llocal/voicebridge/VoiceBridgeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->inputManager:Landroid/hardware/input/InputManager;

    if-eqz v0, :cond_0

    .line 574
    iget-object v1, p0, Llocal/voicebridge/VoiceBridgeService;->inputDevices:Landroid/hardware/input/InputManager$InputDeviceListener;

    iget-object v2, p0, Llocal/voicebridge/VoiceBridgeService;->main:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 576
    :cond_0
    iget-boolean v0, p0, Llocal/voicebridge/VoiceBridgeService;->screenOffRegistered:Z

    if-nez v0, :cond_1

    .line 577
    new-instance v0, Llocal/voicebridge/VoiceBridgeService$8;

    invoke-direct {v0, p0}, Llocal/voicebridge/VoiceBridgeService$8;-><init>(Llocal/voicebridge/VoiceBridgeService;)V

    iput-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->screenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 580
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Llocal/voicebridge/VoiceBridgeService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 581
    iput-boolean v0, p0, Llocal/voicebridge/VoiceBridgeService;->screenOffRegistered:Z

    .line 583
    :cond_1
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->navigationRepeater:Llocal/voicebridge/NavigationRepeater;

    iget-wide v1, p0, Llocal/voicebridge/VoiceBridgeService;->initialDelayMs:J

    iget-wide v3, p0, Llocal/voicebridge/VoiceBridgeService;->repeatDelayMs:J

    invoke-virtual {v0, v1, v2, v3, v4}, Llocal/voicebridge/NavigationRepeater;->setDelays(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 584
    const-string v0, "VoiceBridge"

    const-string v1, "navigation setup failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private startWindowWatch()V
    .locals 3

    .line 418
    const-string v0, "observe"

    iget-object v1, p0, Llocal/voicebridge/VoiceBridgeService;->keyMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->main:Landroid/os/Handler;

    iget-object v1, p0, Llocal/voicebridge/VoiceBridgeService;->windowWatch:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 420
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->main:Landroid/os/Handler;

    iget-object p0, p0, Llocal/voicebridge/VoiceBridgeService;->windowWatch:Ljava/lang/Runnable;

    const-wide/16 v1, 0x78

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private stopWriter()V
    .locals 1

    const/4 v0, 0x0

    .line 1854
    iput-boolean v0, p0, Llocal/voicebridge/VoiceBridgeService;->writing:Z

    .line 1855
    iget-object p0, p0, Llocal/voicebridge/VoiceBridgeService;->writer:Ljava/lang/Thread;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method private textList(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 2014
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    .line 2015
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 2016
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    .line 2017
    const-string v1, " | "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2018
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2020
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2014
    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method private textPresent(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 1

    const/4 p0, 0x0

    .line 1372
    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_2

    .line 1373
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_2

    .line 1374
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getHintText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getHintText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p1, :cond_3

    :cond_2
    const/4 p0, 0x1

    :catchall_0
    :cond_3
    return p0
.end method

.method private toast(Ljava/lang/String;)V
    .locals 2

    .line 2032
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->main:Landroid/os/Handler;

    new-instance v1, Llocal/voicebridge/VoiceBridgeService$13;

    invoke-direct {v1, p0, p1}, Llocal/voicebridge/VoiceBridgeService$13;-><init>(Llocal/voicebridge/VoiceBridgeService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private trackForegroundPackage(Ljava/lang/String;JLjava/lang/String;)V
    .locals 8

    if-eqz p1, :cond_1

    .line 452
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->isAssistantPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 453
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->lastForegroundPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 454
    iput-object p1, p0, Llocal/voicebridge/VoiceBridgeService;->lastForegroundPackage:Ljava/lang/String;

    .line 455
    const-string v1, "com.android.vending"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, " seq="

    const-string v3, " type="

    const-string v4, "foreground package="

    const-string v5, "VoiceBridge"

    if-eqz v1, :cond_0

    .line 456
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Llocal/voicebridge/VoiceBridgeService;->observedForegroundMs:J

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "foreground:"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Llocal/voicebridge/VoiceBridgeService;->inspectPlayStoreWindow(Ljava/lang/String;)V

    if-nez v0, :cond_1

    .line 458
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 460
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private shouldObserveWindows()Z
    .locals 4

    # Keep the existing Katniss trigger TTL, not a navigation debounce.
    iget-boolean v0, p0, Llocal/voicebridge/VoiceBridgeService;->voiceEnabled:Z

    if-eqz v0, :no_voice_observation

    iget-boolean v0, p0, Llocal/voicebridge/VoiceBridgeService;->observationActive:Z

    if-nez v0, :recent_voice_observation

    iget-wide v0, p0, Llocal/voicebridge/VoiceBridgeService;->lastKatnissEventMs:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :no_voice_observation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-ltz v0, :no_voice_observation

    const-wide/16 v0, 0x2ee0

    cmp-long v0, v2, v0

    if-gtz v0, :no_voice_observation

    :recent_voice_observation
    const/4 v0, 0x1

    return v0

    :no_voice_observation
    const/4 v0, 0x0

    return v0
.end method

.method private voicePlatePresent()Z
    .locals 1

    .line 318
    const-string v0, "probe"

    invoke-direct {p0, v0}, Llocal/voicebridge/VoiceBridgeService;->findVoicePlateInWindows(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public configure(Landroid/content/Intent;)V
    .locals 13

    .line 1641
    const-string v1, "VoiceBridge"

    iget-boolean v0, p0, Llocal/voicebridge/VoiceBridgeService;->configLoaded:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Llocal/voicebridge/VoiceBridgeService;->loadConfig()V

    :cond_0
    const/4 v2, 0x0

    .line 1643
    :try_start_0
    const-string v0, "voicebridge"

    invoke-virtual {p0, v0, v2}, Llocal/voicebridge/VoiceBridgeService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v3, "prefs edit failed"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 1644
    :goto_0
    const-string v3, "keyMode"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1645
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Llocal/voicebridge/VoiceBridgeService;->normalizeKeyMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Llocal/voicebridge/VoiceBridgeService;->keyMode:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1646
    iget-object v4, p0, Llocal/voicebridge/VoiceBridgeService;->keyMode:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1648
    :cond_1
    const-string v3, "debugTree"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 1649
    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Llocal/voicebridge/VoiceBridgeService;->debugTree:Z

    if-eqz v0, :cond_2

    .line 1650
    iget-boolean v4, p0, Llocal/voicebridge/VoiceBridgeService;->debugTree:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1652
    :cond_2
    const-string v3, "keysEnabled"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1653
    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Llocal/voicebridge/VoiceBridgeService;->keysEnabled:Z

    if-eqz v0, :cond_3

    .line 1654
    iget-boolean v4, p0, Llocal/voicebridge/VoiceBridgeService;->keysEnabled:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1655
    :cond_3
    iget-boolean v3, p0, Llocal/voicebridge/VoiceBridgeService;->keysEnabled:Z

    if-nez v3, :cond_4

    invoke-direct {p0}, Llocal/voicebridge/VoiceBridgeService;->clearNewRemoteNavigation()V

    .line 1657
    :cond_4
    const-string v3, "voiceEnabled"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1658
    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Llocal/voicebridge/VoiceBridgeService;->voiceEnabled:Z

    if-eqz v0, :cond_5

    .line 1659
    iget-boolean v4, p0, Llocal/voicebridge/VoiceBridgeService;->voiceEnabled:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1660
    :cond_5
    iget-boolean v3, p0, Llocal/voicebridge/VoiceBridgeService;->voiceEnabled:Z

    if-nez v3, :cond_6

    invoke-direct {p0}, Llocal/voicebridge/VoiceBridgeService;->cancelObservation()V

    .line 1662
    :cond_6
    const-string v3, "initialDelay"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-wide/16 v4, 0x1f4

    .line 1663
    invoke-virtual {p1, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    const-wide/16 v9, 0x190

    const-wide/16 v11, 0x5dc

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Llocal/voicebridge/VoiceBridgeService;->clamp(JJJ)J

    move-result-wide v4

    iput-wide v4, v6, Llocal/voicebridge/VoiceBridgeService;->initialDelayMs:J

    if-eqz v0, :cond_8

    .line 1666
    iget-wide v4, v6, Llocal/voicebridge/VoiceBridgeService;->initialDelayMs:J

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_7
    move-object v6, p0

    .line 1668
    :cond_8
    :goto_1
    const-string p0, "repeatDelay"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-wide/16 v3, 0xa0

    .line 1669
    invoke-virtual {p1, p0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    const-wide/16 v9, 0x3c

    const-wide/16 v11, 0x320

    invoke-direct/range {v6 .. v12}, Llocal/voicebridge/VoiceBridgeService;->clamp(JJJ)J

    move-result-wide v3

    iput-wide v3, v6, Llocal/voicebridge/VoiceBridgeService;->repeatDelayMs:J

    if-eqz v0, :cond_9

    .line 1670
    iget-wide v3, v6, Llocal/voicebridge/VoiceBridgeService;->repeatDelayMs:J

    invoke-interface {v0, p0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1672
    :cond_9
    const-string p0, "deviceFilter"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1673
    const-string v3, "xiaomi"

    iput-object v3, v6, Llocal/voicebridge/VoiceBridgeService;->deviceFilter:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 1674
    iget-object v3, v6, Llocal/voicebridge/VoiceBridgeService;->deviceFilter:Ljava/lang/String;

    invoke-interface {v0, p0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1676
    :cond_a
    const-string p0, "voiceWait"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-wide/16 v3, 0xbb8

    .line 1677
    invoke-virtual {p1, p0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    const-wide/16 v9, 0x320

    const-wide/16 v11, 0x1770

    invoke-direct/range {v6 .. v12}, Llocal/voicebridge/VoiceBridgeService;->clamp(JJJ)J

    move-result-wide v3

    iput-wide v3, v6, Llocal/voicebridge/VoiceBridgeService;->voiceWaitMs:J

    if-eqz v0, :cond_b

    .line 1678
    iget-wide v3, v6, Llocal/voicebridge/VoiceBridgeService;->voiceWaitMs:J

    invoke-interface {v0, p0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1680
    :cond_b
    iget-object p0, v6, Llocal/voicebridge/VoiceBridgeService;->navigationRepeater:Llocal/voicebridge/NavigationRepeater;

    iget-wide v3, v6, Llocal/voicebridge/VoiceBridgeService;->initialDelayMs:J

    iget-wide v7, v6, Llocal/voicebridge/VoiceBridgeService;->repeatDelayMs:J

    invoke-virtual {p0, v3, v4, v7, v8}, Llocal/voicebridge/NavigationRepeater;->setDelays(JJ)V

    if-eqz v0, :cond_c

    .line 1682
    :try_start_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p0, v0

    const-string v0, "prefs apply failed"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1684
    :cond_c
    :goto_2
    iget-object p0, v6, Llocal/voicebridge/VoiceBridgeService;->keyMode:Ljava/lang/String;

    iget-boolean v0, v6, Llocal/voicebridge/VoiceBridgeService;->debugTree:Z

    const-string v3, "configOnly"

    .line 1685
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "config keyMode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, " debugTree="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " configOnly="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1684
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dumpDiagnosticState(Ljava/lang/String;)V
    .locals 9

    const-string v0, "diagnostic activeRoot="

    .line 1931
    iget-object v1, p0, Llocal/voicebridge/VoiceBridgeService;->keyMode:Ljava/lang/String;

    iget-boolean v2, p0, Llocal/voicebridge/VoiceBridgeService;->debugTree:Z

    iget-boolean v3, p0, Llocal/voicebridge/VoiceBridgeService;->observationActive:Z

    iget-object v4, p0, Llocal/voicebridge/VoiceBridgeService;->originPackage:Ljava/lang/String;

    iget-object v5, p0, Llocal/voicebridge/VoiceBridgeService;->bestCandidate:Ljava/lang/String;

    .line 1933
    invoke-direct {p0, v5}, Llocal/voicebridge/VoiceBridgeService;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Llocal/voicebridge/VoiceBridgeService;->pendingText:Ljava/lang/String;

    invoke-direct {p0, v6}, Llocal/voicebridge/VoiceBridgeService;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "diagnostic from="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v7, " keyMode="

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " debugTree="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " observation="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " origin="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " best="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " pending="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1931
    const-string v1, "VoiceBridge"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    :try_start_0
    invoke-virtual {p0}, Llocal/voicebridge/VoiceBridgeService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1936
    const-string v2, "null"

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->nodeBrief(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1937
    const-string v0, "diagnostic"

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x5

    :try_start_1
    invoke-direct {p0, p1, v0, v2, v3}, Llocal/voicebridge/VoiceBridgeService;->describeTree(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;II)V

    :cond_1
    const/4 p1, 0x3

    .line 1938
    invoke-direct {p0, v0, p1}, Llocal/voicebridge/VoiceBridgeService;->dumpWindows(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 1939
    const-string p1, "diagnostic failed"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public insertText(Ljava/lang/String;Z)V
    .locals 4

    const-string v0, "\u8bc6\u522b\u7ed3\u679c: "

    const-string v1, "no focused input text="

    .line 1991
    const-string v2, "VoiceBridge"

    if-eqz p2, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->insertTextIntoPlaySearch(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 1992
    :cond_0
    invoke-virtual {p0}, Llocal/voicebridge/VoiceBridgeService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    .line 1993
    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_2

    .line 1995
    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->toast(Ljava/lang/String;)V

    return-void

    .line 1999
    :cond_2
    const-string v0, "legacy"

    invoke-direct {p0, p2, p1, v0}, Llocal/voicebridge/VoiceBridgeService;->performSetText(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 2000
    const-string p1, "insertText failed"

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 29

    move-object/from16 v0, p0

    if-eqz p1, :cond_27

    .line 650
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v6

    .line 651
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 652
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 653
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v7

    .line 654
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v0, v3}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 655
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getBeforeText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v0, v4}, Llocal/voicebridge/VoiceBridgeService;->cs(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 656
    iget-wide v8, v0, Llocal/voicebridge/VoiceBridgeService;->eventSeq:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v0, Llocal/voicebridge/VoiceBridgeService;->eventSeq:J

    .line 657
    iget-boolean v5, v0, Llocal/voicebridge/VoiceBridgeService;->voiceEnabled:Z

    const-string v12, " seq="

    const-string v13, " cls="

    const-string v14, " pkg="

    const-string v15, " type="

    move-wide/from16 v16, v10

    const-string v10, "VoiceBridge"

    if-eqz v5, :cond_4

    const-string v5, "com.google.android.katniss"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "android"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "Voice"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_4

    :cond_0
    move-object/from16 v18, v12

    .line 658
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 660
    iget-boolean v5, v0, Llocal/voicebridge/VoiceBridgeService;->observationActive:Z

    if-nez v5, :cond_2

    iget-boolean v5, v0, Llocal/voicebridge/VoiceBridgeService;->setTextDone:Z

    if-eqz v5, :cond_2

    move-object/from16 v20, v4

    iget-wide v4, v0, Llocal/voicebridge/VoiceBridgeService;->observationFinishedMs:J

    sub-long v4, v11, v4

    const-wide/16 v21, 0x4b0

    cmp-long v4, v4, v21

    if-lez v4, :cond_1

    iget-wide v4, v0, Llocal/voicebridge/VoiceBridgeService;->lastKatnissEventMs:J

    sub-long v4, v11, v4

    cmp-long v4, v4, v21

    if-lez v4, :cond_1

    const/4 v5, 0x0

    .line 662
    iput-boolean v5, v0, Llocal/voicebridge/VoiceBridgeService;->setTextDone:Z

    .line 663
    iput-boolean v5, v0, Llocal/voicebridge/VoiceBridgeService;->setTextInProgress:Z

    .line 664
    iput-boolean v5, v0, Llocal/voicebridge/VoiceBridgeService;->voicePlateDetectionLogged:Z

    .line 665
    iput-boolean v5, v0, Llocal/voicebridge/VoiceBridgeService;->autoObservationStarted:Z

    .line 666
    iput-boolean v5, v0, Llocal/voicebridge/VoiceBridgeService;->voicePlateSeen:Z

    move/from16 v19, v6

    .line 668
    iget-wide v5, v0, Llocal/voicebridge/VoiceBridgeService;->observationFinishedMs:J

    sub-long v5, v11, v5

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v22, v3

    const-string v3, "observationRearmed afterMs="

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v6, v18

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v22, v3

    goto :goto_0

    :cond_2
    move-object/from16 v22, v3

    move-object/from16 v20, v4

    :goto_0
    move/from16 v19, v6

    move-object/from16 v6, v18

    const/4 v3, 0x0

    .line 671
    :goto_1
    iput-wide v11, v0, Llocal/voicebridge/VoiceBridgeService;->lastKatnissEventMs:J

    .line 672
    invoke-direct {v0}, Llocal/voicebridge/VoiceBridgeService;->startWindowWatch()V

    if-nez v3, :cond_3

    .line 673
    iget-wide v3, v0, Llocal/voicebridge/VoiceBridgeService;->lastAssistantTriggerLogMs:J

    sub-long v3, v11, v3

    const-wide/16 v23, 0x3e8

    cmp-long v3, v3, v23

    if-ltz v3, :cond_5

    .line 674
    :cond_3
    iput-wide v11, v0, Llocal/voicebridge/VoiceBridgeService;->lastAssistantTriggerLogMs:J

    .line 676
    invoke-static/range {v19 .. v19}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "assistantTrigger seq="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 675
    invoke-static {v10, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    move-object/from16 v22, v3

    move-object/from16 v20, v4

    move/from16 v19, v6

    move-object v6, v12

    :cond_5
    :goto_2
    const/high16 v3, 0x400000

    const/16 v11, 0x800

    const/16 v12, 0x20

    move/from16 v4, v19

    if-eq v4, v12, :cond_6

    if-eq v4, v11, :cond_6

    if-eq v4, v3, :cond_6

    const/16 v19, 0x0

    goto :goto_3

    :cond_6
    const/16 v19, 0x1

    :goto_3
    const/16 v5, 0x10

    const/16 v3, 0x8

    if-eq v4, v5, :cond_7

    if-eq v4, v11, :cond_7

    if-eq v4, v12, :cond_7

    if-eq v4, v3, :cond_7

    const/4 v5, 0x4

    if-eq v4, v5, :cond_7

    const/16 v24, 0x0

    goto :goto_4

    :cond_7
    const/16 v24, 0x1

    .line 687
    :goto_4
    const-string v5, "com.android.vending"

    if-nez v19, :cond_8

    if-ne v4, v3, :cond_9

    .line 688
    :cond_8
    invoke-static {v4}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v2, v8, v9, v11}, Llocal/voicebridge/VoiceBridgeService;->trackForegroundPackage(Ljava/lang/String;JLjava/lang/String;)V

    .line 689
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-direct {v0}, Llocal/voicebridge/VoiceBridgeService;->startWindowWatch()V

    .line 691
    :cond_9
    iget-boolean v11, v0, Llocal/voicebridge/VoiceBridgeService;->voiceEnabled:Z

    const-string v12, "observe"

    if-eqz v11, :cond_b

    iget-object v11, v0, Llocal/voicebridge/VoiceBridgeService;->keyMode:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    iget-boolean v11, v0, Llocal/voicebridge/VoiceBridgeService;->observationActive:Z

    if-nez v11, :cond_b

    iget-object v11, v0, Llocal/voicebridge/VoiceBridgeService;->lastForegroundPackage:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 692
    :cond_a
    invoke-direct {v0}, Llocal/voicebridge/VoiceBridgeService;->shouldObserveWindows()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-direct {v0}, Llocal/voicebridge/VoiceBridgeService;->voicePlatePresent()Z

    move-result v11

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v25, v6

    const-string v6, "assistEvent:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v11, v3}, Llocal/voicebridge/VoiceBridgeService;->ensureVoicePlateObservation(ZLjava/lang/String;)V

    goto :goto_5

    :cond_b
    move-object/from16 v25, v6

    .line 694
    :goto_5
    iget-boolean v3, v0, Llocal/voicebridge/VoiceBridgeService;->observationActive:Z

    if-eqz v3, :cond_c

    iget-object v3, v0, Llocal/voicebridge/VoiceBridgeService;->originPackage:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, v0, Llocal/voicebridge/VoiceBridgeService;->lastForegroundPackage:Ljava/lang/String;

    .line 695
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 696
    invoke-direct {v0, v2}, Llocal/voicebridge/VoiceBridgeService;->isAssistantPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 697
    # A recognized result may survive a short known launcher transition.
    # Retaining it is not permission to launch or focus a background store.
    invoke-direct {v0}, Llocal/voicebridge/VoiceBridgeService;->holdVoiceResult()Z
    move-result v3
    if-nez v3, :cond_c

    invoke-direct {v0}, Llocal/voicebridge/VoiceBridgeService;->cancelObservation()V

    .line 698
    const-string v3, "observation cancelled: left Play Store"

    invoke-static {v10, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_c
    # Foreground bookkeeping/voice triggers above remain live; idle events
    # must return before getSource, window dumps and recursive collection.
    iget-boolean v3, v0, Llocal/voicebridge/VoiceBridgeService;->observationActive:Z

    if-nez v3, :event_voice_active

    return-void

    :event_voice_active
    iget-boolean v3, v0, Llocal/voicebridge/VoiceBridgeService;->observationActive:Z

    if-nez v3, :cond_e

    iget-boolean v3, v0, Llocal/voicebridge/VoiceBridgeService;->assistantSeen:Z

    if-eqz v3, :cond_d

    invoke-direct {v0, v2}, Llocal/voicebridge/VoiceBridgeService;->isAssistantPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    :cond_d
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const/4 v6, 0x0

    goto :goto_6

    :cond_e
    const/4 v6, 0x1

    :goto_6
    if-nez v6, :cond_10

    .line 701
    iget-boolean v3, v0, Llocal/voicebridge/VoiceBridgeService;->debugTree:Z

    if-eqz v3, :cond_f

    if-nez v24, :cond_10

    :cond_f
    iget-boolean v3, v0, Llocal/voicebridge/VoiceBridgeService;->observationActive:Z

    if-eqz v3, :cond_27

    :cond_10
    if-nez v6, :cond_11

    const-wide/16 v26, 0x10

    .line 702
    rem-long v26, v8, v26

    cmp-long v3, v26, v16

    if-nez v3, :cond_27

    :cond_11
    if-eqz v19, :cond_12

    .line 703
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v11, "win:"

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0x8

    invoke-direct {v0, v3, v11}, Llocal/voicebridge/VoiceBridgeService;->maybeDumpWindows(Ljava/lang/String;I)V

    .line 704
    :cond_12
    iget-object v3, v0, Llocal/voicebridge/VoiceBridgeService;->keyMode:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    if-nez v19, :cond_13

    const/high16 v3, 0x400000

    if-eq v4, v3, :cond_13

    .line 705
    invoke-direct {v0, v2}, Llocal/voicebridge/VoiceBridgeService;->isAssistantPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 706
    :cond_13
    invoke-direct {v0}, Llocal/voicebridge/VoiceBridgeService;->startWindowWatch()V

    .line 708
    :cond_14
    iget-boolean v3, v0, Llocal/voicebridge/VoiceBridgeService;->observationActive:Z

    if-eqz v3, :cond_15

    invoke-direct {v0, v2}, Llocal/voicebridge/VoiceBridgeService;->isAssistantPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    if-eqz v19, :cond_15

    .line 709
    iget-object v3, v0, Llocal/voicebridge/VoiceBridgeService;->main:Landroid/os/Handler;

    iget-object v12, v0, Llocal/voicebridge/VoiceBridgeService;->captureAssistant:Ljava/lang/Runnable;

    invoke-virtual {v3, v12}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 710
    iget-object v3, v0, Llocal/voicebridge/VoiceBridgeService;->main:Landroid/os/Handler;

    iget-object v12, v0, Llocal/voicebridge/VoiceBridgeService;->captureAssistant:Ljava/lang/Runnable;

    move-object/from16 v16, v5

    move/from16 v17, v6

    const-wide/16 v5, 0x50

    invoke-virtual {v3, v12, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    :cond_15
    move-object/from16 v16, v5

    move/from16 v17, v6

    .line 712
    :goto_7
    iget-boolean v3, v0, Llocal/voicebridge/VoiceBridgeService;->observationActive:Z

    if-eqz v3, :cond_16

    invoke-direct {v0, v2}, Llocal/voicebridge/VoiceBridgeService;->isAssistantPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    if-eqz v24, :cond_16

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "assistantA11y:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Llocal/voicebridge/VoiceBridgeService;->maybeCaptureWindows(Ljava/lang/String;)V

    .line 714
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    .line 715
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 716
    invoke-direct {v0, v7}, Llocal/voicebridge/VoiceBridgeService;->textList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Llocal/voicebridge/VoiceBridgeService;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v18, v10

    move-object/from16 v11, v22

    invoke-direct {v0, v11}, Llocal/voicebridge/VoiceBridgeService;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v19, v13

    move-object/from16 v13, v20

    move-object/from16 v20, v14

    invoke-direct {v0, v13}, Llocal/voicebridge/VoiceBridgeService;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v22, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v26, v4

    const-string v4, "|"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 717
    iget-object v10, v0, Llocal/voicebridge/VoiceBridgeService;->lastEventSignature:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    iget-wide v14, v0, Llocal/voicebridge/VoiceBridgeService;->lastEventLogMs:J

    sub-long v14, v5, v14

    const-wide/16 v27, 0x258

    cmp-long v10, v14, v27

    if-gez v10, :cond_17

    const/4 v10, 0x1

    goto :goto_8

    :cond_17
    const/4 v10, 0x0

    :goto_8
    if-eqz v10, :cond_18

    .line 718
    iget-boolean v4, v0, Llocal/voicebridge/VoiceBridgeService;->observationActive:Z

    if-nez v4, :cond_19

    goto/16 :goto_d

    .line 720
    :cond_18
    iput-object v4, v0, Llocal/voicebridge/VoiceBridgeService;->lastEventSignature:Ljava/lang/String;

    .line 721
    iput-wide v5, v0, Llocal/voicebridge/VoiceBridgeService;->lastEventLogMs:J

    .line 723
    :cond_19
    invoke-static/range {v26 .. v26}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object v4

    .line 724
    invoke-direct {v0, v7}, Llocal/voicebridge/VoiceBridgeService;->textList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Llocal/voicebridge/VoiceBridgeService;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 725
    invoke-direct {v0, v11}, Llocal/voicebridge/VoiceBridgeService;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v13}, Llocal/voicebridge/VoiceBridgeService;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v3, :cond_1a

    .line 726
    const-string v12, "null"

    goto :goto_9

    :cond_1a
    invoke-direct {v0, v3}, Llocal/voicebridge/VoiceBridgeService;->nodeBrief(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v12

    :goto_9
    iget-boolean v13, v0, Llocal/voicebridge/VoiceBridgeService;->observationActive:Z

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "a11y seq="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v15, v22

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v14, v20

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v14, v19

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " text="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " cd="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " before="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " source="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " active="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " dup="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v6, v18

    .line 723
    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_1e

    .line 729
    iget-boolean v1, v0, Llocal/voicebridge/VoiceBridgeService;->observationActive:Z

    if-eqz v1, :cond_1e

    invoke-direct {v0, v2}, Llocal/voicebridge/VoiceBridgeService;->isAssistantPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    move-object/from16 v1, v16

    .line 730
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    move-object v12, v1

    goto :goto_a

    :cond_1b
    move-object/from16 v1, v16

    .line 731
    :cond_1c
    iget-boolean v4, v0, Llocal/voicebridge/VoiceBridgeService;->debugTree:Z

    const-string v5, "event:"

    if-eqz v4, :cond_1d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-direct {v0, v3, v4, v11, v10}, Llocal/voicebridge/VoiceBridgeService;->describeTree(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;II)V

    .line 732
    :cond_1d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v16, v1

    move-object v1, v3

    move-object v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v12, v16

    move/from16 v10, v26

    const/16 v11, 0x8

    invoke-direct/range {v0 .. v5}, Llocal/voicebridge/VoiceBridgeService;->collectNodeTexts(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_b

    :cond_1e
    move-object/from16 v12, v16

    :goto_a
    move/from16 v10, v26

    const/16 v11, 0x8

    .line 734
    :goto_b
    iget-boolean v1, v0, Llocal/voicebridge/VoiceBridgeService;->observationActive:Z

    if-eqz v1, :cond_1f

    invoke-direct {v0, v2}, Llocal/voicebridge/VoiceBridgeService;->isAssistantPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 735
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Llocal/voicebridge/VoiceBridgeService;->lastAssistantEventMs:J

    :cond_1f
    if-eqz v24, :cond_22

    .line 737
    iget-boolean v1, v0, Llocal/voicebridge/VoiceBridgeService;->observationActive:Z

    if-eqz v1, :cond_22

    invoke-direct {v0, v2}, Llocal/voicebridge/VoiceBridgeService;->isAssistantPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    :cond_20
    if-eqz v7, :cond_21

    .line 738
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    const-string v4, "eventText"

    invoke-direct {v0, v3, v2, v4}, Llocal/voicebridge/VoiceBridgeService;->collectCandidate(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 739
    :cond_21
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v3, "eventDesc"

    invoke-direct {v0, v1, v2, v3}, Llocal/voicebridge/VoiceBridgeService;->collectCandidate(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    :cond_22
    iget-boolean v1, v0, Llocal/voicebridge/VoiceBridgeService;->observationActive:Z

    if-eqz v1, :cond_24

    invoke-direct {v0, v2}, Llocal/voicebridge/VoiceBridgeService;->isAssistantPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 742
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Llocal/voicebridge/VoiceBridgeService;->lastAssistantEventMs:J

    .line 743
    iget-boolean v1, v0, Llocal/voicebridge/VoiceBridgeService;->assistantSeen:Z

    if-nez v1, :cond_23

    invoke-static {v10}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "assistantDetected pkg="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v3, v25

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    const/4 v1, 0x1

    .line 744
    iput-boolean v1, v0, Llocal/voicebridge/VoiceBridgeService;->assistantSeen:Z

    .line 745
    iget-object v1, v0, Llocal/voicebridge/VoiceBridgeService;->main:Landroid/os/Handler;

    iget-object v3, v0, Llocal/voicebridge/VoiceBridgeService;->captureAssistant:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 746
    iget-object v1, v0, Llocal/voicebridge/VoiceBridgeService;->main:Landroid/os/Handler;

    iget-object v3, v0, Llocal/voicebridge/VoiceBridgeService;->captureAssistant:Ljava/lang/Runnable;

    const-wide/16 v4, 0x78

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 748
    :cond_24
    iget-boolean v1, v0, Llocal/voicebridge/VoiceBridgeService;->assistantSeen:Z

    if-eqz v1, :cond_26

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-boolean v1, v0, Llocal/voicebridge/VoiceBridgeService;->observationActive:Z

    if-eqz v1, :cond_26

    iget-boolean v1, v0, Llocal/voicebridge/VoiceBridgeService;->setTextInProgress:Z

    if-eqz v1, :cond_26

    iget-object v1, v0, Llocal/voicebridge/VoiceBridgeService;->pendingText:Ljava/lang/String;

    .line 749
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_26

    const/16 v1, 0x20

    if-eq v10, v1, :cond_25

    const/16 v1, 0x800

    if-eq v10, v1, :cond_25

    if-ne v10, v11, :cond_26

    .line 753
    :cond_25
    iget-object v1, v0, Llocal/voicebridge/VoiceBridgeService;->main:Landroid/os/Handler;

    iget-object v2, v0, Llocal/voicebridge/VoiceBridgeService;->insertPending:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 754
    iget-object v1, v0, Llocal/voicebridge/VoiceBridgeService;->main:Landroid/os/Handler;

    iget-object v2, v0, Llocal/voicebridge/VoiceBridgeService;->insertPending:Ljava/lang/Runnable;

    const-wide/16 v3, 0xb4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_26
    if-eqz v17, :cond_27

    .line 756
    iget-boolean v1, v0, Llocal/voicebridge/VoiceBridgeService;->debugTree:Z

    if-eqz v1, :cond_27

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "a11y:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Llocal/voicebridge/VoiceBridgeService;->maybeDumpWindows(Ljava/lang/String;I)V

    :cond_27
    :goto_d
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 2039
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->lastMode:Ljava/lang/String;

    iget-object v1, p0, Llocal/voicebridge/VoiceBridgeService;->keyMode:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "serviceDestroyed v4.4 lastMode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " keyMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceBridge"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2040
    sput-object v0, Llocal/voicebridge/VoiceBridgeService;->instance:Llocal/voicebridge/VoiceBridgeService;

    .line 2041
    iget-object v1, p0, Llocal/voicebridge/VoiceBridgeService;->main:Landroid/os/Handler;

    iget-object v2, p0, Llocal/voicebridge/VoiceBridgeService;->captureAssistant:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2042
    iget-object v1, p0, Llocal/voicebridge/VoiceBridgeService;->main:Landroid/os/Handler;

    iget-object v2, p0, Llocal/voicebridge/VoiceBridgeService;->finishObservation:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2043
    iget-object v1, p0, Llocal/voicebridge/VoiceBridgeService;->main:Landroid/os/Handler;

    iget-object v2, p0, Llocal/voicebridge/VoiceBridgeService;->insertPending:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2044
    iget-object v1, p0, Llocal/voicebridge/VoiceBridgeService;->main:Landroid/os/Handler;

    iget-object v2, p0, Llocal/voicebridge/VoiceBridgeService;->windowWatch:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2045
    invoke-direct {p0}, Llocal/voicebridge/VoiceBridgeService;->clearNavigation()V

    .line 2046
    iget-object v1, p0, Llocal/voicebridge/VoiceBridgeService;->inputManager:Landroid/hardware/input/InputManager;

    if-eqz v1, :cond_0

    .line 2047
    :try_start_0
    iget-object v2, p0, Llocal/voicebridge/VoiceBridgeService;->inputDevices:Landroid/hardware/input/InputManager$InputDeviceListener;

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2048
    :catchall_0
    iput-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->inputManager:Landroid/hardware/input/InputManager;

    .line 2050
    :cond_0
    iget-boolean v0, p0, Llocal/voicebridge/VoiceBridgeService;->screenOffRegistered:Z

    if-eqz v0, :cond_1

    .line 2051
    :try_start_1
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->screenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Llocal/voicebridge/VoiceBridgeService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    const/4 v0, 0x0

    .line 2052
    iput-boolean v0, p0, Llocal/voicebridge/VoiceBridgeService;->screenOffRegistered:Z

    .line 2054
    :cond_1
    invoke-direct {p0}, Llocal/voicebridge/VoiceBridgeService;->cancel()V

    .line 2055
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onDestroy()V

    return-void
.end method

.method public onInterrupt()V
    .locals 0

    invoke-static {}, Llocal/voicebridge/InputPassthrough;->clear()V

    .line 760
    invoke-direct {p0}, Llocal/voicebridge/VoiceBridgeService;->cancelObservation()V

    .line 761
    invoke-direct {p0}, Llocal/voicebridge/VoiceBridgeService;->clearNavigation()V

    .line 762
    invoke-direct {p0}, Llocal/voicebridge/VoiceBridgeService;->cancel()V

    return-void
.end method

.method protected onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7

    # Observe cancellation only; do not consume or reroute any remote key.
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I
    move-result v0
    if-nez v0, :voice_navigation_checked
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I
    move-result v0
    const/4 v1, 0x3
    if-eq v0, v1, :voice_user_cancel
    const/4 v1, 0x4
    if-ne v0, v1, :voice_navigation_checked
    :voice_user_cancel
    invoke-direct {p0}, Llocal/voicebridge/VoiceBridgeService;->cancelObservation()V
    :voice_navigation_checked

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getVendorId()I

    move-result v1

    const/16 v2, 0x2717

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getProductId()I

    move-result v1

    const/16 v2, 0x32b9

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, v0}, Llocal/voicebridge/VoiceBridgeService;->isDpadKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "VoiceBridgeKeys"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/InputDevice;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 768
    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->isLegacyRemote(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Llocal/voicebridge/VoiceBridgeService;->isDpadKey(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 769
    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->handleLegacyRemoteKey(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 771
    :cond_2
    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->isLegacyRemote(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    .line 772
    iget-object v1, p0, Llocal/voicebridge/VoiceBridgeService;->legacyNavigationRepeater:Llocal/voicebridge/LegacyNavigationRepeater;

    invoke-virtual {v1}, Llocal/voicebridge/LegacyNavigationRepeater;->stop()V

    .line 774
    :cond_3
    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->isRemote(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v0}, Llocal/voicebridge/VoiceBridgeService;->isDpadKey(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 777
    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->handleNewRemoteKey(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_4
    const/16 v1, 0xdb

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/16 v1, 0xe7

    if-eq v0, v1, :cond_5

    return v2

    .line 780
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 782
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    iget-object v4, p0, Llocal/voicebridge/VoiceBridgeService;->keyMode:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "key="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " action="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " repeat="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " keyMode="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " consume=false"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "VoiceBridge"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_6

    .line 784
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_6

    .line 785
    invoke-direct {p0}, Llocal/voicebridge/VoiceBridgeService;->onAssistDown()V

    return v2

    :cond_6
    const/4 p1, 0x1

    if-ne v1, p1, :cond_7

    .line 787
    invoke-direct {p0}, Llocal/voicebridge/VoiceBridgeService;->onAssistUp()V

    :cond_7
    return v2
.end method

.method public onServiceConnected()V
    .locals 13

    .line 549
    sput-object p0, Llocal/voicebridge/VoiceBridgeService;->instance:Llocal/voicebridge/VoiceBridgeService;

    .line 550
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onServiceConnected()V

    .line 551
    invoke-direct {p0}, Llocal/voicebridge/VoiceBridgeService;->setupNavigationHooks()V

    .line 552
    invoke-direct {p0}, Llocal/voicebridge/VoiceBridgeService;->startWindowWatch()V

    .line 553
    invoke-virtual {p0}, Llocal/voicebridge/VoiceBridgeService;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    .line 554
    const-string v1, "VoiceBridge"

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    .line 555
    iget v3, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    or-int/lit8 v3, v3, 0x72

    iput v3, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 559
    iput v2, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    const-wide/16 v3, 0x32

    .line 560
    iput-wide v3, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    .line 561
    :try_start_0
    invoke-virtual {p0, v0}, Llocal/voicebridge/VoiceBridgeService;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    const-string v4, "setServiceInfo failed"

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 563
    :cond_0
    :goto_0
    invoke-direct {p0}, Llocal/voicebridge/VoiceBridgeService;->loadConfig()V

    if-nez v0, :cond_1

    move v0, v2

    move v3, v0

    goto :goto_1

    .line 564
    :cond_1
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v2

    .line 565
    iget v3, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    iget v0, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    move v12, v2

    move v2, v0

    move v0, v12

    :goto_1
    iget-object v4, p0, Llocal/voicebridge/VoiceBridgeService;->keyMode:Ljava/lang/String;

    iget-boolean v5, p0, Llocal/voicebridge/VoiceBridgeService;->debugTree:Z

    iget-boolean v6, p0, Llocal/voicebridge/VoiceBridgeService;->keysEnabled:Z

    iget-wide v7, p0, Llocal/voicebridge/VoiceBridgeService;->initialDelayMs:J

    iget-wide v9, p0, Llocal/voicebridge/VoiceBridgeService;->repeatDelayMs:J

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v11, "serviceConnected v4.4 capabilities="

    invoke-direct {p0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " flags="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " eventTypes="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " keyMode="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " debugTree="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " keysEnabled="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " initial="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " repeat="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 564
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 10

    const/4 p2, 0x1

    if-nez p1, :cond_0

    return p2

    .line 1610
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    .line 1611
    const-string v0, "local.voicebridge.SET_TEXT"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "VoiceBridge"

    const-string v2, "text"

    if-eqz v0, :cond_2

    .line 1612
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1613
    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "settext action text="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    .line 1614
    const-string p1, ""

    :cond_1
    invoke-virtual {p0, p1, p2}, Llocal/voicebridge/VoiceBridgeService;->insertText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1615
    :cond_2
    const-string v0, "local.voicebridge.TEST_QUERY"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1616
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->testVoiceQuery(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1617
    :cond_3
    const-string v0, "local.voicebridge.CONFIG"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1618
    invoke-virtual {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->configure(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1619
    :cond_4
    const-string v0, "local.voicebridge.TEST"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 1620
    const-string p3, "mode"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1621
    const-string p3, "service"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1622
    const-string p3, "path"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1623
    const-string p3, "fd"

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1624
    const-string p3, "nonMic"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 1625
    const-string p3, "publicExtra"

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 1626
    invoke-virtual {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->configure(Landroid/content/Intent;)V

    .line 1627
    invoke-direct {p0, v6}, Llocal/voicebridge/VoiceBridgeService;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "test action mode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " service="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v2, " fd="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v2, " nonMic="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v2, " publicExtra="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    const-string p3, "configOnly"

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1630
    iget-object p1, p0, Llocal/voicebridge/VoiceBridgeService;->main:Landroid/os/Handler;

    new-instance v2, Llocal/voicebridge/VoiceBridgeService$10;

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Llocal/voicebridge/VoiceBridgeService$10;-><init>(Llocal/voicebridge/VoiceBridgeService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_0
    return p2
.end method

.method public simulateObservationForTest()V
    .locals 4

    .line 1973
    invoke-direct {p0}, Llocal/voicebridge/VoiceBridgeService;->beginObservation()V

    .line 1974
    invoke-direct {p0}, Llocal/voicebridge/VoiceBridgeService;->recordOrigin()V

    .line 1975
    const-string v0, "VoiceBridge"

    const-string v1, "simulateObservationForTest: software ASSIST event cannot open BLE microphone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->main:Landroid/os/Handler;

    iget-object v1, p0, Llocal/voicebridge/VoiceBridgeService;->captureAssistant:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1977
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->main:Landroid/os/Handler;

    iget-object p0, p0, Llocal/voicebridge/VoiceBridgeService;->finishObservation:Ljava/lang/Runnable;

    const-wide/16 v1, 0x9c4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 9

    const-string v0, "startListening returned mode="

    const-string v1, "serviceCn="

    .line 1709
    invoke-direct {p0, p3}, Llocal/voicebridge/VoiceBridgeService;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "start mode="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " service="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " path="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nonMic="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " publicExtra="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v8, "VoiceBridge"

    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    iput-object p1, p0, Llocal/voicebridge/VoiceBridgeService;->lastMode:Ljava/lang/String;

    .line 1712
    invoke-direct {p0}, Llocal/voicebridge/VoiceBridgeService;->cancel()V

    const-wide/16 v2, 0x0

    .line 1713
    iput-wide v2, p0, Llocal/voicebridge/VoiceBridgeService;->rmsCount:J

    const/high16 v2, -0x3d100000    # -120.0f

    .line 1714
    iput v2, p0, Llocal/voicebridge/VoiceBridgeService;->rmsMax:F

    .line 1716
    :try_start_0
    invoke-direct {p0, p2}, Llocal/voicebridge/VoiceBridgeService;->parseService(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p2

    if-nez p2, :cond_0

    .line 1717
    invoke-static {p0}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v2

    goto :goto_0

    .line 1718
    :cond_0
    invoke-static {p0, p2}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/speech/SpeechRecognizer;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Llocal/voicebridge/VoiceBridgeService;->recognizer:Landroid/speech/SpeechRecognizer;

    .line 1719
    new-instance v3, Llocal/voicebridge/VoiceBridgeService$Listener;

    invoke-direct {v3, p0, p1}, Llocal/voicebridge/VoiceBridgeService$Listener;-><init>(Llocal/voicebridge/VoiceBridgeService;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 1720
    invoke-direct/range {v2 .. v7}, Llocal/voicebridge/VoiceBridgeService;->buildRecognizerIntent(Ljava/lang/String;Ljava/lang/String;IZZ)Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1722
    const-string p2, "\u6d4b\u8bd5\u51c6\u5907\u5931\u8d25\uff0c\u67e5\u770b VoiceBridge \u65e5\u5fd7"

    invoke-direct {p0, p2}, Llocal/voicebridge/VoiceBridgeService;->toast(Ljava/lang/String;)V

    .line 1723
    invoke-direct {p0}, Llocal/voicebridge/VoiceBridgeService;->cancel()V

    return-void

    .line 1726
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4}, Llocal/voicebridge/VoiceBridgeService;->describe(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " intent="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " extras="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v8, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    iget-object p2, p0, Llocal/voicebridge/VoiceBridgeService;->recognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {p2, v4}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    .line 1728
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v8, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p2, v0

    .line 1730
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start failed mode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1731
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\u8bc6\u522b\u542f\u52a8\u5931\u8d25: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->toast(Ljava/lang/String;)V

    return-void
.end method

.method public testVoiceQuery(Ljava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    .line 1943
    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1944
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1945
    iget-object v2, p0, Llocal/voicebridge/VoiceBridgeService;->main:Landroid/os/Handler;

    iget-object v3, p0, Llocal/voicebridge/VoiceBridgeService;->insertPending:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    .line 1946
    iput-boolean v2, p0, Llocal/voicebridge/VoiceBridgeService;->setTextDone:Z

    .line 1947
    invoke-direct {p0}, Llocal/voicebridge/VoiceBridgeService;->beginObservation()V

    .line 1948
    const-string v3, "com.android.vending"

    iput-object v3, p0, Llocal/voicebridge/VoiceBridgeService;->originPackage:Ljava/lang/String;

    .line 1949
    iget-boolean v3, p0, Llocal/voicebridge/VoiceBridgeService;->lastPlayStoreEditable:Z

    iput-boolean v3, p0, Llocal/voicebridge/VoiceBridgeService;->originEditable:Z

    .line 1950
    iget-object v3, p0, Llocal/voicebridge/VoiceBridgeService;->lastPlayStoreText:Ljava/lang/String;

    iput-object v3, p0, Llocal/voicebridge/VoiceBridgeService;->originText:Ljava/lang/String;

    .line 1951
    iget-object v3, p0, Llocal/voicebridge/VoiceBridgeService;->lastPlayStoreText:Ljava/lang/String;

    iput-object v3, p0, Llocal/voicebridge/VoiceBridgeService;->observationBaselineText:Ljava/lang/String;

    const/4 v3, 0x1

    .line 1952
    iput-boolean v3, p0, Llocal/voicebridge/VoiceBridgeService;->autoObservationStarted:Z

    .line 1953
    iput-boolean v3, p0, Llocal/voicebridge/VoiceBridgeService;->voicePlateSeen:Z

    .line 1954
    iput-wide v0, p0, Llocal/voicebridge/VoiceBridgeService;->lastKatnissEventMs:J

    const-wide/16 v3, 0x3a98

    add-long/2addr v3, v0

    .line 1955
    iput-wide v3, p0, Llocal/voicebridge/VoiceBridgeService;->voicePlateFinishAtMs:J

    .line 1956
    iput-boolean v2, p0, Llocal/voicebridge/VoiceBridgeService;->setTextInProgress:Z

    .line 1957
    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Llocal/voicebridge/VoiceBridgeService;->originEditable:Z

    iget-wide v4, p0, Llocal/voicebridge/VoiceBridgeService;->lastPlayStoreSeenMs:J

    sub-long/2addr v0, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "testVoiceQuery text="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " originEditable="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " playStoreTtl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceBridge"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    const-string v0, "testVoiceQuery"

    invoke-direct {p0, p1, v0}, Llocal/voicebridge/VoiceBridgeService;->recordVoiceQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 1960
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->main:Landroid/os/Handler;

    new-instance v1, Llocal/voicebridge/VoiceBridgeService$12;

    invoke-direct {v1, p0, p1}, Llocal/voicebridge/VoiceBridgeService$12;-><init>(Llocal/voicebridge/VoiceBridgeService;Ljava/lang/String;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1965
    iget-object p1, p0, Llocal/voicebridge/VoiceBridgeService;->main:Landroid/os/Handler;

    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->captureAssistant:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1966
    iget-object p1, p0, Llocal/voicebridge/VoiceBridgeService;->main:Landroid/os/Handler;

    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->finishObservation:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1967
    iget-object p1, p0, Llocal/voicebridge/VoiceBridgeService;->main:Landroid/os/Handler;

    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->captureAssistant:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1968
    iget-object p1, p0, Llocal/voicebridge/VoiceBridgeService;->main:Landroid/os/Handler;

    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService;->finishObservation:Ljava/lang/Runnable;

    const-wide/16 v1, 0x4b0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1969
    invoke-direct {p0}, Llocal/voicebridge/VoiceBridgeService;->startWindowWatch()V

    return-void
.end method
