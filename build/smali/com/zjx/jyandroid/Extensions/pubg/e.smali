.class public Lcom/zjx/jyandroid/Extensions/pubg/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/Extensions/pubg/e$p;
    }
.end annotation


# static fields
.field public static final J:Ljava/lang/String; = "0.0.2"


# instance fields
.field public A:Lj/d;

.field public B:Lj/d;

.field public C:Lj/f;

.field public D:Lj/f;

.field public E:Lj/f;

.field public F:Lj/b;

.field public G:Lj/b;

.field public H:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lj/a;",
            ">;"
        }
    .end annotation
.end field

.field public I:Z

.field public a:Lcom/zjx/jyandroid/Extensions/pubg/f;

.field public b:Z

.field public c:Z

.field public d:Landroid/view/ScaleGestureDetector;

.field public e:Z

.field public f:Lcom/zjx/jyandroid/Extensions/pubg/e$p;

.field public g:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

.field public h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

.field public i:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

.field public j:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;

.field public k:Lj/c;

.field public l:Lj/c;

.field public m:Lj/c;

.field public n:Lj/c;

.field public o:Lj/c;

.field public p:Lj/c;

.field public q:Lj/c;

.field public r:Lj/c;

.field public s:Lj/a;

.field public t:Lj/a;

.field public u:Lj/a;

.field public v:Lj/a;

.field public w:Lj/a;

.field public x:Lj/a;

.field public y:Lj/g;

