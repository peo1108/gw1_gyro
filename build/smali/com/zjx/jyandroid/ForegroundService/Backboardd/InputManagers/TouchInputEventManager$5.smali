.class Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$5;
.super Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/TaskPerformKeyActionNode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->activatedKeymapHasChanged(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field performAimingRecognitionKeyActionNode:Lh/c;

.field final synthetic this$0:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;

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
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;Ljava/util/List;Lf/m;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$5;->this$0:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$5;->val$pressNodes:Ljava/util/List;

    iput-object p3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$5;->val$pubgRecoilControlPerformerComponentPropertySC:Lf/m;

    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/TaskPerformKeyActionNode;-><init>()V

    new-instance p1, Lh/c;

    invoke-direct {p1}, Lh/c;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$5;->performAimingRecognitionKeyActionNode:Lh/c;

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object p1

    const-class p2, Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getLoadedExtensionInstanceByClass(Ljava/lang/Class;)Lcom/zjx/jyandroid/Extensions/IExtension;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/pubg/d;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$5;->weakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public startActionByTouch(Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;IFF)V
    .locals 10

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$5;->val$pressNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/ITouchTriggerable;

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$5;->this$0:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;

    invoke-static {v1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->access$000(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v9, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$5$1;

    move-object v2, v9

    move-object v3, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$5$1;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$5;Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/ITouchTriggerable;Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;IFF)V

    invoke-interface {v1, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$5;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/pubg/d;

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$5;->val$pubgRecoilControlPerformerComponentPropertySC:Lf/m;

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
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$5;->val$pubgRecoilControlPerformerComponentPropertySC:Lf/m;

    iget-boolean v0, v0, Lf/m;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$5;->performAimingRecognitionKeyActionNode:Lh/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lh/c;->startActionByTouch(Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;IFF)V

    :cond_2
    return-void
.end method

.method public startActionWithKeyCodes(II)V
    .locals 0

    return-void
.end method

.method public stopActionByTouch(Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;IFF)V
    .locals 10

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$5;->val$pressNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/ITouchTriggerable;

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$5;->this$0:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;

    invoke-static {v1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->access$000(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v9, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$5$2;

    move-object v2, v9

    move-object v3, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$5$2;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$5;Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/ITouchTriggerable;Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;IFF)V

    invoke-interface {v1, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$5;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/pubg/d;

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$5;->val$pubgRecoilControlPerformerComponentPropertySC:Lf/m;

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
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$5;->val$pubgRecoilControlPerformerComponentPropertySC:Lf/m;

    iget-boolean v0, v0, Lf/m;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$5;->performAimingRecognitionKeyActionNode:Lh/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lh/c;->stopActionByTouch(Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;IFF)V

    :cond_2
    return-void
.end method

.method public stopActionWithKeyCodes(II)V
    .locals 0

    return-void
.end method
