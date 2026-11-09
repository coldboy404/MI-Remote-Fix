.class Llocal/voicebridge/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 121
    iput-object p1, p0, Llocal/voicebridge/MainActivity$1;->this$0:Llocal/voicebridge/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 122
    iget-object p0, p0, Llocal/voicebridge/MainActivity$1;->this$0:Llocal/voicebridge/MainActivity;

    const-string p1, "keysEnabled"

    invoke-static {p0, p1, p2}, Llocal/voicebridge/MainActivity;->-$$Nest$msave(Llocal/voicebridge/MainActivity;Ljava/lang/String;Z)V

    return-void
.end method
