.class public Lcom/zjx/jyandroid/Extensions/pubg/e$l;
.super Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/e;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/Extensions/pubg/e;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$l;->a:Lcom/zjx/jyandroid/Extensions/pubg/e;

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$n;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/Button;)V
    .locals 2

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$l;->a:Lcom/zjx/jyandroid/Extensions/pubg/e;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/e;->n(II)V

    return-void
.end method

.method public b(Landroid/widget/Button;)V
    .locals 1

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$l;->a:Lcom/zjx/jyandroid/Extensions/pubg/e;

    iget-object v0, p1, Lcom/zjx/jyandroid/Extensions/pubg/e;->f:Lcom/zjx/jyandroid/Extensions/pubg/e$p;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/e$p;->b(Lcom/zjx/jyandroid/Extensions/pubg/e;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/widget/Button;)V
    .locals 2

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$l;->a:Lcom/zjx/jyandroid/Extensions/pubg/e;

    const/4 v0, 0x0

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/e;->n(II)V

    return-void
.end method

.method public d(Landroid/widget/Button;)V
    .locals 0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$l;->a:Lcom/zjx/jyandroid/Extensions/pubg/e;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/e;->c(Lcom/zjx/jyandroid/Extensions/pubg/e;)V

    return-void
.end method

.method public e(Landroid/widget/Button;)V
    .locals 0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$l;->a:Lcom/zjx/jyandroid/Extensions/pubg/e;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/e;->i()V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$l;->a:Lcom/zjx/jyandroid/Extensions/pubg/e;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/e;->g()V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$l;->a:Lcom/zjx/jyandroid/Extensions/pubg/e;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/e;->s()V

    return-void
.end method

.method public f(Landroid/widget/Button;)V
    .locals 2

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$l;->a:Lcom/zjx/jyandroid/Extensions/pubg/e;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/e;->n(II)V

    return-void
.end method

.method public g(Landroid/widget/Button;)V
    .locals 2

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$l;->a:Lcom/zjx/jyandroid/Extensions/pubg/e;

    iget-object v0, p1, Lcom/zjx/jyandroid/Extensions/pubg/e;->f:Lcom/zjx/jyandroid/Extensions/pubg/e$p;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/e;->k()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/zjx/jyandroid/Extensions/pubg/e$p;->a(Lcom/zjx/jyandroid/Extensions/pubg/e;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public h(Landroid/widget/Button;)V
    .locals 4

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->J()Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    move-result-object p1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$l;->a:Lcom/zjx/jyandroid/Extensions/pubg/e;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/e;->k()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/e$l$a;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/e$l$a;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/e$l;)V

    const/4 v2, -0x1

    const-string v3, "rm"

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->E(Ljava/util/Map;ILjava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ShareKeymapCompletionHandler;)V

    return-void
.end method

.method public i(Landroid/widget/Button;)V
    .locals 2

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$l;->a:Lcom/zjx/jyandroid/Extensions/pubg/e;

    const/4 v0, -0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/e;->n(II)V

    return-void
.end method
