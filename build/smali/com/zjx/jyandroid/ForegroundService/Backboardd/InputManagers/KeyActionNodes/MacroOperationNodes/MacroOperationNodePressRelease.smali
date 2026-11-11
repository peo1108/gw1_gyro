.class public Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroOperationNodes/MacroOperationNodePressRelease;
.super Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroOperationNodes/MacroOperationNodeBase;
.source "SourceFile"


# instance fields
.field actionPerformer:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/NormalPressKeyActionNode;

.field private coordinate:Landroid/graphics/Point;

.field private touching:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroOperationNodes/MacroOperationNodeBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroOperationNodes/MacroOperationNodePressRelease;->touching:Z

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/NormalPressKeyActionNode;

    invoke-direct {v0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/NormalPressKeyActionNode;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroOperationNodes/MacroOperationNodePressRelease;->actionPerformer:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/NormalPressKeyActionNode;

    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0x64

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroOperationNodes/MacroOperationNodePressRelease;->coordinate:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public getCoordinate()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroOperationNodes/MacroOperationNodePressRelease;->coordinate:Landroid/graphics/Point;

    return-object v0
.end method

.method public performAction()V
    .locals 2

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroOperationNodes/MacroOperationNodePressRelease;->touching:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroOperationNodes/MacroOperationNodePressRelease;->actionPerformer:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/NormalPressKeyActionNode;

    invoke-virtual {v0, v1, v1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/NormalPressKeyActionNode;->startActionWithKeyCodes(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroOperationNodes/MacroOperationNodePressRelease;->touching:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroOperationNodes/MacroOperationNodePressRelease;->actionPerformer:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/NormalPressKeyActionNode;

    invoke-virtual {v0, v1, v1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/NormalPressKeyActionNode;->stopActionWithKeyCodes(II)V

    iput-boolean v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroOperationNodes/MacroOperationNodePressRelease;->touching:Z

    :goto_0
    return-void
.end method

.method public setCoordinate(Landroid/graphics/Point;)V
    .locals 1

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroOperationNodes/MacroOperationNodePressRelease;->coordinate:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroOperationNodes/MacroOperationNodePressRelease;->actionPerformer:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/NormalPressKeyActionNode;

    iput-object p1, v0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeCoordinateAction;->coordinate:Landroid/graphics/Point;

    return-void
.end method

.method public terminate()V
    .locals 2

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroOperationNodes/MacroOperationNodePressRelease;->touching:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroOperationNodes/MacroOperationNodePressRelease;->actionPerformer:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/NormalPressKeyActionNode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/NormalPressKeyActionNode;->stopActionWithKeyCodes(II)V

    iput-boolean v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroOperationNodes/MacroOperationNodePressRelease;->touching:Z

    :cond_0
    return-void
.end method
