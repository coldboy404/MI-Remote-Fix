.class Llocal/voicebridge/MainActivity$7;
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

    .line 225
    iput-object p1, p0, Llocal/voicebridge/MainActivity$7;->this$0:Llocal/voicebridge/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 227
    iget-object p1, p0, Llocal/voicebridge/MainActivity$7;->this$0:Llocal/voicebridge/MainActivity;

    invoke-static {p1}, Llocal/voicebridge/MainActivity;->-$$Nest$fgetprefs(Llocal/voicebridge/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-wide/16 v0, 0xbb8

    const-string v2, "voiceWait"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v3, 0x1770

    cmp-long p1, v0, v3

    const-wide/16 v3, 0x5dc

    if-gez p1, :cond_0

    add-long/2addr v3, v0

    .line 229
    :cond_0
    iget-object p1, p0, Llocal/voicebridge/MainActivity$7;->this$0:Llocal/voicebridge/MainActivity;

    invoke-static {p1}, Llocal/voicebridge/MainActivity;->-$$Nest$fgetprefs(Llocal/voicebridge/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 230
    iget-object p1, p0, Llocal/voicebridge/MainActivity$7;->this$0:Llocal/voicebridge/MainActivity;

    invoke-static {p1}, Llocal/voicebridge/MainActivity;->-$$Nest$fgetwait(Llocal/voicebridge/MainActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    div-long/2addr v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u8bed\u97f3\u7b49\u5f85\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u79d2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object p0, p0, Llocal/voicebridge/MainActivity$7;->this$0:Llocal/voicebridge/MainActivity;

    invoke-static {p0}, Llocal/voicebridge/MainActivity;->-$$Nest$msendConfig(Llocal/voicebridge/MainActivity;)V

    return-void
.end method
