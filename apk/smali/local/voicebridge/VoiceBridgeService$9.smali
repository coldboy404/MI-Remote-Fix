.class Llocal/voicebridge/VoiceBridgeService$9;
.super Ljava/lang/Object;
.source "VoiceBridgeService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llocal/voicebridge/VoiceBridgeService;->captureAssistantWindows(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/view/accessibility/AccessibilityWindowInfo;",
        ">;"
    }
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

    .line 1336
    iput-object p1, p0, Llocal/voicebridge/VoiceBridgeService$9;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/accessibility/AccessibilityWindowInfo;Landroid/view/accessibility/AccessibilityWindowInfo;)I
    .locals 0

    .line 1338
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getLayer()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getLayer()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1336
    check-cast p1, Landroid/view/accessibility/AccessibilityWindowInfo;

    check-cast p2, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {p0, p1, p2}, Llocal/voicebridge/VoiceBridgeService$9;->compare(Landroid/view/accessibility/AccessibilityWindowInfo;Landroid/view/accessibility/AccessibilityWindowInfo;)I

    move-result p0

    return p0
.end method
