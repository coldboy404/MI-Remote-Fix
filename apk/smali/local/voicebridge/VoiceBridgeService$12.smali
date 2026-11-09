.class Llocal/voicebridge/VoiceBridgeService$12;
.super Ljava/lang/Object;
.source "VoiceBridgeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llocal/voicebridge/VoiceBridgeService;->testVoiceQuery(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llocal/voicebridge/VoiceBridgeService;

.field final synthetic val$text:Ljava/lang/String;


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

    .line 1960
    iput-object p1, p0, Llocal/voicebridge/VoiceBridgeService$12;->this$0:Llocal/voicebridge/VoiceBridgeService;

    iput-object p2, p0, Llocal/voicebridge/VoiceBridgeService$12;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1962
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$12;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetobservationActive(Llocal/voicebridge/VoiceBridgeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$12;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetsetTextDone(Llocal/voicebridge/VoiceBridgeService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$12;->this$0:Llocal/voicebridge/VoiceBridgeService;

    iget-object p0, p0, Llocal/voicebridge/VoiceBridgeService$12;->val$text:Ljava/lang/String;

    const-string v1, "testVoiceQueryStable"

    invoke-static {v0, p0, v1}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$mrecordVoiceQuery(Llocal/voicebridge/VoiceBridgeService;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
