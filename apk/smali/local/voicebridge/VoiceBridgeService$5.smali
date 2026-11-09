.class Llocal/voicebridge/VoiceBridgeService$5;
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

    .line 205
    iput-object p1, p0, Llocal/voicebridge/VoiceBridgeService$5;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 207
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$5;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetobservationActive(Llocal/voicebridge/VoiceBridgeService;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$5;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetsetTextDone(Llocal/voicebridge/VoiceBridgeService;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$5;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetsetTextInProgress(Llocal/voicebridge/VoiceBridgeService;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 208
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$5;->this$0:Llocal/voicebridge/VoiceBridgeService;

    const-string v1, "final"

    invoke-static {v0, v1}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$mcaptureAssistantWindows(Llocal/voicebridge/VoiceBridgeService;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$5;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$mchooseFinalText(Llocal/voicebridge/VoiceBridgeService;)Ljava/lang/String;

    move-result-object v0

    .line 210
    iget-object v1, p0, Llocal/voicebridge/VoiceBridgeService$5;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v1}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetoriginPackage(Llocal/voicebridge/VoiceBridgeService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Llocal/voicebridge/VoiceBridgeService$5;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v2}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetassistantSeen(Llocal/voicebridge/VoiceBridgeService;)Z

    move-result v2

    iget-object v3, p0, Llocal/voicebridge/VoiceBridgeService$5;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v3}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetbestCandidate(Llocal/voicebridge/VoiceBridgeService;)Ljava/lang/String;

    move-result-object v4

    .line 211
    invoke-static {v3, v4}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$msafe(Llocal/voicebridge/VoiceBridgeService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Llocal/voicebridge/VoiceBridgeService$5;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v4}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetbestScore(Llocal/voicebridge/VoiceBridgeService;)F

    move-result v4

    iget-object v5, p0, Llocal/voicebridge/VoiceBridgeService$5;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v5}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetlastVoiceQuery(Llocal/voicebridge/VoiceBridgeService;)Ljava/lang/String;

    move-result-object v6

    .line 212
    invoke-static {v5, v6}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$msafe(Llocal/voicebridge/VoiceBridgeService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Llocal/voicebridge/VoiceBridgeService$5;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v6}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetstableVoiceQuery(Llocal/voicebridge/VoiceBridgeService;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$msafe(Llocal/voicebridge/VoiceBridgeService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Llocal/voicebridge/VoiceBridgeService$5;->this$0:Llocal/voicebridge/VoiceBridgeService;

    .line 213
    invoke-static {v7, v0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$msafe(Llocal/voicebridge/VoiceBridgeService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "observationFinish origin="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " assistantSeen="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " best="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " score="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " voiceQuery="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " stableVoiceQuery="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " chosen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    const-string v2, "VoiceBridge"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 221
    iget-object v3, p0, Llocal/voicebridge/VoiceBridgeService$5;->this$0:Llocal/voicebridge/VoiceBridgeService;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    if-nez v1, :cond_0

    .line 215
    invoke-static {v3, v6}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fputobservationActive(Llocal/voicebridge/VoiceBridgeService;Z)V

    .line 216
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$5;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fputobservationFinishedMs(Llocal/voicebridge/VoiceBridgeService;J)V

    .line 217
    iget-object p0, p0, Llocal/voicebridge/VoiceBridgeService$5;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {p0, v4, v5}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fputlastKatnissEventMs(Llocal/voicebridge/VoiceBridgeService;J)V

    .line 218
    const-string p0, "no recognized text; skip fill"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 221
    :cond_0
    const-string v1, "com.android.vending"

    invoke-static {v3}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetoriginPackage(Llocal/voicebridge/VoiceBridgeService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 228
    iget-object v3, p0, Llocal/voicebridge/VoiceBridgeService$5;->this$0:Llocal/voicebridge/VoiceBridgeService;

    if-nez v1, :cond_1

    .line 222
    invoke-static {v3, v6}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fputobservationActive(Llocal/voicebridge/VoiceBridgeService;Z)V

    .line 223
    iget-object v1, p0, Llocal/voicebridge/VoiceBridgeService$5;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v1, v6, v7}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fputobservationFinishedMs(Llocal/voicebridge/VoiceBridgeService;J)V

    .line 224
    iget-object v1, p0, Llocal/voicebridge/VoiceBridgeService$5;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v1, v4, v5}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fputlastKatnissEventMs(Llocal/voicebridge/VoiceBridgeService;J)V

    .line 225
    iget-object p0, p0, Llocal/voicebridge/VoiceBridgeService$5;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {p0, v0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$msafe(Llocal/voicebridge/VoiceBridgeService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "origin not Play Store; no fill. text="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 228
    invoke-static {v3, v1}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fputsetTextInProgress(Llocal/voicebridge/VoiceBridgeService;Z)V

    .line 229
    iget-object v3, p0, Llocal/voicebridge/VoiceBridgeService$5;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v3, v0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fputpendingText(Llocal/voicebridge/VoiceBridgeService;Ljava/lang/String;)V

    .line 231
    iget-object v3, p0, Llocal/voicebridge/VoiceBridgeService$5;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v3}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$mvoicePlatePresent(Llocal/voicebridge/VoiceBridgeService;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 232
    iget-object v3, p0, Llocal/voicebridge/VoiceBridgeService$5;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-virtual {v3, v1}, Llocal/voicebridge/VoiceBridgeService;->performGlobalAction(I)Z

    move-result v1

    .line 233
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "closing voicePlate back="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 235
    :cond_2
    const-string v1, "voice plate already gone; skip globalBack"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    .line 237
    :goto_0
    iget-object v3, p0, Llocal/voicebridge/VoiceBridgeService$5;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v3, v0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$msafe(Llocal/voicebridge/VoiceBridgeService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "globalBack="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " text="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$5;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v0, v6}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fputinsertAttempts(Llocal/voicebridge/VoiceBridgeService;I)V

    .line 239
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$5;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetmain(Llocal/voicebridge/VoiceBridgeService;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Llocal/voicebridge/VoiceBridgeService$5;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {p0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetinsertPending(Llocal/voicebridge/VoiceBridgeService;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method
