.class Llocal/voicebridge/VoiceBridgeService$3;
.super Ljava/lang/Object;
.source "VoiceBridgeService.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


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

    .line 173
    iput-object p1, p0, Llocal/voicebridge/VoiceBridgeService$3;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputDeviceAdded(I)V
    .locals 0

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 1

    invoke-static {p1}, Llocal/voicebridge/InputPassthrough;->removeDevice(I)V

    .line 177
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$3;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetnavigationRepeater(Llocal/voicebridge/VoiceBridgeService;)Llocal/voicebridge/NavigationRepeater;

    move-result-object v0

    invoke-virtual {v0, p1}, Llocal/voicebridge/NavigationRepeater;->isDeviceHeld(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$3;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetlegacyNavigationRepeater(Llocal/voicebridge/VoiceBridgeService;)Llocal/voicebridge/LegacyNavigationRepeater;

    move-result-object v0

    invoke-virtual {v0, p1}, Llocal/voicebridge/LegacyNavigationRepeater;->isDeviceHeld(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 178
    :cond_0
    iget-object p0, p0, Llocal/voicebridge/VoiceBridgeService$3;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {p0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$mclearNavigation(Llocal/voicebridge/VoiceBridgeService;)V

    return-void
.end method
