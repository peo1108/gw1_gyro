.class public Lq/b;
.super Lq/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq/b$c;
    }
.end annotation


# instance fields
.field public c:Lq/b$c;

.field public d:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationViews/MacroOperationViewClick;

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lq/c;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lq/b;->e:I

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lr/x$a;->c:Lr/x$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lq/b;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "duration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lq/c;->b:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lq/c;->b:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "y"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public b(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationEditor;)Lp/a;
    .locals 4

    iget-object v0, p0, Lq/b;->d:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationViews/MacroOperationViewClick;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/zjx/jyandroid/R$layout;->macro_operation_view_click:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationViews/MacroOperationViewClick;

    iput-object v0, p0, Lq/b;->d:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationViews/MacroOperationViewClick;

    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v2, p0, Lq/b;->d:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationViews/MacroOperationViewClick;

    invoke-virtual {v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationViews/MacroOperationViewClick;->getDefaultHeight()I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lq/b;->d:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationViews/MacroOperationViewClick;

    iget-object v1, p0, Lq/c;->b:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationViews/MacroOperationViewClick;->a(Landroid/graphics/Point;)V

    :cond_0
    iget-object v0, p0, Lq/b;->d:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationViews/MacroOperationViewClick;

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationViews/MacroOperationViewClick;->b:Landroid/widget/Button;

    new-instance v1, Lq/b$a;

    invoke-direct {v1, p0, p1}, Lq/b$a;-><init>(Lq/b;Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationEditor;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lq/b;->d:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationViews/MacroOperationViewClick;

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationViews/MacroOperationViewClick;->c:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    iget v0, p0, Lq/b;->e:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setValue(F)V

    iget-object p1, p0, Lq/b;->d:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationViews/MacroOperationViewClick;

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationViews/MacroOperationViewClick;->c:Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;

    new-instance v0, Lq/b$b;

    invoke-direct {v0, p0}, Lq/b$b;-><init>(Lq/b;)V

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;)V

    iget-object p1, p0, Lq/b;->d:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationViews/MacroOperationViewClick;

    return-object p1
.end method

.method public d(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "duration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lq/b;->e:I

    new-instance v0, Landroid/graphics/Point;

    const-string v1, "x"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const-string v2, "y"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lq/c;->b:Landroid/graphics/Point;

    return-void
.end method

.method public e(Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lq/b;->c:Lq/b$c;

    return-void
.end method

.method public f(Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;)V
    .locals 4

    new-instance v0, Lq/b$c;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lq/b$c;-><init>(Lq/b;Landroid/content/Context;)V

    iput-object v0, p0, Lq/b;->c:Lq/b$c;

    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/16 v2, 0x23

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v3

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v2

    invoke-direct {v1, v3, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lq/b;->c:Lq/b$c;

    iget-object v1, p0, Lq/c;->b:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->getRadius()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    iget-object v0, p0, Lq/b;->c:Lq/b$c;

    iget-object v1, p0, Lq/c;->b:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->getRadius()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    iget-object v0, p0, Lq/b;->c:Lq/b$c;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public g(Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;)V
    .locals 2

    new-instance p1, Landroid/graphics/Point;

    iget-object v0, p0, Lq/b;->c:Lq/b$c;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v1, p0, Lq/b;->c:Lq/b$c;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, p1}, Lq/c;->j(Landroid/graphics/Point;)V

    invoke-virtual {p0}, Lq/b;->k()V

    const/4 p1, 0x0

    iput-object p1, p0, Lq/b;->c:Lq/b$c;

    return-void
.end method

.method public k()V
    .locals 2

    iget-object v0, p0, Lq/b;->d:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationViews/MacroOperationViewClick;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lq/c;->b:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationViews/MacroOperationViewClick;->a(Landroid/graphics/Point;)V

    return-void
.end method
