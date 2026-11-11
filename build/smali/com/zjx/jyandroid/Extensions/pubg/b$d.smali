.class public Lcom/zjx/jyandroid/Extensions/pubg/b$d;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/Extensions/pubg/b$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/pubg/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Z
    .annotation build Landroidx/test/annotation/Beta;
    .end annotation
.end field

.field public b:Landroid/graphics/Rect;

.field public c:Landroid/graphics/Rect;

.field public d:Landroid/graphics/Rect;

.field public e:Landroid/graphics/Rect;

.field public f:Landroid/graphics/Rect;

.field public g:Landroid/graphics/Rect;

.field public h:Landroid/graphics/Rect;
    .annotation build Landroidx/test/annotation/Beta;
    .end annotation
.end field

.field public i:Landroid/graphics/Rect;
    .annotation build Landroidx/test/annotation/Beta;
    .end annotation
.end field

.field public j:Z

.field public k:Lk/i;

.field public l:Lk/h;

.field public m:Lk/l;

.field public n:I

.field public o:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

.field public final synthetic p:Lcom/zjx/jyandroid/Extensions/pubg/b;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/b;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->p:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->a:Z

    const/16 v1, 0x1f4

    iput v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->n:I

    iget-object v2, p1, Lcom/zjx/jyandroid/Extensions/pubg/b;->J:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->o:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    iget-object v2, p1, Lcom/zjx/jyandroid/Extensions/pubg/b;->E:Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-virtual {v2}, Lcom/zjx/jyandroid/Extensions/pubg/f;->q()Lcom/zjx/jyandroid/Extensions/pubg/f$a;

    move-result-object v2

    sget-object v3, Lcom/zjx/jyandroid/Extensions/pubg/b$b;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v1, 0x3

    if-eq v2, v1, :cond_1

    const/4 v1, 0x4

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x96

    iput v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->n:I

    goto :goto_0

    :cond_1
    const/16 v1, 0xfa

    iput v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->n:I

    goto :goto_0

    :cond_2
    iput v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->n:I

    goto :goto_0

    :cond_3
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->n:I

    :goto_0
    iget-object v1, p1, Lcom/zjx/jyandroid/Extensions/pubg/b;->E:Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/pubg/f;->e()I

    move-result v1

    iget-object v2, p1, Lcom/zjx/jyandroid/Extensions/pubg/b;->E:Lcom/zjx/jyandroid/Extensions/pubg/f;

    iget v4, v2, Lcom/zjx/jyandroid/Extensions/pubg/f;->a:I

    if-ne v1, v4, :cond_4

    move v1, v3

    goto :goto_1

    :cond_4
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->j:Z

    invoke-virtual {v2}, Lcom/zjx/jyandroid/Extensions/pubg/f;->C()Z

    move-result v1

    if-eqz v1, :cond_6

    :try_start_0
    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/b;->E:Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/f;->s()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/accessory_rects.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->L(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->j()Landroid/util/Size;

    move-result-object v2

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_5

    const-string p1, "default"

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    goto :goto_2

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :cond_5
    :goto_2
    const-string v1, "size"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const-string v2, "muzzle1"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v4, Landroid/graphics/Rect;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    add-int/2addr v7, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v4, v5, v6, v7, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->b:Landroid/graphics/Rect;

    const-string v2, "muzzle2"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v4, Landroid/graphics/Rect;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    add-int/2addr v7, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v4, v5, v6, v7, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->c:Landroid/graphics/Rect;

    const-string v2, "grip1"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v4, Landroid/graphics/Rect;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    add-int/2addr v7, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v4, v5, v6, v7, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->d:Landroid/graphics/Rect;

    const-string v2, "grip2"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v4, Landroid/graphics/Rect;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    add-int/2addr v7, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v4, v5, v6, v7, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->e:Landroid/graphics/Rect;

    const-string v2, "stock1"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v4, Landroid/graphics/Rect;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    add-int/2addr v7, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v4, v5, v6, v7, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->f:Landroid/graphics/Rect;

    const-string v2, "stock2"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance v2, Landroid/graphics/Rect;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    add-int/2addr v6, v1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    add-int/2addr p1, v1

    invoke-direct {v2, v4, v5, v6, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->g:Landroid/graphics/Rect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load rect info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ly/c;->b(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    iget-object v1, p1, Lcom/zjx/jyandroid/Extensions/pubg/b;->r:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->b:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/zjx/jyandroid/Extensions/pubg/b;->s:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->c:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/zjx/jyandroid/Extensions/pubg/b;->t:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->d:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/zjx/jyandroid/Extensions/pubg/b;->u:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->e:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/zjx/jyandroid/Extensions/pubg/b;->v:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->f:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/zjx/jyandroid/Extensions/pubg/b;->w:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->g:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/zjx/jyandroid/Extensions/pubg/b;->n:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->h:Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/b;->o:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->i:Landroid/graphics/Rect;

    :goto_4
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getActivateBundleIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "/stock"

    const-string v2, "/grip"

    const-string v4, "/muzzle"

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->h:Landroid/graphics/Rect;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->i:Landroid/graphics/Rect;

    if-eqz p1, :cond_7

    new-instance p1, Lk/i;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/b;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->h:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-direct {p1, v0, v4}, Lk/i;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->k:Lk/i;

    new-instance p1, Lk/h;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/b;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->h:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {p1, v0, v2}, Lk/h;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->l:Lk/h;

    new-instance p1, Lk/l;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->h:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lk/l;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->m:Lk/l;

    iput-boolean v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->a:Z

    goto/16 :goto_5

    :cond_7
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->b:Landroid/graphics/Rect;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->c:Landroid/graphics/Rect;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->d:Landroid/graphics/Rect;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->e:Landroid/graphics/Rect;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->f:Landroid/graphics/Rect;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->g:Landroid/graphics/Rect;

    if-eqz p1, :cond_8

    new-instance p1, Lk/i;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/b;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->b:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-direct {p1, v3, v4}, Lk/i;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->k:Lk/i;

    new-instance p1, Lk/h;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/b;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->d:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-direct {p1, v2, v3}, Lk/h;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->l:Lk/h;

    new-instance p1, Lk/l;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->f:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-direct {p1, v1, v2}, Lk/l;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->m:Lk/l;

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->a:Z

    :cond_8
    :goto_5
    return-void
.end method


# virtual methods
.method public a(Lcom/zjx/jyandroid/Extensions/pubg/c$k;Lcom/zjx/jyandroid/Extensions/pubg/b$k;)V
    .locals 6

    sget-object p1, Lcom/zjx/jyandroid/Extensions/pubg/c$d;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/pubg/c$c;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$c;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$h;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$h;

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->o:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->c:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    iget-object v4, v2, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->d:Lcom/zjx/jyandroid/Extensions/pubg/c$c;

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->e:Lcom/zjx/jyandroid/Extensions/pubg/c$h;

    goto :goto_0

    :cond_0
    move-object v3, p1

    move-object v4, v0

    move-object v2, v1

    :goto_0
    if-eqz p2, :cond_1

    iget-object p1, p2, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->c:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    iget-object v0, p2, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->d:Lcom/zjx/jyandroid/Extensions/pubg/c$c;

    iget-object v1, p2, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->e:Lcom/zjx/jyandroid/Extensions/pubg/c$h;

    :cond_1
    const/4 v5, 0x1

    if-eq v3, p1, :cond_2

    move v3, v5

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eq v4, v0, :cond_3

    move v3, v5

    :cond_3
    if-eq v2, v1, :cond_4

    goto :goto_2

    :cond_4
    move v5, v3

    :goto_2
    if-eqz v5, :cond_5

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->p:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-static {v2}, Lcom/zjx/jyandroid/Extensions/pubg/b;->a(Lcom/zjx/jyandroid/Extensions/pubg/b;)Lcom/zjx/jyandroid/Extensions/pubg/b$i;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->p:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-static {v2}, Lcom/zjx/jyandroid/Extensions/pubg/b;->b(Lcom/zjx/jyandroid/Extensions/pubg/b;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->p:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-static {v2}, Lcom/zjx/jyandroid/Extensions/pubg/b;->a(Lcom/zjx/jyandroid/Extensions/pubg/b;)Lcom/zjx/jyandroid/Extensions/pubg/b$i;

    move-result-object v2

    invoke-interface {v2, p1, v0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/b$i;->a(Lcom/zjx/jyandroid/Extensions/pubg/c$d;Lcom/zjx/jyandroid/Extensions/pubg/c$c;Lcom/zjx/jyandroid/Extensions/pubg/c$h;)V

    :cond_5
    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->o:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    return-void
.end method

.method public final b(Landroid/graphics/Bitmap;)V
    .locals 13

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->b:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$k;

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->o:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->p:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v4, v3, Lcom/zjx/jyandroid/Extensions/pubg/b;->H:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    if-ne v2, v4, :cond_1

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$k;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$k;

    goto :goto_0

    :cond_1
    iget-object v3, v3, Lcom/zjx/jyandroid/Extensions/pubg/b;->I:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    if-ne v2, v3, :cond_2

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$k;->c:Lcom/zjx/jyandroid/Extensions/pubg/c$k;

    :cond_2
    :goto_0
    iget-boolean v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->a:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->h:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v5, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->h:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {p1, v2, v4, v0, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->i:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v6, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->i:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {p1, v4, v5, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->k:Lk/i;

    invoke-virtual {v2, v0}, Lk/j;->c(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->k:Lk/i;

    invoke-virtual {v2, v3}, Lk/i;->b(Ljava/lang/Object;)I

    move-result v2

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->k:Lk/i;

    invoke-virtual {v4, p1}, Lk/j;->c(Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->k:Lk/i;

    invoke-virtual {v4, v3}, Lk/i;->b(Ljava/lang/Object;)I

    move-result v4

    iget-object v5, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->l:Lk/h;

    invoke-virtual {v5, v0}, Lk/j;->c(Landroid/graphics/Bitmap;)V

    iget-object v5, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->l:Lk/h;

    invoke-virtual {v5, v3}, Lk/h;->b(Ljava/lang/Object;)I

    move-result v5

    iget-object v6, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->l:Lk/h;

    invoke-virtual {v6, p1}, Lk/j;->c(Landroid/graphics/Bitmap;)V

    iget-object v6, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->l:Lk/h;

    invoke-virtual {v6, v3}, Lk/h;->b(Ljava/lang/Object;)I

    move-result v6

    iget-object v7, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->m:Lk/l;

    invoke-virtual {v7, v0}, Lk/j;->c(Landroid/graphics/Bitmap;)V

    iget-object v7, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->m:Lk/l;

    invoke-virtual {v7, v3}, Lk/l;->b(Ljava/lang/Object;)I

    move-result v7

    iget-object v8, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->m:Lk/l;

    invoke-virtual {v8, p1}, Lk/j;->c(Landroid/graphics/Bitmap;)V

    iget-object v8, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->m:Lk/l;

    invoke-virtual {v8, v3}, Lk/l;->b(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_1

    :cond_3
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v5, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->b:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {p1, v2, v4, v0, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->d:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v6, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->d:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {p1, v4, v5, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->f:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v7, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->f:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-static {p1, v5, v6, v4, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->c:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v8, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->c:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-static {p1, v6, v7, v5, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->e:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget v8, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v9, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->e:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-static {p1, v7, v8, v6, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v7, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->g:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->left:I

    iget v9, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v10, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->g:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-static {p1, v8, v9, v7, v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v7, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->k:Lk/i;

    invoke-virtual {v7, v0}, Lk/j;->c(Landroid/graphics/Bitmap;)V

    iget-object v7, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->k:Lk/i;

    invoke-virtual {v7, v3}, Lk/i;->b(Ljava/lang/Object;)I

    move-result v7

    iget-object v8, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->k:Lk/i;

    invoke-virtual {v8, v5}, Lk/j;->c(Landroid/graphics/Bitmap;)V

    iget-object v8, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->k:Lk/i;

    invoke-virtual {v8, v3}, Lk/i;->b(Ljava/lang/Object;)I

    move-result v8

    iget-object v9, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->l:Lk/h;

    invoke-virtual {v9, v2}, Lk/j;->c(Landroid/graphics/Bitmap;)V

    iget-object v9, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->l:Lk/h;

    invoke-virtual {v9, v3}, Lk/h;->b(Ljava/lang/Object;)I

    move-result v9

    iget-object v10, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->l:Lk/h;

    invoke-virtual {v10, v6}, Lk/j;->c(Landroid/graphics/Bitmap;)V

    iget-object v10, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->l:Lk/h;

    invoke-virtual {v10, v3}, Lk/h;->b(Ljava/lang/Object;)I

    move-result v10

    iget-object v11, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->m:Lk/l;

    invoke-virtual {v11, v4}, Lk/j;->c(Landroid/graphics/Bitmap;)V

    iget-object v11, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->m:Lk/l;

    invoke-virtual {v11, v3}, Lk/l;->b(Ljava/lang/Object;)I

    move-result v11

    iget-object v12, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->m:Lk/l;

    invoke-virtual {v12, p1}, Lk/j;->c(Landroid/graphics/Bitmap;)V

    iget-object v12, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->m:Lk/l;

    invoke-virtual {v12, v3}, Lk/l;->b(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move v2, v7

    move v4, v8

    move v5, v9

    move v6, v10

    move v7, v11

    :goto_1
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->k:Lk/i;

    iget p1, p1, Lk/i;->d:I

    if-le v2, p1, :cond_4

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->p:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/b;->H:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/c;->b(Lcom/zjx/jyandroid/Extensions/pubg/c$l;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->k:Lk/i;

    iget v2, p1, Lk/i;->d:I

    :cond_4
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->k:Lk/i;

    iget p1, p1, Lk/i;->d:I

    if-le v4, p1, :cond_5

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->p:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/b;->I:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/c;->b(Lcom/zjx/jyandroid/Extensions/pubg/c$l;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->k:Lk/i;

    iget v4, p1, Lk/i;->d:I

    :cond_5
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->l:Lk/h;

    iget p1, p1, Lk/h;->d:I

    if-le v5, p1, :cond_6

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->p:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/b;->H:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/c;->a(Lcom/zjx/jyandroid/Extensions/pubg/c$l;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->l:Lk/h;

    iget v5, p1, Lk/h;->d:I

    :cond_6
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->l:Lk/h;

    iget p1, p1, Lk/h;->d:I

    if-le v6, p1, :cond_7

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->p:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/b;->I:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/c;->a(Lcom/zjx/jyandroid/Extensions/pubg/c$l;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->l:Lk/h;

    iget v6, p1, Lk/h;->d:I

    :cond_7
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->m:Lk/l;

    iget p1, p1, Lk/l;->d:I

    if-le v7, p1, :cond_8

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->p:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/b;->H:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/c;->c(Lcom/zjx/jyandroid/Extensions/pubg/c$l;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->m:Lk/l;

    iget v7, p1, Lk/l;->d:I

    :cond_8
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->m:Lk/l;

    iget p1, p1, Lk/l;->d:I

    if-le v3, p1, :cond_9

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->p:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/b;->I:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/c;->c(Lcom/zjx/jyandroid/Extensions/pubg/c$l;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->m:Lk/l;

    iget v3, p1, Lk/l;->d:I

    :cond_9
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->k:Lk/i;

    iget p1, p1, Lk/i;->c:I

    const/4 v0, 0x0

    const/4 v8, 0x1

    if-eq v2, p1, :cond_a

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c$d;->values()[Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    move-result-object p1

    aget-object p1, p1, v2

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->p:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/pubg/b;->H:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    iget-object v9, v2, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->c:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    if-eq p1, v9, :cond_a

    iput-object p1, v2, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->c:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    sget-object p1, Lcom/zjx/jyandroid/Extensions/pubg/c$k;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$k;

    if-ne v1, p1, :cond_a

    move p1, v8

    goto :goto_2

    :cond_a
    move p1, v0

    :goto_2
    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->l:Lk/h;

    iget v2, v2, Lk/h;->c:I

    if-eq v5, v2, :cond_b

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c$c;->values()[Lcom/zjx/jyandroid/Extensions/pubg/c$c;

    move-result-object v2

    aget-object v2, v2, v5

    iget-object v5, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->p:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v5, v5, Lcom/zjx/jyandroid/Extensions/pubg/b;->H:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    iget-object v9, v5, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->d:Lcom/zjx/jyandroid/Extensions/pubg/c$c;

    if-eq v2, v9, :cond_b

    iput-object v2, v5, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->d:Lcom/zjx/jyandroid/Extensions/pubg/c$c;

    sget-object v2, Lcom/zjx/jyandroid/Extensions/pubg/c$k;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$k;

    if-ne v1, v2, :cond_b

    move p1, v8

    :cond_b
    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->m:Lk/l;

    iget v2, v2, Lk/l;->c:I

    if-eq v7, v2, :cond_c

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c$h;->values()[Lcom/zjx/jyandroid/Extensions/pubg/c$h;

    move-result-object v2

    aget-object v2, v2, v7

    iget-object v5, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->p:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v5, v5, Lcom/zjx/jyandroid/Extensions/pubg/b;->H:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    iget-object v7, v5, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->e:Lcom/zjx/jyandroid/Extensions/pubg/c$h;

    if-eq v2, v7, :cond_c

    iput-object v2, v5, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->e:Lcom/zjx/jyandroid/Extensions/pubg/c$h;

    sget-object v2, Lcom/zjx/jyandroid/Extensions/pubg/c$k;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$k;

    if-ne v1, v2, :cond_c

    move p1, v8

    :cond_c
    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->p:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/b;->a(Lcom/zjx/jyandroid/Extensions/pubg/b;)Lcom/zjx/jyandroid/Extensions/pubg/b$i;

    move-result-object p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->p:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/b;->b(Lcom/zjx/jyandroid/Extensions/pubg/b;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->p:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/b;->a(Lcom/zjx/jyandroid/Extensions/pubg/b;)Lcom/zjx/jyandroid/Extensions/pubg/b$i;

    move-result-object p1

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->p:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/pubg/b;->H:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    iget-object v5, v2, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->c:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    iget-object v7, v2, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->d:Lcom/zjx/jyandroid/Extensions/pubg/c$c;

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->e:Lcom/zjx/jyandroid/Extensions/pubg/c$h;

    invoke-interface {p1, v5, v7, v2}, Lcom/zjx/jyandroid/Extensions/pubg/b$i;->a(Lcom/zjx/jyandroid/Extensions/pubg/c$d;Lcom/zjx/jyandroid/Extensions/pubg/c$c;Lcom/zjx/jyandroid/Extensions/pubg/c$h;)V

    :cond_d
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->k:Lk/i;

    iget p1, p1, Lk/i;->c:I

    if-eq v4, p1, :cond_e

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c$d;->values()[Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    move-result-object p1

    aget-object p1, p1, v4

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->p:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/pubg/b;->I:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    iget-object v4, v2, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->c:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    if-eq p1, v4, :cond_e

    iput-object p1, v2, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->c:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    sget-object p1, Lcom/zjx/jyandroid/Extensions/pubg/c$k;->c:Lcom/zjx/jyandroid/Extensions/pubg/c$k;

    if-ne v1, p1, :cond_e

    move v0, v8

    :cond_e
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->l:Lk/h;

    iget p1, p1, Lk/h;->c:I

    if-eq v6, p1, :cond_f

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c$c;->values()[Lcom/zjx/jyandroid/Extensions/pubg/c$c;

    move-result-object p1

    aget-object p1, p1, v6

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->p:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/pubg/b;->I:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    iget-object v4, v2, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->d:Lcom/zjx/jyandroid/Extensions/pubg/c$c;

    if-eq p1, v4, :cond_f

    iput-object p1, v2, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->d:Lcom/zjx/jyandroid/Extensions/pubg/c$c;

    sget-object p1, Lcom/zjx/jyandroid/Extensions/pubg/c$k;->c:Lcom/zjx/jyandroid/Extensions/pubg/c$k;

    if-ne v1, p1, :cond_f

    move v0, v8

    :cond_f
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->m:Lk/l;

    iget p1, p1, Lk/l;->c:I

    if-eq v3, p1, :cond_10

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c$h;->values()[Lcom/zjx/jyandroid/Extensions/pubg/c$h;

    move-result-object p1

    aget-object p1, p1, v3

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->p:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/pubg/b;->I:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    iget-object v3, v2, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->e:Lcom/zjx/jyandroid/Extensions/pubg/c$h;

    if-eq p1, v3, :cond_10

    iput-object p1, v2, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->e:Lcom/zjx/jyandroid/Extensions/pubg/c$h;

    sget-object p1, Lcom/zjx/jyandroid/Extensions/pubg/c$k;->c:Lcom/zjx/jyandroid/Extensions/pubg/c$k;

    if-ne v1, p1, :cond_10

    goto :goto_3

    :cond_10
    move v8, v0

    :goto_3
    if-eqz v8, :cond_11

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->p:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/b;->a(Lcom/zjx/jyandroid/Extensions/pubg/b;)Lcom/zjx/jyandroid/Extensions/pubg/b$i;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->p:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/b;->b(Lcom/zjx/jyandroid/Extensions/pubg/b;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->p:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/b;->a(Lcom/zjx/jyandroid/Extensions/pubg/b;)Lcom/zjx/jyandroid/Extensions/pubg/b$i;

    move-result-object p1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->p:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/b;->I:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->c:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    iget-object v2, v0, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->d:Lcom/zjx/jyandroid/Extensions/pubg/c$c;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->e:Lcom/zjx/jyandroid/Extensions/pubg/c$h;

    invoke-interface {p1, v1, v2, v0}, Lcom/zjx/jyandroid/Extensions/pubg/b$i;->a(Lcom/zjx/jyandroid/Extensions/pubg/c$d;Lcom/zjx/jyandroid/Extensions/pubg/c$c;Lcom/zjx/jyandroid/Extensions/pubg/c$h;)V

    :cond_11
    return-void
.end method

.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->b:Landroid/graphics/Rect;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->c:Landroid/graphics/Rect;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->d:Landroid/graphics/Rect;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->e:Landroid/graphics/Rect;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->f:Landroid/graphics/Rect;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->g:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_4

    :try_start_0
    iget v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->n:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->p:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/b;->a(Lcom/zjx/jyandroid/Extensions/pubg/b;)Lcom/zjx/jyandroid/Extensions/pubg/b$i;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->j()Landroid/util/Size;

    move-result-object v0

    :try_start_1
    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->p:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/pubg/b;->a:Lcom/zjx/jyandroid/ScreenCaptureManager;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    const/4 v4, 0x5

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0xa

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v7

    add-int/lit8 v7, v7, -0x7

    invoke-direct {v2, v3, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/ScreenCaptureManager;->getScreenshot(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->p:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/pubg/b;->a:Lcom/zjx/jyandroid/ScreenCaptureManager;

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/16 v6, 0x9

    invoke-direct {v3, v5, v4, v0, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/ScreenCaptureManager;->getScreenshot(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$d;->b(Landroid/graphics/Bitmap;)I

    move-result v2

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b$d;->e(I)S

    move-result v3

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b$d;->d(I)S

    move-result v2

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$d;->b(Landroid/graphics/Bitmap;)I

    move-result v4

    invoke-static {v4}, Lcom/zjx/jyandroid/base/util/b$d;->e(I)S

    move-result v5

    invoke-static {v4}, Lcom/zjx/jyandroid/base/util/b$d;->d(I)S

    move-result v4

    iget-boolean v6, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->j:Z

    if-eqz v6, :cond_2

    const/16 v6, 0x3c

    if-ge v3, v6, :cond_3

    if-ge v2, v6, :cond_3

    sub-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0xd

    if-ge v2, v3, :cond_3

    if-ge v5, v6, :cond_3

    if-ge v4, v6, :cond_3

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v3, :cond_3

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->p:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/pubg/b;->a:Lcom/zjx/jyandroid/ScreenCaptureManager;

    invoke-virtual {v2}, Lcom/zjx/jyandroid/ScreenCaptureManager;->getScreenshot()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->b(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->p:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/pubg/b;->a:Lcom/zjx/jyandroid/ScreenCaptureManager;

    invoke-virtual {v2}, Lcom/zjx/jyandroid/ScreenCaptureManager;->getScreenshot()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->b(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly/c;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    :cond_4
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->k:Lk/i;

    invoke-virtual {v0}, Lk/i;->e()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->l:Lk/h;

    invoke-virtual {v0}, Lk/h;->e()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$d;->m:Lk/l;

    invoke-virtual {v0}, Lk/l;->e()V

    const-string v0, "accessory tracker exit"

    invoke-static {v0}, Ly/c;->a(Ljava/lang/String;)V

    :cond_5
    :goto_3
    return-void
.end method
