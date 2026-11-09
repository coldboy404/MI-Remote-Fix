.class Llocal/voicebridge/LegacyNavigationRepeater$1;
.super Ljava/lang/Object;
.source "LegacyNavigationRepeater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llocal/voicebridge/LegacyNavigationRepeater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llocal/voicebridge/LegacyNavigationRepeater;


# direct methods
.method constructor <init>(Llocal/voicebridge/LegacyNavigationRepeater;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 23
    iput-object p1, p0, Llocal/voicebridge/LegacyNavigationRepeater$1;->this$0:Llocal/voicebridge/LegacyNavigationRepeater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "legacy dpad repeat key="

    const-string v1, "legacy dpad repeat failed key="

    .line 25
    iget-object v2, p0, Llocal/voicebridge/LegacyNavigationRepeater$1;->this$0:Llocal/voicebridge/LegacyNavigationRepeater;

    monitor-enter v2

    .line 26
    :try_start_0
    iget-object v3, p0, Llocal/voicebridge/LegacyNavigationRepeater$1;->this$0:Llocal/voicebridge/LegacyNavigationRepeater;

    invoke-static {v3}, Llocal/voicebridge/LegacyNavigationRepeater;->-$$Nest$fgetheld(Llocal/voicebridge/LegacyNavigationRepeater;)Z

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v2

    return-void

    .line 27
    :cond_0
    iget-object v3, p0, Llocal/voicebridge/LegacyNavigationRepeater$1;->this$0:Llocal/voicebridge/LegacyNavigationRepeater;

    invoke-static {v3}, Llocal/voicebridge/LegacyNavigationRepeater;->-$$Nest$fgetsink(Llocal/voicebridge/LegacyNavigationRepeater;)Llocal/voicebridge/LegacyNavigationRepeater$Sink;

    move-result-object v3

    iget-object v4, p0, Llocal/voicebridge/LegacyNavigationRepeater$1;->this$0:Llocal/voicebridge/LegacyNavigationRepeater;

    invoke-static {v4}, Llocal/voicebridge/LegacyNavigationRepeater;->-$$Nest$fgetactiveAction(Llocal/voicebridge/LegacyNavigationRepeater;)I

    move-result v4

    invoke-interface {v3, v4}, Llocal/voicebridge/LegacyNavigationRepeater$Sink;->send(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 28
    const-string v0, "VoiceBridge"

    iget-object v3, p0, Llocal/voicebridge/LegacyNavigationRepeater$1;->this$0:Llocal/voicebridge/LegacyNavigationRepeater;

    invoke-static {v3}, Llocal/voicebridge/LegacyNavigationRepeater;->-$$Nest$fgetactiveKey(Llocal/voicebridge/LegacyNavigationRepeater;)I

    move-result v3

    iget-object v4, p0, Llocal/voicebridge/LegacyNavigationRepeater$1;->this$0:Llocal/voicebridge/LegacyNavigationRepeater;

    invoke-static {v4}, Llocal/voicebridge/LegacyNavigationRepeater;->-$$Nest$fgetactiveDevice(Llocal/voicebridge/LegacyNavigationRepeater;)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " device="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object p0, p0, Llocal/voicebridge/LegacyNavigationRepeater$1;->this$0:Llocal/voicebridge/LegacyNavigationRepeater;

    invoke-static {p0}, Llocal/voicebridge/LegacyNavigationRepeater;->-$$Nest$mstopLocked(Llocal/voicebridge/LegacyNavigationRepeater;)V

    .line 30
    monitor-exit v2

    return-void

    .line 32
    :cond_1
    iget-object v1, p0, Llocal/voicebridge/LegacyNavigationRepeater$1;->this$0:Llocal/voicebridge/LegacyNavigationRepeater;

    invoke-static {v1}, Llocal/voicebridge/LegacyNavigationRepeater;->-$$Nest$fgetrepeats(Llocal/voicebridge/LegacyNavigationRepeater;)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-static {v1, v3}, Llocal/voicebridge/LegacyNavigationRepeater;->-$$Nest$fputrepeats(Llocal/voicebridge/LegacyNavigationRepeater;I)V

    .line 33
    iget-object v1, p0, Llocal/voicebridge/LegacyNavigationRepeater$1;->this$0:Llocal/voicebridge/LegacyNavigationRepeater;

    invoke-static {v1}, Llocal/voicebridge/LegacyNavigationRepeater;->-$$Nest$fgetrepeats(Llocal/voicebridge/LegacyNavigationRepeater;)I

    move-result v1

    if-eq v1, v4, :cond_2

    iget-object v1, p0, Llocal/voicebridge/LegacyNavigationRepeater$1;->this$0:Llocal/voicebridge/LegacyNavigationRepeater;

    invoke-static {v1}, Llocal/voicebridge/LegacyNavigationRepeater;->-$$Nest$fgetrepeats(Llocal/voicebridge/LegacyNavigationRepeater;)I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    if-nez v1, :cond_3

    .line 34
    :cond_2
    const-string v1, "VoiceBridge"

    iget-object v3, p0, Llocal/voicebridge/LegacyNavigationRepeater$1;->this$0:Llocal/voicebridge/LegacyNavigationRepeater;

    invoke-static {v3}, Llocal/voicebridge/LegacyNavigationRepeater;->-$$Nest$fgetactiveKey(Llocal/voicebridge/LegacyNavigationRepeater;)I

    move-result v3

    iget-object v4, p0, Llocal/voicebridge/LegacyNavigationRepeater$1;->this$0:Llocal/voicebridge/LegacyNavigationRepeater;

    invoke-static {v4}, Llocal/voicebridge/LegacyNavigationRepeater;->-$$Nest$fgetactiveDevice(Llocal/voicebridge/LegacyNavigationRepeater;)I

    move-result v4

    iget-object v5, p0, Llocal/voicebridge/LegacyNavigationRepeater$1;->this$0:Llocal/voicebridge/LegacyNavigationRepeater;

    invoke-static {v5}, Llocal/voicebridge/LegacyNavigationRepeater;->-$$Nest$fgetrepeats(Llocal/voicebridge/LegacyNavigationRepeater;)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " device="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " count="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_3
    iget-object v0, p0, Llocal/voicebridge/LegacyNavigationRepeater$1;->this$0:Llocal/voicebridge/LegacyNavigationRepeater;

    invoke-static {v0}, Llocal/voicebridge/LegacyNavigationRepeater;->-$$Nest$fgethandler(Llocal/voicebridge/LegacyNavigationRepeater;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v3, 0xaa

    invoke-virtual {v0, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    monitor-exit v2

    return-void

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_0
.end method
