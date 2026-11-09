.class Llocal/voicebridge/VoiceBridgeService$4;
.super Ljava/lang/Object;
.source "VoiceBridgeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llocal/voicebridge/VoiceBridgeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llocal/voicebridge/VoiceBridgeService;


# direct methods
.method constructor <init>(Llocal/voicebridge/VoiceBridgeService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 185
    iput-object p1, p0, Llocal/voicebridge/VoiceBridgeService$4;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 187
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$4;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetobservationActive(Llocal/voicebridge/VoiceBridgeService;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$4;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetsetTextDone(Llocal/voicebridge/VoiceBridgeService;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 188
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$4;->this$0:Llocal/voicebridge/VoiceBridgeService;

    const-string v1, "poll"

    invoke-static {v0, v1}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$mcaptureAssistantWindows(Llocal/voicebridge/VoiceBridgeService;Ljava/lang/String;)V

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 190
    iget-object v2, p0, Llocal/voicebridge/VoiceBridgeService$4;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v2}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetvoicePlateFinishAtMs(Llocal/voicebridge/VoiceBridgeService;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const-string v3, "VoiceBridge"

    if-lez v2, :cond_0

    iget-object v2, p0, Llocal/voicebridge/VoiceBridgeService$4;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v2}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetvoicePlateFinishAtMs(Llocal/voicebridge/VoiceBridgeService;)J

    move-result-wide v4

    cmp-long v2, v0, v4

    if-ltz v2, :cond_0

    .line 191
    const-string v0, "observationTimeout"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object p0, p0, Llocal/voicebridge/VoiceBridgeService$4;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {p0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetfinishObservation(Llocal/voicebridge/VoiceBridgeService;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 193
    :cond_0
    iget-object v2, p0, Llocal/voicebridge/VoiceBridgeService$4;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v2}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetlastKatnissEventMs(Llocal/voicebridge/VoiceBridgeService;)J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0x2ee0

    cmp-long v2, v4, v6

    if-lez v2, :cond_1

    iget-object v2, p0, Llocal/voicebridge/VoiceBridgeService$4;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v2}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetlastAssistantEventMs(Llocal/voicebridge/VoiceBridgeService;)J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0x9c4

    cmp-long v2, v4, v6

    if-lez v2, :cond_1

    iget-object v2, p0, Llocal/voicebridge/VoiceBridgeService$4;->this$0:Llocal/voicebridge/VoiceBridgeService;

    .line 194
    invoke-static {v2}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$mvoicePlatePresent(Llocal/voicebridge/VoiceBridgeService;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 195
    iget-object v2, p0, Llocal/voicebridge/VoiceBridgeService$4;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v2}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetlastKatnissEventMs(Llocal/voicebridge/VoiceBridgeService;)J

    move-result-wide v4

    sub-long v4, v0, v4

    iget-object v2, p0, Llocal/voicebridge/VoiceBridgeService$4;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v2}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetlastAssistantEventMs(Llocal/voicebridge/VoiceBridgeService;)J

    move-result-wide v6

    sub-long/2addr v0, v6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "assistantInactive ttl="

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "ms sinceEvent="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object p0, p0, Llocal/voicebridge/VoiceBridgeService$4;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {p0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetfinishObservation(Llocal/voicebridge/VoiceBridgeService;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$4;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetassistantSeen(Llocal/voicebridge/VoiceBridgeService;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$4;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetvoicePlateSeen(Llocal/voicebridge/VoiceBridgeService;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$4;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetautoObservationStarted(Llocal/voicebridge/VoiceBridgeService;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 199
    :cond_2
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$4;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetmain(Llocal/voicebridge/VoiceBridgeService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x190

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method
