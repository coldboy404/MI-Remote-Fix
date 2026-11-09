.class Llocal/voicebridge/TestActivity$1;
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

    .line 36
    iput-object p1, p0, Llocal/voicebridge/TestActivity$1;->this$0:Llocal/voicebridge/TestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 38
    :try_start_0
    iget-object p0, p0, Llocal/voicebridge/TestActivity$1;->this$0:Llocal/voicebridge/TestActivity;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Llocal/voicebridge/TestActivity;->moveTaskToBack(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
