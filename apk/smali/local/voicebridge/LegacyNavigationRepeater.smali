.class final Llocal/voicebridge/LegacyNavigationRepeater;
.super Ljava/lang/Object;
.source "LegacyNavigationRepeater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llocal/voicebridge/LegacyNavigationRepeater$Sink;
    }
.end annotation


# static fields
.field private static final INITIAL_DELAY_MS:J = 0x136L

.field private static final REPEAT_DELAY_MS:J = 0xaaL

.field private static final TAG:Ljava/lang/String; = "VoiceBridge"


# instance fields
.field private activeAction:I

.field private activeDevice:I

.field private activeDownTime:J

.field private activeKey:I

.field private final handler:Landroid/os/Handler;

.field private held:Z

.field private repeats:I

.field private final sink:Llocal/voicebridge/LegacyNavigationRepeater$Sink;

.field private final tick:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$fgetactiveAction(Llocal/voicebridge/LegacyNavigationRepeater;)I
    .locals 0

    iget p0, p0, Llocal/voicebridge/LegacyNavigationRepeater;->activeAction:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetactiveDevice(Llocal/voicebridge/LegacyNavigationRepeater;)I
    .locals 0

    iget p0, p0, Llocal/voicebridge/LegacyNavigationRepeater;->activeDevice:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetactiveKey(Llocal/voicebridge/LegacyNavigationRepeater;)I
    .locals 0

    iget p0, p0, Llocal/voicebridge/LegacyNavigationRepeater;->activeKey:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgethandler(Llocal/voicebridge/LegacyNavigationRepeater;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Llocal/voicebridge/LegacyNavigationRepeater;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetheld(Llocal/voicebridge/LegacyNavigationRepeater;)Z
    .locals 0

    iget-boolean p0, p0, Llocal/voicebridge/LegacyNavigationRepeater;->held:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrepeats(Llocal/voicebridge/LegacyNavigationRepeater;)I
    .locals 0

    iget p0, p0, Llocal/voicebridge/LegacyNavigationRepeater;->repeats:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsink(Llocal/voicebridge/LegacyNavigationRepeater;)Llocal/voicebridge/LegacyNavigationRepeater$Sink;
    .locals 0

    iget-object p0, p0, Llocal/voicebridge/LegacyNavigationRepeater;->sink:Llocal/voicebridge/LegacyNavigationRepeater$Sink;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputrepeats(Llocal/voicebridge/LegacyNavigationRepeater;I)V
    .locals 0

    iput p1, p0, Llocal/voicebridge/LegacyNavigationRepeater;->repeats:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopLocked(Llocal/voicebridge/LegacyNavigationRepeater;)V
    .locals 0

    invoke-direct {p0}, Llocal/voicebridge/LegacyNavigationRepeater;->stopLocked()V

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Llocal/voicebridge/LegacyNavigationRepeater$Sink;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Llocal/voicebridge/LegacyNavigationRepeater;->activeKey:I

    .line 18
    iput v0, p0, Llocal/voicebridge/LegacyNavigationRepeater;->activeDevice:I

    .line 23
    new-instance v0, Llocal/voicebridge/LegacyNavigationRepeater$1;

    invoke-direct {v0, p0}, Llocal/voicebridge/LegacyNavigationRepeater$1;-><init>(Llocal/voicebridge/LegacyNavigationRepeater;)V

    iput-object v0, p0, Llocal/voicebridge/LegacyNavigationRepeater;->tick:Ljava/lang/Runnable;

    .line 43
    iput-object p1, p0, Llocal/voicebridge/LegacyNavigationRepeater;->handler:Landroid/os/Handler;

    .line 44
    iput-object p2, p0, Llocal/voicebridge/LegacyNavigationRepeater;->sink:Llocal/voicebridge/LegacyNavigationRepeater$Sink;

    return-void
.end method

.method private stopLocked()V
    .locals 3

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Llocal/voicebridge/LegacyNavigationRepeater;->held:Z

    const/4 v1, -0x1

    .line 83
    iput v1, p0, Llocal/voicebridge/LegacyNavigationRepeater;->activeKey:I

    .line 84
    iput v1, p0, Llocal/voicebridge/LegacyNavigationRepeater;->activeDevice:I

    const-wide/16 v1, 0x0

    .line 85
    iput-wide v1, p0, Llocal/voicebridge/LegacyNavigationRepeater;->activeDownTime:J

    .line 86
    iput v0, p0, Llocal/voicebridge/LegacyNavigationRepeater;->repeats:I

    .line 87
    iget-object v0, p0, Llocal/voicebridge/LegacyNavigationRepeater;->handler:Landroid/os/Handler;

    iget-object p0, p0, Llocal/voicebridge/LegacyNavigationRepeater;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method declared-synchronized isDeviceHeld(I)Z
    .locals 1

    monitor-enter p0

    .line 48
    :try_start_0
    iget-boolean v0, p0, Llocal/voicebridge/LegacyNavigationRepeater;->held:Z

    if-eqz v0, :cond_0

    iget v0, p0, Llocal/voicebridge/LegacyNavigationRepeater;->activeDevice:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
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
    .locals 0

    monitor-enter p0

    .line 52
    :try_start_0
    iget-boolean p3, p0, Llocal/voicebridge/LegacyNavigationRepeater;->held:Z

    if-eqz p3, :cond_0

    iget p3, p0, Llocal/voicebridge/LegacyNavigationRepeater;->activeKey:I

    if-ne p3, p1, :cond_0

    iget p1, p0, Llocal/voicebridge/LegacyNavigationRepeater;->activeDevice:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
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

.method declared-synchronized press(IIIJ)Z
    .locals 5

    const-string v0, "legacy dpad press key="

    monitor-enter p0

    .line 56
    :try_start_0
    invoke-virtual {p0, p2, p1, p4, p5}, Llocal/voicebridge/LegacyNavigationRepeater;->ownsPress(IIJ)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    monitor-exit p0

    return v2

    .line 57
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Llocal/voicebridge/LegacyNavigationRepeater;->held:Z

    if-eqz v1, :cond_1

    iget v1, p0, Llocal/voicebridge/LegacyNavigationRepeater;->activeKey:I

    if-ne v1, p2, :cond_1

    iget v1, p0, Llocal/voicebridge/LegacyNavigationRepeater;->activeDevice:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v1, p1, :cond_1

    monitor-exit p0

    return v2

    .line 58
    :cond_1
    :try_start_2
    invoke-direct {p0}, Llocal/voicebridge/LegacyNavigationRepeater;->stopLocked()V

    .line 59
    iget-object v1, p0, Llocal/voicebridge/LegacyNavigationRepeater;->sink:Llocal/voicebridge/LegacyNavigationRepeater$Sink;

    invoke-interface {v1, p3}, Llocal/voicebridge/LegacyNavigationRepeater$Sink;->send(I)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x0

    if-nez v1, :cond_2

    monitor-exit p0

    return v3

    .line 60
    :cond_2
    :try_start_3
    iput p1, p0, Llocal/voicebridge/LegacyNavigationRepeater;->activeDevice:I

    .line 61
    iput p2, p0, Llocal/voicebridge/LegacyNavigationRepeater;->activeKey:I

    .line 62
    iput p3, p0, Llocal/voicebridge/LegacyNavigationRepeater;->activeAction:I

    .line 63
    iput-wide p4, p0, Llocal/voicebridge/LegacyNavigationRepeater;->activeDownTime:J

    .line 64
    iput v3, p0, Llocal/voicebridge/LegacyNavigationRepeater;->repeats:I

    .line 65
    iput-boolean v2, p0, Llocal/voicebridge/LegacyNavigationRepeater;->held:Z

    .line 66
    iget-object p3, p0, Llocal/voicebridge/LegacyNavigationRepeater;->handler:Landroid/os/Handler;

    iget-object p4, p0, Llocal/voicebridge/LegacyNavigationRepeater;->tick:Ljava/lang/Runnable;

    const-wide/16 v3, 0x136

    invoke-virtual {p3, p4, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 67
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

    const-string p2, " initial=310ms interval=170ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    monitor-exit p0

    return v2

    :goto_0
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0
.end method

.method declared-synchronized release(IIJ)V
    .locals 2

    const-string v0, "legacy dpad release key="

    monitor-enter p0

    .line 73
    :try_start_0
    invoke-virtual {p0, p2, p1, p3, p4}, Llocal/voicebridge/LegacyNavigationRepeater;->ownsPress(IIJ)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 74
    const-string p3, "VoiceBridge"

    iget p4, p0, Llocal/voicebridge/LegacyNavigationRepeater;->repeats:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " device="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-direct {p0}, Llocal/voicebridge/LegacyNavigationRepeater;->stopLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
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

.method declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    .line 79
    :try_start_0
    invoke-direct {p0}, Llocal/voicebridge/LegacyNavigationRepeater;->stopLocked()V
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
