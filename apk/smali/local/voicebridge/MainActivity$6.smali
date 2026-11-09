.class Llocal/voicebridge/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llocal/voicebridge/MainActivity;->buildUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llocal/voicebridge/MainActivity;


# direct methods
.method constructor <init>(Llocal/voicebridge/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 214
    iput-object p1, p0, Llocal/voicebridge/MainActivity$6;->this$0:Llocal/voicebridge/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 215
    iget-object p0, p0, Llocal/voicebridge/MainActivity$6;->this$0:Llocal/voicebridge/MainActivity;

    const/16 p1, 0x1f4

    const/16 v0, 0xa0

    invoke-static {p0, p1, v0}, Llocal/voicebridge/MainActivity;->-$$Nest$msetValues(Llocal/voicebridge/MainActivity;II)V

    return-void
.end method
