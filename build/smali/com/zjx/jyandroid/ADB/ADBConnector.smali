.class public Lcom/zjx/jyandroid/ADB/ADBConnector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;,
        Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionType;,
        Lcom/zjx/jyandroid/ADB/ADBConnector$StartOpenTcpipPortProcessResultListener;,
        Lcom/zjx/jyandroid/ADB/ADBConnector$OnConnectionStatusChangedListener;
    }
.end annotation


# static fields
.field static instance:Lcom/zjx/jyandroid/ADB/ADBConnector;


# instance fields
.field private activationThread:Ljava/lang/Thread;

.field private adbPath:Ljava/lang/String;

.field private adbRunningPort:I

.field private connectionStatus:Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

.field private context:Landroid/content/Context;

.field public onConnectionStatusChangedListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/zjx/jyandroid/ADB/ADBConnector$OnConnectionStatusChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private outputBufferFile:Ljava/io/File;

.field pairFloatingView:Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;

.field private startOpenTcpipPortThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/libadb.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBConnector;->adbPath:Ljava/lang/String;

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBConnector;->context:Landroid/content/Context;

    new-instance v0, Ljava/io/File;

    const-string v1, "/storage/emulated/0/Documents/jyandroid/testoutput.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBConnector;->outputBufferFile:Ljava/io/File;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBConnector;->onConnectionStatusChangedListeners:Ljava/util/HashSet;

    sget-object v0, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;->NOT_CONNECTED:Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBConnector;->connectionStatus:Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

    const/16 v0, 0xbdb

    iput v0, p0, Lcom/zjx/jyandroid/ADB/ADBConnector;->adbRunningPort:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBConnector;->startOpenTcpipPortThread:Ljava/lang/Thread;

    sget-object v0, Lcom/zjx/jyandroid/ADB/ADBConnector;->instance:Lcom/zjx/jyandroid/ADB/ADBConnector;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "An ADB connector instance already exsits"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic access$000(Lcom/zjx/jyandroid/ADB/ADBConnector;Ljava/lang/String;)Ljava/lang/Process;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/ADB/ADBConnector;->adbShell(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/zjx/jyandroid/ADB/ADBConnector;Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/ADB/ADBConnector;->setConnectionStatus(Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;)V

    return-void
.end method

.method private adbShell(Ljava/lang/String;)Ljava/lang/Process;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/ADB/ADBConnector;->adbShell(Ljava/util/List;)Ljava/lang/Process;

    move-result-object p1

    return-object p1
.end method

.method private adbShell(Ljava/util/List;)Ljava/lang/Process;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Process;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/zjx/jyandroid/ADB/ADBConnector;->adbPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, v0}, Lcom/zjx/jyandroid/ADB/ADBConnector;->shell(Ljava/util/List;)Ljava/lang/Process;

    move-result-object p1

    return-object p1
.end method

.method private broadcastActivationStateChangedMessage()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.zjx.jyandroid.activationStatusChanged"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static isADBPaired()Z
    .locals 3

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/zjx/jyandroid/R$string;->settings_key_basic_settings:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ADBPaired"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setADBPaired(Z)V
    .locals 3

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/zjx/jyandroid/R$string;->settings_key_basic_settings:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ADBPaired"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setConnectionStatus(Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBConnector;->connectionStatus:Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/zjx/jyandroid/ADB/ADBConnector;->connectionStatus:Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

    invoke-direct {p0}, Lcom/zjx/jyandroid/ADB/ADBConnector;->broadcastActivationStateChangedMessage()V

    :cond_0
    return-void
.end method

.method public static sharedInstance()Lcom/zjx/jyandroid/ADB/ADBConnector;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/ADB/ADBConnector;->instance:Lcom/zjx/jyandroid/ADB/ADBConnector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zjx/jyandroid/ADB/ADBConnector;

    invoke-direct {v0}, Lcom/zjx/jyandroid/ADB/ADBConnector;-><init>()V

    sput-object v0, Lcom/zjx/jyandroid/ADB/ADBConnector;->instance:Lcom/zjx/jyandroid/ADB/ADBConnector;

    :cond_0
    sget-object v0, Lcom/zjx/jyandroid/ADB/ADBConnector;->instance:Lcom/zjx/jyandroid/ADB/ADBConnector;

    return-object v0
.end method

