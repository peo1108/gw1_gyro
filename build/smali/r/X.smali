.class public Lr/X;
.super Lr/c;
.source "SourceFile"

# interfaces
.implements Ls/a;
.implements Ls/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr/X$a;
    }
.end annotation


# static fields
.field public static final t:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final u:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final v:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final w:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final x:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final y:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final z:Landroid/util/Range;
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

.field public c:Lr/H;

.field public d:Lr/X$a;

.field public e:I

.field public f:I

.field public g:I

.field public h:Z

.field public i:I

.field public j:Z

.field public k:I

.field public l:Z

.field public m:Z

.field public n:I

.field public o:Z

.field public p:I

.field public q:Z

.field public r:Z

.field public s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/util/Range;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x7d0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Lr/X;->t:Landroid/util/Range;

    new-instance v0, Landroid/util/Range;

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Lr/X;->u:Landroid/util/Range;

    new-instance v0, Landroid/util/Range;

    const/16 v3, 0x32

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Lr/X;->v:Landroid/util/Range;

    new-instance v0, Landroid/util/Range;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x4b0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Lr/X;->w:Landroid/util/Range;

    new-instance v0, Landroid/util/Range;

    invoke-direct {v0, v2, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Lr/X;->x:Landroid/util/Range;

    new-instance v0, Landroid/util/Range;

    const/16 v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Lr/X;->y:Landroid/util/Range;

    new-instance v0, Landroid/util/Range;

    invoke-direct {v0, v2, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Lr/X;->z:Landroid/util/Range;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lr/c;-><init>()V

    new-instance v0, Lr/e;

    invoke-direct {v0}, Lr/e;-><init>()V

    iput-object v0, p0, Lr/X;->a:Lr/e;

    new-instance v0, Lr/t;

    invoke-direct {v0}, Lr/t;-><init>()V

    iput-object v0, p0, Lr/X;->b:Lr/t;

    new-instance v0, Lr/H;

    invoke-direct {v0}, Lr/H;-><init>()V

    iput-object v0, p0, Lr/X;->c:Lr/H;

    sget-object v0, Lr/X$a;->a:Lr/X$a;

    iput-object v0, p0, Lr/X;->d:Lr/X$a;

    const/16 v0, 0x32

    iput v0, p0, Lr/X;->e:I

    iput v0, p0, Lr/X;->f:I

    iput v0, p0, Lr/X;->g:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr/X;->h:Z

    const/16 v1, 0xfa

    iput v1, p0, Lr/X;->i:I

    iput-boolean v0, p0, Lr/X;->j:Z

    iput v1, p0, Lr/X;->k:I

    iput-boolean v0, p0, Lr/X;->l:Z

    iput-boolean v0, p0, Lr/X;->m:Z

    const/16 v1, 0x190

    iput v1, p0, Lr/X;->n:I

    iput-boolean v0, p0, Lr/X;->o:Z

    iput v0, p0, Lr/X;->p:I

    iput-boolean v0, p0, Lr/X;->q:Z

    iput-boolean v0, p0, Lr/X;->r:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lr/X;->s:Ljava/util/List;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->j:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr/X;->s:Ljava/util/List;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->k:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr/X;->s:Ljava/util/List;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->m:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr/X;->s:Ljava/util/List;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->r:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr/X;->s:Ljava/util/List;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->B:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr/X;->s:Ljava/util/List;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->Q:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr/X;->s:Ljava/util/List;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->y:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr/X;->s:Ljava/util/List;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->A:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr/X;->s:Ljava/util/List;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->E:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr/X;->s:Ljava/util/List;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->i:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr/X;->s:Ljava/util/List;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->p:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic S(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lr/X$a;->values()[Lr/X$a;

    move-result-object v0

    const-string v1, "type"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Lr/X;->B0(Lr/X$a;)V

    return-void
.end method

.method public static synthetic g(Lr/X;Ljava/util/Map;)V
    .locals 0

    invoke-virtual {p0, p1}, Lr/X;->e0(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic h(Lr/X;Ljava/util/Map;)V
    .locals 0

    invoke-virtual {p0, p1}, Lr/X;->d0(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic i(Lr/X;Ljava/util/Map;)V
    .locals 0

    invoke-virtual {p0, p1}, Lr/X;->Y(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic j(Lr/X;Ljava/util/Map;)V
    .locals 0

    invoke-virtual {p0, p1}, Lr/X;->X(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic k(Lr/X;Ljava/util/Map;)V
    .locals 0

    invoke-virtual {p0, p1}, Lr/X;->c0(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic l(Lr/X;Ljava/util/Map;)V
    .locals 0

    invoke-virtual {p0, p1}, Lr/X;->a0(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic m(Lr/X;Ljava/util/Map;)V
    .locals 0

    invoke-virtual {p0, p1}, Lr/X;->b0(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic n(Lr/X;Ljava/util/Map;)V
    .locals 0

    invoke-virtual {p0, p1}, Lr/X;->W(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic o(Lr/X;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lr/X;->S(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic p(Lr/X;Ljava/util/Map;)V
    .locals 0

    invoke-virtual {p0, p1}, Lr/X;->U(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic q(Lr/X;Ljava/util/Map;)V
    .locals 0

    invoke-virtual {p0, p1}, Lr/X;->T(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic r(Lr/X;Ljava/util/Map;)V
    .locals 0

    invoke-virtual {p0, p1}, Lr/X;->Z(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic s(Lr/X;Ljava/util/Map;)V
    .locals 0

    invoke-virtual {p0, p1}, Lr/X;->V(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic t(Lr/X;Ljava/util/Map;)V
    .locals 0

    invoke-virtual {p0, p1}, Lr/X;->f0(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public A()I
    .locals 1

    iget-object v0, p0, Lr/X;->c:Lr/H;

    iget v0, v0, Lr/H;->c:I

    return v0
.end method

.method public A0(I)V
    .locals 0

    iput p1, p0, Lr/X;->p:I

    return-void
.end method

.method public B()Lr/H$a;
    .locals 1

    iget-object v0, p0, Lr/X;->c:Lr/H;

    iget-object v0, v0, Lr/H;->a:Lr/H$a;

    return-object v0
.end method

.method public B0(Lr/X$a;)V
    .locals 0

    iput-object p1, p0, Lr/X;->d:Lr/X$a;

    return-void
.end method

.method public C()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lr/X;->c:Lr/H;

    iget-object v0, v0, Lr/H;->b:Landroid/graphics/Point;

    return-object v0
.end method

.method public C0(I)V
    .locals 1

    iget-object v0, p0, Lr/X;->a:Lr/e;

    iput p1, v0, Lr/e;->c:I

    return-void
.end method

.method public D()Lr/H$b;
    .locals 1

    iget-object v0, p0, Lr/X;->c:Lr/H;

    invoke-virtual {v0}, Lr/H;->n()Lr/H$b;

    move-result-object v0

    return-object v0
.end method

.method public D0(I)V
    .locals 1

    iget-object v0, p0, Lr/X;->a:Lr/e;

    iput p1, v0, Lr/e;->a:I

    return-void
.end method

.method public E()I
    .locals 1

    iget v0, p0, Lr/X;->k:I

    return v0
.end method

.method public E0(I)V
    .locals 1

    iget-object v0, p0, Lr/X;->a:Lr/e;

    iput p1, v0, Lr/e;->b:I

    return-void
.end method

.method public F()I
    .locals 1

    iget v0, p0, Lr/X;->i:I

    return v0
.end method

.method public G()I
    .locals 1

    iget v0, p0, Lr/X;->p:I

    return v0
.end method

.method public H()Lr/X$a;
    .locals 1

    iget-object v0, p0, Lr/X;->d:Lr/X$a;

    return-object v0
.end method

.method public I()I
    .locals 1

    iget-object v0, p0, Lr/X;->a:Lr/e;

    iget v0, v0, Lr/e;->c:I

    return v0
.end method

.method public J()I
    .locals 1

    iget-object v0, p0, Lr/X;->a:Lr/e;

    iget v0, v0, Lr/e;->a:I

    return v0
.end method

.method public K()I
    .locals 1

    iget-object v0, p0, Lr/X;->a:Lr/e;

    iget v0, v0, Lr/e;->b:I

    return v0
.end method

.method public L()Z
    .locals 1

    iget-boolean v0, p0, Lr/X;->r:Z

    return v0
.end method

.method public M()Z
    .locals 1

    iget-boolean v0, p0, Lr/X;->m:Z

    return v0
.end method

.method public N()Z
    .locals 1

    iget-boolean v0, p0, Lr/X;->o:Z

    return v0
.end method

.method public O()Z
    .locals 1

    iget-boolean v0, p0, Lr/X;->q:Z

    return v0
.end method

.method public P()Z
    .locals 1

    iget-boolean v0, p0, Lr/X;->j:Z

    return v0
.end method

.method public Q()Z
    .locals 1

    iget-boolean v0, p0, Lr/X;->h:Z

    return v0
.end method

.method public R()Z
    .locals 1

    iget-boolean v0, p0, Lr/X;->l:Z

    return v0
.end method

.method public final synthetic T(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "clickDuration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lr/X;->g0(I)V

    return-void
.end method

.method public final synthetic U(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "linkMouseMoveSpeed"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lr/X;->o0(I)V

    const-string v0, "linkMouseMoveResetOnEdge"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lr/X;->n0(Z)V

    return-void
.end method

.method public final synthetic V(Ljava/util/Map;)V
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

    invoke-virtual {p0, p1}, Lr/X;->A0(I)V

    return-void
.end method

.method public final synthetic W(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "crazyTapWeapons"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lr/X;->j0(Ljava/util/List;)V

    const-string v0, "conditionalCrazyTap"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lr/X;->i0(Z)V

    return-void
.end method

.method public final synthetic X(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "performAimingRecognition"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lr/X;->u0(Z)V

    return-void
.end method

.method public final synthetic Y(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "clickInterval"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lr/X;->h0(I)V

    return-void
.end method

.method public final synthetic Z(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "longPressTriggerThreshold"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lr/X;->p0(I)V

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

    iget-object v0, p0, Lr/X;->b:Lr/t;

    iget-object v0, v0, Lr/t;->a:Ljava/util/LinkedList;

    return-object v0
.end method

.method public final synthetic a0(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "resetView"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lr/X;->x0(Z)V

    return-void
.end method

.method public b()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lr/X;->a:Lr/e;

    invoke-virtual {v0}, Lr/e;->b()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b0(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "resetViewLatency"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lr/X;->y0(I)V

    return-void
.end method

.method public final synthetic c0(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "reactivateJoystick"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lr/X;->v0(Z)V

    return-void
.end method

.method public d(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;

    iget-object v1, p0, Lr/X;->a:Lr/e;

    invoke-virtual {v1, p1}, Lr/e;->d(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    iget-object v1, p0, Lr/X;->b:Lr/t;

    invoke-virtual {v1, p1}, Lr/t;->d(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    iget-object v1, p0, Lr/X;->c:Lr/H;

    invoke-virtual {v1, p1}, Lr/H;->d(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    iget-object p1, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->a:Lr/X$a;

    iput-object p1, p0, Lr/X;->d:Lr/X$a;

    iget p1, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->c:I

    iput p1, p0, Lr/X;->e:I

    iget p1, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->d:I

    iput p1, p0, Lr/X;->f:I

    iget p1, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->e:I

    iput p1, p0, Lr/X;->g:I

    iget-boolean p1, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->f:Z

    iput-boolean p1, p0, Lr/X;->h:Z

    iget p1, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->g:I

    iput p1, p0, Lr/X;->i:I

    iget-boolean p1, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->h:Z

    iput-boolean p1, p0, Lr/X;->j:Z

    iget p1, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->i:I

    iput p1, p0, Lr/X;->k:I

    iget-boolean p1, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->j:Z

    iput-boolean p1, p0, Lr/X;->l:Z

    iget-boolean p1, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->k:Z

    iput-boolean p1, p0, Lr/X;->m:Z

    iget p1, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->l:I

    iput p1, p0, Lr/X;->n:I

    iget-boolean p1, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->m:Z

    iput-boolean p1, p0, Lr/X;->o:Z

    iget p1, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->b:I

    iput p1, p0, Lr/X;->p:I

    iget-object p1, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->p:Ljava/util/List;

    iput-object p1, p0, Lr/X;->s:Ljava/util/List;

    iget-boolean p1, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->o:Z

    iput-boolean p1, p0, Lr/X;->r:Z

    iget-boolean p1, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->n:Z

    iput-boolean p1, p0, Lr/X;->q:Z

    return-void
.end method

.method public final synthetic d0(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "reactivateJoystickLatency"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lr/X;->w0(I)V

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

    iget-object v0, p0, Lr/X;->a:Lr/e;

    invoke-virtual {v0, p1}, Lr/e;->e(Ljava/util/Map;)V

    const-string v0, "data"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iget-object v0, p0, Lr/X;->b:Lr/t;

    invoke-virtual {v0, p1}, Lr/t;->e(Ljava/util/Map;)V

    new-instance v0, Lr/I;

    invoke-direct {v0, p0, p1}, Lr/I;-><init>(Lr/X;Ljava/util/Map;)V

    invoke-static {v0}, Lr/c;->c(Lr/c$a;)V

    new-instance v0, Lr/S;

    invoke-direct {v0, p0, p1}, Lr/S;-><init>(Lr/X;Ljava/util/Map;)V

    invoke-static {v0}, Lr/c;->c(Lr/c$a;)V

    new-instance v0, Lr/T;

    invoke-direct {v0, p0, p1}, Lr/T;-><init>(Lr/X;Ljava/util/Map;)V

    invoke-static {v0}, Lr/c;->c(Lr/c$a;)V

    new-instance v0, Lr/U;

    invoke-direct {v0, p0, p1}, Lr/U;-><init>(Lr/X;Ljava/util/Map;)V

    invoke-static {v0}, Lr/c;->c(Lr/c$a;)V

    new-instance v0, Lr/V;

    invoke-direct {v0, p0, p1}, Lr/V;-><init>(Lr/X;Ljava/util/Map;)V

    invoke-static {v0}, Lr/c;->c(Lr/c$a;)V

    new-instance v0, Lr/W;

    invoke-direct {v0, p0, p1}, Lr/W;-><init>(Lr/X;Ljava/util/Map;)V

    invoke-static {v0}, Lr/c;->c(Lr/c$a;)V

    new-instance v0, Lr/J;

    invoke-direct {v0, p0, p1}, Lr/J;-><init>(Lr/X;Ljava/util/Map;)V

    invoke-static {v0}, Lr/c;->c(Lr/c$a;)V

    new-instance v0, Lr/K;

    invoke-direct {v0, p0, p1}, Lr/K;-><init>(Lr/X;Ljava/util/Map;)V

    invoke-static {v0}, Lr/c;->c(Lr/c$a;)V

    new-instance v0, Lr/L;

    invoke-direct {v0, p0, p1}, Lr/L;-><init>(Lr/X;Ljava/util/Map;)V

    invoke-static {v0}, Lr/c;->c(Lr/c$a;)V

    new-instance v0, Lr/M;

    invoke-direct {v0, p0, p1}, Lr/M;-><init>(Lr/X;Ljava/util/Map;)V

    invoke-static {v0}, Lr/c;->c(Lr/c$a;)V

    new-instance v0, Lr/N;

    invoke-direct {v0, p0, p1}, Lr/N;-><init>(Lr/X;Ljava/util/Map;)V

    invoke-static {v0}, Lr/c;->c(Lr/c$a;)V

    new-instance v0, Lr/O;

    invoke-direct {v0, p0, p1}, Lr/O;-><init>(Lr/X;Ljava/util/Map;)V

    invoke-static {v0}, Lr/c;->c(Lr/c$a;)V

    new-instance v0, Lr/P;

    invoke-direct {v0, p0, p1}, Lr/P;-><init>(Lr/X;Ljava/util/Map;)V

    invoke-static {v0}, Lr/c;->c(Lr/c$a;)V

    new-instance v0, Lr/Q;

    invoke-direct {v0, p0, p1}, Lr/Q;-><init>(Lr/X;Ljava/util/Map;)V

    invoke-static {v0}, Lr/c;->c(Lr/c$a;)V

    return-void
.end method

.method public final synthetic e0(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "switchMouseLock"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lr/X;->z0(Z)V

    iget-object v0, p0, Lr/X;->c:Lr/H;

    invoke-virtual {v0, p1}, Lr/H;->e(Ljava/util/Map;)V

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

    iget-object v0, p0, Lr/X;->a:Lr/e;

    invoke-virtual {v0}, Lr/e;->f()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/lang/Integer;

    sget-object v3, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->NORMAL_TOUCH_POINT:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

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

    iget-object v2, p0, Lr/X;->b:Lr/t;

    invoke-virtual {v2}, Lr/t;->f()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    new-instance v2, Ljava/lang/Integer;

    iget-object v4, p0, Lr/X;->d:Lr/X$a;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lr/X;->d:Lr/X$a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    const-string v4, "clickDuration"

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lr/X;->e:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "longPressTriggerThreshold"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lr/X;->f:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lr/X;->g:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "clickInterval"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lr/X;->f:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-boolean v2, p0, Lr/X;->h:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "resetView"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, p0, Lr/X;->h:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lr/X;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "resetViewLatency"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-boolean v2, p0, Lr/X;->j:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "reactivateJoystick"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, p0, Lr/X;->j:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lr/X;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "reactivateJoystickLatency"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-boolean v2, p0, Lr/X;->l:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "switchMouseLock"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, p0, Lr/X;->l:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lr/X;->c:Lr/H;

    invoke-virtual {v2}, Lr/H;->f()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_5
    iget-boolean v2, p0, Lr/X;->m:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "linkMouseMove"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, p0, Lr/X;->m:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lr/X;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "linkMouseMoveSpeed"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, p0, Lr/X;->o:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "linkMouseMoveResetOnEdge"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lr/X;->p:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "triggerLatency"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, p0, Lr/X;->q:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "performAimingRecognition"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, p0, Lr/X;->r:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "conditionalCrazyTap"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, p0, Lr/X;->r:Z

    if-eqz v2, :cond_7

    const-string v2, "crazyTapWeapons"

    iget-object v3, p0, Lr/X;->s:Ljava/util/List;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-object v1
.end method

.method public final synthetic f0(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "linkMouseMove"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lr/X;->m0(Z)V

    return-void
.end method

.method public g0(I)V
    .locals 0

    iput p1, p0, Lr/X;->f:I

    return-void
.end method

.method public h0(I)V
    .locals 0

    iput p1, p0, Lr/X;->g:I

    return-void
.end method

.method public i0(Z)V
    .locals 0

    iput-boolean p1, p0, Lr/X;->r:Z

    return-void
.end method

.method public j0(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lr/X;->s:Ljava/util/List;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "crazy tap weapons cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k0(I)V
    .locals 1

    iget-object v0, p0, Lr/X;->a:Lr/e;

    iput p1, v0, Lr/e;->d:I

    return-void
.end method

.method public l0(Ljava/util/LinkedList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lr/X;->b:Lr/t;

    iput-object p1, v0, Lr/t;->a:Ljava/util/LinkedList;

    return-void
.end method

.method public m0(Z)V
    .locals 0

    iput-boolean p1, p0, Lr/X;->m:Z

    return-void
.end method

.method public n0(Z)V
    .locals 0

    iput-boolean p1, p0, Lr/X;->o:Z

    return-void
.end method

.method public o0(I)V
    .locals 0

    iput p1, p0, Lr/X;->n:I

    return-void
.end method

.method public p0(I)V
    .locals 0

    iput p1, p0, Lr/X;->e:I

    return-void
.end method

.method public q0(I)V
    .locals 1

    iget-object v0, p0, Lr/X;->c:Lr/H;

    iput p1, v0, Lr/H;->c:I

    return-void
.end method

.method public r0(Lr/H$a;)V
    .locals 1

    iget-object v0, p0, Lr/X;->c:Lr/H;

    iput-object p1, v0, Lr/H;->a:Lr/H$a;

    return-void
.end method

.method public s0(Landroid/graphics/Point;)V
    .locals 1

    iget-object v0, p0, Lr/X;->c:Lr/H;

    iput-object p1, v0, Lr/H;->b:Landroid/graphics/Point;

    return-void
.end method

.method public t0(Lr/H$b;)V
    .locals 1

    iget-object v0, p0, Lr/X;->c:Lr/H;

    invoke-virtual {v0, p1}, Lr/H;->v(Lr/H$b;)V

    return-void
.end method

.method public u()I
    .locals 1

    iget v0, p0, Lr/X;->f:I

    return v0
.end method

.method public u0(Z)V
    .locals 0

    iput-boolean p1, p0, Lr/X;->q:Z

    return-void
.end method

.method public v()I
    .locals 1

    iget v0, p0, Lr/X;->g:I

    return v0
.end method

.method public v0(Z)V
    .locals 0

    iput-boolean p1, p0, Lr/X;->j:Z

    return-void
.end method

.method public w()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr/X;->s:Ljava/util/List;

    return-object v0
.end method

.method public w0(I)V
    .locals 0

    iput p1, p0, Lr/X;->k:I

    return-void
.end method

.method public x()I
    .locals 1

    iget-object v0, p0, Lr/X;->a:Lr/e;

    iget v0, v0, Lr/e;->d:I

    return v0
.end method

.method public x0(Z)V
    .locals 0

    iput-boolean p1, p0, Lr/X;->h:Z

    return-void
.end method

.method public y()I
    .locals 1

    iget v0, p0, Lr/X;->n:I

    return v0
.end method

.method public y0(I)V
    .locals 0

    iput p1, p0, Lr/X;->i:I

    return-void
.end method

.method public z()I
    .locals 1

    iget v0, p0, Lr/X;->e:I

    return v0
.end method

.method public z0(Z)V
    .locals 0

    iput-boolean p1, p0, Lr/X;->l:Z

    return-void
.end method
