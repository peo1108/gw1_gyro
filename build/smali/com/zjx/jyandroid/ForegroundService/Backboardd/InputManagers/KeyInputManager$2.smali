.class Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$2;
.super Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->activatedKeymapHasChanged(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field floatingObjectManager:Ll/b;

.field handler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$2;->this$0:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;

    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;-><init>()V

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$2;->floatingObjectManager:Ll/b;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$2;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public startActionWithKeyCodes(II)V
    .locals 0

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$2;->floatingObjectManager:Ll/b;

    invoke-virtual {p1}, Ll/b;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$2;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$2$1;

    invoke-direct {p2, p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$2$1;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$2;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$2;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$2$2;

    invoke-direct {p2, p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$2$2;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$2;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public stopActionWithKeyCodes(II)V
    .locals 0

    return-void
.end method
