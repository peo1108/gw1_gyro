.class public Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;
.super Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$f;,
        Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$g;,
        Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$h;,
        Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$d;,
        Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$c;,
        Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$e;
    }
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/widget/TextView;

.field public c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

.field public d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$d;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public l:I

.field public m:I

.field public n:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$f;

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->d:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->e:Ljava/util/LinkedList;

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->f:Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->g:I

    const/4 v1, 0x1

    .line 6
    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->h:I

    const/4 v2, 0x2

    .line 7
    iput v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->i:I

    .line 8
    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->j:I

    .line 9
    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->k:I

    .line 10
    new-instance v1, Lr/w0;

    invoke-direct {v1}, Lr/w0;-><init>()V

    .line 11
    invoke-virtual {v1}, Lr/w0;->y()I

    move-result v2

    iput v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->l:I

    .line 12
    invoke-virtual {v1}, Lr/w0;->M()I

    move-result v2

    iput v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->m:I

    .line 13
    invoke-virtual {v1}, Lr/w0;->I()Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$f;

    move-result-object v2

    iput-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->n:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$f;

    .line 14
    invoke-virtual {v1}, Lr/w0;->z()I

    move-result v2

    iput v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->o:I

    .line 15
    invoke-virtual {v1}, Lr/w0;->N()I

    move-result v2

    iput v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->p:I

    .line 16
    invoke-virtual {v1}, Lr/w0;->L()I

    move-result v2

    iput v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->q:I

    .line 17
    invoke-virtual {v1}, Lr/w0;->K()I

    move-result v2

    iput v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->r:I

    .line 18
    invoke-virtual {v1}, Lr/w0;->O()Z

    move-result v2

    iput-boolean v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->s:Z

    .line 19
    invoke-virtual {v1}, Lr/w0;->Q()Z

    move-result v2

    iput-boolean v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->t:Z

    .line 20
    invoke-virtual {v1}, Lr/w0;->P()Z

    move-result v2

    iput-boolean v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->u:Z

    .line 21
    invoke-virtual {v1}, Lr/w0;->x()I

    move-result v2

    iput v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->v:I

    .line 22
    invoke-virtual {v1}, Lr/w0;->D()I

    move-result v2

    iput v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->w:I

    .line 23
    invoke-virtual {v1}, Lr/w0;->A()I

    move-result v2

    iput v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->x:I

    .line 24
    invoke-virtual {v1}, Lr/w0;->B()I

    move-result v2

    iput v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->y:I

    .line 25
    invoke-virtual {v1}, Lr/w0;->C()I

    move-result v1

    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->z:I

    .line 26
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->e:Ljava/util/LinkedList;

    const v2, 0xfffd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$h;

    invoke-direct {v1, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$h;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    .line 28
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 29
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    .line 30
    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->d:Ljava/util/Set;

    .line 32
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->e:Ljava/util/LinkedList;

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->f:Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->g:I

    const/4 v1, 0x1

    .line 35
    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->h:I

    const/4 v2, 0x2

    .line 36
    iput v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->i:I

    .line 37
    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->j:I

    .line 38
    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->k:I

    .line 39
    new-instance v1, Lr/w0;

    invoke-direct {v1}, Lr/w0;-><init>()V

    .line 40
    invoke-virtual {v1}, Lr/w0;->y()I

    move-result v2

    iput v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->l:I

    .line 41
    invoke-virtual {v1}, Lr/w0;->M()I

    move-result v2

    iput v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->m:I

    .line 42
    invoke-virtual {v1}, Lr/w0;->I()Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$f;

    move-result-object v2

    iput-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->n:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$f;

    .line 43
    invoke-virtual {v1}, Lr/w0;->z()I

    move-result v2

    iput v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->o:I

    .line 44
    invoke-virtual {v1}, Lr/w0;->N()I

    move-result v2

    iput v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->p:I

    .line 45
    invoke-virtual {v1}, Lr/w0;->L()I

    move-result v2

    iput v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->q:I

    .line 46
    invoke-virtual {v1}, Lr/w0;->K()I

    move-result v2

    iput v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->r:I

    .line 47
    invoke-virtual {v1}, Lr/w0;->O()Z

    move-result v2

    iput-boolean v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->s:Z

    .line 48
    invoke-virtual {v1}, Lr/w0;->Q()Z

    move-result v2

    iput-boolean v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->t:Z

    .line 49
    invoke-virtual {v1}, Lr/w0;->P()Z

    move-result v2

    iput-boolean v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->u:Z

    .line 50
    invoke-virtual {v1}, Lr/w0;->x()I

    move-result v2

    iput v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->v:I

    .line 51
    invoke-virtual {v1}, Lr/w0;->D()I

    move-result v2

    iput v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->w:I

    .line 52
    invoke-virtual {v1}, Lr/w0;->A()I

    move-result v2

    iput v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->x:I

    .line 53
    invoke-virtual {v1}, Lr/w0;->B()I

    move-result v2

    iput v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->y:I

    .line 54
    invoke-virtual {v1}, Lr/w0;->C()I

    move-result v1

    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->z:I

    .line 55
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->e:Ljava/util/LinkedList;

    const v2, 0xfffd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 56
    iput-boolean p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->s:Z

    if-nez p2, :cond_0

    .line 57
    new-instance p2, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$h;

    invoke-direct {p2, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$h;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    goto :goto_0

    .line 58
    :cond_0
    new-instance p2, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$g;

    invoke-direct {p2, p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$g;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    .line 59
    :goto_0
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 60
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void
.end method

.method public static getDefaultSize()Landroid/util/Size;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$h;->a:Landroid/util/Size;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$d;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(I)V
    .locals 4

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$c;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$a;

    invoke-direct {v3, p0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$a;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$d;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->d:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$e;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$b;

    invoke-direct {v2, p0, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$b;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$d;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method public c(I)V
    .locals 1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->b(I)V

    :cond_0
    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->f:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->b(I)V

    :cond_1
    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->s:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->u:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->t:Z

    return v0
.end method

.method public g(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$d;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAutoReleaseInterval()I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->v:I

    return v0
.end method

.method public getHorizontalSensitivity()I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->l:I

    return v0
.end method

.method public getHorizontalSensitivityAfterSwitch()I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->o:I

    return v0
.end method

.method public getMaxAcceleration()I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->x:I

    return v0
.end method

.method public getMinAcceleration()I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->y:I

    return v0
.end method

.method public getMouseAccelerationCoefficient()I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->z:I

    return v0
.end method

.method public getMouseAccelerationValue()I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->w:I

    return v0
.end method

.method public getSwitchMouseLockKeyCodes()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->e:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getSwitchSensitivityMode()Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$f;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->n:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$f;

    return-object v0
.end method

.method public getSwitchViewSpeedKeyCodes()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->f:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getTouchDownDelay()I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->r:I

    return v0
.end method

.method public getTouchUpDelay()I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->q:I

    return v0
.end method

.method public getVerticalSensitivity()I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->m:I

    return v0
.end method

.method public getVerticalSensitivityAfterSwitch()I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->p:I

    return v0
.end method

.method public onDelete()V
    .locals 0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->hideMousePointerIndicator()V

    return-void
.end method

.method public onKeyEvent(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;)V
    .locals 4

    iget-boolean v0, p1, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;->down:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->g:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->e:Ljava/util/LinkedList;

    iget v3, p1, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;->usage:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->e:Ljava/util/LinkedList;

    iget v3, p1, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;->usage:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->b(I)V

    :cond_2
    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->g:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lt v0, v2, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->f:Ljava/util/LinkedList;

    iget v1, p1, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;->usage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->f:Ljava/util/LinkedList;

    iget p1, p1, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;->usage:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->b(I)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/m;->downKeyCodeSet:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_6

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->setMouseLockKeyChangeEnable(Z)V

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->setSwitchViewSpeedKeyChangeEnable(Z)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    new-instance v2, Landroid/graphics/Rect;

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    const/high16 v4, 0x42c80000    # 100.0f

    sub-float v5, v0, v4

    float-to-int v5, v5

    int-to-float v1, v1

    div-float/2addr v1, v3

    sub-float v3, v1, v4

    float-to-int v3, v3

    add-float/2addr v0, v4

    float-to-int v0, v0

    add-float/2addr v1, v4

    float-to-int v1, v1

    invoke-direct {v2, v5, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->selected:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v0, v1, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v2, v0}, Lcom/zjx/jyandroid/base/util/b;->D(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setAutoReleaseInterval(I)V
    .locals 0

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->v:I

    return-void
.end method

.method public setCustomPlayerViewRectangle(Z)V
    .locals 7

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->s:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->s:Z

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setSelected(Z)V

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$g;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, p0, v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$g;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    const/16 p1, 0xa0

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result p1

    const/16 v2, 0x64

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    int-to-float p1, p1

    div-float/2addr p1, v0

    sub-float/2addr v5, p1

    float-to-int v5, v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    int-to-float v2, v2

    div-float/2addr v2, v0

    sub-float/2addr v6, v2

    float-to-int v0, v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, p1

    float-to-int p1, v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    float-to-int v2, v3

    invoke-direct {v4, v5, v0, p1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v4}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->setFrame(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p0}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->setSelected(Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->setSelected(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$h;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$h;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->getDefaultSize()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->getDefaultSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    int-to-float p1, p1

    div-float/2addr p1, v0

    sub-float/2addr v4, p1

    float-to-int v4, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    int-to-float v1, v1

    div-float/2addr v1, v0

    sub-float/2addr v5, v1

    float-to-int v0, v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, p1

    float-to-int p1, v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    float-to-int v1, v2

    invoke-direct {v3, v4, v0, p1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->setFrame(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public setEdgeReleaseOnly(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->u:Z

    return-void
.end method

.method public setFrame(Landroid/graphics/Rect;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/16 v1, 0x1e

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v2

    if-ge v0, v2, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->right:I

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v2

    if-ge v0, v2, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    invoke-super {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, p1}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->setFrame(IIII)V

    return-void
.end method

.method public setHorizontalSensitivity(I)V
    .locals 0

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->l:I

    return-void
.end method

.method public setHorizontalSensitivityAfterSwitch(I)V
    .locals 0

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->o:I

    return-void
.end method

.method public setMaxAcceleration(I)V
    .locals 0

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->x:I

    return-void
.end method

.method public setMinAcceleration(I)V
    .locals 0

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->y:I

    return-void
.end method

.method public setMouseAccelerationCoefficient(I)V
    .locals 0

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->z:I

    return-void
.end method

.method public setMouseAccelerationEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->t:Z

    return-void
.end method

.method public setMouseAccelerationValue(I)V
    .locals 0

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->w:I

    return-void
.end method

.method public setMouseLockKeyChangeEnable(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->g:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->g:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->g:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->g:I

    :goto_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setSelected(Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setSelected(Z)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->mouseDisplayMode:Lr/H$a;

    sget-object v0, Lr/H$a;->b:Lr/H$a;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->showMousePointerIndicator()V

    :cond_0
    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    const-string v0, "\u6b64\u89c6\u89d2\u952e\u4e3a\u63a7\u5236\u89c6\u89d2\u529f\u80fd\uff0c\u4e00\u65e6\u5220\u9664\u5c06\u4e0d\u53ef\u63a7\u5236\u89c6\u89d2\u3002\u5220\u9664\u540e\u53ef\u91cd\u65b0\u6dfb\u52a0"

    invoke-direct {p1, v0}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->hideMousePointerIndicator()V

    :goto_0
    return-void
.end method

.method public setSwitchMouseLockKeyCodes([I)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->e:Ljava/util/LinkedList;

    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSwitchSensitivityMode(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$f;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->n:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$f;

    return-void
.end method

.method public setSwitchViewSpeedKeyChangeEnable(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->g:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->g:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->g:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->g:I

    :goto_0
    return-void
.end method

.method public setSwitchViewSpeedKeyCodes([I)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->f:Ljava/util/LinkedList;

    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTouchDownDelay(I)V
    .locals 0

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->r:I

    return-void
.end method

.method public setTouchUpDelay(I)V
    .locals 0

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->q:I

    return-void
.end method

.method public setVerticalSensitivity(I)V
    .locals 0

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->m:I

    return-void
.end method

.method public setVerticalSensitivityAfterSwitch(I)V
    .locals 0

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->p:I

    return-void
.end method
