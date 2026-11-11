.class Lcom/zjx/jyandroid/TouchService$EventManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/TouchService$EventManager;->startGrabbingTouchEventAndSendToApplication()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/16 v0, -0x14

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    new-instance v0, Lcom/zjx/jyandroid/TouchService$EventManager$2$1;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/TouchService$EventManager$2$1;-><init>(Lcom/zjx/jyandroid/TouchService$EventManager$2;)V

    invoke-static {v0}, Lcom/zjx/jyandroid/TouchService$EventManager;->startGrabbingTouchEvent(Lcom/zjx/jyandroid/TouchEventListener;)Z

    return-void
.end method
