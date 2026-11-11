.class public Lcom/zjx/jyandroid/Extensions/pubg/d$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/d;->U()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/Extensions/pubg/d;


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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$e;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$e;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->b(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/i;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$e;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->e(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel;

    move-result-object v0

    new-instance v11, Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel$a;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$e;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {v1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->q(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    move-result-object v2

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$e;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    iget-object v3, v1, Lcom/zjx/jyandroid/Extensions/pubg/d;->y:Lcom/zjx/jyandroid/Extensions/pubg/c$b;

    invoke-static {v1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->o(Lcom/zjx/jyandroid/Extensions/pubg/d;)Z

    move-result v4

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$e;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {v1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->m(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    move-result-object v5

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$e;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {v1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->t(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    move-result-object v6

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$e;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {v1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->v(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/c$c;

    move-result-object v7

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$e;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {v1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->x(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/c$h;

    move-result-object v8

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$e;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {v1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->b(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/pubg/i;->d()D

    move-result-wide v9

    double-to-int v9, v9

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$e;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {v1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->d(Lcom/zjx/jyandroid/Extensions/pubg/d;)Z

    move-result v10

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel$a;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/c$l;Lcom/zjx/jyandroid/Extensions/pubg/c$b;ZLcom/zjx/jyandroid/Extensions/pubg/c$g;Lcom/zjx/jyandroid/Extensions/pubg/c$d;Lcom/zjx/jyandroid/Extensions/pubg/c$c;Lcom/zjx/jyandroid/Extensions/pubg/c$h;IZ)V

    invoke-virtual {v0, v11}, Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel;->a(Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel$a;)V

    return-void
.end method
