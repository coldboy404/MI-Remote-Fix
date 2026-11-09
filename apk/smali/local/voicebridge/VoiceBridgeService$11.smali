.class Llocal/voicebridge/VoiceBridgeService$11;
.super Ljava/lang/Object;
.source "VoiceBridgeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llocal/voicebridge/VoiceBridgeService;->makePipe(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llocal/voicebridge/VoiceBridgeService;

.field final synthetic val$fdo:Ljava/io/FileDescriptor;

.field final synthetic val$in:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Llocal/voicebridge/VoiceBridgeService;Ljava/io/FileDescriptor;Ljava/io/InputStream;)V
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

    .line 1816
    iput-object p1, p0, Llocal/voicebridge/VoiceBridgeService$11;->this$0:Llocal/voicebridge/VoiceBridgeService;

    iput-object p2, p0, Llocal/voicebridge/VoiceBridgeService$11;->val$fdo:Ljava/io/FileDescriptor;

    iput-object p3, p0, Llocal/voicebridge/VoiceBridgeService$11;->val$in:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1818
    const-string v0, "VoiceBridge"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    .line 1821
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, p0, Llocal/voicebridge/VoiceBridgeService$11;->val$fdo:Ljava/io/FileDescriptor;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v6, 0x280

    .line 1822
    :try_start_1
    new-array v6, v6, [B

    .line 1824
    :goto_0
    iget-object v7, p0, Llocal/voicebridge/VoiceBridgeService$11;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v7}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetwriting(Llocal/voicebridge/VoiceBridgeService;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Llocal/voicebridge/VoiceBridgeService$11;->val$in:Ljava/io/InputStream;

    invoke-virtual {v7, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_1

    .line 1825
    invoke-virtual {v5, v6, v1, v7}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v7, v7

    add-long/2addr v3, v7

    const-wide/16 v7, 0x7d00

    .line 1827
    rem-long v7, v3, v7

    const-wide/16 v9, 0x280

    cmp-long v7, v7, v9

    if-gez v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pipe wrote="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v7, 0xa

    .line 1828
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 1830
    :cond_1
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 1831
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pipe finished total="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1835
    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1836
    :catch_0
    :try_start_3
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$11;->val$in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1837
    :catch_1
    :try_start_4
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$11;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetwritePfd(Llocal/voicebridge/VoiceBridgeService;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    if-eqz v0, :cond_3

    goto :goto_2

    :catchall_0
    move-exception v6

    goto :goto_1

    :catchall_1
    move-exception v6

    move-object v5, v2

    .line 1833
    :goto_1
    :try_start_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pipe writer total="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v5, :cond_2

    .line 1835
    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 1836
    :catch_2
    :cond_2
    :try_start_7
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$11;->val$in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 1837
    :catch_3
    :try_start_8
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$11;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetwritePfd(Llocal/voicebridge/VoiceBridgeService;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_3

    :goto_2
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$11;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v0}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetwritePfd(Llocal/voicebridge/VoiceBridgeService;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 1838
    :catch_4
    :cond_3
    iget-object v0, p0, Llocal/voicebridge/VoiceBridgeService$11;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v0, v2}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fputwritePfd(Llocal/voicebridge/VoiceBridgeService;Landroid/os/ParcelFileDescriptor;)V

    .line 1839
    iget-object p0, p0, Llocal/voicebridge/VoiceBridgeService$11;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {p0, v1}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fputwriting(Llocal/voicebridge/VoiceBridgeService;Z)V

    return-void

    :catchall_2
    move-exception v0

    if-eqz v5, :cond_4

    .line 1835
    :try_start_9
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 1836
    :catch_5
    :cond_4
    :try_start_a
    iget-object v3, p0, Llocal/voicebridge/VoiceBridgeService$11;->val$in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 1837
    :catch_6
    :try_start_b
    iget-object v3, p0, Llocal/voicebridge/VoiceBridgeService$11;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v3}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetwritePfd(Llocal/voicebridge/VoiceBridgeService;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Llocal/voicebridge/VoiceBridgeService$11;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v3}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fgetwritePfd(Llocal/voicebridge/VoiceBridgeService;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 1838
    :catch_7
    :cond_5
    iget-object v3, p0, Llocal/voicebridge/VoiceBridgeService$11;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {v3, v2}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fputwritePfd(Llocal/voicebridge/VoiceBridgeService;Landroid/os/ParcelFileDescriptor;)V

    .line 1839
    iget-object p0, p0, Llocal/voicebridge/VoiceBridgeService$11;->this$0:Llocal/voicebridge/VoiceBridgeService;

    invoke-static {p0, v1}, Llocal/voicebridge/VoiceBridgeService;->-$$Nest$fputwriting(Llocal/voicebridge/VoiceBridgeService;Z)V

    .line 1840
    throw v0
.end method
