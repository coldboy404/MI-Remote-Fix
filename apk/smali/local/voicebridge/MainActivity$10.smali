.class Llocal/voicebridge/MainActivity$10;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llocal/voicebridge/MainActivity;->addSliderRow(Landroid/widget/LinearLayout;Landroid/widget/SeekBar;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llocal/voicebridge/MainActivity;

.field final synthetic val$first:Z


# direct methods
.method constructor <init>(Llocal/voicebridge/MainActivity;Z)V
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

    .line 290
    iput-object p1, p0, Llocal/voicebridge/MainActivity$10;->this$0:Llocal/voicebridge/MainActivity;

    iput-boolean p2, p0, Llocal/voicebridge/MainActivity$10;->val$first:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 291
    iget-object p1, p0, Llocal/voicebridge/MainActivity$10;->this$0:Llocal/voicebridge/MainActivity;

    iget-boolean p0, p0, Llocal/voicebridge/MainActivity$10;->val$first:Z

    const/16 v0, -0xa

    invoke-static {p1, p0, v0}, Llocal/voicebridge/MainActivity;->-$$Nest$mstepValue(Llocal/voicebridge/MainActivity;ZI)V

    return-void
.end method
