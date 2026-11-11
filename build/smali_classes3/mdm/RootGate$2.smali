.class Lmdm/RootGate$2;
.super Ljava/lang/Object;
.source "RootGate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/RootGate;->hasRoot()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$out:Ljava/lang/StringBuilder;

.field final synthetic val$proc:[Ljava/lang/Process;


# direct methods
.method constructor <init>([Ljava/lang/Process;Ljava/lang/StringBuilder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lmdm/RootGate$2;->val$proc:[Ljava/lang/Process;

    iput-object p2, p0, Lmdm/RootGate$2;->val$out:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 100
    :try_start_0
    new-instance v0, Ljava/lang/ProcessBuilder;

    const-string v1, "su"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lmdm/RootGate$2;->val$proc:[Ljava/lang/Process;

    monitor-enter v1
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_6a

    :try_start_17
    iget-object v2, p0, Lmdm/RootGate$2;->val$proc:[Ljava/lang/Process;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_67

    .line 102
    :try_start_1d
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 103
    const-string v2, "id -u\nexit\n"

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 104
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 105
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 106
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    :goto_47
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_57

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_47

    .line 110
    :cond_57
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 111
    iget-object v0, p0, Lmdm/RootGate$2;->val$out:Ljava/lang/StringBuilder;

    monitor-enter v0
    :try_end_5d
    .catchall {:try_start_1d .. :try_end_5d} :catchall_6a

    :try_start_5d
    iget-object v1, p0, Lmdm/RootGate$2;->val$out:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    monitor-exit v0

    .line 114
    goto :goto_6b

    .line 111
    :catchall_64
    move-exception v1

    monitor-exit v0
    :try_end_66
    .catchall {:try_start_5d .. :try_end_66} :catchall_64

    :try_start_66
    throw v1
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_6a

    .line 101
    :catchall_67
    move-exception v0

    :try_start_68
    monitor-exit v1
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    :try_start_69
    throw v0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_6a

    .line 112
    :catchall_6a
    move-exception v0

    .line 115
    :goto_6b
    return-void
.end method
