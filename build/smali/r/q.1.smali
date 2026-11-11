.class public Lr/q;
.super Lr/c;
.source "SourceFile"

# interfaces
.implements Ls/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr/q$b;,
        Lr/q$a;
    }
.end annotation


# instance fields
.field public a:Lr/e;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Lr/q$b;

.field public g:Lr/q$a;

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lr/c;-><init>()V

    new-instance v0, Lr/e;

    invoke-direct {v0}, Lr/e;-><init>()V

    iput-object v0, p0, Lr/q;->a:Lr/e;

    const/4 v0, 0x0

    iput v0, p0, Lr/q;->b:I

    iput v0, p0, Lr/q;->c:I

    const/16 v1, 0xc8

    iput v1, p0, Lr/q;->d:I

    iput v0, p0, Lr/q;->e:I

    sget-object v0, Lr/q$b;->a:Lr/q$b;

    iput-object v0, p0, Lr/q;->f:Lr/q$b;

    sget-object v0, Lr/q$a;->a:Lr/q$a;

    iput-object v0, p0, Lr/q;->g:Lr/q$a;

    const/16 v0, 0x1a

    iput v0, p0, Lr/q;->h:I

    const/16 v0, 0x16

    iput v0, p0, Lr/q;->i:I

    const/4 v0, 0x4

    iput v0, p0, Lr/q;->j:I

    const/4 v0, 0x7

    iput v0, p0, Lr/q;->k:I

    const/4 v0, 0x5

    iput v0, p0, Lr/q;->l:I

    return-void
.end method

