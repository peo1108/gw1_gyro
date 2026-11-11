.class Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$8;
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
.field macroKeyActionNode:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroKeyActionNode;

.field terminateMode:Lr/C$b;

.field terminateType:Lr/C$a;

.field final synthetic this$0:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;

.field final synthetic val$componentIndicator:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$ComponentIndicator;

.field final synthetic val$macroTerminatePropertySC:Lr/C;

.field final synthetic val$node:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroKeyActionNode;

.field final synthetic val$touchTriggeredNodeWrapper:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroKeyActionNode;Lr/C;Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$ComponentIndicator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$8;->this$0:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$8;->val$node:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroKeyActionNode;

    iput-object p3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$8;->val$macroTerminatePropertySC:Lr/C;

    iput-object p4, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$8;->val$touchTriggeredNodeWrapper:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;

    iput-object p5, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$8;->val$componentIndicator:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$ComponentIndicator;

    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/TaskPerformKeyActionNode;-><init>()V

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$8;->macroKeyActionNode:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroKeyActionNode;

    invoke-virtual {p3}, Lr/C;->f()Lr/C$a;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$8;->terminateType:Lr/C$a;

    invoke-virtual {p3}, Lr/C;->g()Lr/C$b;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$8;->terminateMode:Lr/C$b;

    return-void
.end method

.method private updateMacroIndicatorAlpha()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$8;->this$0:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$8$1;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$8$1;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$8;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public startActionByTouch(Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;IFF)V
    .locals 0

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$8;->macroKeyActionNode:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroKeyActionNode;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroKeyActionNode;->terminate()V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$8;->terminateType:Lr/C$a;

    sget-object p2, Lr/C$a;->b:Lr/C$a;

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$8;->terminateMode:Lr/C$b;

    sget-object p2, Lr/C$b;->a:Lr/C$b;

    const/4 p3, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$8;->val$touchTriggeredNodeWrapper:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;

    invoke-virtual {p1, p3}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->setDisabled(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$8;->val$touchTriggeredNodeWrapper:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->isDisabled()Z

    move-result p2

    xor-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->setDisabled(Z)V

    :goto_0
    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$8;->updateMacroIndicatorAlpha()V

    :cond_1
    return-void
.end method

.method public startActionWithKeyCodes(II)V
    .locals 0

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$8;->macroKeyActionNode:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroKeyActionNode;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroKeyActionNode;->terminate()V

    return-void
.end method

.method public stopActionByTouch(Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;IFF)V
    .locals 0

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$8;->terminateType:Lr/C$a;

    sget-object p2, Lr/C$a;->b:Lr/C$a;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$8;->terminateMode:Lr/C$b;

    sget-object p2, Lr/C$b;->a:Lr/C$b;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$8;->val$touchTriggeredNodeWrapper:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->setDisabled(Z)V

    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$8;->updateMacroIndicatorAlpha()V

    :cond_0
    return-void
.end method

.method public stopActionWithKeyCodes(II)V
    .locals 0

    return-void
.end method
