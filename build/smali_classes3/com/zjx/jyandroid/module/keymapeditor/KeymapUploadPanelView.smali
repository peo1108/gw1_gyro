.class public Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView;
.super LD7/a;
.source "SourceFile"


# instance fields
.field public e7:Lu6/d;

.field public f7:Lu6/d;

.field public g7:Lu6/d;

.field public h7:Lu6/d;

.field public i7:Lu6/d;

.field public j7:Lu6/d;

.field public k7:Landroid/widget/TextView;

.field public l7:Landroid/widget/ImageView;


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


# virtual methods
.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    sget v0, Lcom/zjx/jyandroid/e$f;->ua:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView;->k7:Landroid/widget/TextView;

    sget v0, Lcom/zjx/jyandroid/e$f;->va:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView;->l7:Landroid/widget/ImageView;

    sget v0, Lcom/zjx/jyandroid/e$f;->d4:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView$a;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView$a;-><init>(Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget v0, Lcom/zjx/jyandroid/e$f;->g4:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView$b;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView$b;-><init>(Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget v0, Lcom/zjx/jyandroid/e$f;->c4:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView$c;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView$c;-><init>(Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget v0, Lcom/zjx/jyandroid/e$f;->f2:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView$d;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView$d;-><init>(Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget v0, Lcom/zjx/jyandroid/e$f;->e4:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView$e;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView$e;-><init>(Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget v0, Lcom/zjx/jyandroid/e$f;->f4:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView$f;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView$f;-><init>(Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public t0(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView;->g7:Lu6/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lu6/d;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public u0(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView;->e7:Lu6/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lu6/d;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public v0(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView;->h7:Lu6/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lu6/d;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public w0(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView;->i7:Lu6/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lu6/d;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public x0(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView;->f7:Lu6/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lu6/d;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
