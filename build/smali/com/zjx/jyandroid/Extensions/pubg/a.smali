.class public Lcom/zjx/jyandroid/Extensions/pubg/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;
.implements Lcom/zjx/jyandroid/base/Interfaces/MoveEventHandling;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/Extensions/pubg/a$a;
    }
.end annotation


# static fields
.field public static t:Lcom/zjx/jyandroid/TouchManager;


# instance fields
.field public a:Landroid/graphics/Rect;

.field public b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/graphics/Rect;

.field public d:Landroid/graphics/Rect;

.field public e:Landroid/graphics/Rect;

.field public f:Landroid/graphics/Rect;

.field public g:Landroid/graphics/Rect;

.field public h:Landroid/graphics/Rect;

.field public i:Landroid/graphics/Rect;

.field public j:Landroid/graphics/Rect;

.field public k:Z

.field public l:I

.field public m:I

.field public n:Lcom/zjx/jyandroid/base/FloatPoint;

.field public o:Lcom/zjx/jyandroid/base/FloatPoint;

.field public p:Z

.field public q:Z

.field public r:I

.field public s:[Lcom/zjx/jyandroid/Extensions/pubg/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/zjx/jyandroid/TouchManager;->f()Lcom/zjx/jyandroid/TouchManager;

    move-result-object v0

    sput-object v0, Lcom/zjx/jyandroid/Extensions/pubg/a;->t:Lcom/zjx/jyandroid/TouchManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->b:Ljava/util/LinkedList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->k:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->l:I

    iput v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->m:I

    new-instance v1, Lcom/zjx/jyandroid/base/FloatPoint;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-direct {v1, v2, v2}, Lcom/zjx/jyandroid/base/FloatPoint;-><init>(FF)V

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->n:Lcom/zjx/jyandroid/base/FloatPoint;

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->p:Z

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->q:Z

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->j()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->r:I

    const/16 v1, 0x14

    new-array v1, v1, [Lcom/zjx/jyandroid/Extensions/pubg/a$a;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->s:[Lcom/zjx/jyandroid/Extensions/pubg/a$a;

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->j()Landroid/util/Size;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-direct {v2, v3, v0, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->a:Landroid/graphics/Rect;

    new-instance v0, Lcom/zjx/jyandroid/base/FloatPoint;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x43480000    # 200.0f

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/base/FloatPoint;-><init>(FF)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->o:Lcom/zjx/jyandroid/base/FloatPoint;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-direct {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;-><init>()V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;->a()Z

    move-result v1

    iput-boolean v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->p:Z

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->q:Z

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->b:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public c(I)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->b:Ljava/util/LinkedList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "components"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/AbstractList;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    :try_start_0
    const-string v1, "type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    new-instance v2, Lr/e;

    invoke-direct {v2}, Lr/e;-><init>()V

    invoke-virtual {v2, v0}, Lr/e;->e(Ljava/util/Map;)V

    invoke-virtual {v2}, Lr/e;->b()Landroid/graphics/Rect;

    move-result-object v0

    const/16 v2, 0xf

    if-ne v1, v2, :cond_2

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->c:Landroid/graphics/Rect;

    goto :goto_0

    :cond_2
    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->d:Landroid/graphics/Rect;

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->e:Landroid/graphics/Rect;

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->f:Landroid/graphics/Rect;

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->g:Landroid/graphics/Rect;

    goto :goto_0

    :cond_6
    if-nez v1, :cond_7

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->h:Landroid/graphics/Rect;

    goto :goto_0

    :cond_7
    const/16 v2, 0x11

    if-ne v1, v2, :cond_8

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->i:Landroid/graphics/Rect;

    goto :goto_0

    :cond_8
    const/16 v2, 0x12

    if-ne v1, v2, :cond_1

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->j:Landroid/graphics/Rect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_9
    return-void
.end method

.method public eventOccurred(Ljava/util/LinkedList;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/zjx/jyandroid/base/InputEvents/InputEvent;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;->getType()Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    move-result-object v4

    sget-object v5, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->TouchEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    if-ne v4, v5, :cond_0

    check-cast v1, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;

    iget v4, v1, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->x:F

    iget v5, v1, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->y:F

    iget v6, v1, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->index:I

    iget-object v7, v1, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->touchType:Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    sget-object v8, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;->move:Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    if-ne v7, v8, :cond_2

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->s:[Lcom/zjx/jyandroid/Extensions/pubg/a$a;

    aget-object v1, v1, v6

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/a$a;->a:Lcom/zjx/jyandroid/base/FloatPoint;

    iget v3, v2, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    iget-object v6, v1, Lcom/zjx/jyandroid/Extensions/pubg/a$a;->b:Lcom/zjx/jyandroid/base/FloatPoint;

    iget v7, v6, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    sub-float v7, v4, v7

    add-float/2addr v3, v7

    iput v3, v2, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    iget v3, v2, Lcom/zjx/jyandroid/base/FloatPoint;->y:F

    iget v7, v6, Lcom/zjx/jyandroid/base/FloatPoint;->y:F

    sub-float v7, v5, v7

    add-float/2addr v3, v7

    iput v3, v2, Lcom/zjx/jyandroid/base/FloatPoint;->y:F

    iput v4, v6, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    iput v5, v6, Lcom/zjx/jyandroid/base/FloatPoint;->y:F

    sget-object v3, Lcom/zjx/jyandroid/Extensions/pubg/a;->t:Lcom/zjx/jyandroid/TouchManager;

    iget v1, v1, Lcom/zjx/jyandroid/Extensions/pubg/a$a;->c:I

    iget v4, v2, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    iget v2, v2, Lcom/zjx/jyandroid/base/FloatPoint;->y:F

    invoke-virtual {v3, v1, v4, v2}, Lcom/zjx/jyandroid/TouchManager;->m(IFF)V

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_2
    sget-object v8, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;->down:Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    const/4 v9, -0x1

    if-ne v7, v8, :cond_15

    new-instance v7, Lcom/zjx/jyandroid/base/FloatPoint;

    invoke-direct {v7, v4, v5}, Lcom/zjx/jyandroid/base/FloatPoint;-><init>(FF)V

    iget-object v8, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->d:Landroid/graphics/Rect;

    invoke-static {v8, v7}, Lcom/zjx/jyandroid/base/util/b;->E(Landroid/graphics/Rect;Lcom/zjx/jyandroid/base/FloatPoint;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->f:Landroid/graphics/Rect;

    invoke-static {v8, v7}, Lcom/zjx/jyandroid/base/util/b;->E(Landroid/graphics/Rect;Lcom/zjx/jyandroid/base/FloatPoint;)Z

    move-result v8

    if-nez v8, :cond_12

    iget-object v8, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->e:Landroid/graphics/Rect;

    invoke-static {v8, v7}, Lcom/zjx/jyandroid/base/util/b;->E(Landroid/graphics/Rect;Lcom/zjx/jyandroid/base/FloatPoint;)Z

    move-result v8

    if-nez v8, :cond_12

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/a;->b()I

    move-result v8

    if-ne v8, v9, :cond_8

    iget-object v8, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->c:Landroid/graphics/Rect;

    invoke-static {v8, v7}, Lcom/zjx/jyandroid/base/util/b;->E(Landroid/graphics/Rect;Lcom/zjx/jyandroid/base/FloatPoint;)Z

    move-result v8

    if-eqz v8, :cond_4

    iput-boolean v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->k:Z

    :goto_1
    move v2, v3

    goto/16 :goto_7

    :cond_4
    iget-object v8, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->g:Landroid/graphics/Rect;

    invoke-static {v8, v7}, Lcom/zjx/jyandroid/base/util/b;->E(Landroid/graphics/Rect;Lcom/zjx/jyandroid/base/FloatPoint;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-boolean v7, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->p:Z

    if-eqz v7, :cond_12

    iput-boolean v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->k:Z

    goto :goto_1

    :cond_5
    iget-object v8, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->i:Landroid/graphics/Rect;

    invoke-static {v8, v7}, Lcom/zjx/jyandroid/base/util/b;->E(Landroid/graphics/Rect;Lcom/zjx/jyandroid/base/FloatPoint;)Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->j:Landroid/graphics/Rect;

    invoke-static {v8, v7}, Lcom/zjx/jyandroid/base/util/b;->E(Landroid/graphics/Rect;Lcom/zjx/jyandroid/base/FloatPoint;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_2

    :cond_6
    iget-object v8, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->a:Landroid/graphics/Rect;

    invoke-static {v8, v7}, Lcom/zjx/jyandroid/base/util/b;->E(Landroid/graphics/Rect;Lcom/zjx/jyandroid/base/FloatPoint;)Z

    move-result v7

    if-eqz v7, :cond_12

    iput-boolean v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->k:Z

    goto :goto_1

    :cond_7
    :goto_2
    iget-boolean v7, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->q:Z

    if-eqz v7, :cond_12

    iput-boolean v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->k:Z

    goto :goto_1

    :cond_8
    iget-boolean v8, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->k:Z

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->c:Landroid/graphics/Rect;

    invoke-static {v8, v7}, Lcom/zjx/jyandroid/base/util/b;->E(Landroid/graphics/Rect;Lcom/zjx/jyandroid/base/FloatPoint;)Z

    move-result v8

    if-eqz v8, :cond_9

    :goto_3
    goto :goto_1

    :cond_9
    iget-object v8, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->g:Landroid/graphics/Rect;

    invoke-static {v8, v7}, Lcom/zjx/jyandroid/base/util/b;->E(Landroid/graphics/Rect;Lcom/zjx/jyandroid/base/FloatPoint;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-boolean v7, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->p:Z

    if-eqz v7, :cond_12

    goto :goto_3

    :cond_a
    iget-object v8, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->i:Landroid/graphics/Rect;

    invoke-static {v8, v7}, Lcom/zjx/jyandroid/base/util/b;->E(Landroid/graphics/Rect;Lcom/zjx/jyandroid/base/FloatPoint;)Z

    move-result v8

    if-nez v8, :cond_c

    iget-object v8, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->j:Landroid/graphics/Rect;

    invoke-static {v8, v7}, Lcom/zjx/jyandroid/base/util/b;->E(Landroid/graphics/Rect;Lcom/zjx/jyandroid/base/FloatPoint;)Z

    move-result v8

    if-eqz v8, :cond_b

    goto :goto_4

    :cond_b
    iget-object v8, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->a:Landroid/graphics/Rect;

    invoke-static {v8, v7}, Lcom/zjx/jyandroid/base/util/b;->E(Landroid/graphics/Rect;Lcom/zjx/jyandroid/base/FloatPoint;)Z

    move-result v7

    if-eqz v7, :cond_12

    iput-boolean v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->k:Z

    goto :goto_1

    :cond_c
    :goto_4
    iget-boolean v7, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->q:Z

    if-eqz v7, :cond_12

    goto :goto_3

    :cond_d
    iget-object v8, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->c:Landroid/graphics/Rect;

    invoke-static {v8, v7}, Lcom/zjx/jyandroid/base/util/b;->E(Landroid/graphics/Rect;Lcom/zjx/jyandroid/base/FloatPoint;)Z

    move-result v8

    const/4 v9, 0x2

    if-eqz v8, :cond_e

    :goto_5
    move v2, v9

    goto :goto_7

    :cond_e
    iget-object v8, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->g:Landroid/graphics/Rect;

    invoke-static {v8, v7}, Lcom/zjx/jyandroid/base/util/b;->E(Landroid/graphics/Rect;Lcom/zjx/jyandroid/base/FloatPoint;)Z

    move-result v8

    if-eqz v8, :cond_f

    iget-boolean v7, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->p:Z

    if-eqz v7, :cond_12

    goto :goto_5

    :cond_f
    iget-object v8, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->i:Landroid/graphics/Rect;

    invoke-static {v8, v7}, Lcom/zjx/jyandroid/base/util/b;->E(Landroid/graphics/Rect;Lcom/zjx/jyandroid/base/FloatPoint;)Z

    move-result v8

    if-nez v8, :cond_11

    iget-object v8, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->j:Landroid/graphics/Rect;

    invoke-static {v8, v7}, Lcom/zjx/jyandroid/base/util/b;->E(Landroid/graphics/Rect;Lcom/zjx/jyandroid/base/FloatPoint;)Z

    move-result v8

    if-eqz v8, :cond_10

    goto :goto_6

    :cond_10
    iget-object v8, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->a:Landroid/graphics/Rect;

    invoke-static {v8, v7}, Lcom/zjx/jyandroid/base/util/b;->E(Landroid/graphics/Rect;Lcom/zjx/jyandroid/base/FloatPoint;)Z

    move-result v7

    if-eqz v7, :cond_12

    goto :goto_3

    :cond_11
    :goto_6
    iget-boolean v7, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->q:Z

    if-eqz v7, :cond_12

    goto :goto_5

    :cond_12
    :goto_7
    if-nez v2, :cond_13

    goto/16 :goto_0

    :cond_13
    if-ne v2, v3, :cond_14

    iget v1, v1, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->index:I

    invoke-virtual {p0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/a;->a(I)V

    goto :goto_8

    :cond_14
    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->b:Ljava/util/LinkedList;

    iget v1, v1, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    :goto_8
    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/a;->t:Lcom/zjx/jyandroid/TouchManager;

    invoke-virtual {v1, v4, v5}, Lcom/zjx/jyandroid/TouchManager;->i(FF)I

    move-result v11

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->s:[Lcom/zjx/jyandroid/Extensions/pubg/a$a;

    new-instance v2, Lcom/zjx/jyandroid/Extensions/pubg/a$a;

    new-instance v9, Lcom/zjx/jyandroid/base/FloatPoint;

    invoke-direct {v9, v4, v5}, Lcom/zjx/jyandroid/base/FloatPoint;-><init>(FF)V

    new-instance v10, Lcom/zjx/jyandroid/base/FloatPoint;

    invoke-direct {v10, v4, v5}, Lcom/zjx/jyandroid/base/FloatPoint;-><init>(FF)V

    iget-boolean v12, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->k:Z

    move-object v7, v2

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/zjx/jyandroid/Extensions/pubg/a$a;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/a;Lcom/zjx/jyandroid/base/FloatPoint;Lcom/zjx/jyandroid/base/FloatPoint;IZ)V

    aput-object v2, v1, v6

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    goto/16 :goto_0

    :cond_15
    sget-object v3, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;->up:Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    if-ne v7, v3, :cond_0

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->s:[Lcom/zjx/jyandroid/Extensions/pubg/a$a;

    aget-object v3, v3, v6

    if-nez v3, :cond_16

    goto/16 :goto_0

    :cond_16
    sget-object v4, Lcom/zjx/jyandroid/Extensions/pubg/a;->t:Lcom/zjx/jyandroid/TouchManager;

    iget v5, v3, Lcom/zjx/jyandroid/Extensions/pubg/a$a;->c:I

    iget-object v3, v3, Lcom/zjx/jyandroid/Extensions/pubg/a$a;->a:Lcom/zjx/jyandroid/base/FloatPoint;

    iget v7, v3, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    iget v3, v3, Lcom/zjx/jyandroid/base/FloatPoint;->y:F

    invoke-virtual {v4, v5, v7, v3}, Lcom/zjx/jyandroid/TouchManager;->o(IFF)V

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->s:[Lcom/zjx/jyandroid/Extensions/pubg/a$a;

    const/4 v4, 0x0

    aput-object v4, v3, v6

    iget v1, v1, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->index:I

    invoke-virtual {p0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/a;->c(I)V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/a;->b()I

    move-result v1

    if-eq v1, v9, :cond_17

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->s:[Lcom/zjx/jyandroid/Extensions/pubg/a$a;

    aget-object v1, v2, v1

    iget-boolean v1, v1, Lcom/zjx/jyandroid/Extensions/pubg/a$a;->d:Z

    iput-boolean v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->k:Z

    goto :goto_9

    :cond_17
    iput-boolean v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->k:Z

    :goto_9
    iget v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->m:I

    if-ne v1, v6, :cond_18

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/a;->t:Lcom/zjx/jyandroid/TouchManager;

    iget v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->l:I

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->n:Lcom/zjx/jyandroid/base/FloatPoint;

    iget v4, v3, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    iget v3, v3, Lcom/zjx/jyandroid/base/FloatPoint;->y:F

    invoke-virtual {v1, v2, v4, v3}, Lcom/zjx/jyandroid/TouchManager;->o(IFF)V

    iput v9, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->l:I

    iput v9, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->m:I

    :cond_18
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    goto/16 :goto_0

    :cond_19
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-nez p1, :cond_1a

    return v3

    :cond_1a
    return v2
.end method

.method public moveAbsolute(II)V
    .locals 0

    return-void
.end method

.method public movedRelative(II)V
    .locals 0

    return-void
.end method

.method public movedRelativeRaw(II)V
    .locals 5

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/a;->b()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->s:[Lcom/zjx/jyandroid/Extensions/pubg/a$a;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v3, v2, Lcom/zjx/jyandroid/Extensions/pubg/a$a;->a:Lcom/zjx/jyandroid/base/FloatPoint;

    iget v4, v3, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    int-to-float p1, p1

    add-float/2addr v4, p1

    iput v4, v3, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    iget p1, v3, Lcom/zjx/jyandroid/base/FloatPoint;->y:F

    int-to-float p2, p2

    add-float/2addr p1, p2

    iput p1, v3, Lcom/zjx/jyandroid/base/FloatPoint;->y:F

    sget-object p2, Lcom/zjx/jyandroid/Extensions/pubg/a;->t:Lcom/zjx/jyandroid/TouchManager;

    iget v3, v2, Lcom/zjx/jyandroid/Extensions/pubg/a$a;->c:I

    invoke-virtual {p2, v3, v4, p1}, Lcom/zjx/jyandroid/TouchManager;->m(IFF)V

    iget-object p1, v2, Lcom/zjx/jyandroid/Extensions/pubg/a$a;->a:Lcom/zjx/jyandroid/base/FloatPoint;

    iget p2, p1, Lcom/zjx/jyandroid/base/FloatPoint;->y:F

    iget v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->r:I

    add-int/lit8 v3, v3, -0xa

    int-to-float v3, v3

    cmpl-float v3, p2, v3

    if-gtz v3, :cond_2

    const/high16 v3, 0x41200000    # 10.0f

    cmpg-float v3, p2, v3

    if-gez v3, :cond_5

    :cond_2
    iget-boolean v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->k:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->l:I

    if-eq v3, v1, :cond_3

    goto :goto_0

    :cond_3
    iget v1, v2, Lcom/zjx/jyandroid/Extensions/pubg/a$a;->c:I

    iput v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->l:I

    iput v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->m:I

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->n:Lcom/zjx/jyandroid/base/FloatPoint;

    iget v1, p1, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    iput v1, v0, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    iput p2, v0, Lcom/zjx/jyandroid/base/FloatPoint;->y:F

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/a;->o:Lcom/zjx/jyandroid/base/FloatPoint;

    iget v0, p2, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    iput v0, p1, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    iget p2, p2, Lcom/zjx/jyandroid/base/FloatPoint;->y:F

    iput p2, p1, Lcom/zjx/jyandroid/base/FloatPoint;->y:F

    sget-object p1, Lcom/zjx/jyandroid/Extensions/pubg/a;->t:Lcom/zjx/jyandroid/TouchManager;

    invoke-virtual {p1, v0, p2}, Lcom/zjx/jyandroid/TouchManager;->i(FF)I

    move-result p1

    iput p1, v2, Lcom/zjx/jyandroid/Extensions/pubg/a$a;->c:I

    goto :goto_1

    :cond_4
    :goto_0
    iget-object p2, v2, Lcom/zjx/jyandroid/Extensions/pubg/a$a;->b:Lcom/zjx/jyandroid/base/FloatPoint;

    iget v0, p2, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    iput v0, p1, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    iget p2, p2, Lcom/zjx/jyandroid/base/FloatPoint;->y:F

    iput p2, p1, Lcom/zjx/jyandroid/base/FloatPoint;->y:F

    sget-object p1, Lcom/zjx/jyandroid/Extensions/pubg/a;->t:Lcom/zjx/jyandroid/TouchManager;

    invoke-virtual {p1, v0, p2}, Lcom/zjx/jyandroid/TouchManager;->i(FF)I

    move-result p1

    sget-object p2, Lcom/zjx/jyandroid/Extensions/pubg/a;->t:Lcom/zjx/jyandroid/TouchManager;

    iget v0, v2, Lcom/zjx/jyandroid/Extensions/pubg/a$a;->c:I

    iget-object v1, v2, Lcom/zjx/jyandroid/Extensions/pubg/a$a;->b:Lcom/zjx/jyandroid/base/FloatPoint;

    iget v3, v1, Lcom/zjx/jyandroid/base/FloatPoint;->x:F

    iget v1, v1, Lcom/zjx/jyandroid/base/FloatPoint;->y:F

    invoke-virtual {p2, v0, v3, v1}, Lcom/zjx/jyandroid/TouchManager;->o(IFF)V

    iput p1, v2, Lcom/zjx/jyandroid/Extensions/pubg/a$a;->c:I

    :cond_5
    :goto_1
    return-void
.end method
