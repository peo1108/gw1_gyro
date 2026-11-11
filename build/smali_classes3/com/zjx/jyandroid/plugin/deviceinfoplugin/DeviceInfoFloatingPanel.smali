.class public Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;
.super Lo6/b;
.source "SourceFile"

# interfaces
.implements Lo6/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel$b;
    }
.end annotation


# instance fields
.field public A7:Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;

.field public i7:Landroid/widget/TextView;

.field public j7:Landroid/widget/TextView;

.field public k7:Landroid/widget/TextView;

.field public l7:Landroid/widget/TextView;

.field public m7:Landroid/widget/TextView;

.field public n7:Landroid/widget/TextView;

.field public o7:Landroid/widget/TextView;

.field public p7:Landroidx/cardview/widget/CardView;

.field public q7:Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;

.field public r7:Landroid/widget/LinearLayout;

.field public s7:Landroid/widget/LinearLayout;

.field public t7:Landroid/widget/LinearLayout;

.field public u7:Landroid/widget/LinearLayout;

.field public v7:Landroid/widget/LinearLayout;

.field public w7:Landroid/widget/LinearLayout;

.field public x7:Landroid/widget/LinearLayout;

.field public y7:Landroid/widget/LinearLayout;

.field public z7:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Li/P;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lo6/b;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;

    invoke-direct {p1}, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->q7:Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->z7:Z

    .line 4
    new-instance v0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;

    invoke-direct {v0}, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->A7:Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;

    .line 5
    invoke-virtual {p0, p0}, Lo6/b;->setOnMoveListener(Lo6/b$a;)V

    .line 6
    iput p1, p0, Lo6/b;->d7:I

    .line 7
    iput p1, p0, Lo6/b;->e7:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Li/P;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Li/S;
        .end annotation
    .end param

    .line 8
    invoke-direct {p0, p1, p2}, Lo6/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    new-instance p1, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;

    invoke-direct {p1}, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->q7:Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->z7:Z

    .line 11
    new-instance p2, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;

    invoke-direct {p2}, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;-><init>()V

    iput-object p2, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->A7:Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;

    .line 12
    invoke-virtual {p0, p0}, Lo6/b;->setOnMoveListener(Lo6/b$a;)V

    .line 13
    iput p1, p0, Lo6/b;->d7:I

    .line 14
    iput p1, p0, Lo6/b;->e7:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Li/P;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Li/S;
        .end annotation
    .end param

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lo6/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    new-instance p1, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;

    invoke-direct {p1}, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->q7:Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->z7:Z

    .line 18
    new-instance p2, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;

    invoke-direct {p2}, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;-><init>()V

    iput-object p2, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->A7:Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;

    .line 19
    invoke-virtual {p0, p0}, Lo6/b;->setOnMoveListener(Lo6/b$a;)V

    .line 20
    iput p1, p0, Lo6/b;->d7:I

    .line 21
    iput p1, p0, Lo6/b;->e7:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Li/P;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Li/S;
        .end annotation
    .end param

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lo6/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 23
    new-instance p1, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;

    invoke-direct {p1}, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->q7:Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->z7:Z

    .line 25
    new-instance p2, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;

    invoke-direct {p2}, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;-><init>()V

    iput-object p2, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->A7:Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;

    .line 26
    invoke-virtual {p0, p0}, Lo6/b;->setOnMoveListener(Lo6/b$a;)V

    .line 27
    iput p1, p0, Lo6/b;->d7:I

    .line 28
    iput p1, p0, Lo6/b;->e7:I

    return-void
.end method

