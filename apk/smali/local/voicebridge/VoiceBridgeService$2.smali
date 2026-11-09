.class Llocal/voicebridge/VoiceBridgeService$2;
.super Ljava/lang/Object;
.source "VoiceBridgeService.java"

# interfaces
.implements Llocal/voicebridge/LegacyNavigationRepeater$Sink;


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

    .line 154
    iput-object p1, p0, Llocal/voicebridge/VoiceBridgeService$2;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public send(I)Z
    .locals 0

    .line 155
    iget-object p0, p0, Llocal/voicebridge/VoiceBridgeService$2;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-virtual {p0, p1}, Llocal/voicebridge/VoiceBridgeService;->performGlobalAction(I)Z

    move-result p0

    return p0
.end method
