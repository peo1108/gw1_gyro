.class public Lcom/zjx/jyandroid/Extensions/pubg/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/Extensions/pubg/b$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/d;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

.field public final synthetic b:Lcom/zjx/jyandroid/Extensions/pubg/d;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$c;->b:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lcom/zjx/jyandroid/Extensions/pubg/c$g;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$c;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    return-void
.end method


# virtual methods
.method public a(Lcom/zjx/jyandroid/Extensions/pubg/c$d;Lcom/zjx/jyandroid/Extensions/pubg/c$c;Lcom/zjx/jyandroid/Extensions/pubg/c$h;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$c;->b:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {v0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->u(Lcom/zjx/jyandroid/Extensions/pubg/d;Lcom/zjx/jyandroid/Extensions/pubg/c$d;)Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$c;->b:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {v0, p2}, Lcom/zjx/jyandroid/Extensions/pubg/d;->w(Lcom/zjx/jyandroid/Extensions/pubg/d;Lcom/zjx/jyandroid/Extensions/pubg/c$c;)Lcom/zjx/jyandroid/Extensions/pubg/c$c;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$c;->b:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {v0, p3}, Lcom/zjx/jyandroid/Extensions/pubg/d;->y(Lcom/zjx/jyandroid/Extensions/pubg/d;Lcom/zjx/jyandroid/Extensions/pubg/c$h;)Lcom/zjx/jyandroid/Extensions/pubg/c$h;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$c;->b:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->b(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/i;

    move-result-object v0

    if-eqz v0, :nila

    invoke-virtual {v0, p1, p2, p3}, Lcom/zjx/jyandroid/Extensions/pubg/i;->n(Lcom/zjx/jyandroid/Extensions/pubg/c$d;Lcom/zjx/jyandroid/Extensions/pubg/c$c;Lcom/zjx/jyandroid/Extensions/pubg/c$h;)V

    :nila
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$c;->b:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->U()V

    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$c;->b:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {v0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->s(Lcom/zjx/jyandroid/Extensions/pubg/d;Z)Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$c;->b:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->b(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/i;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/Extensions/pubg/i;->o(Z)V

    :cond_0
    return-void
.end method

.method public c(Lcom/zjx/jyandroid/Extensions/pubg/c$g;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$c;->b:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {v0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->n(Lcom/zjx/jyandroid/Extensions/pubg/d;Lcom/zjx/jyandroid/Extensions/pubg/c$g;)Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$c;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$c;->b:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->o(Lcom/zjx/jyandroid/Extensions/pubg/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$c;->b:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->b(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/i;->t(Lcom/zjx/jyandroid/Extensions/pubg/c$g;)V

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$c;->b:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->U()V

    return-void
.end method

.method public d(Lcom/zjx/jyandroid/Extensions/pubg/c$b;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$c;->b:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->a(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/c$e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/c$e;->f(Lcom/zjx/jyandroid/Extensions/pubg/c$b;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$c;->b:Lcom/zjx/jyandroid/Extensions/pubg/d;

    iput-object p1, v0, Lcom/zjx/jyandroid/Extensions/pubg/d;->y:Lcom/zjx/jyandroid/Extensions/pubg/c$b;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->b(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/i;

    move-result-object v0

    if-eqz v0, :nild

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/i;->q(Lcom/zjx/jyandroid/Extensions/pubg/c$b;)V

    :nild
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$c;->b:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->U()V

    return-void
.end method

.method public e(Lcom/zjx/jyandroid/Extensions/pubg/c$l;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$c;->b:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {v0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->r(Lcom/zjx/jyandroid/Extensions/pubg/d;Lcom/zjx/jyandroid/Extensions/pubg/c$l;)Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$c;->b:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->b(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/i;

    move-result-object v0

    if-eqz v0, :nile

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/i;->v(Lcom/zjx/jyandroid/Extensions/pubg/c$l;)V

    :nile
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$c;->b:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->U()V

    return-void
.end method

.method public onCurrentAimingStatusChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$c;->b:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->a(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/c$e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/c$e;->d(Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$c;->b:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {v0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->p(Lcom/zjx/jyandroid/Extensions/pubg/d;Z)Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$c;->b:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->b(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/i;

    move-result-object v0

    if-eqz v0, :goto_0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$c;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/i;->t(Lcom/zjx/jyandroid/Extensions/pubg/c$g;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$c;->b:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->b(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/i;

    move-result-object v0

    if-eqz v0, :goto_0

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$g;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/i;->t(Lcom/zjx/jyandroid/Extensions/pubg/c$g;)V

    :goto_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$c;->b:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->U()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.zjx.jyandroid.extension.shared.onAimingStatusChanged"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "aiming"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
