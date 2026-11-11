.class Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$5;
.super Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/TaskPerformKeyActionNode;
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
.field performAimingRecognitionKeyActionNode:Lh/c;

.field final synthetic this$0:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;

.field final synthetic val$pressNodes:Ljava/util/List;

.field final synthetic val$pubgRecoilControlPerformerComponentPropertySC:Lf/m;

.field private final weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/zjx/jyandroid/Extensions/pubg/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;Ljava/util/List;Lf/m;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$5;->this$0:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$5;->val$pressNodes:Ljava/util/List;

    iput-object p3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$5;->val$pubgRecoilControlPerformerComponentPropertySC:Lf/m;

    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/TaskPerformKeyActionNode;-><init>()V

    new-instance p1, Lh/c;

    invoke-direct {p1}, Lh/c;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$5;->performAimingRecognitionKeyActionNode:Lh/c;

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object p1

    const-class p2, Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getLoadedExtensionInstanceByClass(Ljava/lang/Class;)Lcom/zjx/jyandroid/Extensions/IExtension;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/pubg/d;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$5;->weakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public startActionByTouch(Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;IFF)V
    .locals 0

    return-void
.end method

.method public startActionWithKeyCodes(II)V
    .locals 4

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$5;->val$pressNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$5;->this$0:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;

    invoke-static {v2}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->access$000(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$5$1;

    invoke-direct {v3, p0, v1, p1, p2}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$5$1;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$5;Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;II)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$5;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/pubg/d;

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$5;->val$pubgRecoilControlPerformerComponentPropertySC:Lf/m;

    iget-boolean v1, v1, Lf/m;->b:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->G()Lcom/zjx/jyandroid/Extensions/pubg/i;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->G()Lcom/zjx/jyandroid/Extensions/pubg/i;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/i;->o(Z)V

    :cond_1
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$5;->val$pubgRecoilControlPerformerComponentPropertySC:Lf/m;

    iget-boolean v0, v0, Lf/m;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$5;->performAimingRecognitionKeyActionNode:Lh/c;

    invoke-virtual {v0, p1, p2}, Lh/c;->startActionWithKeyCodes(II)V

    :cond_2
    return-void
.end method

.method public stopActionByTouch(Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;IFF)V
    .locals 0

    return-void
.end method

.method public stopActionWithKeyCodes(II)V
    .locals 4

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$5;->val$pressNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$5;->this$0:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;

    invoke-static {v2}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;->access$000(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$5$2;

    invoke-direct {v3, p0, v1, p1, p2}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$5$2;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$5;Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;II)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$5;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/pubg/d;

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$5;->val$pubgRecoilControlPerformerComponentPropertySC:Lf/m;

    iget-boolean v1, v1, Lf/m;->b:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->G()Lcom/zjx/jyandroid/Extensions/pubg/i;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->G()Lcom/zjx/jyandroid/Extensions/pubg/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/i;->o(Z)V

    :cond_1
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$5;->val$pubgRecoilControlPerformerComponentPropertySC:Lf/m;

    iget-boolean v0, v0, Lf/m;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyInputManager$5;->performAimingRecognitionKeyActionNode:Lh/c;

    invoke-virtual {v0, p1, p2}, Lh/c;->stopActionWithKeyCodes(II)V

    :cond_2
    return-void
.end method
