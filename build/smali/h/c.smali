.class public Lh/c;
.super Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/ITouchTriggerable;


# instance fields
.field public a:Lcom/zjx/jyandroid/Extensions/pubg/d;

.field public b:Z

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/c;->b:Z

    const/16 v0, 0x352

    iput v0, p0, Lh/c;->c:I

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object v0

    const-class v1, Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getLoadedExtensionInstanceByClass(Ljava/lang/Class;)Lcom/zjx/jyandroid/Extensions/IExtension;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/pubg/d;

    iput-object v0, p0, Lh/c;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lh/c;->c:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lh/c;->c:I

    return-void
.end method

.method public startActionByTouch(Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;IFF)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lh/c;->startActionWithKeyCodes(II)V

    return-void
.end method

.method public startActionWithKeyCodes(II)V
    .locals 2

    iget-object p1, p0, Lh/c;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->C()Lcom/zjx/jyandroid/Extensions/pubg/b;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/b;->i()Lcom/zjx/jyandroid/Extensions/pubg/b$c;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/b;->h()Lcom/zjx/jyandroid/Extensions/pubg/c$a;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$a;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$a;

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/b;->i()Lcom/zjx/jyandroid/Extensions/pubg/b$c;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->h(Z)V

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lh/c;->b:Z

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->i()Z

    move-result p1

    if-nez p1, :cond_5

    iget p1, p0, Lh/c;->c:I

    invoke-virtual {p2, p1}, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->j(I)V

    goto :goto_0

    :cond_4
    iget p1, p0, Lh/c;->c:I

    invoke-virtual {p2, p1}, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->j(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public stopActionByTouch(Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;IFF)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lh/c;->stopActionWithKeyCodes(II)V

    return-void
.end method

.method public stopActionWithKeyCodes(II)V
    .locals 1

    iget-object p1, p0, Lh/c;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->C()Lcom/zjx/jyandroid/Extensions/pubg/b;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/b;->i()Lcom/zjx/jyandroid/Extensions/pubg/b$c;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/b;->h()Lcom/zjx/jyandroid/Extensions/pubg/c$a;

    move-result-object p2

    sget-object v0, Lcom/zjx/jyandroid/Extensions/pubg/c$a;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$a;

    if-ne p2, v0, :cond_3

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/b;->i()Lcom/zjx/jyandroid/Extensions/pubg/b$c;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->h(Z)V

    :cond_3
    return-void
.end method