.method public static synthetic D0(Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->z7:Z

    return p0
.end method

.method public static synthetic E0(Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->z7:Z

    return p1
.end method

.method public static synthetic F0(Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->J0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic G0(Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;)V
    .locals 0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->L0()V

    return-void
.end method

.method public static synthetic H0(Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;)V
    .locals 0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->N0()V

    return-void
.end method


# virtual methods
.method public final I0(F)Ljava/lang/String;
    .locals 3

    const/high16 v0, 0x46200000    # 10240.0f

    cmpg-float v0, p1, v0

    const-wide/16 v1, 0x400

    if-gez v0, :cond_0

    long-to-float v0, v1

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "\u007f\u00e9\u0006\u00c7.0\u00aaz\u0091"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_0
    const/high16 v0, 0x47c80000    # 102400.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    long-to-float v0, v1

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "\u007f\u00e9\u0005\u00c7.0\u00aaz\u0091"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_1
    const/high16 v0, 0x497a0000    # 1024000.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    long-to-float v0, v1

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "\u007f\u00e9\u0004\u00c7.0\u00aaz\u0091"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/high16 v0, 0x4b200000    # 1.048576E7f

    cmpg-float v0, p1, v0

    const-wide/32 v1, 0x100000

    if-gez v0, :cond_3

    long-to-float v0, v1

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "\u007f\u00e9\u0006\u00c7.6\u00aaz\u0091"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/high16 v0, 0x4cc80000    # 1.048576E8f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_4

    long-to-float v0, v1

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "\u007f\u00e9\u0005\u00c7.6\u00aaz\u0091"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    const/high16 v0, 0x4e7a0000    # 1.048576E9f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_5

    long-to-float v0, v1

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "\u007f\u00e9\u0004\u00c7.6\u00aaz\u0091"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    const/high16 v0, 0x4e800000

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "\u007f\u00e9\u0006\u00c7.<\u00aaz\u0091"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final J0(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->w7:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->w7:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    if-ne v2, p1, :cond_0

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public K0()V
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->z7:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->N0()V

    :cond_0
    return-void
.end method

.method public final L0()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->w7:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->w7:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public M0(Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel$b;)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->i7:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->j7:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel$b;->b:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u001c\u0097g"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->k7:Landroid/widget/TextView;

    iget-wide v1, p1, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel$b;->c:J

    long-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->I0(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->l7:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel$b;->d:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "\u007f"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->m7:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel$b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->n7:Landroid/widget/TextView;

    iget v1, p1, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel$b;->f:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "\u007f\u00e9\u0005\u00c7\u00be8"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->o7:Landroid/widget/TextView;

    iget p1, p1, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel$b;->g:F

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "\u007f\u00a3Y\u00d2"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final N0()V
    .locals 5

    iget-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->y7:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->A7:Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;

    sget-object v2, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a$a;->Z:Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a$a;

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;->c(Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a$a;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->x7:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->A7:Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;

    sget-object v4, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a$a;->X:Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a$a;

    invoke-virtual {v1, v4}, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;->c(Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a$a;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->r7:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->A7:Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;

    sget-object v4, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a$a;->V1:Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a$a;

    invoke-virtual {v1, v4}, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;->c(Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a$a;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->s7:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->A7:Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;

    sget-object v4, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a$a;->k6:Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a$a;

    invoke-virtual {v1, v4}, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;->c(Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a$a;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->t7:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->A7:Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;

    sget-object v4, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a$a;->l6:Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a$a;

    invoke-virtual {v1, v4}, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;->c(Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a$a;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->u7:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->A7:Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;

    sget-object v4, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a$a;->m6:Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a$a;

    invoke-virtual {v1, v4}, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;->c(Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a$a;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->v7:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->A7:Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;

    sget-object v4, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a$a;->n6:Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a$a;

    invoke-virtual {v1, v4}, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;->c(Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a$a;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v2, v3

    :cond_6
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public P(II)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->q7:Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;

    invoke-virtual {v0, p1, p2}, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;->i(II)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lo6/b;->onFinishInflate()V

    sget v0, Lcom/zjx/jyandroid/e$f;->Q9:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->i7:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/e$f;->L2:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->j7:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/e$f;->T3:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->k7:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/e$f;->b0:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->l7:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/e$f;->a6:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->m7:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/e$f;->B0:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->p7:Landroidx/cardview/widget/CardView;

    sget v0, Lcom/zjx/jyandroid/e$f;->J1:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->n7:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/e$f;->l4:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->o7:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/e$f;->A1:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->w7:Landroid/widget/LinearLayout;

    sget v0, Lcom/zjx/jyandroid/e$f;->P9:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->r7:Landroid/widget/LinearLayout;

    sget v0, Lcom/zjx/jyandroid/e$f;->K2:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->s7:Landroid/widget/LinearLayout;

    sget v0, Lcom/zjx/jyandroid/e$f;->v5:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->t7:Landroid/widget/LinearLayout;

    sget v0, Lcom/zjx/jyandroid/e$f;->a0:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->u7:Landroid/widget/LinearLayout;

    sget v0, Lcom/zjx/jyandroid/e$f;->N9:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->v7:Landroid/widget/LinearLayout;

    sget v0, Lcom/zjx/jyandroid/e$f;->I1:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->x7:Landroid/widget/LinearLayout;

    sget v0, Lcom/zjx/jyandroid/e$f;->k4:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->y7:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel$a;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel$a;-><init>(Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->r7:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->s7:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->t7:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->u7:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->v7:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->x7:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->y7:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel$b;

    invoke-direct {v0}, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel$b;-><init>()V

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->M0(Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel$b;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/DeviceInfoFloatingPanel;->p7:Landroidx/cardview/widget/CardView;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method
