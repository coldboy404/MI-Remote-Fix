.class Llocal/voicebridge/TestActivity$3;
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


# direct methods
.method constructor <init>(Llocal/voicebridge/TestActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 62
    iput-object p1, p0, Llocal/voicebridge/TestActivity$3;->this$0:Llocal/voicebridge/TestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 63
    iget-object p0, p0, Llocal/voicebridge/TestActivity$3;->this$0:Llocal/voicebridge/TestActivity;

    invoke-virtual {p0}, Llocal/voicebridge/TestActivity;->finish()V

    return-void
.end method