.method private synthetic C(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "switchRadiusKeyCode"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lr/q;->R(I)V

    return-void
.end method

.method private synthetic D(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lr/q$a;->values()[Lr/q$a;

    move-result-object v0

    const-string v1, "switchRadiusMode"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Lr/q;->S(Lr/q$a;)V

    return-void
.end method

.method private synthetic E(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "westKeyCode"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lr/q;->W(I)V

    return-void
.end method

.method private synthetic F(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "switchRadiusRatio"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lr/q;->T(I)V

    return-void
.end method

.method private synthetic G(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "zeroRadiusRatio"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lr/q;->X(I)V

    return-void
.end method

.method private synthetic H(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "delayResponseTime"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lr/q;->N(I)V

    return-void
.end method

.method private synthetic I(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lr/q$b;->values()[Lr/q$b;

    move-result-object v0

    const-string v1, "triggerMode"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Lr/q;->V(Lr/q$b;)V

    return-void
.end method

.method private synthetic J(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "totalMoveStep"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lr/q;->U(I)V

    return-void
.end method

.method private synthetic K(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "northKeyCode"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lr/q;->P(I)V

    return-void
.end method

.method private synthetic L(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "southKeyCode"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lr/q;->Q(I)V

    return-void
.end method

.method private synthetic M(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "eastKeyCode"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lr/q;->O(I)V

    return-void
.end method

.method public static synthetic g(Lr/q;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lr/q;->M(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic h(Lr/q;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lr/q;->F(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic i(Lr/q;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lr/q;->E(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic j(Lr/q;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lr/q;->D(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic k(Lr/q;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lr/q;->J(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic l(Lr/q;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lr/q;->G(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic m(Lr/q;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lr/q;->K(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic n(Lr/q;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lr/q;->L(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic o(Lr/q;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lr/q;->H(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic p(Lr/q;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lr/q;->C(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic q(Lr/q;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lr/q;->I(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public A()I
    .locals 1

    iget v0, p0, Lr/q;->j:I

    return v0
.end method

.method public B()I
    .locals 1

    iget v0, p0, Lr/q;->c:I

    return v0
.end method

.method public N(I)V
    .locals 0

    iput p1, p0, Lr/q;->b:I

    return-void
.end method

.method public O(I)V
    .locals 0

    iput p1, p0, Lr/q;->k:I

    return-void
.end method

.method public P(I)V
    .locals 0

    iput p1, p0, Lr/q;->h:I

    return-void
.end method

.method public Q(I)V
    .locals 0

    iput p1, p0, Lr/q;->i:I

    return-void
.end method

.method public R(I)V
    .locals 0

    iput p1, p0, Lr/q;->e:I

    return-void
.end method

.method public S(Lr/q$a;)V
    .locals 0

    iput-object p1, p0, Lr/q;->g:Lr/q$a;

    return-void
.end method

.method public T(I)V
    .locals 0

    iput p1, p0, Lr/q;->d:I

    return-void
.end method

.method public U(I)V
    .locals 0

    iput p1, p0, Lr/q;->l:I

    return-void
.end method

.method public V(Lr/q$b;)V
    .locals 0

    iput-object p1, p0, Lr/q;->f:Lr/q$b;

    return-void
.end method

.method public W(I)V
    .locals 0

    iput p1, p0, Lr/q;->j:I

    return-void
.end method

.method public X(I)V
    .locals 0

    iput p1, p0, Lr/q;->c:I

    return-void
.end method

.method public b()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lr/q;->a:Lr/e;

    invoke-virtual {v0}, Lr/e;->b()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V
    .locals 1

    iget-object v0, p0, Lr/q;->a:Lr/e;

    invoke-virtual {v0, p1}, Lr/e;->d(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    check-cast p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->getSwitchRadiusKeyCode()I

    move-result v0

    iput v0, p0, Lr/q;->e:I

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->getSwitchRadiusMode()Lr/q$a;

    move-result-object v0

    iput-object v0, p0, Lr/q;->g:Lr/q$a;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->getSwitchRadiusRatio()I

    move-result v0

    iput v0, p0, Lr/q;->d:I

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->getZeroRadiusRatio()I

    move-result v0

    iput v0, p0, Lr/q;->c:I

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->getDelayResponseTime()I

    move-result v0

    iput v0, p0, Lr/q;->b:I

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->getTriggerMode()Lr/q$b;

    move-result-object v0

    iput-object v0, p0, Lr/q;->f:Lr/q$b;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->getNorthKeyCode()I

    move-result v0

    iput v0, p0, Lr/q;->h:I

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->getSouthKeyCode()I

    move-result v0

    iput v0, p0, Lr/q;->i:I

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->getWestKeyCode()I

    move-result v0

    iput v0, p0, Lr/q;->j:I

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->getEastKeyCode()I

    move-result v0

    iput v0, p0, Lr/q;->k:I

    iget p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->r:I

    iput p1, p0, Lr/q;->l:I

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

    iget-object v0, p0, Lr/q;->a:Lr/e;

    invoke-virtual {v0, p1}, Lr/e;->e(Ljava/util/Map;)V

    const-string v0, "data"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    new-instance v0, Lr/f;

    invoke-direct {v0, p0, p1}, Lr/f;-><init>(Lr/q;Ljava/util/Map;)V

    invoke-static {v0}, Lr/c;->c(Lr/c$a;)V

    new-instance v0, Lr/i;

    invoke-direct {v0, p0, p1}, Lr/i;-><init>(Lr/q;Ljava/util/Map;)V

    invoke-static {v0}, Lr/c;->c(Lr/c$a;)V

    new-instance v0, Lr/j;

    invoke-direct {v0, p0, p1}, Lr/j;-><init>(Lr/q;Ljava/util/Map;)V

    invoke-static {v0}, Lr/c;->c(Lr/c$a;)V

    new-instance v0, Lr/k;

    invoke-direct {v0, p0, p1}, Lr/k;-><init>(Lr/q;Ljava/util/Map;)V

    invoke-static {v0}, Lr/c;->c(Lr/c$a;)V

    new-instance v0, Lr/l;

    invoke-direct {v0, p0, p1}, Lr/l;-><init>(Lr/q;Ljava/util/Map;)V

    invoke-static {v0}, Lr/c;->c(Lr/c$a;)V

    new-instance v0, Lr/m;

    invoke-direct {v0, p0, p1}, Lr/m;-><init>(Lr/q;Ljava/util/Map;)V

    invoke-static {v0}, Lr/c;->c(Lr/c$a;)V

    new-instance v0, Lr/n;

    invoke-direct {v0, p0, p1}, Lr/n;-><init>(Lr/q;Ljava/util/Map;)V

    invoke-static {v0}, Lr/c;->c(Lr/c$a;)V

    new-instance v0, Lr/o;

    invoke-direct {v0, p0, p1}, Lr/o;-><init>(Lr/q;Ljava/util/Map;)V

    invoke-static {v0}, Lr/c;->c(Lr/c$a;)V

    new-instance v0, Lr/p;

    invoke-direct {v0, p0, p1}, Lr/p;-><init>(Lr/q;Ljava/util/Map;)V

    invoke-static {v0}, Lr/c;->c(Lr/c$a;)V

    new-instance v0, Lr/g;

    invoke-direct {v0, p0, p1}, Lr/g;-><init>(Lr/q;Ljava/util/Map;)V

    invoke-static {v0}, Lr/c;->c(Lr/c$a;)V

    new-instance v0, Lr/h;

    invoke-direct {v0, p0, p1}, Lr/h;-><init>(Lr/q;Ljava/util/Map;)V

    invoke-static {v0}, Lr/c;->c(Lr/c$a;)V

    return-void
.end method

.method public f()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr/q;->a:Lr/e;

    invoke-virtual {v0}, Lr/e;->f()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->JOYSTICK:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "type"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "data"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lr/q;->e:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "switchRadiusKeyCode"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    iget-object v3, p0, Lr/q;->g:Lr/q$a;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "switchRadiusMode"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lr/q;->d:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "switchRadiusRatio"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lr/q;->c:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "zeroRadiusRatio"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lr/q;->b:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "delayResponseTime"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    iget-object v3, p0, Lr/q;->f:Lr/q$b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "triggerMode"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lr/q;->h:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "northKeyCode"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lr/q;->i:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "southKeyCode"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lr/q;->j:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "westKeyCode"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lr/q;->k:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "eastKeyCode"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lr/q;->l:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "totalMoveStep"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public r()I
    .locals 1

    iget v0, p0, Lr/q;->b:I

    return v0
.end method

.method public s()I
    .locals 1

    iget v0, p0, Lr/q;->k:I

    return v0
.end method

.method public t()I
    .locals 1

    iget v0, p0, Lr/q;->h:I

    return v0
.end method

.method public u()I
    .locals 1

    iget v0, p0, Lr/q;->i:I

    return v0
.end method

.method public v()I
    .locals 1

    iget v0, p0, Lr/q;->e:I

    return v0
.end method

.method public w()Lr/q$a;
    .locals 1

    iget-object v0, p0, Lr/q;->g:Lr/q$a;

    return-object v0
.end method

.method public x()I
    .locals 1

    iget v0, p0, Lr/q;->d:I

    return v0
.end method

.method public y()I
    .locals 1

    iget v0, p0, Lr/q;->l:I

    return v0
.end method

.method public z()Lr/q$b;
    .locals 1

    iget-object v0, p0, Lr/q;->f:Lr/q$b;

    return-object v0
.end method
