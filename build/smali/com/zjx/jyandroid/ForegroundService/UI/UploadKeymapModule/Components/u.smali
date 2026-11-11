.class public Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;
.super Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;
.source "SourceFile"


# instance fields
.field public a:Lr/X$a;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:I

.field public h:Z

.field public i:I

.field public j:Z

.field public k:Z

.field public l:I

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->n:Z

    .line 3
    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->o:Z

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->p:Ljava/util/List;

    .line 5
    new-instance p1, Lr/X;

    invoke-direct {p1}, Lr/X;-><init>()V

    .line 6
    invoke-virtual {p1}, Lr/X;->H()Lr/X$a;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->a:Lr/X$a;

    .line 7
    invoke-virtual {p1}, Lr/X;->G()I

    move-result v0

    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->b:I

    .line 8
    invoke-virtual {p1}, Lr/X;->z()I

    move-result v0

    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->c:I

    .line 9
    invoke-virtual {p1}, Lr/X;->u()I

    move-result v0

    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->d:I

    .line 10
    invoke-virtual {p1}, Lr/X;->v()I

    move-result v0

    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->e:I

    .line 11
    invoke-virtual {p1}, Lr/X;->Q()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->f:Z

    .line 12
    invoke-virtual {p1}, Lr/X;->F()I

    move-result v0

    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->g:I

    .line 13
    invoke-virtual {p1}, Lr/X;->P()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->h:Z

    .line 14
    invoke-virtual {p1}, Lr/X;->E()I

    move-result v0

    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->i:I

    .line 15
    invoke-virtual {p1}, Lr/X;->R()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->j:Z

    .line 16
    invoke-virtual {p1}, Lr/X;->M()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->k:Z

    .line 17
    invoke-virtual {p1}, Lr/X;->y()I

    move-result v0

    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->l:I

    .line 18
    invoke-virtual {p1}, Lr/X;->N()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->m:Z

    .line 19
    invoke-virtual {p1}, Lr/X;->w()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->p:Ljava/util/List;

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/zjx/jyandroid/R$color;->normal_touch_point_background:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setSelectedBackgroundColor(I)V

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/zjx/jyandroid/R$color;->normal_touch_point_background:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBackgroundColor(I)V

    .line 22
    sget p1, Lcom/zjx/jyandroid/R$string;->empty:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setTextLabelText(Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->textView:Landroid/widget/TextView;

    const v0, 0x3f59999a    # 0.85f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->n:Z

    .line 26
    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->o:Z

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->p:Ljava/util/List;

    .line 28
    new-instance p1, Lr/X;

    invoke-direct {p1}, Lr/X;-><init>()V

    .line 29
    invoke-virtual {p1}, Lr/X;->H()Lr/X$a;

    move-result-object p2

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->a:Lr/X$a;

    .line 30
    invoke-virtual {p1}, Lr/X;->G()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->b:I

    .line 31
    invoke-virtual {p1}, Lr/X;->z()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->c:I

    .line 32
    invoke-virtual {p1}, Lr/X;->u()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->d:I

    .line 33
    invoke-virtual {p1}, Lr/X;->v()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->e:I

    .line 34
    invoke-virtual {p1}, Lr/X;->Q()Z

    move-result p2

    iput-boolean p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->f:Z

    .line 35
    invoke-virtual {p1}, Lr/X;->F()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->g:I

    .line 36
    invoke-virtual {p1}, Lr/X;->P()Z

    move-result p2

    iput-boolean p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->h:Z

    .line 37
    invoke-virtual {p1}, Lr/X;->E()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->i:I

    .line 38
    invoke-virtual {p1}, Lr/X;->R()Z

    move-result p2

    iput-boolean p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->j:Z

    .line 39
    invoke-virtual {p1}, Lr/X;->M()Z

    move-result p2

    iput-boolean p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->k:Z

    .line 40
    invoke-virtual {p1}, Lr/X;->y()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->l:I

    .line 41
    invoke-virtual {p1}, Lr/X;->N()Z

    move-result p2

    iput-boolean p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->m:Z

    .line 42
    invoke-virtual {p1}, Lr/X;->w()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->p:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->n:Z

    .line 45
    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->o:Z

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->p:Ljava/util/List;

    .line 47
    new-instance p1, Lr/X;

    invoke-direct {p1}, Lr/X;-><init>()V

    .line 48
    invoke-virtual {p1}, Lr/X;->H()Lr/X$a;

    move-result-object p2

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->a:Lr/X$a;

    .line 49
    invoke-virtual {p1}, Lr/X;->G()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->b:I

    .line 50
    invoke-virtual {p1}, Lr/X;->z()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->c:I

    .line 51
    invoke-virtual {p1}, Lr/X;->u()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->d:I

    .line 52
    invoke-virtual {p1}, Lr/X;->v()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->e:I

    .line 53
    invoke-virtual {p1}, Lr/X;->Q()Z

    move-result p2

    iput-boolean p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->f:Z

    .line 54
    invoke-virtual {p1}, Lr/X;->F()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->g:I

    .line 55
    invoke-virtual {p1}, Lr/X;->P()Z

    move-result p2

    iput-boolean p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->h:Z

    .line 56
    invoke-virtual {p1}, Lr/X;->E()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->i:I

    .line 57
    invoke-virtual {p1}, Lr/X;->R()Z

    move-result p2

    iput-boolean p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->j:Z

    .line 58
    invoke-virtual {p1}, Lr/X;->M()Z

    move-result p2

    iput-boolean p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->k:Z

    .line 59
    invoke-virtual {p1}, Lr/X;->y()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->l:I

    .line 60
    invoke-virtual {p1}, Lr/X;->N()Z

    move-result p2

    iput-boolean p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->m:Z

    .line 61
    invoke-virtual {p1}, Lr/X;->w()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->p:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->n:Z

    .line 64
    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->o:Z

    .line 65
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->p:Ljava/util/List;

    .line 66
    new-instance p1, Lr/X;

    invoke-direct {p1}, Lr/X;-><init>()V

    .line 67
    invoke-virtual {p1}, Lr/X;->H()Lr/X$a;

    move-result-object p2

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->a:Lr/X$a;

    .line 68
    invoke-virtual {p1}, Lr/X;->G()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->b:I

    .line 69
    invoke-virtual {p1}, Lr/X;->z()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->c:I

    .line 70
    invoke-virtual {p1}, Lr/X;->u()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->d:I

    .line 71
    invoke-virtual {p1}, Lr/X;->v()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->e:I

    .line 72
    invoke-virtual {p1}, Lr/X;->Q()Z

    move-result p2

    iput-boolean p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->f:Z

    .line 73
    invoke-virtual {p1}, Lr/X;->F()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->g:I

    .line 74
    invoke-virtual {p1}, Lr/X;->P()Z

    move-result p2

    iput-boolean p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->h:Z

    .line 75
    invoke-virtual {p1}, Lr/X;->E()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->i:I

    .line 76
    invoke-virtual {p1}, Lr/X;->R()Z

    move-result p2

    iput-boolean p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->j:Z

    .line 77
    invoke-virtual {p1}, Lr/X;->M()Z

    move-result p2

    iput-boolean p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->k:Z

    .line 78
    invoke-virtual {p1}, Lr/X;->y()I

    move-result p2

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->l:I

    .line 79
    invoke-virtual {p1}, Lr/X;->N()Z

    move-result p2

    iput-boolean p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->m:Z

    .line 80
    invoke-virtual {p1}, Lr/X;->w()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->p:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->o:Z

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->k:Z

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->m:Z

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->n:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->h:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->f:Z

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->j:Z

    return v0
.end method

.method public getClickDuration()I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->d:I

    return v0
.end method

.method public getClickInterval()I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->e:I

    return v0
.end method

.method public getCrazyTapWeapons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->p:Ljava/util/List;

    return-object v0
.end method

.method public getLinkMouseMoveSpeed()I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->l:I

    return v0
.end method

.method public getLongPressTriggerThreshold()I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->c:I

    return v0
.end method

.method public getReactivateJoystickLatency()I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->i:I

    return v0
.end method

.method public getResetViewLatency()I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->g:I

    return v0
.end method

.method public getTriggerLatency()I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->b:I

    return v0
.end method

.method public getType()Lr/X$a;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->a:Lr/X$a;

    return-object v0
.end method

.method public onDelete()V
    .locals 0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->hideMousePointerIndicator()V

    return-void
.end method

.method public setClickDuration(I)V
    .locals 0

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->d:I

    return-void
.end method

.method public setClickInterval(I)V
    .locals 0

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->e:I

    return-void
.end method

.method public setConditionalCrazyTap(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->o:Z

    return-void
.end method

.method public setCrazyTapWeapons(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->p:Ljava/util/List;

    return-void
.end method

.method public setLinkMouseMove(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->k:Z

    return-void
.end method

.method public setLinkMouseMoveResetOnEdge(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->m:Z

    return-void
.end method

.method public setLinkMouseMoveSpeed(I)V
    .locals 0

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->l:I

    return-void
.end method

.method public setLongPressTriggerThreshold(I)V
    .locals 0

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->c:I

    return-void
.end method

.method public setPerformAimingRecognition(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->n:Z

    return-void
.end method

.method public setReactivateJoystick(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->h:Z

    return-void
.end method

.method public setReactivateJoystickLatency(I)V
    .locals 0

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->i:I

    return-void
.end method

.method public setResetView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->f:Z

    return-void
.end method

.method public setResetViewLatency(I)V
    .locals 0

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->g:I

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setSelected(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->mouseDisplayMode:Lr/H$a;

    sget-object v0, Lr/H$a;->b:Lr/H$a;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->showMousePointerIndicator()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->hideMousePointerIndicator()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSwitchMouseLock(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->j:Z

    return-void
.end method

.method public setTriggerLatency(I)V
    .locals 0

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->b:I

    return-void
.end method

.method public setType(Lr/X$a;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->a:Lr/X$a;

    return-void
.end method
