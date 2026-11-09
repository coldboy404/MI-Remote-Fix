.class Llocal/voicebridge/VoiceBridgeService$7;
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

    .line 274
    iput-object p1, p0, Llocal/voicebridge/VoiceBridgeService$7;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 277
    const-string v1, "VoiceBridge"

    const-string v0, "windowWatch"

    .line 0
    const-string v2, "voiceQuery earlyFinish text="

    .line 277
    :try_start_0
    iget-object v3, p0, Llocal/voicebridge/VoiceBridgeService$7;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v3, v0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$mscanForegroundWindow(Llocal/voicebridge/VoiceBridgeService;Ljava/lang/String;)V

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 279
    iget-object v5, p0, Llocal/voicebridge/VoiceBridgeService$7;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v5}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetlastKatnissEventMs(Llocal/voicebridge/VoiceBridgeService;)J

    move-result-wide v5

    sub-long v5, v3, v5

    const-wide/16 v7, 0x2ee0

    cmp-long v5, v5, v7

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-gtz v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v7

    .line 280
    :goto_0
    iget-object v8, p0, Llocal/voicebridge/VoiceBridgeService$7;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v8}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetobservationActive(Llocal/voicebridge/VoiceBridgeService;)Z

    move-result v8

    if-nez v8, :cond_1

    if-nez v5, :cond_1

    const-string v8, "com.android.vending"

    iget-object v9, p0, Llocal/voicebridge/VoiceBridgeService$7;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v9}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetlastForegroundPackage(Llocal/voicebridge/VoiceBridgeService;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 281
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$7;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetmain(Llocal/voicebridge/VoiceBridgeService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    if-nez v5, :cond_2

    .line 284
    iget-object v8, p0, Llocal/voicebridge/VoiceBridgeService$7;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v8}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$mvoicePlatePresent(Llocal/voicebridge/VoiceBridgeService;)Z

    move-result v8

    if-nez v8, :cond_2

    move v8, v7

    goto :goto_1

    :cond_2
    move v8, v6

    .line 285
    :goto_1
    iget-object v9, p0, Llocal/voicebridge/VoiceBridgeService$7;->this$0:Llocal/voicebridge/VoiceBridgeService;

    if-eqz v5, :cond_3

    const-string v5, "katnissEvent"

    goto :goto_2

    :cond_3
    move-object v5, v0

    :goto_2
    invoke-static {v9, v8, v5}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$mensureVoicePlateObservation(Llocal/voicebridge/VoiceBridgeService;ZLjava/lang/String;)V

    if-eqz v8, :cond_4

    .line 286
    iget-object v5, p0, Llocal/voicebridge/VoiceBridgeService$7;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v5}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetsetTextDone(Llocal/voicebridge/VoiceBridgeService;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Llocal/voicebridge/VoiceBridgeService$7;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v5}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetobservationActive(Llocal/voicebridge/VoiceBridgeService;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Llocal/voicebridge/VoiceBridgeService$7;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v5}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetvoicePlateDetectionLogged(Llocal/voicebridge/VoiceBridgeService;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 287
    iget-object v5, p0, Llocal/voicebridge/VoiceBridgeService$7;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v5, v6}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fputvoicePlateDetectionLogged(Llocal/voicebridge/VoiceBridgeService;Z)V

    .line 288
    iget-object v5, p0, Llocal/voicebridge/VoiceBridgeService$7;->this$0:Llocal/voicebridge/VoiceBridgeService;

    const-string v6, "voicePlateDetected"

    invoke-static {v5, v6}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$mcaptureAssistantWindows(Llocal/voicebridge/VoiceBridgeService;Ljava/lang/String;)V

    .line 289
    iget-object v5, p0, Llocal/voicebridge/VoiceBridgeService$7;->this$0:Llocal/voicebridge/VoiceBridgeService;

    const-string v6, "watch"

    invoke-static {v5, v6}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$mfindVoicePlateInWindows(Llocal/voicebridge/VoiceBridgeService;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 291
    iget-object v9, p0, Llocal/voicebridge/VoiceBridgeService$7;->this$0:Llocal/voicebridge/VoiceBridgeService;

    const-string v11, "com.google.android.katniss"

    const-string v12, "watch:voicePlate"

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static/range {v9 .. v14}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$mcollectNodeTexts(Llocal/voicebridge/VoiceBridgeService;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 292
    iget-object v5, p0, Llocal/voicebridge/VoiceBridgeService$7;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v5}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetdebugTree(Llocal/voicebridge/VoiceBridgeService;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Llocal/voicebridge/VoiceBridgeService$7;->this$0:Llocal/voicebridge/VoiceBridgeService;

    const-string v6, "watchVoicePlate"

    const/16 v9, 0x8

    invoke-static {v5, v10, v6, v7, v9}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$mdescribeTree(Llocal/voicebridge/VoiceBridgeService;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;II)V

    :cond_4
    if-nez v8, :cond_5

    .line 295
    iget-object v5, p0, Llocal/voicebridge/VoiceBridgeService$7;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v5, v7}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fputvoicePlateDetectionLogged(Llocal/voicebridge/VoiceBridgeService;Z)V

    .line 296
    :cond_5
    iget-object v5, p0, Llocal/voicebridge/VoiceBridgeService$7;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v5}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetobservationActive(Llocal/voicebridge/VoiceBridgeService;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Llocal/voicebridge/VoiceBridgeService$7;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v5}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetsetTextDone(Llocal/voicebridge/VoiceBridgeService;)Z

    move-result v5

    if-nez v5, :cond_6

    if-nez v8, :cond_6

    iget-object v5, p0, Llocal/voicebridge/VoiceBridgeService$7;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v5}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetautoObservationStarted(Llocal/voicebridge/VoiceBridgeService;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Llocal/voicebridge/VoiceBridgeService$7;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v5}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetvoicePlateSeen(Llocal/voicebridge/VoiceBridgeService;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 298
    iget-object v5, p0, Llocal/voicebridge/VoiceBridgeService$7;->this$0:Llocal/voicebridge/VoiceBridgeService;

    const-string v6, "windowWatchGone"

    invoke-static {v5, v7, v6}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$mensureVoicePlateObservation(Llocal/voicebridge/VoiceBridgeService;ZLjava/lang/String;)V

    .line 300
    :cond_6
    iget-object v5, p0, Llocal/voicebridge/VoiceBridgeService$7;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v5}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetobservationActive(Llocal/voicebridge/VoiceBridgeService;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Llocal/voicebridge/VoiceBridgeService$7;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v5}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetsetTextDone(Llocal/voicebridge/VoiceBridgeService;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Llocal/voicebridge/VoiceBridgeService$7;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v5}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetsetTextInProgress(Llocal/voicebridge/VoiceBridgeService;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Llocal/voicebridge/VoiceBridgeService$7;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v5}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetstableVoiceQuery(Llocal/voicebridge/VoiceBridgeService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    .line 301
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$7;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetstableVoiceQuery(Llocal/voicebridge/VoiceBridgeService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$msafe(Llocal/voicebridge/VoiceBridgeService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$7;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetmain(Llocal/voicebridge/VoiceBridgeService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Llocal/voicebridge/VoiceBridgeService$7;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v2}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetfinishObservation(Llocal/voicebridge/VoiceBridgeService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 303
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$7;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetmain(Llocal/voicebridge/VoiceBridgeService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Llocal/voicebridge/VoiceBridgeService$7;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v2}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetfinishObservation(Llocal/voicebridge/VoiceBridgeService;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 306
    :cond_7
    iget-object v2, p0, Llocal/voicebridge/VoiceBridgeService$7;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v2}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetobservationActive(Llocal/voicebridge/VoiceBridgeService;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Llocal/voicebridge/VoiceBridgeService$7;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v2}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetsetTextDone(Llocal/voicebridge/VoiceBridgeService;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Llocal/voicebridge/VoiceBridgeService$7;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v2}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetsetTextInProgress(Llocal/voicebridge/VoiceBridgeService;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Llocal/voicebridge/VoiceBridgeService$7;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v2}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetlastWindowCaptureMs(Llocal/voicebridge/VoiceBridgeService;)J

    move-result-wide v5

    sub-long v5, v3, v5

    const-wide/16 v7, 0x258

    cmp-long v2, v5, v7

    if-ltz v2, :cond_8

    .line 308
    iget-object v2, p0, Llocal/voicebridge/VoiceBridgeService$7;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v2, v3, v4}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fputlastWindowCaptureMs(Llocal/voicebridge/VoiceBridgeService;J)V

    .line 309
    iget-object v2, p0, Llocal/voicebridge/VoiceBridgeService$7;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v2, v0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$mcaptureAssistantWindows(Llocal/voicebridge/VoiceBridgeService;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 311
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "windowWatch failed err="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_8
    :goto_3
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$7;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetobservationActive(Llocal/voicebridge/VoiceBridgeService;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-wide/16 v0, 0x15e

    goto :goto_4

    :cond_9
    const-wide/16 v0, 0x1f4

    .line 313
    :goto_4
    iget-object v2, p0, Llocal/voicebridge/VoiceBridgeService$7;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v2}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetmain(Llocal/voicebridge/VoiceBridgeService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
