.class Llocal/voicebridge/TestActivity$2;
.super Ljava/lang/Object;
.source "TestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llocal/voicebridge/TestActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llocal/voicebridge/TestActivity;

.field final synthetic val$config:Landroid/content/Intent;

.field final synthetic val$configOnly:Z

.field final synthetic val$fd:I

.field final synthetic val$keyMode:Ljava/lang/String;

.field final synthetic val$mode:Ljava/lang/String;

.field final synthetic val$nonMic:Z

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$publicExtra:Z

.field final synthetic val$service:Ljava/lang/String;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Llocal/voicebridge/TestActivity;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Llocal/voicebridge/TestActivity$2;->this$0:Llocal/voicebridge/TestActivity;

    iput-object p2, p0, Llocal/voicebridge/TestActivity$2;->val$config:Landroid/content/Intent;

    iput-object p3, p0, Llocal/voicebridge/TestActivity$2;->val$keyMode:Ljava/lang/String;

    iput-object p4, p0, Llocal/voicebridge/TestActivity$2;->val$mode:Ljava/lang/String;

    iput-boolean p5, p0, Llocal/voicebridge/TestActivity$2;->val$configOnly:Z

    iput-object p6, p0, Llocal/voicebridge/TestActivity$2;->val$text:Ljava/lang/String;

    iput-object p7, p0, Llocal/voicebridge/TestActivity$2;->val$service:Ljava/lang/String;

    iput-object p8, p0, Llocal/voicebridge/TestActivity$2;->val$path:Ljava/lang/String;

    iput p9, p0, Llocal/voicebridge/TestActivity$2;->val$fd:I

    iput-boolean p10, p0, Llocal/voicebridge/TestActivity$2;->val$nonMic:Z

    iput-boolean p11, p0, Llocal/voicebridge/TestActivity$2;->val$publicExtra:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 43
    invoke-static {}, Llocal/voicebridge/VoiceBridgeService;->get()Llocal/voicebridge/VoiceBridgeService;

    move-result-object v0

    .line 44
    const-string v1, "VoiceBridge"

    if-nez v0, :cond_0

    .line 45
    const-string p0, "TestActivity: accessibility service not connected"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 48
    :cond_0
    iget-object v2, p0, Llocal/voicebridge/TestActivity$2;->val$config:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Llocal/voicebridge/VoiceBridgeService;->configure(Landroid/content/Intent;)V

    .line 49
    iget-object v2, p0, Llocal/voicebridge/TestActivity$2;->val$keyMode:Ljava/lang/String;

    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TestActivity config applied keyMode="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_1
    const-string v1, "observe"

    iget-object v2, p0, Llocal/voicebridge/TestActivity$2;->val$mode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "assistant"

    iget-object v2, p0, Llocal/voicebridge/TestActivity$2;->val$mode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 53
    const-string v1, "fillTest"

    iget-object v2, p0, Llocal/voicebridge/TestActivity$2;->val$mode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    iget-boolean v1, p0, Llocal/voicebridge/TestActivity$2;->val$configOnly:Z

    if-nez v1, :cond_5

    iget-object p0, p0, Llocal/voicebridge/TestActivity$2;->val$text:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Llocal/voicebridge/VoiceBridgeService;->insertText(Ljava/lang/String;Z)V

    return-void

    .line 55
    :cond_2
    const-string v1, "queryTest"

    iget-object v2, p0, Llocal/voicebridge/TestActivity$2;->val$mode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 57
    iget-boolean v2, p0, Llocal/voicebridge/TestActivity$2;->val$configOnly:Z

    if-eqz v1, :cond_3

    if-nez v2, :cond_5

    .line 56
    iget-object p0, p0, Llocal/voicebridge/TestActivity$2;->val$text:Ljava/lang/String;

    invoke-virtual {v0, p0}, Llocal/voicebridge/VoiceBridgeService;->testVoiceQuery(Ljava/lang/String;)V

    return-void

    :cond_3
    if-nez v2, :cond_5

    .line 58
    iget-object v1, p0, Llocal/voicebridge/TestActivity$2;->val$mode:Ljava/lang/String;

    iget-object v2, p0, Llocal/voicebridge/TestActivity$2;->val$service:Ljava/lang/String;

    iget-object v3, p0, Llocal/voicebridge/TestActivity$2;->val$path:Ljava/lang/String;

    iget v4, p0, Llocal/voicebridge/TestActivity$2;->val$fd:I

    iget-boolean v5, p0, Llocal/voicebridge/TestActivity$2;->val$nonMic:Z

    iget-boolean v6, p0, Llocal/voicebridge/TestActivity$2;->val$publicExtra:Z

    invoke-virtual/range {v0 .. v6}, Llocal/voicebridge/VoiceBridgeService;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void

    .line 51
    :cond_4
    const-string v1, "TestActivity"

    invoke-virtual {v0, v1}, Llocal/voicebridge/VoiceBridgeService;->dumpDiagnosticState(Ljava/lang/String;)V

    .line 52
    iget-boolean p0, p0, Llocal/voicebridge/TestActivity$2;->val$configOnly:Z

    if-nez p0, :cond_5

    invoke-virtual {v0}, Llocal/voicebridge/VoiceBridgeService;->simulateObservationForTest()V

    :cond_5
    return-void
.end method
