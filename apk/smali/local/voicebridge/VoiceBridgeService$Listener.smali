.class Llocal/voicebridge/VoiceBridgeService$Listener;
.super Ljava/lang/Object;
.source "VoiceBridgeService.java"

# interfaces
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llocal/voicebridge/VoiceBridgeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field private final mode:Ljava/lang/String;

.field private startMs:J

.field final synthetic this$0:Llocal/voicebridge/VoiceBridgeService;


# direct methods
.method constructor <init>(Llocal/voicebridge/VoiceBridgeService;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1895
    iput-object p1, p0, Llocal/voicebridge/VoiceBridgeService$Listener;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1894
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Llocal/voicebridge/VoiceBridgeService$Listener;->startMs:J

    .line 1895
    iput-object p2, p0, Llocal/voicebridge/VoiceBridgeService$Listener;->mode:Ljava/lang/String;

    return-void
.end method

.method private p(Ljava/lang/String;)V
    .locals 5

    .line 1896
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$Listener;->mode:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Llocal/voicebridge/VoiceBridgeService$Listener;->startMs:J

    sub-long/2addr v1, v3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "SR["

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "] "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " t="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VoiceBridge"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 1

    .line 1898
    const-string v0, "onBeginningOfSpeech"

    invoke-direct {p0, v0}, Llocal/voicebridge/VoiceBridgeService$Listener;->p(Ljava/lang/String;)V

    return-void
.end method

.method public onBufferReceived([B)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 1904
    :cond_0
    array-length p1, p1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBufferReceived len="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService$Listener;->p(Ljava/lang/String;)V

    return-void
.end method

.method public onEndOfSpeech()V
    .locals 1

    .line 1905
    const-string v0, "onEndOfSpeech"

    invoke-direct {p0, v0}, Llocal/voicebridge/VoiceBridgeService$Listener;->p(Ljava/lang/String;)V

    return-void
.end method

.method public onError(I)V
    .locals 6

    .line 1907
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$Listener;->mode:Ljava/lang/String;

    iget-object v1, p0, Llocal/voicebridge/VoiceBridgeService$Listener;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v1}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetrmsCount(Llocal/voicebridge/VoiceBridgeService;)J

    move-result-wide v1

    iget-object v3, p0, Llocal/voicebridge/VoiceBridgeService$Listener;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v3}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetrmsMax(Llocal/voicebridge/VoiceBridgeService;)F

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SR["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "] onError="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " rmsN="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rmsMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceBridge"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$Listener;->this$0:Llocal/voicebridge/VoiceBridgeService;

    iget-object v1, p0, Llocal/voicebridge/VoiceBridgeService$Listener;->mode:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8bc6\u522b\u9519\u8bef "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " mode="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$mtoast(Llocal/voicebridge/VoiceBridgeService;Ljava/lang/String;)V

    .line 1909
    iget-object p1, p0, Llocal/voicebridge/VoiceBridgeService$Listener;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {p1}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$mstopWriter(Llocal/voicebridge/VoiceBridgeService;)V

    .line 1910
    iget-object p0, p0, Llocal/voicebridge/VoiceBridgeService$Listener;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {p0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$mcancel(Llocal/voicebridge/VoiceBridgeService;)V

    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 1

    .line 1926
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onEvent="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService$Listener;->p(Ljava/lang/String;)V

    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1920
    :cond_0
    const-string v0, "results_recognition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 1921
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1922
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$Listener;->mode:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SR["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] partial="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceBridge"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    iget-object p0, p0, Llocal/voicebridge/VoiceBridgeService$Listener;->this$0:Llocal/voicebridge/VoiceBridgeService;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fputpendingText(Llocal/voicebridge/VoiceBridgeService;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 2

    .line 1897
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReadyForSpeech "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Llocal/voicebridge/VoiceBridgeService$Listener;->p(Ljava/lang/String;)V

    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 7

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1913
    :cond_0
    const-string v0, "results_recognition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1914
    :goto_0
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$Listener;->mode:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Llocal/voicebridge/VoiceBridgeService$Listener;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v2}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetrmsCount(Llocal/voicebridge/VoiceBridgeService;)J

    move-result-wide v2

    iget-object v4, p0, Llocal/voicebridge/VoiceBridgeService$Listener;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v4}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetrmsMax(Llocal/voicebridge/VoiceBridgeService;)F

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SR["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "] onResults="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rmsN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rmsMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceBridge"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 1915
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$Listener;->this$0:Llocal/voicebridge/VoiceBridgeService;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Llocal/voicebridge/VoiceBridgeService;->insertText(Ljava/lang/String;Z)V

    .line 1916
    :cond_1
    iget-object p1, p0, Llocal/voicebridge/VoiceBridgeService$Listener;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {p1}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$mstopWriter(Llocal/voicebridge/VoiceBridgeService;)V

    .line 1917
    iget-object p0, p0, Llocal/voicebridge/VoiceBridgeService$Listener;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {p0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$mcancel(Llocal/voicebridge/VoiceBridgeService;)V

    return-void
.end method

.method public onRmsChanged(F)V
    .locals 5

    .line 1900
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$Listener;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetrmsCount(Llocal/voicebridge/VoiceBridgeService;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fputrmsCount(Llocal/voicebridge/VoiceBridgeService;J)V

    .line 1901
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$Listener;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetrmsMax(Llocal/voicebridge/VoiceBridgeService;)F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$Listener;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v0, p1}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fputrmsMax(Llocal/voicebridge/VoiceBridgeService;F)V

    .line 1902
    :cond_0
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$Listener;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetrmsCount(Llocal/voicebridge/VoiceBridgeService;)J

    move-result-wide v0

    const-wide/16 v2, 0xc

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$Listener;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetrmsCount(Llocal/voicebridge/VoiceBridgeService;)J

    move-result-wide v0

    const-wide/16 v2, 0x14

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$Listener;->mode:Ljava/lang/String;

    iget-object v1, p0, Llocal/voicebridge/VoiceBridgeService$Listener;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v1}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetrmsCount(Llocal/voicebridge/VoiceBridgeService;)J

    move-result-wide v1

    iget-object p0, p0, Llocal/voicebridge/VoiceBridgeService$Listener;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {p0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetrmsMax(Llocal/voicebridge/VoiceBridgeService;)F

    move-result p0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SR["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] rms="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " n="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " max="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VoiceBridge"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
