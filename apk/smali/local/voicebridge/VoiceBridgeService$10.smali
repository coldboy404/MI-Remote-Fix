.class Llocal/voicebridge/VoiceBridgeService$10;
.super Ljava/lang/Object;
.source "VoiceBridgeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llocal/voicebridge/VoiceBridgeService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llocal/voicebridge/VoiceBridgeService;

.field final synthetic val$fd:I

.field final synthetic val$mode:Ljava/lang/String;

.field final synthetic val$nonMic:Z

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$publicExtra:Z

.field final synthetic val$service:Ljava/lang/String;


# direct methods
.method constructor <init>(Llocal/voicebridge/VoiceBridgeService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1630
    iput-object p1, p0, Llocal/voicebridge/VoiceBridgeService$10;->this$0:Llocal/voicebridge/VoiceBridgeService;

    iput-object p2, p0, Llocal/voicebridge/VoiceBridgeService$10;->val$mode:Ljava/lang/String;

    iput-object p3, p0, Llocal/voicebridge/VoiceBridgeService$10;->val$service:Ljava/lang/String;

    iput-object p4, p0, Llocal/voicebridge/VoiceBridgeService$10;->val$path:Ljava/lang/String;

    iput p5, p0, Llocal/voicebridge/VoiceBridgeService$10;->val$fd:I

    iput-boolean p6, p0, Llocal/voicebridge/VoiceBridgeService$10;->val$nonMic:Z

    iput-boolean p7, p0, Llocal/voicebridge/VoiceBridgeService$10;->val$publicExtra:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1632
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$10;->this$0:Llocal/voicebridge/VoiceBridgeService;

    iget-object v1, p0, Llocal/voicebridge/VoiceBridgeService$10;->val$mode:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "asset"

    :cond_0
    iget-object v2, p0, Llocal/voicebridge/VoiceBridgeService$10;->val$service:Ljava/lang/String;

    iget-object v3, p0, Llocal/voicebridge/VoiceBridgeService$10;->val$path:Ljava/lang/String;

    iget v4, p0, Llocal/voicebridge/VoiceBridgeService$10;->val$fd:I

    iget-boolean v5, p0, Llocal/voicebridge/VoiceBridgeService$10;->val$nonMic:Z

    iget-boolean v6, p0, Llocal/voicebridge/VoiceBridgeService$10;->val$publicExtra:Z

    invoke-virtual/range {v0 .. v6}, Llocal/voicebridge/VoiceBridgeService;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method
