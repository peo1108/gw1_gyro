.class public Lh/d;
.super Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeTouchPerformActionSingleFinger;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/ITouchTriggerable;


# instance fields
.field public a:J

.field public b:Lcom/zjx/jyandroid/Extensions/pubg/d;

.field public c:Lcom/zjx/jyandroid/ForegroundService/UI/a;

.field public d:Lf/c$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeTouchPerformActionSingleFinger;-><init>()V

    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lh/d;->a:J

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->y()Lcom/zjx/jyandroid/ForegroundService/UI/a;

    move-result-object v0

    iput-object v0, p0, Lh/d;->c:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    sget-object v0, Lf/c$a;->a:Lf/c$a;

    iput-object v0, p0, Lh/d;->d:Lf/c$a;

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object v0

    const-class v1, Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getLoadedExtensionInstanceByClass(Ljava/lang/Class;)Lcom/zjx/jyandroid/Extensions/IExtension;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/pubg/d;

    iput-object v0, p0, Lh/d;->b:Lcom/zjx/jyandroid/Extensions/pubg/d;

    return-void
.end method


# virtual methods
.method public a()Lf/c$a;
    .locals 1

    iget-object v0, p0, Lh/d;->d:Lf/c$a;

    return-object v0
.end method

.method public b(Lf/c$a;)V
    .locals 0

    iput-object p1, p0, Lh/d;->d:Lf/c$a;

    return-void
.end method

.method public startActionByTouch(Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;IFF)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lh/d;->startActionWithKeyCodes(II)V

    return-void
.end method

.method public startActionWithKeyCodes(II)V
    .locals 1

    iget-object p1, p0, Lh/d;->b:Lcom/zjx/jyandroid/Extensions/pubg/d;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0xff

    if-le p2, p1, :cond_1

    iget-object p1, p0, Lh/d;->c:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->m()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lh/d;->d:Lf/c$a;

    sget-object p2, Lf/c$a;->a:Lf/c$a;

    const/4 v0, 0x1

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lh/d;->b:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->W(Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lh/d;->b:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->K()Z

    move-result p2

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/Extensions/pubg/d;->W(Z)V

    :goto_0
    return-void
.end method

.method public stopActionByTouch(Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;IFF)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lh/d;->stopActionWithKeyCodes(II)V

    return-void
.end method

.method public stopActionWithKeyCodes(II)V
    .locals 0

    iget-object p1, p0, Lh/d;->b:Lcom/zjx/jyandroid/Extensions/pubg/d;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0xff

    if-le p2, p1, :cond_1

    iget-object p1, p0, Lh/d;->c:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->m()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lh/d;->d:Lf/c$a;

    sget-object p2, Lf/c$a;->a:Lf/c$a;

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lh/d;->b:Lcom/zjx/jyandroid/Extensions/pubg/d;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/Extensions/pubg/d;->W(Z)V

    :cond_2
    return-void
.end method
