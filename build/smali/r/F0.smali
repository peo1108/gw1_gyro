.class public Lr/F0;
.super Lr/c;
.source "SourceFile"

# interfaces
.implements Ls/a;


# static fields
.field public static final g:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

.field public b:I

.field public c:Z

.field public d:Z

.field public e:I

.field public f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/Range;

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x7d0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Lr/F0;->g:Landroid/util/Range;

    new-instance v0, Landroid/util/Range;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xbb8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Lr/F0;->h:Landroid/util/Range;

    new-instance v0, Landroid/util/Range;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Lr/F0;->i:Landroid/util/Range;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lr/c;-><init>()V

    new-instance v0, Lr/e;

    invoke-direct {v0}, Lr/e;-><init>()V

    iput-object v0, p0, Lr/F0;->a:Lr/e;

    const/16 v0, 0x5dc

    iput v0, p0, Lr/F0;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr/F0;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr/F0;->d:Z

    const/16 v1, 0x50

    iput v1, p0, Lr/F0;->e:I

    iput-boolean v0, p0, Lr/F0;->f:Z

    return-void
.end method

.method public static synthetic g(Lr/F0;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lr/F0;->t(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic h(Lr/F0;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lr/F0;->u(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic i(Lr/F0;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lr/F0;->s(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic j(Lr/F0;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lr/F0;->r(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic k(Lr/F0;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lr/F0;->q(Ljava/util/Map;)V

    return-void
.end method

.method private synthetic q(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "sensitivity"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lr/F0;->z(I)V

    return-void
.end method

.method private synthetic r(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "resetFinger"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lr/F0;->x(Z)V

    return-void
.end method

.method private synthetic s(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "scrollFromPreviousPosition"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lr/F0;->y(Z)V

    return-void
.end method

.method private synthetic t(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "autoReleaseInterval"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lr/F0;->v(I)V

    return-void
.end method

.method private synthetic u(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "invertYAxis"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lr/F0;->w(Z)V

    return-void
.end method


# virtual methods
.method public b()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lr/F0;->a:Lr/e;

    invoke-virtual {v0}, Lr/e;->b()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V
    .locals 1

    iget-object v0, p0, Lr/F0;->a:Lr/e;

    invoke-virtual {v0, p1}, Lr/e;->d(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    check-cast p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->b()Z

    move-result v0

    iput-boolean v0, p0, Lr/F0;->c:Z

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->c()Z

    move-result v0

    iput-boolean v0, p0, Lr/F0;->d:Z

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->getSensitivity()I

    move-result v0

    iput v0, p0, Lr/F0;->b:I

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->getAutoReleaseInterval()I

    move-result v0

    iput v0, p0, Lr/F0;->e:I

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->a()Z

    move-result p1

    iput-boolean p1, p0, Lr/F0;->f:Z

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

    iget-object v0, p0, Lr/F0;->a:Lr/e;

    invoke-virtual {v0, p1}, Lr/e;->e(Ljava/util/Map;)V

    const-string v0, "data"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    new-instance v0, Lr/A0;

    invoke-direct {v0, p0, p1}, Lr/A0;-><init>(Lr/F0;Ljava/util/Map;)V

    invoke-static {v0}, Lr/c;->c(Lr/c$a;)V

    new-instance v0, Lr/B0;

    invoke-direct {v0, p0, p1}, Lr/B0;-><init>(Lr/F0;Ljava/util/Map;)V

    invoke-static {v0}, Lr/c;->c(Lr/c$a;)V

    new-instance v0, Lr/C0;

    invoke-direct {v0, p0, p1}, Lr/C0;-><init>(Lr/F0;Ljava/util/Map;)V

    invoke-static {v0}, Lr/c;->c(Lr/c$a;)V

    new-instance v0, Lr/D0;

    invoke-direct {v0, p0, p1}, Lr/D0;-><init>(Lr/F0;Ljava/util/Map;)V

    invoke-static {v0}, Lr/c;->c(Lr/c$a;)V

    new-instance v0, Lr/E0;

    invoke-direct {v0, p0, p1}, Lr/E0;-><init>(Lr/F0;Ljava/util/Map;)V

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

    iget-object v0, p0, Lr/F0;->a:Lr/e;

    invoke-virtual {v0}, Lr/e;->f()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->MOUSE_SCROLL:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

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

    iget-boolean v2, p0, Lr/F0;->c:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "resetFinger"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, p0, Lr/F0;->d:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "scrollFromPreviousPosition"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lr/F0;->b:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "sensitivity"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lr/F0;->e:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "autoReleaseInterval"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, p0, Lr/F0;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "invertYAxis"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lr/F0;->e:I

    return v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lr/F0;->b:I

    return v0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lr/F0;->f:Z

    return v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lr/F0;->c:Z

    return v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lr/F0;->d:Z

    return v0
.end method

.method public v(I)V
    .locals 0

    iput p1, p0, Lr/F0;->e:I

    return-void
.end method

.method public w(Z)V
    .locals 0

    iput-boolean p1, p0, Lr/F0;->f:Z

    return-void
.end method

.method public x(Z)V
    .locals 0

    iput-boolean p1, p0, Lr/F0;->c:Z

    return-void
.end method

.method public y(Z)V
    .locals 0

    iput-boolean p1, p0, Lr/F0;->d:Z

    return-void
.end method

.method public z(I)V
    .locals 0

    iput p1, p0, Lr/F0;->b:I

    return-void
.end method
