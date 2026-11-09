.class Llocal/voicebridge/NavigationRepeater$1;
.super Ljava/lang/Object;
.source "NavigationRepeater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llocal/voicebridge/NavigationRepeater;->scheduleRepeatStartLocked(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llocal/voicebridge/NavigationRepeater;

.field final synthetic val$token:J


# direct methods
.method constructor <init>(Llocal/voicebridge/NavigationRepeater;J)V
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

    .line 127
    iput-object p1, p0, Llocal/voicebridge/NavigationRepeater$1;->this$0:Llocal/voicebridge/NavigationRepeater;

    iput-wide p2, p0, Llocal/voicebridge/NavigationRepeater$1;->val$token:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 129
    iget-object v0, p0, Llocal/voicebridge/NavigationRepeater$1;->this$0:Llocal/voicebridge/NavigationRepeater;

    monitor-enter v0

    .line 130
    :try_start_0
    iget-object v1, p0, Llocal/voicebridge/NavigationRepeater$1;->this$0:Llocal/voicebridge/NavigationRepeater;

    invoke-static {v1}, Llocal/voicebridge/NavigationRepeater;->-$$Nest$fgetheld(Llocal/voicebridge/NavigationRepeater;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Llocal/voicebridge/NavigationRepeater$1;->this$0:Llocal/voicebridge/NavigationRepeater;

    invoke-static {v1}, Llocal/voicebridge/NavigationRepeater;->-$$Nest$fgetgeneration(Llocal/voicebridge/NavigationRepeater;)J

    move-result-wide v1

    iget-wide v3, p0, Llocal/voicebridge/NavigationRepeater$1;->val$token:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 131
    iget-object v1, p0, Llocal/voicebridge/NavigationRepeater$1;->this$0:Llocal/voicebridge/NavigationRepeater;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Llocal/voicebridge/NavigationRepeater;->-$$Nest$fputrepeatStartTask(Llocal/voicebridge/NavigationRepeater;Ljava/lang/Runnable;)V

    .line 132
    iget-object v1, p0, Llocal/voicebridge/NavigationRepeater$1;->this$0:Llocal/voicebridge/NavigationRepeater;

    iget-wide v2, p0, Llocal/voicebridge/NavigationRepeater$1;->val$token:J

    invoke-static {v1, v2, v3}, Llocal/voicebridge/NavigationRepeater;->-$$Nest$memitRepeatLocked(Llocal/voicebridge/NavigationRepeater;J)V

    .line 133
    monitor-exit v0

    return-void

    .line 130
    :cond_0
    monitor-exit v0

    return-void

    .line 133
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_0
.end method
