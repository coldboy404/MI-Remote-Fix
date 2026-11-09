.class final Llocal/voicebridge/NavigationRepeater;
.super Ljava/lang/Object;
.source "NavigationRepeater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llocal/voicebridge/NavigationRepeater$Sink;
    }
.end annotation


# static fields
.field private static final ABSOLUTE_MAX_PRESS_DURATION_MS:J = 0x2ee0L

.field private static final CONFIRMED_STALE_PRESS_TIMEOUT_MS:J = 0x384L

.field static final DEFAULT_INITIAL_DELAY_MS:J = 0x1f4L

.field private static final DOWN_TIME_TOLERANCE_MS:J = 0x64L

.field static final MAX_INITIAL_DELAY_MS:J = 0x5dcL

.field private static final MAX_REPEAT_COUNT:I = 0x96

.field static final MIN_INITIAL_DELAY_MS:J = 0x190L

.field private static final PRE_CONFIRM_EXTRA_TIMEOUT_MS:J = 0x2bcL

.field private static final PRE_CONFIRM_MIN_TIMEOUT_MS:J = 0x4b0L

.field private static final TAG:Ljava/lang/String; = "VoiceBridge"


# instance fields
.field private activeAction:I

.field private activeDevice:I

.field private activeDownTime:J

.field private activeKey:I

.field private downAtMs:J

.field private generation:J

.field private final handler:Landroid/os/Handler;

.field private held:Z

.field private initialDelay:J

.field private lastPhysicalEventAtMs:J

.field private longPressConfirmed:Z

.field private pairedDevice:I

.field private pairedDownTime:J

.field private repeatDelay:J

.field private repeatStartTask:Ljava/lang/Runnable;

.field private repeatTask:Ljava/lang/Runnable;

.field private repeats:I

.field private final sink:Llocal/voicebridge/NavigationRepeater$Sink;

