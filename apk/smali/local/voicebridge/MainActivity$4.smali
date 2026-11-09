.class Llocal/voicebridge/MainActivity$4;
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

    .line 193
    iput-object p1, p0, Llocal/voicebridge/MainActivity$4;->this$0:Llocal/voicebridge/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 195
    iget-object p1, p0, Llocal/voicebridge/MainActivity$4;->this$0:Llocal/voicebridge/MainActivity;

    invoke-static {p1}, Llocal/voicebridge/MainActivity;->-$$Nest$msaveCurrentSettings(Llocal/voicebridge/MainActivity;)V

    .line 196
    iget-object p0, p0, Llocal/voicebridge/MainActivity$4;->this$0:Llocal/voicebridge/MainActivity;

    const-string p1, "\u8bbe\u7f6e\u5df2\u4fdd\u5b58"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
