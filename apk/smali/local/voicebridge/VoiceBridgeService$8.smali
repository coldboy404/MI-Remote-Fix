.class Llocal/voicebridge/VoiceBridgeService$8;
.super Landroid/content/BroadcastReceiver;
.source "VoiceBridgeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llocal/voicebridge/VoiceBridgeService;->setupNavigationHooks()V
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

    .line 577
    iput-object p1, p0, Llocal/voicebridge/VoiceBridgeService$8;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 578
    iget-object p0, p0, Llocal/voicebridge/VoiceBridgeService$8;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {p0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$mclearNavigation(Llocal/voicebridge/VoiceBridgeService;)V

    return-void
.end method