.field private watchdogTask:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$fgetactiveDevice(Llocal/voicebridge/NavigationRepeater;)I
    .locals 0

    iget p0, p0, Llocal/voicebridge/NavigationRepeater;->activeDevice:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetactiveKey(Llocal/voicebridge/NavigationRepeater;)I
    .locals 0

    iget p0, p0, Llocal/voicebridge/NavigationRepeater;->activeKey:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetgeneration(Llocal/voicebridge/NavigationRepeater;)J
    .locals 2

    iget-wide v0, p0, Llocal/voicebridge/NavigationRepeater;->generation:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetheld(Llocal/voicebridge/NavigationRepeater;)Z
    .locals 0

    iget-boolean p0, p0, Llocal/voicebridge/NavigationRepeater;->held:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastPhysicalEventAtMs(Llocal/voicebridge/NavigationRepeater;)J
    .locals 2

    iget-wide v0, p0, Llocal/voicebridge/NavigationRepeater;->lastPhysicalEventAtMs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetlongPressConfirmed(Llocal/voicebridge/NavigationRepeater;)Z
    .locals 0

    iget-boolean p0, p0, Llocal/voicebridge/NavigationRepeater;->longPressConfirmed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrepeats(Llocal/voicebridge/NavigationRepeater;)I
    .locals 0

    iget p0, p0, Llocal/voicebridge/NavigationRepeater;->repeats:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputrepeatStartTask(Llocal/voicebridge/NavigationRepeater;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Llocal/voicebridge/NavigationRepeater;->repeatStartTask:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputrepeatTask(Llocal/voicebridge/NavigationRepeater;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Llocal/voicebridge/NavigationRepeater;->repeatTask:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcurrentWatchdogTimeoutLocked(Llocal/voicebridge/NavigationRepeater;)J
    .locals 2

    invoke-direct {p0}, Llocal/voicebridge/NavigationRepeater;->currentWatchdogTimeoutLocked()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$memitRepeatLocked(Llocal/voicebridge/NavigationRepeater;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Llocal/voicebridge/NavigationRepeater;->emitRepeatLocked(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscheduleWatchdogLocked(Llocal/voicebridge/NavigationRepeater;JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Llocal/voicebridge/NavigationRepeater;->scheduleWatchdogLocked(JJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopLocked(Llocal/voicebridge/NavigationRepeater;)V
    .locals 0

    invoke-direct {p0}, Llocal/voicebridge/NavigationRepeater;->stopLocked()V

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Llocal/voicebridge/NavigationRepeater$Sink;JJ)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Llocal/voicebridge/NavigationRepeater;->activeKey:I

    .line 28
    iput v0, p0, Llocal/voicebridge/NavigationRepeater;->activeDevice:I

    .line 30
    iput v0, p0, Llocal/voicebridge/NavigationRepeater;->pairedDevice:I

    .line 43
    iput-object p1, p0, Llocal/voicebridge/NavigationRepeater;->handler:Landroid/os/Handler;

    .line 44
    iput-object p2, p0, Llocal/voicebridge/NavigationRepeater;->sink:Llocal/voicebridge/NavigationRepeater$Sink;

    .line 45
    invoke-virtual {p0, p3, p4, p5, p6}, Llocal/voicebridge/NavigationRepeater;->setDelays(JJ)V

    return-void
.end method

.method private static clamp(JJJ)J
    .locals 0

    .line 255
    invoke-static {p4, p5, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private currentWatchdogTimeoutLocked()J
    .locals 2

    .line 251
    iget-boolean v0, p0, Llocal/voicebridge/NavigationRepeater;->longPressConfirmed:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x384

    return-wide v0

    :cond_0
    invoke-direct {p0}, Llocal/voicebridge/NavigationRepeater;->preConfirmWatchdogTimeoutLocked()J

    move-result-wide v0

    return-wide v0
.end method

.method private emitRepeatLocked(J)V
    .locals 9

    .line 153
    iget-boolean v0, p0, Llocal/voicebridge/NavigationRepeater;->held:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Llocal/voicebridge/NavigationRepeater;->generation:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_7

    .line 155
    iget-boolean v0, p0, Llocal/voicebridge/NavigationRepeater;->longPressConfirmed:Z

    const-string v1, " device="

    const-string v2, "VoiceBridge"

    if-nez v0, :cond_0

    .line 156
    iget p1, p0, Llocal/voicebridge/NavigationRepeater;->activeKey:I

    iget p0, p0, Llocal/voicebridge/NavigationRepeater;->activeDevice:I

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "dpad repeat skipped, not confirmed key="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 160
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 161
    iget-wide v5, p0, Llocal/voicebridge/NavigationRepeater;->downAtMs:J

    sub-long v5, v3, v5

    .line 162
    iget-wide v7, p0, Llocal/voicebridge/NavigationRepeater;->lastPhysicalEventAtMs:J

    sub-long/2addr v3, v7

    .line 164
    iget v0, p0, Llocal/voicebridge/NavigationRepeater;->repeats:I

    const/16 v7, 0x96

    if-lt v0, v7, :cond_1

    .line 165
    iget p1, p0, Llocal/voicebridge/NavigationRepeater;->activeKey:I

    iget p2, p0, Llocal/voicebridge/NavigationRepeater;->activeDevice:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "dpad max repeats reached key="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-direct {p0}, Llocal/voicebridge/NavigationRepeater;->stopLocked()V

    return-void

    :cond_1
    const-wide/16 v7, 0x2ee0

    cmp-long v0, v5, v7

    if-ltz v0, :cond_2

    .line 171
    iget p1, p0, Llocal/voicebridge/NavigationRepeater;->activeKey:I

    iget p2, p0, Llocal/voicebridge/NavigationRepeater;->activeDevice:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "dpad absolute timeout key="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " duration="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-direct {p0}, Llocal/voicebridge/NavigationRepeater;->stopLocked()V

    return-void

    .line 177
    :cond_2
    invoke-direct {p0}, Llocal/voicebridge/NavigationRepeater;->currentWatchdogTimeoutLocked()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-ltz v0, :cond_3

    .line 178
    iget p1, p0, Llocal/voicebridge/NavigationRepeater;->activeKey:I

    iget p2, p0, Llocal/voicebridge/NavigationRepeater;->activeDevice:I

    iget v0, p0, Llocal/voicebridge/NavigationRepeater;->repeats:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "dpad stale before repeat key="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " idle="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "ms repeats="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-direct {p0}, Llocal/voicebridge/NavigationRepeater;->stopLocked()V

    return-void

    .line 184
    :cond_3
    iget-object v0, p0, Llocal/voicebridge/NavigationRepeater;->sink:Llocal/voicebridge/NavigationRepeater$Sink;

    iget v3, p0, Llocal/voicebridge/NavigationRepeater;->activeAction:I

    invoke-interface {v0, v3}, Llocal/voicebridge/NavigationRepeater$Sink;->send(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 185
    iget p1, p0, Llocal/voicebridge/NavigationRepeater;->activeKey:I

    iget p2, p0, Llocal/voicebridge/NavigationRepeater;->activeDevice:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "dpad repeat action failed key="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-direct {p0}, Llocal/voicebridge/NavigationRepeater;->stopLocked()V

    return-void

    .line 190
    :cond_4
    iget v0, p0, Llocal/voicebridge/NavigationRepeater;->repeats:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, p0, Llocal/voicebridge/NavigationRepeater;->repeats:I

    if-eq v0, v3, :cond_5

    .line 191
    rem-int/lit8 v3, v0, 0xa

    if-nez v3, :cond_6

    .line 192
    :cond_5
    iget v3, p0, Llocal/voicebridge/NavigationRepeater;->activeKey:I

    iget v4, p0, Llocal/voicebridge/NavigationRepeater;->activeDevice:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "dpad repeat key="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " count="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_6
    invoke-direct {p0, p1, p2}, Llocal/voicebridge/NavigationRepeater;->scheduleNextRepeatLocked(J)V

    :cond_7
    return-void
.end method

.method private preConfirmWatchdogTimeoutLocked()J
    .locals 4

    .line 247
    iget-wide v0, p0, Llocal/voicebridge/NavigationRepeater;->initialDelay:J

    const-wide/16 v2, 0x2bc

    add-long/2addr v0, v2

    const-wide/16 v2, 0x4b0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private removeRepeatTasksLocked()V
    .locals 2

    .line 236
    iget-object v0, p0, Llocal/voicebridge/NavigationRepeater;->repeatStartTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Llocal/voicebridge/NavigationRepeater;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 237
    :cond_0
    iget-object v0, p0, Llocal/voicebridge/NavigationRepeater;->repeatTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Llocal/voicebridge/NavigationRepeater;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    const/4 v0, 0x0

    .line 238
    iput-object v0, p0, Llocal/voicebridge/NavigationRepeater;->repeatStartTask:Ljava/lang/Runnable;

    .line 239
    iput-object v0, p0, Llocal/voicebridge/NavigationRepeater;->repeatTask:Ljava/lang/Runnable;

    return-void
.end method

.method private samePress(JJJ)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-lez p0, :cond_0

    cmp-long p0, p3, v0

    if-lez p0, :cond_0

    sub-long/2addr p1, p3

    .line 243
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    cmp-long p0, p0, p5

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private scheduleNextRepeatLocked(J)V
    .locals 3

    .line 140
    new-instance v0, Llocal/voicebridge/NavigationRepeater$2;

    invoke-direct {v0, p0, p1, p2}, Llocal/voicebridge/NavigationRepeater$2;-><init>(Llocal/voicebridge/NavigationRepeater;J)V

    iput-object v0, p0, Llocal/voicebridge/NavigationRepeater;->repeatTask:Ljava/lang/Runnable;

    .line 149
    iget-object p1, p0, Llocal/voicebridge/NavigationRepeater;->handler:Landroid/os/Handler;

    iget-wide v1, p0, Llocal/voicebridge/NavigationRepeater;->repeatDelay:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private scheduleRepeatStartLocked(JJ)V
    .locals 2

    .line 126
    iget-object v0, p0, Llocal/voicebridge/NavigationRepeater;->repeatStartTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Llocal/voicebridge/NavigationRepeater;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 127
    :cond_0
    new-instance v0, Llocal/voicebridge/NavigationRepeater$1;

    invoke-direct {v0, p0, p1, p2}, Llocal/voicebridge/NavigationRepeater$1;-><init>(Llocal/voicebridge/NavigationRepeater;J)V

    iput-object v0, p0, Llocal/voicebridge/NavigationRepeater;->repeatStartTask:Ljava/lang/Runnable;

    .line 136
    iget-object p0, p0, Llocal/voicebridge/NavigationRepeater;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private scheduleWatchdogLocked(JJ)V
    .locals 2

    .line 198
    iget-object v0, p0, Llocal/voicebridge/NavigationRepeater;->watchdogTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Llocal/voicebridge/NavigationRepeater;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 199
    :cond_0
    new-instance v0, Llocal/voicebridge/NavigationRepeater$3;

    invoke-direct {v0, p0, p1, p2}, Llocal/voicebridge/NavigationRepeater$3;-><init>(Llocal/voicebridge/NavigationRepeater;J)V

    iput-object v0, p0, Llocal/voicebridge/NavigationRepeater;->watchdogTask:Ljava/lang/Runnable;

    .line 215
    iget-object p0, p0, Llocal/voicebridge/NavigationRepeater;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopLocked()V
    .locals 4

    const/4 v0, 0x0

    .line 219
    iput-boolean v0, p0, Llocal/voicebridge/NavigationRepeater;->held:Z

    .line 220
    iput-boolean v0, p0, Llocal/voicebridge/NavigationRepeater;->longPressConfirmed:Z

    const/4 v1, -0x1

    .line 221
    iput v1, p0, Llocal/voicebridge/NavigationRepeater;->activeKey:I

    .line 222
    iput v1, p0, Llocal/voicebridge/NavigationRepeater;->activeDevice:I

    const-wide/16 v2, 0x0

    .line 223
    iput-wide v2, p0, Llocal/voicebridge/NavigationRepeater;->activeDownTime:J

    .line 224
    iput v1, p0, Llocal/voicebridge/NavigationRepeater;->pairedDevice:I

    .line 225
    iput-wide v2, p0, Llocal/voicebridge/NavigationRepeater;->pairedDownTime:J

    .line 226
    iput-wide v2, p0, Llocal/voicebridge/NavigationRepeater;->downAtMs:J

    .line 227
    iput-wide v2, p0, Llocal/voicebridge/NavigationRepeater;->lastPhysicalEventAtMs:J

    .line 228
    iput v0, p0, Llocal/voicebridge/NavigationRepeater;->repeats:I

    .line 229
    iget-wide v0, p0, Llocal/voicebridge/NavigationRepeater;->generation:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Llocal/voicebridge/NavigationRepeater;->generation:J

    .line 230
    invoke-direct {p0}, Llocal/voicebridge/NavigationRepeater;->removeRepeatTasksLocked()V

    .line 231
    iget-object v0, p0, Llocal/voicebridge/NavigationRepeater;->watchdogTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Llocal/voicebridge/NavigationRepeater;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    .line 232
    iput-object v0, p0, Llocal/voicebridge/NavigationRepeater;->watchdogTask:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method declared-synchronized confirmLongPress(IIJJ)Z
    .locals 3

    const-string v0, "dpad long-press confirmed key="

    monitor-enter p0

    const-wide/16 v1, 0x0

    cmp-long v1, p5, v1

    if-gtz v1, :cond_0

    .line 104
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p5

    .line 105
    :cond_0
    invoke-virtual {p0, p2, p1, p3, p4}, Llocal/voicebridge/NavigationRepeater;->ownsPress(IIJ)Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_1

    monitor-exit p0

    const/4 p0, 0x0

    return p0

    .line 106
    :cond_1
    :try_start_1
    iput-wide p5, p0, Llocal/voicebridge/NavigationRepeater;->lastPhysicalEventAtMs:J

    .line 107
    iget-boolean p3, p0, Llocal/voicebridge/NavigationRepeater;->longPressConfirmed:Z

    const/4 p4, 0x1

    if-nez p3, :cond_2

    .line 108
    iput-boolean p4, p0, Llocal/voicebridge/NavigationRepeater;->longPressConfirmed:Z

    .line 109
    const-string p3, "VoiceBridge"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p5, " device="

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_2
    iget-wide p1, p0, Llocal/voicebridge/NavigationRepeater;->generation:J

    const-wide/16 p5, 0x384

    invoke-direct {p0, p1, p2, p5, p6}, Llocal/voicebridge/NavigationRepeater;->scheduleWatchdogLocked(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    monitor-exit p0

    return p4

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0
.end method

.method declared-synchronized isDeviceHeld(I)Z
    .locals 1

    monitor-enter p0

    .line 54
    :try_start_0
    iget-boolean v0, p0, Llocal/voicebridge/NavigationRepeater;->held:Z

    if-eqz v0, :cond_1

    iget v0, p0, Llocal/voicebridge/NavigationRepeater;->activeDevice:I

    if-eq v0, p1, :cond_0

    iget v0, p0, Llocal/voicebridge/NavigationRepeater;->pairedDevice:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1
.end method

.method declared-synchronized ownsPress(IIJ)Z
    .locals 8

    monitor-enter p0

    .line 64
    :try_start_0
    iget-boolean v0, p0, Llocal/voicebridge/NavigationRepeater;->held:Z

    if-eqz v0, :cond_3

    iget v0, p0, Llocal/voicebridge/NavigationRepeater;->activeKey:I

    if-ne v0, p1, :cond_3

    .line 65
    iget p1, p0, Llocal/voicebridge/NavigationRepeater;->activeDevice:I

    const/4 v0, 0x1

    if-ne p2, p1, :cond_0

    iget-wide v2, p0, Llocal/voicebridge/NavigationRepeater;->activeDownTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v6, 0x64

    move-object v1, p0

    move-wide v4, p3

    :try_start_1
    invoke-direct/range {v1 .. v7}, Llocal/voicebridge/NavigationRepeater;->samePress(JJJ)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_1

    monitor-exit v1

    return v0

    :cond_0
    move-object v1, p0

    move-wide v4, p3

    .line 66
    :cond_1
    :try_start_2
    iget p0, v1, Llocal/voicebridge/NavigationRepeater;->pairedDevice:I

    if-ne p2, p0, :cond_2

    iget-wide v2, v1, Llocal/voicebridge/NavigationRepeater;->pairedDownTime:J

    const-wide/16 v6, 0x64

    invoke-direct/range {v1 .. v7}, Llocal/voicebridge/NavigationRepeater;->samePress(JJJ)Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_2

    monitor-exit v1

    return v0

    .line 67
    :cond_2
    monitor-exit v1

    return v0

    :cond_3
    move-object v1, p0

    .line 64
    monitor-exit v1

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception v0

    move-object v1, p0

    :goto_0
    move-object p0, v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method declared-synchronized registerPairedNode(IJ)V
    .locals 1

    monitor-enter p0

    .line 58
    :try_start_0
    iget-boolean v0, p0, Llocal/voicebridge/NavigationRepeater;->held:Z

    if-eqz v0, :cond_0

    iget v0, p0, Llocal/voicebridge/NavigationRepeater;->activeDevice:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Llocal/voicebridge/NavigationRepeater;->pairedDevice:I

    if-gez v0, :cond_0

    .line 59
    iput p1, p0, Llocal/voicebridge/NavigationRepeater;->pairedDevice:I

    .line 60
    iput-wide p2, p0, Llocal/voicebridge/NavigationRepeater;->pairedDownTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 58
    :cond_0
    monitor-exit p0

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0
.end method

.method declared-synchronized release(IIJJ)V
    .locals 0

    const-string p3, "dpad release key="

    monitor-enter p0

    .line 117
    :try_start_0
    iget-boolean p4, p0, Llocal/voicebridge/NavigationRepeater;->held:Z

    if-eqz p4, :cond_0

    iget p4, p0, Llocal/voicebridge/NavigationRepeater;->activeKey:I

    if-ne p4, p2, :cond_0

    .line 118
    iget p4, p0, Llocal/voicebridge/NavigationRepeater;->repeats:I

    .line 119
    const-string p5, "VoiceBridge"

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " device="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " repeats="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-direct {p0}, Llocal/voicebridge/NavigationRepeater;->stopLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    .line 117
    :cond_0
    monitor-exit p0

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0
.end method

.method declared-synchronized setDelays(JJ)V
    .locals 6

    monitor-enter p0

    const-wide/16 v2, 0x190

    const-wide/16 v4, 0x5dc

    move-wide v0, p1

    .line 49
    :try_start_0
    invoke-static/range {v0 .. v5}, Llocal/voicebridge/NavigationRepeater;->clamp(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Llocal/voicebridge/NavigationRepeater;->initialDelay:J

    const-wide/16 v2, 0x3c

    const-wide/16 v4, 0x320

    move-wide v0, p3

    .line 50
    invoke-static/range {v0 .. v5}, Llocal/voicebridge/NavigationRepeater;->clamp(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Llocal/voicebridge/NavigationRepeater;->repeatDelay:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0
.end method

.method declared-synchronized startPress(IIIJJ)Z
    .locals 6

    const-string v0, "dpad initial action failed key="

    const-string v1, "dpad press key="

    monitor-enter p0

    const-wide/16 v2, 0x0

    cmp-long v4, p6, v2

    if-gtz v4, :cond_0

    .line 73
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p6

    :cond_0
    cmp-long v4, p4, v2

    if-lez v4, :cond_1

    move-wide v4, p4

    goto :goto_0

    :cond_1
    move-wide v4, p6

    .line 75
    :goto_0
    invoke-direct {p0}, Llocal/voicebridge/NavigationRepeater;->stopLocked()V

    .line 76
    iput p2, p0, Llocal/voicebridge/NavigationRepeater;->activeKey:I

    .line 77
    iput p3, p0, Llocal/voicebridge/NavigationRepeater;->activeAction:I

    .line 78
    iput p1, p0, Llocal/voicebridge/NavigationRepeater;->activeDevice:I

    .line 79
    iput-wide v4, p0, Llocal/voicebridge/NavigationRepeater;->activeDownTime:J

    const/4 v4, -0x1

    .line 80
    iput v4, p0, Llocal/voicebridge/NavigationRepeater;->pairedDevice:I

    .line 81
    iput-wide v2, p0, Llocal/voicebridge/NavigationRepeater;->pairedDownTime:J

    .line 82
    iput-wide p6, p0, Llocal/voicebridge/NavigationRepeater;->downAtMs:J

    .line 83
    iput-wide p6, p0, Llocal/voicebridge/NavigationRepeater;->lastPhysicalEventAtMs:J

    const/4 p6, 0x1

    .line 84
    iput-boolean p6, p0, Llocal/voicebridge/NavigationRepeater;->held:Z

    const/4 p7, 0x0

    .line 85
    iput-boolean p7, p0, Llocal/voicebridge/NavigationRepeater;->longPressConfirmed:Z

    .line 86
    iput p7, p0, Llocal/voicebridge/NavigationRepeater;->repeats:I

    .line 87
    iget-wide v2, p0, Llocal/voicebridge/NavigationRepeater;->generation:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Llocal/voicebridge/NavigationRepeater;->generation:J

    .line 89
    iget-object v4, p0, Llocal/voicebridge/NavigationRepeater;->sink:Llocal/voicebridge/NavigationRepeater$Sink;

    invoke-interface {v4, p3}, Llocal/voicebridge/NavigationRepeater$Sink;->send(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 90
    const-string p3, "VoiceBridge"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, " device="

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-direct {p0}, Llocal/voicebridge/NavigationRepeater;->stopLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return p7

    .line 94
    :cond_2
    :try_start_1
    const-string p7, "VoiceBridge"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " device="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " downTime="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " action="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p7, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-wide p1, p0, Llocal/voicebridge/NavigationRepeater;->initialDelay:J

    invoke-direct {p0, v2, v3, p1, p2}, Llocal/voicebridge/NavigationRepeater;->scheduleRepeatStartLocked(JJ)V

    .line 97
    invoke-direct {p0}, Llocal/voicebridge/NavigationRepeater;->preConfirmWatchdogTimeoutLocked()J

    move-result-wide p1

    .line 98
    invoke-direct {p0, v2, v3, p1, p2}, Llocal/voicebridge/NavigationRepeater;->scheduleWatchdogLocked(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    monitor-exit p0

    return p6

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1
.end method

.method declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    .line 123
    :try_start_0
    invoke-direct {p0}, Llocal/voicebridge/NavigationRepeater;->stopLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_0
.end method