.method private shell(Ljava/util/List;)Ljava/lang/Process;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Process;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/ProcessBuilder;

    invoke-direct {v0, p1}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/ADB/ADBConnector;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HOME"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/ADB/ADBConnector;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TMPDIR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public adbShellWithDeviceId(Ljava/lang/String;)Ljava/lang/Process;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ADB/ADBConnector;->getAdbRunningPort()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-s localhost:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " shell "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/ADB/ADBConnector;->adbShell(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    return-object p1
.end method

.method public connect(Ljava/lang/String;)Ljava/lang/Process;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "connect"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "localhost:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/zjx/jyandroid/ADB/ADBConnector;->adbShell(Ljava/util/List;)Ljava/lang/Process;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized destroyPairingFloatingView()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBConnector;->pairFloatingView:Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/ADB/ADBConnector;->pairFloatingView:Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;

    invoke-virtual {v0, v1}, Ll/b;->q(Lcom/zjx/jyandroid/base/BaseFloatingView;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBConnector;->pairFloatingView:Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getAdbRunningPort()I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/ADB/ADBConnector;->adbRunningPort:I

    return v0
.end method

.method public getConnectedDeviceNames()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const-string v1, "devices"

    invoke-direct {p0, v1}, Lcom/zjx/jyandroid/ADB/ADBConnector;->adbShell(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "devices: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ly/c;->a(Ljava/lang/String;)V

    const-string v3, "attached"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "device"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "\t"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getConnectionStatus()Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBConnector;->connectionStatus:Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

    return-object v0
.end method

.method public isAdbConnectable()Z
    .locals 4

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/zjx/jyandroid/R$string;->settings_key_basic_settings:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/zjx/jyandroid/R$string;->basic_settings_adb_connection_type:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionType;->Wired:Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ADB/ADBConnector;->isTcpRunning()Z

    move-result v0

    return v0

    :cond_0
    return v2
.end method

.method public isAdbEnabled()Z
    .locals 3

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public isTcpRunning()Z
    .locals 4

    const-string v0, "unable to close server socket of adb: "

    const/4 v1, 0x1

    const/16 v2, 0xbdb

    :try_start_0
    new-instance v3, Ljava/net/ServerSocket;

    invoke-direct {v3, v2}, Ljava/net/ServerSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ly/c;->a(Ljava/lang/String;)V

    :goto_0
    const/16 v2, 0x15b3

    :try_start_2
    new-instance v3, Ljava/net/ServerSocket;

    invoke-direct {v3, v2}, Ljava/net/ServerSocket;-><init>(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v1, -0x1

    iput v1, p0, Lcom/zjx/jyandroid/ADB/ADBConnector;->adbRunningPort:I

    :try_start_3
    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly/c;->a(Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x0

    return v0

    :catch_2
    iput v2, p0, Lcom/zjx/jyandroid/ADB/ADBConnector;->adbRunningPort:I

    return v1

    :catch_3
    iput v2, p0, Lcom/zjx/jyandroid/ADB/ADBConnector;->adbRunningPort:I

    return v1
.end method

.method public killServer()Ljava/lang/Process;
    .locals 1

    :try_start_0
    const-string v0, "kill-server"

    invoke-direct {p0, v0}, Lcom/zjx/jyandroid/ADB/ADBConnector;->adbShell(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public pair(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "pair"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "localhost:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/zjx/jyandroid/ADB/ADBConnector;->adbShell(Ljava/util/List;)Ljava/lang/Process;

    move-result-object p1

    new-instance v0, Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    :try_start_0
    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0xa

    invoke-virtual {p1, v0, v1, p2}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z

    invoke-virtual {p1}, Ljava/lang/Process;->destroyForcibly()Ljava/lang/Process;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Process;->exitValue()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public registerConnectionStatusChangedListener(Lcom/zjx/jyandroid/ADB/ADBConnector$OnConnectionStatusChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBConnector;->onConnectionStatusChangedListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public restartADBServerSync()V
    .locals 0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ADB/ADBConnector;->killServer()Ljava/lang/Process;

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ADB/ADBConnector;->startServer()Ljava/lang/Process;

    return-void
.end method

.method public declared-synchronized showPairingFloatingView()Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBConnector;->pairFloatingView:Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/zjx/jyandroid/R$layout;->adb_pair_floating_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBConnector;->pairFloatingView:Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v1

    iget-object v2, p0, Lcom/zjx/jyandroid/ADB/ADBConnector;->pairFloatingView:Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;

    const/4 v6, -0x2

    const/16 v7, 0x31

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-virtual/range {v1 .. v7}, Ll/b;->c(Lcom/zjx/jyandroid/base/BaseFloatingView;IIIII)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBConnector;->pairFloatingView:Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setDraggable(Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBConnector;->pairFloatingView:Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized startActivationProcess()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ly/d;->C()Ly/d;

    move-result-object v0

    invoke-virtual {v0}, Ly/d;->a()Lcom/zjx/jyandroid/ADB/ADBConnectionMode;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/ADB/ADBConnectionMode;->ROOT:Lcom/zjx/jyandroid/ADB/ADBConnectionMode;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ADB/ADBConnector;->startRootActivationThread()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/zjx/jyandroid/ADB/ADBConnector;->isTcpRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ADB/ADBConnector;->startConnectAndActivationProcess()V

    goto :goto_0

    :cond_1
    invoke-static {}, Ly/d;->C()Ly/d;

    move-result-object v0

    invoke-virtual {v0}, Ly/d;->a()Lcom/zjx/jyandroid/ADB/ADBConnectionMode;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/ADB/ADBConnectionMode;->WIRELESS:Lcom/zjx/jyandroid/ADB/ADBConnectionMode;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/zjx/jyandroid/ADB/ADBConnector;->isADBPaired()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ADB/ADBConnector;->killServer()Ljava/lang/Process;

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ADB/ADBConnector;->startServer()Ljava/lang/Process;

    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zjx/jyandroid/ADB/ADBConnector;->startOpenTcpipPortProcess(ILcom/zjx/jyandroid/ADB/ADBConnector$StartOpenTcpipPortProcessResultListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public startConnectAndActivationProcess()V
    .locals 2

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ADB/ADBConnector;->isTcpRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBConnector;->connectionStatus:Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

    sget-object v1, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;->NOT_CONNECTED:Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;->CONNECTING:Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

    invoke-direct {p0, v0}, Lcom/zjx/jyandroid/ADB/ADBConnector;->setConnectionStatus(Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zjx/jyandroid/ADB/ADBConnector$1;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ADB/ADBConnector$1;-><init>(Lcom/zjx/jyandroid/ADB/ADBConnector;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBConnector;->activationThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public declared-synchronized startOpenTcpipPortProcess(ILcom/zjx/jyandroid/ADB/ADBConnector$StartOpenTcpipPortProcessResultListener;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBConnector;->startOpenTcpipPortThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ADB/ADBConnector;->stopOpenTcpipPortProcess()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zjx/jyandroid/ADB/ADBConnector$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/zjx/jyandroid/ADB/ADBConnector$3;-><init>(Lcom/zjx/jyandroid/ADB/ADBConnector;ILcom/zjx/jyandroid/ADB/ADBConnector$StartOpenTcpipPortProcessResultListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBConnector;->startOpenTcpipPortThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized startRootActivationThread()V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zjx/jyandroid/ADB/ADBConnector$4;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ADB/ADBConnector$4;-><init>(Lcom/zjx/jyandroid/ADB/ADBConnector;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBConnector;->activationThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public startServer()Ljava/lang/Process;
    .locals 1

    :try_start_0
    const-string v0, "start-server"

    invoke-direct {p0, v0}, Lcom/zjx/jyandroid/ADB/ADBConnector;->adbShell(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public stopConnectAndActivationProcess()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBConnector;->connectionStatus:Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

    sget-object v1, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;->CONNECTING:Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBConnector;->activationThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBConnector;->activationThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object v0, Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;->NOT_CONNECTED:Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;

    invoke-direct {p0, v0}, Lcom/zjx/jyandroid/ADB/ADBConnector;->setConnectionStatus(Lcom/zjx/jyandroid/ADB/ADBConnector$ConnectionStatus;)V

    return-void
.end method

.method public declared-synchronized stopOpenTcpipPortProcess()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBConnector;->startOpenTcpipPortThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBConnector;->startOpenTcpipPortThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public test()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zjx/jyandroid/ADB/ADBConnector$2;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ADB/ADBConnector$2;-><init>(Lcom/zjx/jyandroid/ADB/ADBConnector;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public unregisterConnectionStatusChangedListener(Lcom/zjx/jyandroid/ADB/ADBConnector$OnConnectionStatusChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBConnector;->onConnectionStatusChangedListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