.field public z:Lj/g;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-direct {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->a:Lcom/zjx/jyandroid/Extensions/pubg/f;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->b:Z

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->c:Z

    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/zjx/jyandroid/Extensions/pubg/e$g;

    invoke-direct {v3, p0}, Lcom/zjx/jyandroid/Extensions/pubg/e$g;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/e;)V

    invoke-direct {v1, v2, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->d:Landroid/view/ScaleGestureDetector;

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->I:Z

    return-void
.end method

.method public static synthetic a(Lcom/zjx/jyandroid/Extensions/pubg/e;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->i:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    return-object p0
.end method

.method public static synthetic b(Lcom/zjx/jyandroid/Extensions/pubg/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->e:Z

    return p1
.end method

.method public static synthetic c(Lcom/zjx/jyandroid/Extensions/pubg/e;)V
    .locals 0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/e;->m()V

    return-void
.end method

.method public static synthetic d(Lcom/zjx/jyandroid/Extensions/pubg/e;)Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->g:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    return-object p0
.end method

.method public static synthetic e(Lcom/zjx/jyandroid/Extensions/pubg/e;)V
    .locals 0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/e;->z()V

    return-void
.end method


# virtual methods
.method public f(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->g:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->disableDeleteButton:Z

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/e$f;

    invoke-direct {v0, p0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/e$f;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/e;Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->addOnTouchHandler(Lcom/zjx/jyandroid/base/Interfaces/MView$OnTouchHandler;)V

    return-void
.end method

.method public g()V
    .locals 15

    move-object v0, p0

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->i()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-static {}, Ly/d;->C()Ly/d;

    move-result-object v4

    invoke-virtual {v4}, Ly/d;->j()Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    move-result-object v4

    sget-object v5, Lcom/zjx/jyandroid/base/Definitions/WorkingMode;->ShoucuoMode:Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move v8, v2

    const/4 v5, 0x0

    :goto_1
    const/4 v9, 0x4

    const/16 v10, 0x16

    if-ge v5, v10, :cond_17

    if-nez v5, :cond_1

    invoke-static {}, Lj/g;->getDefaultSize()Landroid/util/Size;

    move-result-object v10

    new-instance v11, Lj/g;

    iget-object v12, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->g:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Lj/g;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->y:Lj/g;

    new-instance v11, Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v12

    add-int/2addr v12, v8

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v10

    add-int/2addr v10, v3

    invoke-direct {v11, v8, v3, v12, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->y:Lj/g;

    invoke-virtual {v3, v11}, Lj/g;->setFrame(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->y:Lj/g;

    new-instance v8, Lcom/zjx/jyandroid/Extensions/pubg/e$d;

    invoke-direct {v8, p0}, Lcom/zjx/jyandroid/Extensions/pubg/e$d;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/e;)V

    invoke-virtual {v3, v8}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->setOnFrameChangedListener(Lcom/zjx/jyandroid/base/Interfaces/OnFrameChangedListener;)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->y:Lj/g;

    invoke-virtual {p0, v3}, Lcom/zjx/jyandroid/Extensions/pubg/e;->f(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->y:Lj/g;

    invoke-virtual {v3, v9}, Lj/g;->setType(I)V

    iget v8, v11, Landroid/graphics/Rect;->right:I

    iget v3, v11, Landroid/graphics/Rect;->top:I

    goto/16 :goto_2

    :cond_1
    const/4 v10, 0x5

    if-ne v5, v6, :cond_2

    invoke-static {}, Lj/g;->getDefaultSize()Landroid/util/Size;

    move-result-object v9

    new-instance v11, Lj/g;

    iget-object v12, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->g:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Lj/g;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->z:Lj/g;

    new-instance v11, Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v12

    add-int/2addr v12, v8

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v9

    add-int/2addr v9, v3

    invoke-direct {v11, v8, v3, v12, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->z:Lj/g;

    invoke-virtual {v3, v11}, Lj/g;->setFrame(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->z:Lj/g;

    new-instance v8, Lcom/zjx/jyandroid/Extensions/pubg/e$e;

    invoke-direct {v8, p0}, Lcom/zjx/jyandroid/Extensions/pubg/e$e;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/e;)V

    invoke-virtual {v3, v8}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->setOnFrameChangedListener(Lcom/zjx/jyandroid/base/Interfaces/OnFrameChangedListener;)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->z:Lj/g;

    invoke-virtual {p0, v3}, Lcom/zjx/jyandroid/Extensions/pubg/e;->f(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->z:Lj/g;

    invoke-virtual {v3, v10}, Lj/g;->setType(I)V

    iget v8, v11, Landroid/graphics/Rect;->right:I

    iget v3, v11, Landroid/graphics/Rect;->top:I

    goto/16 :goto_2

    :cond_2
    const/4 v11, 0x3

    if-ne v5, v11, :cond_3

    invoke-static {}, Lj/c;->getDefaultSize()Landroid/util/Size;

    move-result-object v9

    new-instance v10, Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v11

    int-to-double v11, v11

    const-wide v13, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v11, v13

    double-to-int v11, v11

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v9

    int-to-double v6, v9

    mul-double/2addr v6, v13

    double-to-int v6, v6

    invoke-direct {v10, v11, v6}, Landroid/util/Size;-><init>(II)V

    new-instance v6, Lj/c;

    iget-object v7, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->g:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lj/c;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->k:Lj/c;

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v7

    add-int/2addr v7, v8

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v9

    add-int/2addr v9, v3

    invoke-direct {v6, v8, v3, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->k:Lj/c;

    invoke-virtual {v3, v6}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->k:Lj/c;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lj/c;->setType(I)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->k:Lj/c;

    invoke-virtual {v3, v7}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setResizeIndicatorHidden(Z)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->k:Lj/c;

    invoke-virtual {p0, v3}, Lcom/zjx/jyandroid/Extensions/pubg/e;->f(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    iget v8, v6, Landroid/graphics/Rect;->right:I

    iget v3, v6, Landroid/graphics/Rect;->top:I

    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_3
    if-ne v5, v9, :cond_4

    invoke-static {}, Lj/c;->getDefaultSize()Landroid/util/Size;

    move-result-object v6

    new-instance v7, Lj/c;

    iget-object v9, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->g:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v7, v9}, Lj/c;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->l:Lj/c;

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v9

    add-int/2addr v9, v8

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-direct {v7, v8, v3, v9, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->l:Lj/c;

    invoke-virtual {v3, v7}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->l:Lj/c;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lj/c;->setType(I)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->l:Lj/c;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setResizeIndicatorHidden(Z)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->l:Lj/c;

    invoke-virtual {p0, v3}, Lcom/zjx/jyandroid/Extensions/pubg/e;->f(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    iget v8, v7, Landroid/graphics/Rect;->right:I

    iget v3, v7, Landroid/graphics/Rect;->top:I

    goto/16 :goto_2

    :cond_4
    const/4 v6, 0x1

    const/4 v7, 0x2

    if-ne v5, v10, :cond_5

    invoke-static {}, Lj/c;->getDefaultSize()Landroid/util/Size;

    move-result-object v9

    new-instance v10, Lj/c;

    iget-object v11, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->g:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Lj/c;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->m:Lj/c;

    new-instance v10, Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v11

    add-int/2addr v11, v8

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v9

    add-int/2addr v9, v3

    invoke-direct {v10, v8, v3, v11, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->m:Lj/c;

    invoke-virtual {v3, v10}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->m:Lj/c;

    invoke-virtual {v3, v7}, Lj/c;->setType(I)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->m:Lj/c;

    invoke-virtual {p0, v3}, Lcom/zjx/jyandroid/Extensions/pubg/e;->f(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->m:Lj/c;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setResizeIndicatorHidden(Z)V

    iget v8, v10, Landroid/graphics/Rect;->right:I

    iget v3, v10, Landroid/graphics/Rect;->top:I

    goto/16 :goto_2

    :cond_5
    const/4 v9, 0x6

    if-ne v5, v9, :cond_6

    invoke-static {}, Lj/c;->getDefaultSize()Landroid/util/Size;

    move-result-object v7

    new-instance v9, Lj/c;

    iget-object v10, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->g:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lj/c;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->n:Lj/c;

    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v10

    add-int/2addr v10, v8

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    add-int/2addr v7, v3

    invoke-direct {v9, v8, v3, v10, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->n:Lj/c;

    invoke-virtual {v3, v9}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->n:Lj/c;

    invoke-virtual {v3, v11}, Lj/c;->setType(I)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->n:Lj/c;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setResizeIndicatorHidden(Z)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->n:Lj/c;

    invoke-virtual {p0, v3}, Lcom/zjx/jyandroid/Extensions/pubg/e;->f(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    iget v8, v9, Landroid/graphics/Rect;->right:I

    iget v3, v9, Landroid/graphics/Rect;->top:I

    goto/16 :goto_2

    :cond_6
    const/4 v10, 0x7

    const/16 v11, 0x8

    if-ne v5, v10, :cond_7

    invoke-static {}, Lj/c;->getDefaultSize()Landroid/util/Size;

    move-result-object v7

    new-instance v10, Lj/f;

    iget-object v12, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->g:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v10, v12}, Lj/f;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->C:Lj/f;

    new-instance v10, Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v12

    add-int/2addr v12, v8

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    add-int/2addr v7, v3

    invoke-direct {v10, v8, v3, v12, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->C:Lj/f;

    invoke-virtual {v3, v10}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->C:Lj/f;

    invoke-virtual {v3, v9}, Lj/f;->setType(I)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->C:Lj/f;

    invoke-virtual {p0, v3}, Lcom/zjx/jyandroid/Extensions/pubg/e;->f(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    iget v8, v10, Landroid/graphics/Rect;->right:I

    iget v3, v10, Landroid/graphics/Rect;->top:I

    if-nez v4, :cond_15

    iget-object v7, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->C:Lj/f;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_7
    if-ne v5, v11, :cond_8

    invoke-static {}, Lj/c;->getDefaultSize()Landroid/util/Size;

    move-result-object v7

    new-instance v9, Lj/f;

    iget-object v12, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->g:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v9, v12}, Lj/f;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->D:Lj/f;

    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v12

    add-int/2addr v12, v8

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    add-int/2addr v7, v3

    invoke-direct {v9, v8, v3, v12, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->D:Lj/f;

    invoke-virtual {v3, v9}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->D:Lj/f;

    invoke-virtual {v3, v10}, Lj/f;->setType(I)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->D:Lj/f;

    invoke-virtual {p0, v3}, Lcom/zjx/jyandroid/Extensions/pubg/e;->f(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    iget v8, v9, Landroid/graphics/Rect;->right:I

    iget v3, v9, Landroid/graphics/Rect;->top:I

    if-nez v4, :cond_15

    iget-object v7, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->D:Lj/f;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_8
    const/16 v9, 0xe

    const/16 v10, 0x9

    if-ne v5, v10, :cond_9

    invoke-static {}, Lj/c;->getDefaultSize()Landroid/util/Size;

    move-result-object v7

    new-instance v10, Lj/f;

    iget-object v12, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->g:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v10, v12}, Lj/f;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->E:Lj/f;

    new-instance v10, Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v12

    add-int/2addr v12, v8

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    add-int/2addr v7, v3

    invoke-direct {v10, v8, v3, v12, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->E:Lj/f;

    invoke-virtual {v3, v10}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->E:Lj/f;

    invoke-virtual {v3, v9}, Lj/f;->setType(I)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->E:Lj/f;

    invoke-virtual {p0, v3}, Lcom/zjx/jyandroid/Extensions/pubg/e;->f(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    iget v8, v10, Landroid/graphics/Rect;->right:I

    iget v3, v10, Landroid/graphics/Rect;->top:I

    if-nez v4, :cond_15

    iget-object v7, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->E:Lj/f;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_9
    const/16 v12, 0xa

    if-ne v5, v12, :cond_a

    invoke-static {}, Lj/f;->getDefaultSize()Landroid/util/Size;

    move-result-object v7

    new-instance v9, Lj/a;

    iget-object v10, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->g:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lj/a;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->s:Lj/a;

    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v10

    add-int/2addr v10, v8

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    add-int/2addr v7, v3

    invoke-direct {v9, v8, v3, v10, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->s:Lj/a;

    invoke-virtual {v3, v9}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->s:Lj/a;

    invoke-virtual {v3, v11}, Lj/a;->setType(I)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->s:Lj/a;

    invoke-virtual {p0, v3}, Lcom/zjx/jyandroid/Extensions/pubg/e;->f(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    iget v8, v9, Landroid/graphics/Rect;->right:I

    iget v3, v9, Landroid/graphics/Rect;->top:I

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getActivateBundleIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c;->e()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15

    iget-object v7, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->s:Lj/a;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_a
    const/16 v13, 0xb

    if-ne v5, v13, :cond_b

    invoke-static {}, Lj/f;->getDefaultSize()Landroid/util/Size;

    move-result-object v7

    new-instance v9, Lj/a;

    iget-object v12, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->g:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v9, v12}, Lj/a;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->u:Lj/a;

    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v12

    add-int/2addr v12, v8

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    add-int/2addr v7, v3

    invoke-direct {v9, v8, v3, v12, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->u:Lj/a;

    invoke-virtual {v3, v9}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->u:Lj/a;

    invoke-virtual {v3, v10}, Lj/a;->setType(I)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->u:Lj/a;

    invoke-virtual {p0, v3}, Lcom/zjx/jyandroid/Extensions/pubg/e;->f(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    iget v8, v9, Landroid/graphics/Rect;->right:I

    iget v3, v9, Landroid/graphics/Rect;->top:I

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getActivateBundleIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c;->e()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15

    iget-object v7, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->u:Lj/a;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_b
    const/16 v10, 0xc

    if-ne v5, v10, :cond_c

    invoke-static {}, Lj/f;->getDefaultSize()Landroid/util/Size;

    move-result-object v7

    new-instance v9, Lj/a;

    iget-object v10, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->g:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lj/a;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->w:Lj/a;

    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v10

    add-int/2addr v10, v8

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    add-int/2addr v7, v3

    invoke-direct {v9, v8, v3, v10, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->w:Lj/a;

    invoke-virtual {v3, v9}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->w:Lj/a;

    invoke-virtual {v3, v12}, Lj/a;->setType(I)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->w:Lj/a;

    invoke-virtual {p0, v3}, Lcom/zjx/jyandroid/Extensions/pubg/e;->f(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    iget v8, v9, Landroid/graphics/Rect;->right:I

    iget v3, v9, Landroid/graphics/Rect;->top:I

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getActivateBundleIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c;->e()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15

    iget-object v7, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->w:Lj/a;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_c
    const/16 v12, 0xd

    if-ne v5, v12, :cond_d

    invoke-static {}, Lj/f;->getDefaultSize()Landroid/util/Size;

    move-result-object v7

    new-instance v9, Lj/a;

    iget-object v10, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->g:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lj/a;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->t:Lj/a;

    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v10

    add-int/2addr v10, v8

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    add-int/2addr v7, v3

    invoke-direct {v9, v8, v3, v10, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->t:Lj/a;

    invoke-virtual {v3, v9}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->t:Lj/a;

    invoke-virtual {v3, v13}, Lj/a;->setType(I)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->t:Lj/a;

    invoke-virtual {p0, v3}, Lcom/zjx/jyandroid/Extensions/pubg/e;->f(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    iget v8, v9, Landroid/graphics/Rect;->right:I

    iget v3, v9, Landroid/graphics/Rect;->top:I

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getActivateBundleIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c;->e()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15

    iget-object v7, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->t:Lj/a;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_d
    if-ne v5, v9, :cond_e

    invoke-static {}, Lj/f;->getDefaultSize()Landroid/util/Size;

    move-result-object v7

    new-instance v9, Lj/a;

    iget-object v12, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->g:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v9, v12}, Lj/a;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->v:Lj/a;

    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v12

    add-int/2addr v12, v8

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    add-int/2addr v7, v3

    invoke-direct {v9, v8, v3, v12, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->v:Lj/a;

    invoke-virtual {v3, v9}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->v:Lj/a;

    invoke-virtual {v3, v10}, Lj/a;->setType(I)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->v:Lj/a;

    invoke-virtual {p0, v3}, Lcom/zjx/jyandroid/Extensions/pubg/e;->f(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    iget v8, v9, Landroid/graphics/Rect;->right:I

    iget v3, v9, Landroid/graphics/Rect;->top:I

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getActivateBundleIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c;->e()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15

    iget-object v7, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->v:Lj/a;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_e
    const/16 v9, 0xf

    if-ne v5, v9, :cond_f

    invoke-static {}, Lj/f;->getDefaultSize()Landroid/util/Size;

    move-result-object v7

    new-instance v9, Lj/a;

    iget-object v10, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->g:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lj/a;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->x:Lj/a;

    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v10

    add-int/2addr v10, v8

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    add-int/2addr v7, v3

    invoke-direct {v9, v8, v3, v10, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->x:Lj/a;

    invoke-virtual {v3, v9}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->x:Lj/a;

    invoke-virtual {v3, v12}, Lj/a;->setType(I)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->x:Lj/a;

    invoke-virtual {p0, v3}, Lcom/zjx/jyandroid/Extensions/pubg/e;->f(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    iget v8, v9, Landroid/graphics/Rect;->right:I

    iget v3, v9, Landroid/graphics/Rect;->top:I

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getActivateBundleIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c;->e()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15

    iget-object v7, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->x:Lj/a;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_f
    const/16 v10, 0x10

    if-ne v5, v10, :cond_10

    invoke-static {}, Lj/c;->getDefaultSize()Landroid/util/Size;

    move-result-object v10

    new-instance v12, Landroid/util/Size;

    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v13

    mul-int/2addr v13, v7

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v10

    mul-int/2addr v10, v7

    invoke-direct {v12, v13, v10}, Landroid/util/Size;-><init>(II)V

    new-instance v7, Lj/c;

    iget-object v10, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->g:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v7, v10}, Lj/c;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->o:Lj/c;

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v10

    add-int/2addr v10, v8

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v12

    add-int/2addr v12, v3

    invoke-direct {v7, v8, v3, v10, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->o:Lj/c;

    invoke-virtual {v3, v7}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->o:Lj/c;

    invoke-virtual {v3, v9}, Lj/c;->setType(I)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->o:Lj/c;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setResizeIndicatorHidden(Z)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->o:Lj/c;

    invoke-virtual {p0, v3}, Lcom/zjx/jyandroid/Extensions/pubg/e;->f(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    iget v8, v7, Landroid/graphics/Rect;->right:I

    iget v3, v7, Landroid/graphics/Rect;->top:I

    if-nez v4, :cond_15

    iget-object v7, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->o:Lj/c;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_10
    const/16 v9, 0x11

    if-ne v5, v9, :cond_11

    invoke-static {}, Lj/c;->getDefaultSize()Landroid/util/Size;

    move-result-object v9

    new-instance v12, Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v13

    mul-int/2addr v13, v7

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v9

    mul-int/2addr v9, v7

    invoke-direct {v12, v13, v9}, Landroid/util/Size;-><init>(II)V

    new-instance v7, Lj/c;

    iget-object v9, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->g:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v7, v9}, Lj/c;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->p:Lj/c;

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v9

    add-int/2addr v9, v8

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v12

    add-int/2addr v12, v3

    invoke-direct {v7, v8, v3, v9, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->p:Lj/c;

    invoke-virtual {v3, v7}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->p:Lj/c;

    invoke-virtual {v3, v10}, Lj/c;->setType(I)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->p:Lj/c;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setResizeIndicatorHidden(Z)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->p:Lj/c;

    invoke-virtual {p0, v3}, Lcom/zjx/jyandroid/Extensions/pubg/e;->f(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    iget v8, v7, Landroid/graphics/Rect;->right:I

    iget v3, v7, Landroid/graphics/Rect;->top:I

    if-nez v4, :cond_15

    iget-object v7, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->p:Lj/c;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_11
    const/16 v7, 0x12

    if-ne v5, v7, :cond_12

    invoke-static {}, Lj/c;->getDefaultSize()Landroid/util/Size;

    move-result-object v7

    new-instance v10, Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v12

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-direct {v10, v12, v7}, Landroid/util/Size;-><init>(II)V

    new-instance v7, Lj/c;

    iget-object v12, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->g:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v7, v12}, Lj/c;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->q:Lj/c;

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v12

    add-int/2addr v12, v8

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v10

    add-int/2addr v10, v3

    invoke-direct {v7, v8, v3, v12, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->q:Lj/c;

    invoke-virtual {v3, v7}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->q:Lj/c;

    invoke-virtual {v3, v9}, Lj/c;->setType(I)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->q:Lj/c;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setResizeIndicatorHidden(Z)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->q:Lj/c;

    invoke-virtual {p0, v3}, Lcom/zjx/jyandroid/Extensions/pubg/e;->f(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    iget v8, v7, Landroid/graphics/Rect;->right:I

    iget v3, v7, Landroid/graphics/Rect;->top:I

    if-nez v4, :cond_15

    iget-object v7, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->q:Lj/c;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_12
    const/16 v9, 0x13

    if-ne v5, v9, :cond_13

    invoke-static {}, Lj/c;->getDefaultSize()Landroid/util/Size;

    move-result-object v9

    new-instance v10, Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v12

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v9

    invoke-direct {v10, v12, v9}, Landroid/util/Size;-><init>(II)V

    new-instance v9, Lj/c;

    iget-object v12, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->g:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v9, v12}, Lj/c;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->r:Lj/c;

    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v12

    add-int/2addr v12, v8

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v10

    add-int/2addr v10, v3

    invoke-direct {v9, v8, v3, v12, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->r:Lj/c;

    invoke-virtual {v3, v9}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->r:Lj/c;

    invoke-virtual {v3, v7}, Lj/c;->setType(I)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->r:Lj/c;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setResizeIndicatorHidden(Z)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->r:Lj/c;

    invoke-virtual {p0, v3}, Lcom/zjx/jyandroid/Extensions/pubg/e;->f(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    iget v8, v9, Landroid/graphics/Rect;->right:I

    iget v3, v9, Landroid/graphics/Rect;->top:I

    if-nez v4, :cond_15

    iget-object v7, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->r:Lj/c;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_13
    const/16 v7, 0x14

    if-ne v5, v7, :cond_14

    invoke-static {}, Lj/b;->getDefaultSize()Landroid/util/Size;

    move-result-object v7

    new-instance v10, Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v12

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-direct {v10, v12, v7}, Landroid/util/Size;-><init>(II)V

    new-instance v7, Lj/b;

    iget-object v12, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->g:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v7, v12}, Lj/b;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->F:Lj/b;

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v12

    add-int/2addr v12, v8

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v10

    add-int/2addr v10, v3

    invoke-direct {v7, v8, v3, v12, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->F:Lj/b;

    invoke-virtual {v3, v7}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->F:Lj/b;

    invoke-virtual {v3, v9}, Lj/b;->setType(I)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->F:Lj/b;

    invoke-virtual {p0, v3}, Lcom/zjx/jyandroid/Extensions/pubg/e;->f(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    iget v8, v7, Landroid/graphics/Rect;->right:I

    iget v3, v7, Landroid/graphics/Rect;->top:I

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getActivateBundleIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c;->e()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    iget-object v7, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->F:Lj/b;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_14
    const/16 v9, 0x15

    if-ne v5, v9, :cond_15

    invoke-static {}, Lj/b;->getDefaultSize()Landroid/util/Size;

    move-result-object v9

    new-instance v10, Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v12

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v9

    invoke-direct {v10, v12, v9}, Landroid/util/Size;-><init>(II)V

    new-instance v9, Lj/b;

    iget-object v12, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->g:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v9, v12}, Lj/b;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->G:Lj/b;

    new-instance v9, Landroid/graphics/Rect;

    add-int/lit8 v12, v3, 0x50

    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v13

    add-int/2addr v13, v8

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v10

    add-int/2addr v3, v10

    add-int/lit8 v3, v3, 0x50

    invoke-direct {v9, v8, v12, v13, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->G:Lj/b;

    invoke-virtual {v3, v9}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->G:Lj/b;

    invoke-virtual {v3, v7}, Lj/b;->setType(I)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->G:Lj/b;

    invoke-virtual {p0, v3}, Lcom/zjx/jyandroid/Extensions/pubg/e;->f(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    iget v8, v9, Landroid/graphics/Rect;->right:I

    iget v3, v9, Landroid/graphics/Rect;->top:I

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getActivateBundleIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ly/c;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getActivateBundleIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c;->e()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    iget-object v7, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->G:Lj/b;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_15
    :goto_2
    add-int/lit8 v8, v8, 0x1e

    if-le v8, v1, :cond_16

    add-int/lit8 v3, v3, 0x64

    move v8, v2

    :cond_16
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_17
    iget-boolean v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->I:Z

    invoke-virtual {p0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/e;->v(Z)V

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->F:Lj/b;

    iget-object v2, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->G:Lj/b;

    iput-object v2, v1, Lj/b;->c:Lj/b;

    iput-object v1, v2, Lj/b;->c:Lj/b;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->H:Ljava/util/LinkedList;

    iget-object v2, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->s:Lj/a;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->H:Ljava/util/LinkedList;

    iget-object v2, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->t:Lj/a;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->H:Ljava/util/LinkedList;

    iget-object v2, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->u:Lj/a;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->H:Ljava/util/LinkedList;

    iget-object v2, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->v:Lj/a;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->H:Ljava/util/LinkedList;

    iget-object v2, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->w:Lj/a;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->H:Ljava/util/LinkedList;

    iget-object v2, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->x:Lj/a;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->s:Lj/a;

    iget-object v2, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->H:Ljava/util/LinkedList;

    iput-object v2, v1, Lj/a;->c:Ljava/util/LinkedList;

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->t:Lj/a;

    iput-object v2, v3, Lj/a;->c:Ljava/util/LinkedList;

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->u:Lj/a;

    iput-object v2, v3, Lj/a;->c:Ljava/util/LinkedList;

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->v:Lj/a;

    iput-object v2, v3, Lj/a;->c:Ljava/util/LinkedList;

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->w:Lj/a;

    iput-object v2, v3, Lj/a;->c:Ljava/util/LinkedList;

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->x:Lj/a;

    iput-object v2, v3, Lj/a;->c:Ljava/util/LinkedList;

    iget-object v2, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->t:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-direct {v1}, Lcom/zjx/jyandroid/Extensions/pubg/f;-><init>()V

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/pubg/f;->u()Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/e;->u(I)V

    goto :goto_3

    :cond_18
    invoke-virtual {p0, v9}, Lcom/zjx/jyandroid/Extensions/pubg/e;->u(I)V

    :goto_3
    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/zjx/jyandroid/Extensions/pubg/e;->x(II)V

    return-void
.end method

.method public h(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, ". Error: "

    const-string v1, "\u6620\u5c04\u56fe\u9519\u8bef\u3002componentInfo: "

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/e;->i()V

    return-void

    :cond_0
    const-string v2, "version"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    new-instance v2, Lcom/zjx/jyandroid/base/util/a;

    const-string v3, "\u65e0\u6cd5\u83b7\u53d6\u6620\u5c04\u56fe\u7248\u672c\u4fe1\u606f\u3002\u70b9\u51fb\u4fdd\u5b58\u53ef\u80fd\u5bfc\u81f4\u90e8\u5206\u6620\u5c04\u56fe\u4fe1\u606f\u7684\u4e22\u5931\u3002"

    sget-object v4, Lcom/zjx/jyandroid/base/util/ToastView$a;->d:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {v2, v3, v4}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {v2}, Lcom/zjx/jyandroid/base/util/a;->a()V

    goto :goto_0

    :cond_1
    new-instance v3, Lio/github/g00fy2/versioncompare/Version;

    const-string v4, "0.0.2"

    invoke-direct {v3, v4}, Lio/github/g00fy2/versioncompare/Version;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lio/github/g00fy2/versioncompare/Version;->isLowerThan(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v2, Lcom/zjx/jyandroid/base/util/a;

    const-string v3, "\u6620\u5c04\u56fe\u7248\u672c\u9ad8\u4e8e\u672c\u8f6f\u4ef6\u7248\u672c\u3002\u53ef\u80fd\u5bfc\u81f4\u6620\u5c04\u56fe\u90e8\u5206\u4fe1\u606f\u65e0\u6cd5\u52a0\u8f7d\u3002"

    sget-object v4, Lcom/zjx/jyandroid/base/util/ToastView$a;->d:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {v2, v3, v4}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {v2}, Lcom/zjx/jyandroid/base/util/a;->a()V

    goto :goto_0

    :cond_2
    new-instance v3, Lio/github/g00fy2/versioncompare/Version;

    invoke-direct {v3, v4}, Lio/github/g00fy2/versioncompare/Version;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lio/github/g00fy2/versioncompare/Version;->isHigherThan(Ljava/lang/String;)Z

    :goto_0
    const-string v2, "components"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/AbstractList;

    if-nez v2, :cond_3

    return-void

    :cond_3
    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    :try_start_0
    const-string v4, "type"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    new-instance v5, Lr/e;

    invoke-direct {v5}, Lr/e;-><init>()V

    invoke-virtual {v5, v3}, Lr/e;->e(Ljava/util/Map;)V

    invoke-virtual {v5}, Lr/e;->b()Landroid/graphics/Rect;

    move-result-object v5

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->k:Lj/c;

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    goto :goto_1

    :catch_0
    move-exception v4

    goto/16 :goto_2

    :catch_1
    move-exception v4

    goto/16 :goto_3

    :cond_5
    const/4 v6, 0x1

    if-ne v4, v6, :cond_6

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->l:Lj/c;

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_6
    const/4 v7, 0x2

    if-ne v4, v7, :cond_7

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->m:Lj/c;

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_7
    const/4 v7, 0x3

    if-ne v4, v7, :cond_8

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->n:Lj/c;

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_8
    const/4 v7, 0x4

    if-ne v4, v7, :cond_9

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->y:Lj/g;

    invoke-virtual {v4, v5}, Lj/g;->setFrame(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_9
    const/4 v7, 0x5

    if-ne v4, v7, :cond_a

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->z:Lj/g;

    invoke-virtual {v4, v5}, Lj/g;->setFrame(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_a
    const/16 v7, 0xe

    if-ne v4, v7, :cond_b

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->E:Lj/f;

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_b
    const/4 v7, 0x7

    if-ne v4, v7, :cond_c

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->D:Lj/f;

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_c
    const/4 v7, 0x6

    if-ne v4, v7, :cond_d

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->C:Lj/f;

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_d
    const/16 v7, 0x8

    const/4 v8, 0x0

    if-ne v4, v7, :cond_e

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    iget-object v4, v4, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->t:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4, v7}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->s:Lj/a;

    invoke-virtual {v4, v8}, Lj/a;->setAutoSyncPlace(Z)V

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->s:Lj/a;

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->s:Lj/a;

    invoke-virtual {v4, v6}, Lj/a;->setAutoSyncPlace(Z)V

    goto/16 :goto_1

    :cond_e
    const/16 v7, 0x9

    if-ne v4, v7, :cond_f

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->u:Lj/a;

    invoke-virtual {v4, v8}, Lj/a;->setAutoSyncPlace(Z)V

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->u:Lj/a;

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->u:Lj/a;

    invoke-virtual {v4, v6}, Lj/a;->setAutoSyncPlace(Z)V

    goto/16 :goto_1

    :cond_f
    const/16 v7, 0xa

    if-ne v4, v7, :cond_10

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->w:Lj/a;

    invoke-virtual {v4, v8}, Lj/a;->setAutoSyncPlace(Z)V

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->w:Lj/a;

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->w:Lj/a;

    invoke-virtual {v4, v6}, Lj/a;->setAutoSyncPlace(Z)V

    goto/16 :goto_1

    :cond_10
    const/16 v7, 0xb

    if-ne v4, v7, :cond_11

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->t:Lj/a;

    invoke-virtual {v4, v8}, Lj/a;->setAutoSyncPlace(Z)V

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->t:Lj/a;

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->t:Lj/a;

    invoke-virtual {v4, v6}, Lj/a;->setAutoSyncPlace(Z)V

    goto/16 :goto_1

    :cond_11
    const/16 v7, 0xc

    if-ne v4, v7, :cond_12

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->v:Lj/a;

    invoke-virtual {v4, v8}, Lj/a;->setAutoSyncPlace(Z)V

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->v:Lj/a;

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->v:Lj/a;

    invoke-virtual {v4, v6}, Lj/a;->setAutoSyncPlace(Z)V

    goto/16 :goto_1

    :cond_12
    const/16 v7, 0xd

    if-ne v4, v7, :cond_13

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->x:Lj/a;

    invoke-virtual {v4, v8}, Lj/a;->setAutoSyncPlace(Z)V

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->x:Lj/a;

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->x:Lj/a;

    invoke-virtual {v4, v6}, Lj/a;->setAutoSyncPlace(Z)V

    goto/16 :goto_1

    :cond_13
    const/16 v6, 0xf

    if-ne v4, v6, :cond_14

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->o:Lj/c;

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    :cond_14
    const/16 v6, 0x10

    if-ne v4, v6, :cond_15

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->p:Lj/c;

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    :cond_15
    const/16 v6, 0x11

    if-ne v4, v6, :cond_16

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->q:Lj/c;

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    :cond_16
    const/16 v6, 0x12

    if-ne v4, v6, :cond_17

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->r:Lj/c;

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    :cond_17
    const/16 v6, 0x13

    if-ne v4, v6, :cond_18

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->F:Lj/b;

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    :cond_18
    const/16 v6, 0x14

    if-ne v4, v6, :cond_4

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->G:Lj/b;

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ly/c;->b(Ljava/lang/String;)V

    new-instance v3, Lcom/zjx/jyandroid/base/util/a;

    const-string v4, "\u6709\u90e8\u5206\u6620\u5c04\u70b9\u65e0\u6cd5\u663e\u793a"

    sget-object v5, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {v3, v4, v5}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {v3}, Lcom/zjx/jyandroid/base/util/a;->a()V

    goto/16 :goto_1

    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ly/c;->b(Ljava/lang/String;)V

    new-instance v3, Lcom/zjx/jyandroid/base/util/a;

    const-string v4, "\u6709\u90e8\u5206\u6620\u5c04\u70b9\u65e0\u6cd5\u663e\u793a\uff0c\u53ef\u80fd\u56e0\u4e3a\u6b64\u6e38\u620f\u5385\u7248\u672c\u8fc7\u4f4e"

    sget-object v5, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {v3, v4, v5}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {v3}, Lcom/zjx/jyandroid/base/util/a;->a()V

    goto/16 :goto_1

    :cond_19
    const-string v0, "weaponSize"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    const-string v1, "scopeSize"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    if-eqz v0, :cond_1a

    if-eqz p1, :cond_1a

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/e;->x(II)V

    goto :goto_4

    :cond_1a
    const/4 p1, -0x1

    invoke-virtual {p0, p1, p1}, Lcom/zjx/jyandroid/Extensions/pubg/e;->x(II)V

    :goto_4
    return-void
.end method

.method public i()V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->g:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->removeViews(II)V

    return-void
.end method

.method public j(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V
    .locals 4

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->i:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/Extensions/pubg/e;->w(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    :cond_0
    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->getComponentViews()[Landroid/view/View;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->g:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public k()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "version"

    const-string v3, "0.0.2"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6211\u7684\u6620\u5c04"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/zjx/jyandroid/base/util/b$h;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Lcom/zjx/jyandroid/base/util/b$h;-><init>(I)V

    invoke-virtual {v3}, Lcom/zjx/jyandroid/base/util/b$h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "components"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->u:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v2}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->getValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "weaponSize"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->v:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v2}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->getValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "scopeSize"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->g:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_7

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->g:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lj/d;

    if-ne v4, v5, :cond_0

    goto/16 :goto_2

    :cond_0
    check-cast v3, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    new-instance v4, Lr/e;

    invoke-direct {v4}, Lr/e;-><init>()V

    invoke-virtual {v4, v3}, Lr/e;->d(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lj/c;

    const-string v7, "type"

    if-ne v5, v6, :cond_1

    check-cast v3, Lj/c;

    invoke-virtual {v4}, Lr/e;->f()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3}, Lj/c;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lj/g;

    if-ne v5, v6, :cond_2

    check-cast v3, Lj/g;

    invoke-virtual {v4}, Lr/e;->f()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3}, Lj/e;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lj/a;

    if-ne v5, v6, :cond_3

    check-cast v3, Lj/f;

    invoke-virtual {v4}, Lr/e;->f()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3}, Lj/f;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lj/f;

    if-ne v5, v6, :cond_4

    check-cast v3, Lj/f;

    invoke-virtual {v4}, Lr/e;->f()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3}, Lj/f;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lj/b;

    if-ne v5, v6, :cond_5

    check-cast v3, Lj/b;

    invoke-virtual {v4}, Lr/e;->f()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3}, Lj/e;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    return-object v1
.end method

.method public l()V
    .locals 19

    move-object/from16 v0, p0

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->setDefaultEventReceiverEnabled(Z)V

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object v1

    const-class v3, Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-virtual {v1, v3}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getLoadedExtensionInstanceByClass(Ljava/lang/Class;)Lcom/zjx/jyandroid/Extensions/IExtension;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    sget v5, Lcom/zjx/jyandroid/R$layout;->components_holder_view:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    iput-object v5, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->g:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    sget v5, Lcom/zjx/jyandroid/R$layout;->pubg_map_panel_view:I

    new-instance v6, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;

    invoke-direct {v6, v3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    iput-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->i()Landroid/util/Size;

    move-result-object v3

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v4

    iget-object v5, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->g:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v9

    invoke-static {}, Ll/b;->i()I

    move-result v3

    or-int/lit8 v11, v3, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v10, 0x33

    invoke-virtual/range {v4 .. v11}, Ll/b;->d(Lcom/zjx/jyandroid/base/BaseFloatingView;IIIIII)V

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v12

    iget-object v13, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    const/16 v17, -0x2

    const/16 v18, 0x31

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x2

    invoke-virtual/range {v12 .. v18}, Ll/b;->c(Lcom/zjx/jyandroid/base/BaseFloatingView;IIIII)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setDraggable(Z)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    iget-object v3, v3, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->o:Landroid/widget/Switch;

    iget-object v5, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->a:Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-virtual {v5}, Lcom/zjx/jyandroid/Extensions/pubg/f;->w()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    new-instance v5, Lcom/zjx/jyandroid/Extensions/pubg/e$h;

    invoke-direct {v5, v0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/e$h;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/e;Lcom/zjx/jyandroid/Extensions/pubg/d;)V

    iput-object v5, v3, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->a:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$o;

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->t:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    const/high16 v3, 0x430c0000    # 140.0f

    invoke-virtual {v1, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setMaximumValue(F)V

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->t:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    const/high16 v3, 0x428c0000    # 70.0f

    invoke-virtual {v1, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setMinimumValue(F)V

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->t:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/pubg/e$i;

    invoke-direct {v3, v0}, Lcom/zjx/jyandroid/Extensions/pubg/e$i;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/e;)V

    invoke-virtual {v1, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->p:Landroid/widget/Switch;

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->a:Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-virtual {v3}, Lcom/zjx/jyandroid/Extensions/pubg/f;->u()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/pubg/e$j;

    invoke-direct {v3, v0}, Lcom/zjx/jyandroid/Extensions/pubg/e$j;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/e;)V

    iput-object v3, v1, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->c:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$o;

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->a:Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/pubg/f;->x()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/e;->v(Z)V

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->r:Landroid/widget/Switch;

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->a:Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-virtual {v3}, Lcom/zjx/jyandroid/Extensions/pubg/f;->x()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/pubg/e$k;

    invoke-direct {v3, v0}, Lcom/zjx/jyandroid/Extensions/pubg/e$k;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/e;)V

    iput-object v3, v1, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->d:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$o;

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/pubg/e$l;

    invoke-direct {v3, v0}, Lcom/zjx/jyandroid/Extensions/pubg/e$l;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/e;)V

    invoke-virtual {v1, v3}, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->setPubgMapPanelViewAdapter(Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$n;)V

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->g:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/pubg/e$m;

    invoke-direct {v3, v0}, Lcom/zjx/jyandroid/Extensions/pubg/e$m;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/e;)V

    invoke-virtual {v1, v3}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setOnConfigurationChangedListener(Lcom/zjx/jyandroid/base/Interfaces/MView$OnViewConfigurationChangedListener;)V

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->g:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/pubg/e$n;

    invoke-direct {v3, v0}, Lcom/zjx/jyandroid/Extensions/pubg/e$n;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/e;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->s:Landroid/widget/Switch;

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->a:Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-virtual {v3}, Lcom/zjx/jyandroid/Extensions/pubg/f;->v()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->a:Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-virtual {v3}, Lcom/zjx/jyandroid/Extensions/pubg/f;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v4

    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->s:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v4, v0, Lcom/zjx/jyandroid/Extensions/pubg/e;->b:Z

    :cond_1
    return-void
.end method

.method public final m()V
    .locals 10

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->j:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/zjx/jyandroid/R$layout;->pubg_preset_recognition_map_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->j:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->i()Landroid/util/Size;

    move-result-object v0

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v1

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->j:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3e4ccccc    # 0.19999999f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f19999a    # 0.6f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-double v6, v0

    const-wide v8, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v6, v8

    double-to-int v6, v6

    const/16 v7, 0x33

    const/16 v8, 0x200

    invoke-virtual/range {v1 .. v8}, Ll/b;->d(Lcom/zjx/jyandroid/base/BaseFloatingView;IIIIII)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->j:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;->e:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/e$o;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/e$o;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->j:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/e$a;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/Extensions/pubg/e$a;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/e;)V

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;->setAdapter(Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$c;)V

    return-void
.end method

.method public n(II)V
    .locals 5

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->i:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz p1, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p1

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p1

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v1

    :cond_1
    if-eqz p2, :cond_2

    new-instance p1, Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, p2

    iget p2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p1, v1, v2, v3, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, p1

    :cond_2
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->i:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final o()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->s:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->x:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->y:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->x:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->y:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final p()V
    .locals 3

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/e;->o()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->y:Lj/g;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->z:Lj/g;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->k:Lj/c;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->s:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->u:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->u:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->v:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->v:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v0, v2}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->y:Lj/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lj/g;->setDisplayImage(Z)V

    :cond_2
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->z:Lj/g;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lj/g;->setDisplayImage(Z)V

    :cond_3
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->k:Lj/c;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Lj/c;->setDisplayImage(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final q(Landroid/graphics/Bitmap;)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_3

    move v2, v0

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v4

    const/16 v5, 0x14

    if-ge v4, v5, :cond_0

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v4

    if-ge v4, v5, :cond_0

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    if-ge v4, v5, :cond_0

    move v3, v0

    goto :goto_2

    :cond_0
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v4

    const/16 v5, 0xe6

    if-le v4, v5, :cond_1

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v4

    if-le v4, v5, :cond_1

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    if-le v4, v5, :cond_1

    sget v3, Lcom/zjx/jyandroid/R$color;->jy_blue_1:I

    invoke-static {v3}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result v3

    :cond_1
    :goto_2
    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final r()V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->u:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->u:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->v:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->v:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v0, v2}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->A:Lj/d;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/Extensions/pubg/e;->j(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->A:Lj/d;

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->B:Lj/d;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/Extensions/pubg/e;->j(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    iput-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->B:Lj/d;

    :cond_1
    return-void
.end method

.method public s()V
    .locals 4

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->j()Landroid/util/Size;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c;->h:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/pubg/c$j;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->u:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iget v2, v0, Lcom/zjx/jyandroid/Extensions/pubg/c$j;->a:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->u:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->getOnValueChangeListener()Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;

    move-result-object v1

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->u:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iget v3, v0, Lcom/zjx/jyandroid/Extensions/pubg/c$j;->a:I

    int-to-float v3, v3

    invoke-interface {v1, v2, v3}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;->onValueChange(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;F)F

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->v:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iget v2, v0, Lcom/zjx/jyandroid/Extensions/pubg/c$j;->b:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->v:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->getOnValueChangeListener()Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;

    move-result-object v1

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->v:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iget v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/c$j;->b:I

    int-to-float v0, v0

    invoke-interface {v1, v2, v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;->onValueChange(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;F)F

    :cond_0
    return-void
.end method

.method public t(I)V
    .locals 6

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getActivateBundleIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->H:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj/a;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int v4, v3, p1

    add-int v5, v2, p1

    invoke-virtual {v1, v3, v2, v4, v5}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->setFrame(IIII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->F:Lj/b;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->F:Lj/b;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int v4, v3, p1

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->setFrame(IIII)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->G:Lj/b;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->G:Lj/b;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, v3

    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->setFrame(IIII)V

    :cond_1
    return-void
.end method

.method public u(I)V
    .locals 2

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getActivateBundleIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->H:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->F:Lj/b;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->G:Lj/b;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public v(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->I:Z

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->k:Lj/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public w(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->i:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setSelected(Z)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setSelected(Z)V

    :cond_1
    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->i:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    return-void
.end method

.method public final x(II)V
    .locals 11

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->a:Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/f;->p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/22.JPG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v6

    div-float/2addr v8, v9

    iget-object v10, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->a:Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-virtual {v10}, Lcom/zjx/jyandroid/Extensions/pubg/f;->l()F

    move-result v10

    cmpl-float v10, v10, v5

    if-eqz v10, :cond_1

    if-ne p1, v4, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->a:Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/f;->l()F

    move-result p1

    mul-float/2addr p1, v9

    float-to-int p1, p1

    :cond_0
    int-to-float v6, p1

    mul-float/2addr v8, v6

    float-to-int v7, v8

    move v6, p1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/e;->q(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->y:Lj/g;

    new-instance v8, Landroid/util/Size;

    invoke-direct {v8, v6, v7}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p1, v1, v8}, Lj/g;->setImage(Landroid/graphics/Bitmap;Landroid/util/Size;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->z:Lj/g;

    new-instance v8, Landroid/util/Size;

    invoke-direct {v8, v6, v7}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p1, v1, v8}, Lj/g;->setImage(Landroid/graphics/Bitmap;Landroid/util/Size;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->y:Lj/g;

    invoke-virtual {p1, v3}, Lj/g;->setDisplayImage(Z)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->z:Lj/g;

    invoke-virtual {p1, v3}, Lj/g;->setDisplayImage(Z)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->u:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    int-to-float v6, v6

    invoke-virtual {p1, v6}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->u:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    new-instance v6, Lcom/zjx/jyandroid/Extensions/pubg/e$b;

    invoke-direct {v6, p0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/e$b;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/e;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v6}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    :cond_2
    new-instance p1, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/s3.JPG"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    int-to-float v6, v0

    div-float/2addr v2, v6

    iget-object v7, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->a:Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-virtual {v7}, Lcom/zjx/jyandroid/Extensions/pubg/f;->j()F

    move-result v7

    cmpl-float v5, v7, v5

    if-eqz v5, :cond_4

    if-ne p2, v4, :cond_3

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->a:Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-virtual {p2}, Lcom/zjx/jyandroid/Extensions/pubg/f;->j()F

    move-result p2

    mul-float/2addr p2, v6

    float-to-int p2, p2

    :cond_3
    int-to-float v0, p2

    mul-float/2addr v2, v0

    float-to-int v1, v2

    move v0, p2

    :cond_4
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/e;->q(Landroid/graphics/Bitmap;)V

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->k:Lj/c;

    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v0, v1}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p2, p1, v2}, Lj/c;->setImage(Landroid/graphics/Bitmap;Landroid/util/Size;)V

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->k:Lj/c;

    invoke-virtual {p2, v3}, Lj/c;->setDisplayImage(Z)V

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    iget-object p2, p2, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->v:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    iget-object p2, p2, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->v:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/e$c;

    invoke-direct {v0, p0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/e$c;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/e;Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    :cond_5
    return-void
.end method

.method public y()V
    .locals 2

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    invoke-virtual {v0, v1}, Ll/b;->q(Lcom/zjx/jyandroid/base/BaseFloatingView;)V

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->g:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v0, v1}, Ll/b;->q(Lcom/zjx/jyandroid/base/BaseFloatingView;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->h:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->g:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->e:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object v0

    const-class v1, Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getLoadedExtensionInstanceByClass(Ljava/lang/Class;)Lcom/zjx/jyandroid/Extensions/IExtension;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->V()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->e:Z

    :cond_0
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->setDefaultEventReceiverEnabled(Z)V

    return-void
.end method

.method public final z()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->j:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->j:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;

    invoke-virtual {v0, v1}, Ll/b;->q(Lcom/zjx/jyandroid/base/BaseFloatingView;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e;->j:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;

    return-void
.end method
