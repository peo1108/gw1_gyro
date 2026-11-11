.class public Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;
.super Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/b;
.implements Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q$b;
    }
.end annotation


# instance fields
.field public l:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q$b;

.field public m:Lr/z0;

.field public n:Lr/z0$a;

.field public o:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public p:Landroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lr/z0;

    invoke-direct {p1}, Lr/z0;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->m:Lr/z0;

    .line 3
    sget-object p1, Lr/z0$a;->a:Lr/z0$a;

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->n:Lr/z0$a;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->o:Z

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->p:Landroid/graphics/Rect;

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/zjx/jyandroid/R$color;->macro_point_background:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    const v0, 0x3e99999a    # 0.3f

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/base/util/b;->T(IF)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setSelectedBackgroundColor(I)V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/zjx/jyandroid/R$color;->macro_point_background:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/base/util/b;->T(IF)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBackgroundColor(I)V

    .line 8
    sget p1, Lcom/zjx/jyandroid/R$string;->macro:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setTextLabelText(Ljava/lang/String;)V

    const/16 p1, 0xa

    .line 9
    invoke-virtual {p0, p1, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setBorderDashWidthAndGap(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    new-instance p1, Lr/z0;

    invoke-direct {p1}, Lr/z0;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->m:Lr/z0;

    .line 12
    sget-object p1, Lr/z0$a;->a:Lr/z0$a;

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->n:Lr/z0$a;

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->o:Z

    .line 14
    new-instance p2, Landroid/graphics/Rect;

    const/4 v0, 0x1

    invoke-direct {p2, p1, p1, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->p:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    new-instance p1, Lr/z0;

    invoke-direct {p1}, Lr/z0;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->m:Lr/z0;

    .line 17
    sget-object p1, Lr/z0$a;->a:Lr/z0$a;

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->n:Lr/z0$a;

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->o:Z

    .line 19
    new-instance p2, Landroid/graphics/Rect;

    const/4 p3, 0x1

    invoke-direct {p2, p1, p1, p3, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->p:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 21
    new-instance p1, Lr/z0;

    invoke-direct {p1}, Lr/z0;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->m:Lr/z0;

    .line 22
    sget-object p1, Lr/z0$a;->a:Lr/z0$a;

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->n:Lr/z0$a;

    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->o:Z

    .line 24
    new-instance p2, Landroid/graphics/Rect;

    const/4 p3, 0x1

    invoke-direct {p2, p1, p1, p3, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->p:Landroid/graphics/Rect;

    return-void
.end method

.method public static synthetic e(Ljava/lang/Number;)I
    .locals 0

    invoke-static {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->i(Ljava/lang/Number;)I

    move-result p0

    return p0
.end method

.method public static synthetic f(Ljava/lang/Number;)I
    .locals 0

    invoke-static {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->h(Ljava/lang/Number;)I

    move-result p0

    return p0
.end method

.method public static getDefaultSize()Landroid/util/Size;
    .locals 3

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$c;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    goto :goto_0

    :cond_0
    const/16 v0, 0x50

    :goto_0
    new-instance v1, Landroid/util/Size;

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v2

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method

.method public static synthetic h(Ljava/lang/Number;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static synthetic i(Ljava/lang/Number;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public g()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->o:Z

    return v0
.end method

.method public getTouchTerminateRect()Landroid/graphics/Rect;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->p:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getTriggerType()Lr/z0$a;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->m:Lr/z0;

    iget-object v0, v0, Lr/z0;->a:Lr/z0$a;

    return-object v0
.end method

.method public isBlockTouch()Z
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->m:Lr/z0;

    iget-boolean v0, v0, Lr/z0;->b:Z

    return v0
.end method

.method public loadFromMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->loadFromMap(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->m:Lr/z0;

    invoke-virtual {v0, p1}, Lr/z0;->loadFromMap(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->m:Lr/z0;

    iget-object v0, v0, Lr/z0;->a:Lr/z0$a;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->n:Lr/z0$a;

    new-instance v0, Lr/y;

    invoke-direct {v0}, Lr/y;-><init>()V

    invoke-virtual {v0, p1}, Lr/y;->e(Ljava/util/Map;)V

    invoke-virtual {v0}, Lr/y;->g()Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->setOperations(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;)V

    iget-object p1, v0, Lr/y;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/o;

    invoke-direct {v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/o;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->setTriggerKeyCodes([I)V

    iget-object p1, v0, Lr/y;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/p;

    invoke-direct {v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/p;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->setTerminateKeyCodes([I)V

    iget-object p1, v0, Lr/y;->e:Lr/x$b;

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->setTriggerMode(Lr/x$b;)V

    iget-boolean p1, v0, Lr/y;->h:Z

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->setTouchTerminate(Z)V

    iget-object p1, v0, Lr/y;->i:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->setTouchTerminateRect(Landroid/graphics/Rect;)V

    iget-object p1, v0, Lr/y;->b:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->setName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setBlockTouch(Z)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->m:Lr/z0;

    iput-boolean p1, v0, Lr/z0;->b:Z

    return-void
.end method

.method public setRadius(I)V
    .locals 2

    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result p1

    :cond_0
    invoke-super {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setRadius(I)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setSelected(Z)V

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setResizeIndicatorHidden(Z)V

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->setTerminatePointHidden(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->setTerminatePointHidden(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->setTerminatePointHidden(Z)V

    :goto_0
    return-void
.end method

.method public setTerminatePointHidden(Z)V
    .locals 1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->l:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q$b;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->l:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q$b;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q$b;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q$b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->l:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q$b;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->l:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q$b;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->l:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q$b;

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->p:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->l:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q$b;

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q$a;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q$a;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;)V

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->setOnFrameChangedListener(Lcom/zjx/jyandroid/base/Interfaces/OnFrameChangedListener;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->l:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q$b;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setSelected(Z)V

    :goto_1
    return-void
.end method

.method public setTouchTerminate(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setTouchTerminateRect(Landroid/graphics/Rect;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->p:Landroid/graphics/Rect;

    return-void
.end method

.method public setTriggerType(Lr/z0$a;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->m:Lr/z0;

    iput-object p1, v0, Lr/z0;->a:Lr/z0$a;

    return-void
.end method

.method public toMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lr/y;

    invoke-direct {v0}, Lr/y;-><init>()V

    invoke-virtual {v0, p0}, Lr/y;->d(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    invoke-super {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->toMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lr/y;->f()Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zjx/jyandroid/base/util/b;->M(Ljava/util/Map;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->m:Lr/z0;

    invoke-virtual {v0}, Lr/z0;->toMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zjx/jyandroid/base/util/b;->M(Ljava/util/Map;Ljava/util/Map;)V

    return-object v1
.end method
