.class public LV5/h;
.super LV5/a;
.source "SourceFile"


# instance fields
.field public a:Landroid/graphics/Point;

.field public b:Landroid/graphics/Point;

.field public c:I

.field public d:LD6/i;

.field public e:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(LS6/d$a;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0x64

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, LV5/h;->a:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    const/16 v2, 0xc8

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, LV5/h;->b:Landroid/graphics/Point;

    iput v1, p0, LV5/h;->c:I

    sget-object v0, LN6/h$a;->X:LN6/h$a;

    sget-object v1, LV5/h$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, LN6/h$a;->Y:LN6/h$a;

    goto :goto_0

    :cond_1
    sget-object v0, LN6/h$a;->Z:LN6/h$a;

    :cond_2
    :goto_0
    new-instance p1, LD6/i;

    invoke-direct {p1, v0}, LD6/i;-><init>(LN6/h$a;)V

    iput-object p1, p0, LV5/h;->d:LD6/i;

    iget-object v0, p0, LV5/h;->a:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, LD6/i;->q(Landroid/graphics/Point;)V

    iget-object p1, p0, LV5/h;->d:LD6/i;

    iget-object v0, p0, LV5/h;->b:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, LD6/i;->o(Landroid/graphics/Point;)V

    iget-object p1, p0, LV5/h;->d:LD6/i;

    iget v0, p0, LV5/h;->c:I

    invoke-virtual {p1, v0}, LD6/i;->r(I)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    iget-object v0, p0, LV5/h;->e:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method public d(II)V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, LV5/h;->e:Ljava/lang/Thread;

    iget-object v0, p0, LV5/h;->d:LD6/i;

    invoke-virtual {v0, p1, p2}, LD6/i;->e(II)V

    const/4 p1, 0x0

    iput-object p1, p0, LV5/h;->e:Ljava/lang/Thread;

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, LV5/h;->c:I

    return v0
.end method

.method public f()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, LV5/h;->b:Landroid/graphics/Point;

    return-object v0
.end method

.method public g()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, LV5/h;->a:Landroid/graphics/Point;

    return-object v0
.end method

.method public h(I)V
    .locals 1

    const/16 v0, 0x32

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    iget-object v0, p0, LV5/h;->d:LD6/i;

    invoke-virtual {v0, p1}, LD6/i;->r(I)V

    iput p1, p0, LV5/h;->c:I

    return-void
.end method

.method public i(Landroid/graphics/Point;)V
    .locals 1

    iput-object p1, p0, LV5/h;->b:Landroid/graphics/Point;

    iget-object v0, p0, LV5/h;->d:LD6/i;

    invoke-virtual {v0, p1}, LD6/i;->o(Landroid/graphics/Point;)V

    return-void
.end method

.method public j(Landroid/graphics/Point;)V
    .locals 1

    iput-object p1, p0, LV5/h;->a:Landroid/graphics/Point;

    iget-object v0, p0, LV5/h;->d:LD6/i;

    invoke-virtual {v0, p1}, LD6/i;->q(Landroid/graphics/Point;)V

    return-void
.end method
