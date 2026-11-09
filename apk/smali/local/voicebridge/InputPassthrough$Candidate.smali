.class final Llocal/voicebridge/InputPassthrough$Candidate;
.super Ljava/lang/Object;
.source "InputPassthrough.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llocal/voicebridge/InputPassthrough;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Candidate"
.end annotation


# instance fields
.field node:Landroid/view/accessibility/AccessibilityNodeInfo;

.field score:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Llocal/voicebridge/InputPassthrough$Candidate;->score:J

    return-void
.end method

.method synthetic constructor <init>(Llocal/voicebridge/InputPassthrough$1;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Llocal/voicebridge/InputPassthrough$Candidate;-><init>()V

    return-void
.end method
