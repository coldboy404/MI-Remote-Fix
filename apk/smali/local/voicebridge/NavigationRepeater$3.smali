.class Llocal/voicebridge/NavigationRepeater$3;
.super Ljava/lang/Object;
.source "NavigationRepeater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llocal/voicebridge/NavigationRepeater;->scheduleWatchdogLocked(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llocal/voicebridge/NavigationRepeater;

.field final synthetic val$token:J


# direct methods
.method constructor <init>(Llocal/voicebridge/NavigationRepeater;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 199
    iput-object p1, p0, Llocal/voicebridge/NavigationRepeater$3;->this$0:Llocal/voicebridge/NavigationRepeater;

    iput-wide p2, p0, Llocal/voicebridge/NavigationRepeater$3;->val$token:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "dpad stale-release key="

    .line 201
    iget-object v1, p0, Llocal/voicebridge/NavigationRepeater$3;->this$0:Llocal/voicebridge/NavigationRepeater;

    monitor-enter v1

    .line 202
    :try_start_0
    iget-object v2, p0, Llocal/voicebridge/NavigationRepeater$3;->this$0:Llocal/voicebridge/NavigationRepeater;

    invoke-static {v2}, Llocal/voicebridge/NavigationRepeater;->-$$Nest$fgetheld(Llocal/voicebridge/NavigationRepeater;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Llocal/voicebridge/NavigationRepeater$3;->this$0:Llocal/voicebridge/NavigationRepeater;

    invoke-static {v2}, Llocal/voicebridge/NavigationRepeater;->-$$Nest$fgetgeneration(Llocal/voicebridge/NavigationRepeater;)J

    move-result-wide v2

    iget-wide v4, p0, Llocal/voicebridge/NavigationRepeater$3;->val$token:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 203
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Llocal/voicebridge/NavigationRepeater$3;->this$0:Llocal/voicebridge/NavigationRepeater;

    invoke-static {v4}, Llocal/voicebridge/NavigationRepeater;->-$$Nest$fgetlastPhysicalEventAtMs(Llocal/voicebridge/NavigationRepeater;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 204
    iget-object v4, p0, Llocal/voicebridge/NavigationRepeater$3;->this$0:Llocal/voicebridge/NavigationRepeater;

    invoke-static {v4}, Llocal/voicebridge/NavigationRepeater;->-$$Nest$mcurrentWatchdogTimeoutLocked(Llocal/voicebridge/NavigationRepeater;)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    .line 206
    const-string v4, "VoiceBridge"

    iget-object v5, p0, Llocal/voicebridge/NavigationRepeater$3;->this$0:Llocal/voicebridge/NavigationRepeater;

    invoke-static {v5}, Llocal/voicebridge/NavigationRepeater;->-$$Nest$fgetactiveKey(Llocal/voicebridge/NavigationRepeater;)I

    move-result v5

    iget-object v6, p0, Llocal/voicebridge/NavigationRepeater$3;->this$0:Llocal/voicebridge/NavigationRepeater;

    invoke-static {v6}, Llocal/voicebridge/NavigationRepeater;->-$$Nest$fgetactiveDevice(Llocal/voicebridge/NavigationRepeater;)I

    move-result v6

    iget-object v7, p0, Llocal/voicebridge/NavigationRepeater$3;->this$0:Llocal/voicebridge/NavigationRepeater;

    invoke-static {v7}, Llocal/voicebridge/NavigationRepeater;->-$$Nest$fgetrepeats(Llocal/voicebridge/NavigationRepeater;)I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " device="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " idle="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ms repeats="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object p0, p0, Llocal/voicebridge/NavigationRepeater$3;->this$0:Llocal/voicebridge/NavigationRepeater;

    invoke-static {p0}, Llocal/voicebridge/NavigationRepeater;->-$$Nest$mstopLocked(Llocal/voicebridge/NavigationRepeater;)V

    goto :goto_0

    .line 210
    :cond_0
    iget-object v0, p0, Llocal/voicebridge/NavigationRepeater$3;->this$0:Llocal/voicebridge/NavigationRepeater;

    iget-wide v6, p0, Llocal/voicebridge/NavigationRepeater$3;->val$token:J

    sub-long/2addr v4, v2

    invoke-static {v0, v6, v7, v4, v5}, Llocal/voicebridge/NavigationRepeater;->-$$Nest$mscheduleWatchdogLocked(Llocal/voicebridge/NavigationRepeater;JJ)V

    .line 212
    :goto_0
    monitor-exit v1

    return-void

    .line 202
    :cond_1
    monitor-exit v1

    return-void

    .line 212
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_1
.end method
