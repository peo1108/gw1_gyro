.class public Lr/L0;
.super Lr/c;
.source "SourceFile"

# interfaces
.implements Ls/a;
.implements Ls/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr/L0$a;
    }
.end annotation


# static fields
.field public static final h:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lr/e;

.field public b:Lr/t;

.field public c:Lr/L0$a;

.field public d:I

.field public e:Z

.field public f:I

.field public g:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/Range;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Lr/L0;->h:Landroid/util/Range;

    new-instance v0, Landroid/util/Range;

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x7d0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Lr/L0;->i:Landroid/util/Range;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lr/c;-><init>()V

    new-instance v0, Lr/e;

    invoke-direct {v0}, Lr/e;-><init>()V

    iput-object v0, p0, Lr/L0;->a:Lr/e;

    new-instance v0, Lr/t;

    invoke-direct {v0}, Lr/t;-><init>()V

    iput-object v0, p0, Lr/L0;->b:Lr/t;

    sget-object v0, Lr/L0$a;->a:Lr/L0$a;

    iput-object v0, p0, Lr/L0;->c:Lr/L0$a;

    const/4 v0, 0x0

    iput v0, p0, Lr/L0;->d:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr/L0;->e:Z

    const/16 v0, 0x96

    iput v0, p0, Lr/L0;->f:I

    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0x12c

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lr/L0;->g:Landroid/graphics/Point;

    return-void
.end method

.method public static synthetic g(Lr/L0;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lr/L0;->s(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic h(Lr/L0;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lr/L0;->u(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic i(Lr/L0;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lr/L0;->t(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic j(Lr/L0;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lr/L0;->q(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic k(Lr/L0;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lr/L0;->r(Ljava/util/Map;)V

    return-void
.end method

.method private synthetic q(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lr/L0$a;->values()[Lr/L0$a;

    move-result-object v0

    const-string v1, "type"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Lr/L0;->A(Lr/L0$a;)V

    return-void
.end method

.method private synthetic r(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "triggerLatency"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lr/L0;->z(I)V

    return-void
.end method

.method private synthetic s(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/graphics/Point;

    const-string v1, "endPositionX"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const-string v2, "endPositionY"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v0}, Lr/L0;->v(Landroid/graphics/Point;)V

    return-void
.end method

.method private synthetic t(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "mouseModeHorizontalSwipe"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lr/L0;->x(Z)V

    return-void
.end method

.method private synthetic u(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "swipeDuration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lr/L0;->y(I)V

    return-void
.end method


# virtual methods
.method public A(Lr/L0$a;)V
    .locals 0

    iput-object p1, p0, Lr/L0;->c:Lr/L0$a;

    return-void
.end method

.method public a()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr/L0;->b:Lr/t;

    iget-object v0, v0, Lr/t;->a:Ljava/util/LinkedList;

    return-object v0
.end method

.method public b()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lr/L0;->a:Lr/e;

    invoke-virtual {v0}, Lr/e;->b()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;

    iget-object v1, p0, Lr/L0;->a:Lr/e;

    invoke-virtual {v1, p1}, Lr/e;->d(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    iget-object v1, p0, Lr/L0;->b:Lr/t;

    invoke-virtual {v1, p1}, Lr/t;->d(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->getType()Lr/L0$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr/L0;->A(Lr/L0$a;)V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->getTriggerLatency()I

    move-result p1

    invoke-virtual {p0, p1}, Lr/L0;->z(I)V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->getEndPoint()Landroid/graphics/Point;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr/L0;->v(Landroid/graphics/Point;)V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->a()Z

    move-result p1

    invoke-virtual {p0, p1}, Lr/L0;->x(Z)V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->getSwipeDuration()I

    move-result p1

    invoke-virtual {p0, p1}, Lr/L0;->y(I)V

    return-void
.end method

.method public e(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lr/L0;->a:Lr/e;

    invoke-virtual {v0, p1}, Lr/e;->e(Ljava/util/Map;)V

    const-string v0, "data"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iget-object v0, p0, Lr/L0;->b:Lr/t;

    invoke-virtual {v0, p1}, Lr/t;->e(Ljava/util/Map;)V

    new-instance v0, Lr/G0;

    invoke-direct {v0, p0, p1}, Lr/G0;-><init>(Lr/L0;Ljava/util/Map;)V

    invoke-static {v0}, Lr/c;->c(Lr/c$a;)V

    new-instance v0, Lr/H0;

    invoke-direct {v0, p0, p1}, Lr/H0;-><init>(Lr/L0;Ljava/util/Map;)V

    invoke-static {v0}, Lr/c;->c(Lr/c$a;)V

    new-instance v0, Lr/I0;

    invoke-direct {v0, p0, p1}, Lr/I0;-><init>(Lr/L0;Ljava/util/Map;)V

    invoke-static {v0}, Lr/c;->c(Lr/c$a;)V

    new-instance v0, Lr/J0;

    invoke-direct {v0, p0, p1}, Lr/J0;-><init>(Lr/L0;Ljava/util/Map;)V

    invoke-static {v0}, Lr/c;->c(Lr/c$a;)V

    new-instance v0, Lr/K0;

    invoke-direct {v0, p0, p1}, Lr/K0;-><init>(Lr/L0;Ljava/util/Map;)V

    invoke-static {v0}, Lr/c;->c(Lr/c$a;)V

    return-void
.end method

.method public f()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr/L0;->a:Lr/e;

    invoke-virtual {v0}, Lr/e;->f()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/lang/Integer;

    sget-object v3, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->SWIPE_TOUCH_POINT:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "type"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "data"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lr/L0;->b:Lr/t;

    invoke-virtual {v2}, Lr/t;->f()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    new-instance v2, Ljava/lang/Integer;

    iget-object v4, p0, Lr/L0;->c:Lr/L0$a;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lr/L0;->d:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "triggerLatency"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    iget-object v3, p0, Lr/L0;->g:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "endPositionX"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    iget-object v3, p0, Lr/L0;->g:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "endPositionY"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, p0, Lr/L0;->e:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "mouseModeHorizontalSwipe"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Lr/L0;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "swipeDuration"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public l()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lr/L0;->g:Landroid/graphics/Point;

    return-object v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lr/L0;->f:I

    return v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lr/L0;->d:I

    return v0
.end method

.method public o()Lr/L0$a;
    .locals 1

    iget-object v0, p0, Lr/L0;->c:Lr/L0$a;

    return-object v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lr/L0;->e:Z

    return v0
.end method

.method public v(Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lr/L0;->g:Landroid/graphics/Point;

    return-void
.end method

.method public w(Ljava/util/LinkedList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lr/L0;->b:Lr/t;

    iput-object p1, v0, Lr/t;->a:Ljava/util/LinkedList;

    return-void
.end method

.method public x(Z)V
    .locals 0

    iput-boolean p1, p0, Lr/L0;->e:Z

    return-void
.end method

.method public y(I)V
    .locals 0

    iput p1, p0, Lr/L0;->f:I

    return-void
.end method

.method public z(I)V
    .locals 0

    iput p1, p0, Lr/L0;->d:I

    return-void
.end method
