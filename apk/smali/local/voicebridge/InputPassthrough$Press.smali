.class final Llocal/voicebridge/InputPassthrough$Press;
.super Ljava/lang/Object;
.source "InputPassthrough.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llocal/voicebridge/InputPassthrough;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Press"
.end annotation


# instance fields
.field final downTime:J

.field route:I


# direct methods
.method constructor <init>(JI)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Llocal/voicebridge/InputPassthrough$Press;->downTime:J

    iput p3, p0, Llocal/voicebridge/InputPassthrough$Press;->route:I

    return-void
.end method
