.class public Lcom/zjx/jyandroid/ForegroundService/MaxPriorityHandlerThread;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# static fields
.field static instance:Lcom/zjx/jyandroid/ForegroundService/MaxPriorityHandlerThread;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MaxPriorityHandlerThread;
    .locals 3

    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/MaxPriorityHandlerThread;->instance:Lcom/zjx/jyandroid/ForegroundService/MaxPriorityHandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/MaxPriorityHandlerThread;

    const-string v1, "MaxPriorityHandlerThread"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/ForegroundService/MaxPriorityHandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/ForegroundService/MaxPriorityHandlerThread;->instance:Lcom/zjx/jyandroid/ForegroundService/MaxPriorityHandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/MaxPriorityHandlerThread;->instance:Lcom/zjx/jyandroid/ForegroundService/MaxPriorityHandlerThread;

    return-object v0
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method
