.class public Lq/h;
.super Lq/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq/h$b;
    }
.end annotation


# instance fields
.field public b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationViews/MacroOperationViewSwitchScope;

.field public c:Lq/h$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lq/a;-><init>()V

    sget-object v0, Lq/h$b;->a:Lq/h$b;

    iput-object v0, p0, Lq/h;->c:Lq/h$b;

    return-void
.end method

.method public static synthetic i(Lq/h;Lq/h$b;)Lq/h$b;
    .locals 0

    iput-object p1, p0, Lq/h;->c:Lq/h$b;

    return-object p1
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

    const/16 v1, 0x270f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lq/h;->c:Lq/h$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "switchType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public b(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationEditor;)Lp/a;
    .locals 4

    iget-object v0, p0, Lq/h;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationViews/MacroOperationViewSwitchScope;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/zjx/jyandroid/R$layout;->macro_operation_view_switch_scope:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationViews/MacroOperationViewSwitchScope;

    iput-object p1, p0, Lq/h;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationViews/MacroOperationViewSwitchScope;

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v2, p0, Lq/h;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationViews/MacroOperationViewSwitchScope;

    invoke-virtual {v2}, Lp/a;->getDefaultHeight()I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v0, v3, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object p1, p0, Lq/h;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationViews/MacroOperationViewSwitchScope;

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationViews/MacroOperationViewSwitchScope;->a:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    iget-object v0, p0, Lq/h;->c:Lq/h$b;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setPosition(IZ)V

    iget-object p1, p0, Lq/h;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationViews/MacroOperationViewSwitchScope;

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationViews/MacroOperationViewSwitchScope;->a:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;

    new-instance v0, Lq/h$a;

    invoke-direct {v0, p0}, Lq/h$a;-><init>(Lq/h;)V

    invoke-virtual {p1, v0}, Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;->setOnPositionChangedListener(Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$OnPositionChangedListener;)V

    iget-object p1, p0, Lq/h;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationViews/MacroOperationViewSwitchScope;

    return-object p1
.end method

.method public d(Ljava/util/Map;)V
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

    invoke-static {}, Lq/h$b;->values()[Lq/h$b;

    move-result-object v0

    const-string v1, "switchType"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    iput-object p1, p0, Lq/h;->c:Lq/h$b;

    return-void
.end method

.method public e(Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;)V
    .locals 0

    return-void
.end method

.method public f(Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;)V
    .locals 0

    return-void
.end method

.method public g(Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;)V
    .locals 0

    return-void
.end method
