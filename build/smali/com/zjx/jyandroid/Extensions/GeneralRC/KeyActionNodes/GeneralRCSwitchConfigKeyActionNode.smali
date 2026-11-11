.class public Lcom/zjx/jyandroid/Extensions/GeneralRC/KeyActionNodes/GeneralRCSwitchConfigKeyActionNode;
.super Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeTouchPerformActionSingleFinger;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/ITouchTriggerable;


# instance fields
.field public enableType:Lf/c$a;

.field generalRCExtension:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

.field public switchToIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeTouchPerformActionSingleFinger;-><init>()V

    sget-object v0, Lf/c$a;->a:Lf/c$a;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/KeyActionNodes/GeneralRCSwitchConfigKeyActionNode;->enableType:Lf/c$a;

    const/4 v0, 0x1

    iput v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/KeyActionNodes/GeneralRCSwitchConfigKeyActionNode;->switchToIndex:I

    return-void
.end method


# virtual methods
.method public startActionByTouch(Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;IFF)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/KeyActionNodes/GeneralRCSwitchConfigKeyActionNode;->startActionWithKeyCodes(II)V

    return-void
.end method

.method public startActionWithKeyCodes(II)V
    .locals 0

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object p1

    const-class p2, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getLoadedExtensionInstanceByClass(Ljava/lang/Class;)Lcom/zjx/jyandroid/Extensions/IExtension;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/KeyActionNodes/GeneralRCSwitchConfigKeyActionNode;->generalRCExtension:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget p2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/KeyActionNodes/GeneralRCSwitchConfigKeyActionNode;->switchToIndex:I

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCExtension;->setSelectedConfigIndex(I)V

    return-void
.end method

.method public stopActionByTouch(Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;IFF)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/KeyActionNodes/GeneralRCSwitchConfigKeyActionNode;->stopActionWithKeyCodes(II)V

    return-void
.end method

.method public stopActionWithKeyCodes(II)V
    .locals 0

    return-void
.end method
