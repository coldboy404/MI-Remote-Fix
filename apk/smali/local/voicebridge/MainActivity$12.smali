.class Llocal/voicebridge/MainActivity$12;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llocal/voicebridge/MainActivity;->sliderListener(Z)Landroid/widget/SeekBar$OnSeekBarChangeListener;
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

    .line 317
    iput-object p1, p0, Llocal/voicebridge/MainActivity$12;->this$0:Llocal/voicebridge/MainActivity;

    iput-boolean p2, p0, Llocal/voicebridge/MainActivity$12;->val$first:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    .line 319
    iget-boolean p1, p0, Llocal/voicebridge/MainActivity$12;->val$first:Z

    if-eqz p1, :cond_0

    const/16 v0, 0x190

    goto :goto_0

    :cond_0
    const/16 v0, 0x3c

    :goto_0
    add-int/2addr p2, v0

    .line 320
    const-string v0, " ms"

    if-eqz p1, :cond_1

    iget-object p1, p0, Llocal/voicebridge/MainActivity$12;->this$0:Llocal/voicebridge/MainActivity;

    invoke-static {p1}, Llocal/voicebridge/MainActivity;->-$$Nest$fgetinitialValue(Llocal/voicebridge/MainActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Llocal/voicebridge/MainActivity$12;->this$0:Llocal/voicebridge/MainActivity;

    invoke-static {p1}, Llocal/voicebridge/MainActivity;->-$$Nest$fgetinitialValue(Llocal/voicebridge/MainActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u957f\u6309\u89e6\u53d1\u524d\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 321
    :cond_1
    iget-boolean p1, p0, Llocal/voicebridge/MainActivity$12;->val$first:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Llocal/voicebridge/MainActivity$12;->this$0:Llocal/voicebridge/MainActivity;

    invoke-static {p1}, Llocal/voicebridge/MainActivity;->-$$Nest$fgetrepeatValue(Llocal/voicebridge/MainActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Llocal/voicebridge/MainActivity$12;->this$0:Llocal/voicebridge/MainActivity;

    invoke-static {p1}, Llocal/voicebridge/MainActivity;->-$$Nest$fgetrepeatValue(Llocal/voicebridge/MainActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u957f\u6309\u540e\u95f4\u9694\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    :cond_2
    :goto_1
    iget-object p1, p0, Llocal/voicebridge/MainActivity$12;->this$0:Llocal/voicebridge/MainActivity;

    invoke-static {p1}, Llocal/voicebridge/MainActivity;->-$$Nest$fgetupdatingSliders(Llocal/voicebridge/MainActivity;)Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz p3, :cond_3

    .line 323
    iget-object p0, p0, Llocal/voicebridge/MainActivity$12;->this$0:Llocal/voicebridge/MainActivity;

    invoke-static {p0}, Llocal/voicebridge/MainActivity;->-$$Nest$msendConfig(Llocal/voicebridge/MainActivity;)V

    :cond_3
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
