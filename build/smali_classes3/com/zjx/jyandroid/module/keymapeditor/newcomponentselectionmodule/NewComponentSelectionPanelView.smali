.class public Lcom/zjx/jyandroid/module/keymapeditor/newcomponentselectionmodule/NewComponentSelectionPanelView;
.super LD7/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/module/keymapeditor/newcomponentselectionmodule/NewComponentSelectionPanelView$b;,
        Lcom/zjx/jyandroid/module/keymapeditor/newcomponentselectionmodule/NewComponentSelectionPanelView$c;,
        Lcom/zjx/jyandroid/module/keymapeditor/newcomponentselectionmodule/NewComponentSelectionPanelView$d;
    }
.end annotation


# instance fields
.field public e7:Lcom/zjx/jyandroid/module/keymapeditor/newcomponentselectionmodule/NewComponentSelectionPanelView$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Li/P;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, LD7/a;-><init>(Landroid/content/Context;)V

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

    .line 2
    invoke-direct {p0, p1, p2}, LD7/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 3
    invoke-direct {p0, p1, p2, p3}, LD7/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, LD7/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static synthetic t0(Lcom/zjx/jyandroid/module/keymapeditor/newcomponentselectionmodule/NewComponentSelectionPanelView;)Lcom/zjx/jyandroid/module/keymapeditor/newcomponentselectionmodule/NewComponentSelectionPanelView$b;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/module/keymapeditor/newcomponentselectionmodule/NewComponentSelectionPanelView;->e7:Lcom/zjx/jyandroid/module/keymapeditor/newcomponentselectionmodule/NewComponentSelectionPanelView$b;

    return-object p0
.end method


# virtual methods
.method public getAdapter()Lcom/zjx/jyandroid/module/keymapeditor/newcomponentselectionmodule/NewComponentSelectionPanelView$b;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/module/keymapeditor/newcomponentselectionmodule/NewComponentSelectionPanelView;->e7:Lcom/zjx/jyandroid/module/keymapeditor/newcomponentselectionmodule/NewComponentSelectionPanelView$b;

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 5

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/zjx/jyandroid/module/keymapeditor/newcomponentselectionmodule/NewComponentSelectionPanelView$c;

    sget v2, Lcom/zjx/jyandroid/e$k;->K2:I

    invoke-static {v2}, Lg7/d;->i(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zjx/jyandroid/e$e;->P0:I

    const-class v4, LK6/h;

    invoke-direct {v1, v4, v2, v3}, Lcom/zjx/jyandroid/module/keymapeditor/newcomponentselectionmodule/NewComponentSelectionPanelView$c;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/zjx/jyandroid/module/keymapeditor/newcomponentselectionmodule/NewComponentSelectionPanelView$c;

    sget v2, Lcom/zjx/jyandroid/e$k;->R2:I

    invoke-static {v2}, Lg7/d;->i(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zjx/jyandroid/e$e;->R0:I

    const-class v4, LK6/j;

    invoke-direct {v1, v4, v2, v3}, Lcom/zjx/jyandroid/module/keymapeditor/newcomponentselectionmodule/NewComponentSelectionPanelView$c;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/zjx/jyandroid/module/keymapeditor/newcomponentselectionmodule/NewComponentSelectionPanelView$c;

    sget v2, Lcom/zjx/jyandroid/e$k;->P2:I

    invoke-static {v2}, Lg7/d;->i(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zjx/jyandroid/e$e;->Q0:I

    const-class v4, LK6/i;

    invoke-direct {v1, v4, v2, v3}, Lcom/zjx/jyandroid/module/keymapeditor/newcomponentselectionmodule/NewComponentSelectionPanelView$c;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/zjx/jyandroid/module/keymapeditor/newcomponentselectionmodule/NewComponentSelectionPanelView$c;

    sget v2, Lcom/zjx/jyandroid/e$k;->I2:I

    invoke-static {v2}, Lg7/d;->i(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zjx/jyandroid/e$e;->N0:I

    const-class v4, LK6/e;

    invoke-direct {v1, v4, v2, v3}, Lcom/zjx/jyandroid/module/keymapeditor/newcomponentselectionmodule/NewComponentSelectionPanelView$c;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/zjx/jyandroid/module/keymapeditor/newcomponentselectionmodule/NewComponentSelectionPanelView$c;

    sget v2, Lcom/zjx/jyandroid/e$k;->G2:I

    invoke-static {v2}, Lg7/d;->i(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zjx/jyandroid/e$e;->M0:I

    const-class v4, LK6/c;

    invoke-direct {v1, v4, v2, v3}, Lcom/zjx/jyandroid/module/keymapeditor/newcomponentselectionmodule/NewComponentSelectionPanelView$c;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/zjx/jyandroid/module/keymapeditor/newcomponentselectionmodule/NewComponentSelectionPanelView$c;

    sget v2, Lcom/zjx/jyandroid/e$k;->E2:I

    invoke-static {v2}, Lg7/d;->i(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zjx/jyandroid/e$e;->S0:I

    const-class v4, LK6/f;

    invoke-direct {v1, v4, v2, v3}, Lcom/zjx/jyandroid/module/keymapeditor/newcomponentselectionmodule/NewComponentSelectionPanelView$c;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/zjx/jyandroid/module/keymapeditor/newcomponentselectionmodule/NewComponentSelectionPanelView$c;

    sget v2, Lcom/zjx/jyandroid/e$k;->F2:I

    invoke-static {v2}, Lg7/d;->i(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zjx/jyandroid/e$e;->L0:I

    const-class v4, LK6/b;

    invoke-direct {v1, v4, v2, v3}, Lcom/zjx/jyandroid/module/keymapeditor/newcomponentselectionmodule/NewComponentSelectionPanelView$c;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/zjx/jyandroid/module/keymapeditor/newcomponentselectionmodule/NewComponentSelectionPanelView$c;

    sget v2, Lcom/zjx/jyandroid/e$k;->J2:I

    invoke-static {v2}, Lg7/d;->i(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zjx/jyandroid/e$e;->O0:I

    const-class v4, LK6/k;

    invoke-direct {v1, v4, v2, v3}, Lcom/zjx/jyandroid/module/keymapeditor/newcomponentselectionmodule/NewComponentSelectionPanelView$c;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v1, Lcom/zjx/jyandroid/e$f;->X2:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    new-instance v2, Lcom/zjx/jyandroid/module/keymapeditor/newcomponentselectionmodule/NewComponentSelectionPanelView$d;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lcom/zjx/jyandroid/module/keymapeditor/newcomponentselectionmodule/NewComponentSelectionPanelView$d;-><init>(Lcom/zjx/jyandroid/module/keymapeditor/newcomponentselectionmodule/NewComponentSelectionPanelView;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    sget v0, Lcom/zjx/jyandroid/e$f;->j1:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/zjx/jyandroid/module/keymapeditor/newcomponentselectionmodule/NewComponentSelectionPanelView$a;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/module/keymapeditor/newcomponentselectionmodule/NewComponentSelectionPanelView$a;-><init>(Lcom/zjx/jyandroid/module/keymapeditor/newcomponentselectionmodule/NewComponentSelectionPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setAdapter(Lcom/zjx/jyandroid/module/keymapeditor/newcomponentselectionmodule/NewComponentSelectionPanelView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/module/keymapeditor/newcomponentselectionmodule/NewComponentSelectionPanelView;->e7:Lcom/zjx/jyandroid/module/keymapeditor/newcomponentselectionmodule/NewComponentSelectionPanelView$b;

    return-void
.end method
