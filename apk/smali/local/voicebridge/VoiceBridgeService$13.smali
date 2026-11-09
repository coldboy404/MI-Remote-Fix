.class Llocal/voicebridge/VoiceBridgeService$13;
.super Ljava/lang/Object;
.source "VoiceBridgeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llocal/voicebridge/VoiceBridgeService;->toast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llocal/voicebridge/VoiceBridgeService;

.field final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Llocal/voicebridge/VoiceBridgeService;Ljava/lang/String;)V
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

    .line 2032
    iput-object p1, p0, Llocal/voicebridge/VoiceBridgeService$13;->this$0:Llocal/voicebridge/VoiceBridgeService;

    iput-object p2, p0, Llocal/voicebridge/VoiceBridgeService$13;->val$s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2033
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$13;->this$0:Llocal/voicebridge/VoiceBridgeService;

    iget-object p0, p0, Llocal/voicebridge/VoiceBridgeService$13;->val$s:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
