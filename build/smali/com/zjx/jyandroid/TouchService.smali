.class public Lcom/zjx/jyandroid/TouchService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/TouchService$EventManager;
    }
.end annotation


# static fields
.field public static binderClientNative:Lcom/zjx/jyandroid/ADB/BinderClientNative;

.field static touchManager:Lcom/zjx/jyandroid/ADB/app_process/TouchManager;

.field static touchReceivingFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field public static touchSendingStream:Ljava/io/DataOutputStream;

.field static touchSendingStreamReadSideFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field static touchSendingStreamWriteSideFileDescriptor:Landroid/os/ParcelFileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/zjx/jyandroid/ADB/BinderClientNative;->sharedInstance()Lcom/zjx/jyandroid/ADB/BinderClientNative;

    move-result-object v0

    sput-object v0, Lcom/zjx/jyandroid/TouchService;->binderClientNative:Lcom/zjx/jyandroid/ADB/BinderClientNative;

    const/4 v0, 0x0

    sput-object v0, Lcom/zjx/jyandroid/TouchService;->touchSendingStream:Ljava/io/DataOutputStream;

    new-instance v0, Lcom/zjx/jyandroid/ADB/app_process/TouchManager;

    invoke-direct {v0}, Lcom/zjx/jyandroid/ADB/app_process/TouchManager;-><init>()V

    sput-object v0, Lcom/zjx/jyandroid/TouchService;->touchManager:Lcom/zjx/jyandroid/ADB/app_process/TouchManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Log_d(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/zjx/jyandroid/TouchService;->Log_d(Ljava/lang/String;)V

    return-void
.end method

.method public static native checkIsTouchInputDeviceNative(Ljava/lang/String;)Z
.end method

.method public static native getSupportedEventsNative(Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7

    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    const-wide v2, -0x28517dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    aget-object p0, p0, v2

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v3, -0x285a7dacc755L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-wide v3, -0x28787dacc755L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/zjx/jyandroid/TouchService;->binderClientNative:Lcom/zjx/jyandroid/ADB/BinderClientNative;

    invoke-virtual {v3}, Lcom/zjx/jyandroid/ADB/BinderClientNative;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    new-instance v0, Lcom/zjx/jyandroid/ADB/app_process/ShellContentProvider;

    invoke-direct {v0}, Lcom/zjx/jyandroid/ADB/app_process/ShellContentProvider;-><init>()V

    const-wide v3, -0x288b7dacc755L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, p0}, Lcom/zjx/jyandroid/ADB/app_process/ShellContentProvider;->callProvider(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-wide v5, -0x289a7dacc755L

    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/zjx/jyandroid/AppBinderServer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zjx/jyandroid/AppBinderServer;

    move-result-object p0

    sget-object v0, Lcom/zjx/jyandroid/TouchService;->binderClientNative:Lcom/zjx/jyandroid/ADB/BinderClientNative;

    invoke-virtual {v0, p0}, Lcom/zjx/jyandroid/ADB/BinderClientNative;->onReceiveAppBinderServer(Lcom/zjx/jyandroid/AppBinderServer;)V

    new-array p0, v1, [Landroid/os/ParcelFileDescriptor;

    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    aget-object v0, p0, v1

    sput-object v0, Lcom/zjx/jyandroid/TouchService;->touchSendingStreamReadSideFileDescriptor:Landroid/os/ParcelFileDescriptor;

    aget-object p0, p0, v2

    sput-object p0, Lcom/zjx/jyandroid/TouchService;->touchSendingStreamWriteSideFileDescriptor:Landroid/os/ParcelFileDescriptor;

    new-instance p0, Ljava/io/DataOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    sget-object v1, Lcom/zjx/jyandroid/TouchService;->touchSendingStreamWriteSideFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p0, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    sput-object p0, Lcom/zjx/jyandroid/TouchService;->touchSendingStream:Ljava/io/DataOutputStream;

    :try_start_1
    sget-object p0, Lcom/zjx/jyandroid/TouchService;->binderClientNative:Lcom/zjx/jyandroid/ADB/BinderClientNative;

    sget-object v0, Lcom/zjx/jyandroid/TouchService;->touchSendingStreamReadSideFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/ADB/BinderClientNative;->exchangeFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    sput-object p0, Lcom/zjx/jyandroid/TouchService;->touchReceivingFileDescriptor:Landroid/os/ParcelFileDescriptor;

    new-instance p0, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    sget-object v1, Lcom/zjx/jyandroid/TouchService;->touchReceivingFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p0, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zjx/jyandroid/TouchService$1;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/TouchService$1;-><init>(Ljava/io/DataInputStream;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/16 p0, 0xa

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setPriority(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const-wide v0, -0x28aa7dacc755L

    :try_start_2
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-wide v0, -0x28cc7dacc755L

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-wide v5, -0x28e97dacc755L

    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-instance v1, Lcom/zjx/jyandroid/ADB/app_process/ProcessObserver;

    invoke-direct {v1}, Lcom/zjx/jyandroid/ADB/app_process/ProcessObserver;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-wide v3, -0x28f47dacc755L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x290c7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ly/c;->b(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    :try_start_3
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    :catch_3
    :goto_1
    const-wide/32 v0, 0x989680

    :try_start_4
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_1

    :catch_4
    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static native startGrabbingEventsNative(Ljava/lang/String;Lcom/zjx/jyandroid/TouchEventListener;)Z
.end method

.method public static native stopGrabbingEventsNative()V
.end method
