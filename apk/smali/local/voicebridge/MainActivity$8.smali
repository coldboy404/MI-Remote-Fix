.class Llocal/voicebridge/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llocal/voicebridge/MainActivity;->addPreset(Landroid/widget/LinearLayout;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llocal/voicebridge/MainActivity;

.field final synthetic val$first:I

.field final synthetic val$interval:I


# direct methods
.method constructor <init>(Llocal/voicebridge/MainActivity;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 248
    iput-object p1, p0, Llocal/voicebridge/MainActivity$8;->this$0:Llocal/voicebridge/MainActivity;

    iput p2, p0, Llocal/voicebridge/MainActivity$8;->val$first:I

    iput p3, p0, Llocal/voicebridge/MainActivity$8;->val$interval:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 249
    iget-object p1, p0, Llocal/voicebridge/MainActivity$8;->this$0:Llocal/voicebridge/MainActivity;

    iget v0, p0, Llocal/voicebridge/MainActivity$8;->val$first:I

    iget p0, p0, Llocal/voicebridge/MainActivity$8;->val$interval:I

    invoke-static {p1, v0, p0}, Llocal/voicebridge/MainActivity;->-$$Nest$msetValues(Llocal/voicebridge/MainActivity;II)V

    return-void
.end method
