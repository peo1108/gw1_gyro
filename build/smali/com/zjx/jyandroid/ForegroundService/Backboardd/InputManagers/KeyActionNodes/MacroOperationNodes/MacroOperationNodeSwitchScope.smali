.class public Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroOperationNodes/MacroOperationNodeSwitchScope;
.super Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroOperationNodes/MacroOperationNodeBase;
.source "SourceFile"


# instance fields
.field extensionManager:Lcom/zjx/jyandroid/Extensions/ExtensionManager;

.field type:Lq/h$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroOperationNodes/MacroOperationNodeBase;-><init>()V

    sget-object v0, Lq/h$b;->a:Lq/h$b;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroOperationNodes/MacroOperationNodeSwitchScope;->type:Lq/h$b;

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroOperationNodes/MacroOperationNodeSwitchScope;->extensionManager:Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    return-void
.end method


# virtual methods
.method public getType()Lq/h$b;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroOperationNodes/MacroOperationNodeSwitchScope;->type:Lq/h$b;

    return-object v0
.end method

.method public performAction()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroOperationNodes/MacroOperationNodeSwitchScope;->extensionManager:Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    const-class v1, Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getLoadedExtensionInstanceByClass(Ljava/lang/Class;)Lcom/zjx/jyandroid/Extensions/IExtension;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/pubg/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->C()Lcom/zjx/jyandroid/Extensions/pubg/b;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/b;->l()Lcom/zjx/jyandroid/Extensions/pubg/b$l;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroOperationNodes/MacroOperationNodeSwitchScope;->type:Lq/h$b;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/b$l;->b(Lq/h$b;)V

    return-void
.end method

.method public setType(Lq/h$b;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroOperationNodes/MacroOperationNodeSwitchScope;->type:Lq/h$b;

    return-void
.end method

.method public terminate()V
    .locals 0

    return-void
.end method
