.class public LV5/d;
.super LV5/a;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:LD6/e;

.field public c:Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LV5/d;->a:Z

    new-instance v0, LD6/e;

    invoke-direct {v0}, LD6/e;-><init>()V

    iput-object v0, p0, LV5/d;->b:LD6/e;

    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0x64

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, LV5/d;->c:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    iget-boolean v0, p0, LV5/d;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LV5/d;->b:LD6/e;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, LD6/e;->d(II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, LV5/d;->a:Z

    :cond_0
    return-void
.end method

.method public d(II)V
    .locals 1

    iget-boolean v0, p0, LV5/d;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LV5/d;->b:LD6/e;

    invoke-virtual {v0, p1, p2}, LD6/e;->e(II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, LV5/d;->a:Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, LV5/d;->b:LD6/e;

    const/4 v0, -0x1

    invoke-virtual {p2, v0, p1}, LD6/e;->d(II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, LV5/d;->a:Z

    :goto_0
    return-void
.end method

.method public e()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, LV5/d;->c:Landroid/graphics/Point;

    return-object v0
.end method

.method public f(Landroid/graphics/Point;)V
    .locals 1

    iput-object p1, p0, LV5/d;->c:Landroid/graphics/Point;

    iget-object v0, p0, LV5/d;->b:LD6/e;

    iput-object p1, v0, LW5/c;->c:Landroid/graphics/Point;

    return-void
.end method
