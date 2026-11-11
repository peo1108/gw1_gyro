.class Lcom/zjx/jyandroid/ForegroundService/MainService$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/LoginSessionManager$LoginCompletionHandleable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/MainService;->startFunctioning(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/ForegroundService/MainService;

.field final synthetic val$bundleId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/MainService;Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/MainService$7;->this$0:Lcom/zjx/jyandroid/ForegroundService/MainService;

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/MainService$7;->val$bundleId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V
    .locals 4

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "login or register error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ly/c;->b(Ljava/lang/String;)V

    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    sget v0, Lcom/zjx/jyandroid/R$string;->main_service_text2:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p1, v0, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/MainService$7;->this$0:Lcom/zjx/jyandroid/ForegroundService/MainService;

    const-string v0, "_non_existing_IDENTIFIER"

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->access$302(Lcom/zjx/jyandroid/ForegroundService/MainService;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/MainService$7;->this$0:Lcom/zjx/jyandroid/ForegroundService/MainService;

    invoke-static {p1, p2}, Lcom/zjx/jyandroid/ForegroundService/MainService;->access$502(Lcom/zjx/jyandroid/ForegroundService/MainService;Z)Z

    return-void

    :cond_0
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getActivateBundleIdentifier()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.tencent.tmgp.dnf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->setAlwaysFocus(Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->setAlwaysFocus(Z)V

    :goto_0
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/MainService$7;->this$0:Lcom/zjx/jyandroid/ForegroundService/MainService;

    invoke-static {p1}, Lcom/zjx/jyandroid/ForegroundService/MainService;->access$600(Lcom/zjx/jyandroid/ForegroundService/MainService;)Ll/b;

    move-result-object p1

    invoke-virtual {p1}, Ll/b;->u()V

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b;->y()Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    move-result-object p1

    sget-object p2, Lcom/zjx/jyandroid/base/Definitions/WorkingMode;->WangzuoMode:Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    const-wide/16 v1, 0x1f4

    if-ne p1, p2, :cond_2

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->y()Lcom/zjx/jyandroid/ForegroundService/UI/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->z()V

    invoke-static {}, Ly/d;->C()Ly/d;

    move-result-object p1

    invoke-virtual {p1}, Ly/d;->m()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {p1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/zjx/jyandroid/ForegroundService/MainService$7$1;

    invoke-direct {v3, p0}, Lcom/zjx/jyandroid/ForegroundService/MainService$7$1;-><init>(Lcom/zjx/jyandroid/ForegroundService/MainService$7;)V

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {p1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/zjx/jyandroid/ForegroundService/MainService$7$2;

    invoke-direct {v3, p0}, Lcom/zjx/jyandroid/ForegroundService/MainService$7$2;-><init>(Lcom/zjx/jyandroid/ForegroundService/MainService$7;)V

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/MainService$7;->this$0:Lcom/zjx/jyandroid/ForegroundService/MainService;

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->notifyMappingServiceStatusChanged(Z)V

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object p1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService$7;->val$bundleId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->start(Ljava/lang/String;)V

    invoke-static {}, Ly/d;->C()Ly/d;

    move-result-object p1

    invoke-virtual {p1}, Ly/d;->j()Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    move-result-object p1

    if-ne p1, p2, :cond_4

    const-string p1, "jyandroid"

    goto :goto_2

    :cond_4
    const-string p1, "jyandroidsc"

    :goto_2
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->J()Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    move-result-object p2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService$7;->val$bundleId:Ljava/lang/String;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/MainService$7$3;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/MainService$7$3;-><init>(Lcom/zjx/jyandroid/ForegroundService/MainService$7;)V

    invoke-virtual {p2, v0, p1, v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->u(Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapListCompletionHandler;)V

    return-void
.end method
