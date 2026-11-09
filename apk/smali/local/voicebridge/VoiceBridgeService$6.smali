.class Llocal/voicebridge/VoiceBridgeService$6;
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

    .line 243
    iput-object p1, p0, Llocal/voicebridge/VoiceBridgeService$6;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 245
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$6;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetobservationActive(Llocal/voicebridge/VoiceBridgeService;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$6;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetsetTextDone(Llocal/voicebridge/VoiceBridgeService;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 246
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$6;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetinsertAttempts(Llocal/voicebridge/VoiceBridgeService;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fputinsertAttempts(Llocal/voicebridge/VoiceBridgeService;I)V

    .line 247
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$6;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetpendingText(Llocal/voicebridge/VoiceBridgeService;)Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 252
    iget-object v3, p0, Llocal/voicebridge/VoiceBridgeService$6;->this$0:Llocal/voicebridge/VoiceBridgeService;

    .line 248
    const-string v4, "VoiceBridge"

    if-nez v1, :cond_0

    .line 249
    invoke-static {v3}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetinsertAttempts(Llocal/voicebridge/VoiceBridgeService;)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "insertPending emptyText; skip attempt="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 252
    :cond_0
    invoke-static {v3}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetinsertAttempts(Llocal/voicebridge/VoiceBridgeService;)I

    move-result v1

    iget-object v3, p0, Llocal/voicebridge/VoiceBridgeService$6;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v3, v0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$msafe(Llocal/voicebridge/VoiceBridgeService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "insertPending attempt="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " text="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v1, p0, Llocal/voicebridge/VoiceBridgeService$6;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v1, v0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$minsertTextIntoPlaySearch(Llocal/voicebridge/VoiceBridgeService;Ljava/lang/String;)Z

    move-result v0

    .line 261
    iget-object v1, p0, Llocal/voicebridge/VoiceBridgeService$6;->this$0:Llocal/voicebridge/VoiceBridgeService;

    const-wide/16 v5, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 254
    invoke-static {v1, v2}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fputsetTextDone(Llocal/voicebridge/VoiceBridgeService;Z)V

    .line 255
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$6;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v0, v3}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fputsetTextInProgress(Llocal/voicebridge/VoiceBridgeService;Z)V

    .line 256
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$6;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v0, v3}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fputobservationActive(Llocal/voicebridge/VoiceBridgeService;Z)V

    .line 257
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$6;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fputobservationFinishedMs(Llocal/voicebridge/VoiceBridgeService;J)V

    .line 258
    iget-object p0, p0, Llocal/voicebridge/VoiceBridgeService$6;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {p0, v5, v6}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fputlastKatnissEventMs(Llocal/voicebridge/VoiceBridgeService;J)V

    return-void

    .line 261
    :cond_1
    invoke-static {v1}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetinsertAttempts(Llocal/voicebridge/VoiceBridgeService;)I

    move-result v0

    .line 270
    iget-object v1, p0, Llocal/voicebridge/VoiceBridgeService$6;->this$0:Llocal/voicebridge/VoiceBridgeService;

    const/16 v2, 0x8

    if-lt v0, v2, :cond_2

    .line 262
    invoke-static {v1, v3}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fputsetTextInProgress(Llocal/voicebridge/VoiceBridgeService;Z)V

    .line 263
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$6;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v0, v3}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fputobservationActive(Llocal/voicebridge/VoiceBridgeService;Z)V

    .line 264
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$6;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fputobservationFinishedMs(Llocal/voicebridge/VoiceBridgeService;J)V

    .line 265
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$6;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v0, v5, v6}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fputlastKatnissEventMs(Llocal/voicebridge/VoiceBridgeService;J)V

    .line 266
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$6;->this$0:Llocal/voicebridge/VoiceBridgeService;

    const-string v1, "\u586b\u5165\u5931\u8d25\uff0c\u67e5\u770b VoiceBridge \u65e5\u5fd7"

    invoke-static {v0, v1}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$mtoast(Llocal/voicebridge/VoiceBridgeService;Ljava/lang/String;)V

    .line 267
    iget-object p0, p0, Llocal/voicebridge/VoiceBridgeService$6;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {p0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetinsertAttempts(Llocal/voicebridge/VoiceBridgeService;)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "insertPending gave up after "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 270
    :cond_2
    invoke-static {v1}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetmain(Llocal/voicebridge/VoiceBridgeService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Llocal/voicebridge/VoiceBridgeService$6;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v1}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetinsertAttempts(Llocal/voicebridge/VoiceBridgeService;)I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_3

    const-wide/16 v1, 0xfa

    goto :goto_0

    :cond_3
    const-wide/16 v1, 0x190

    :goto_0
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method
