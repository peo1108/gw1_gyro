.class public Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;
.super Lu7/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu7/a<",
        "LK6/b;",
        ">;"
    }
.end annotation


# instance fields
.field public A7:Landroid/widget/Switch;

.field public B7:Landroid/view/View;

.field public C7:Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;

.field public G7:Landroid/view/View;

.field public H7:Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;

.field public I7:Landroid/view/View;

.field public J7:Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;

.field public K7:Landroid/view/View;

.field public L7:Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;

.field public M7:Landroid/view/View;

.field public N7:Landroid/widget/Switch;

.field public U6:Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;

.field public V6:Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;

.field public W6:Landroid/widget/Switch;

.field public X6:Lf6/f$b;

.field public Y6:Landroid/view/View;

.field public Z6:LO6/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Li/P;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lu7/a;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, LO6/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, LO6/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->Z6:LO6/a;

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

    .line 3
    invoke-direct {p0, p1, p2}, Lu7/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance p1, LO6/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, LO6/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->Z6:LO6/a;

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

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lu7/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    new-instance p1, LO6/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, LO6/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->Z6:LO6/a;

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

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Lu7/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 8
    new-instance p1, LO6/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, LO6/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->Z6:LO6/a;

    return-void
.end method

.method public static synthetic x0(Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lu7/a;->v0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->Z6:LO6/a;

    invoke-virtual {v0}, LO6/a;->onDetachedFromWindow()V

    return-void
.end method

.method public s0()V
    .locals 2

    sget v0, Lcom/zjx/jyandroid/e$f;->V4:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;

    iput-object v0, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->U6:Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;

    sget v0, Lcom/zjx/jyandroid/e$f;->Ea:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;

    iput-object v0, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->V6:Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;

    sget v0, Lcom/zjx/jyandroid/e$f;->J6:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->W6:Landroid/widget/Switch;

    sget v0, Lcom/zjx/jyandroid/e$f;->f3:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->Y6:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/e$f;->dc:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->A7:Landroid/widget/Switch;

    sget v0, Lcom/zjx/jyandroid/e$f;->ec:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->B7:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/e$f;->fc:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;

    iput-object v0, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->C7:Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;

    sget v0, Lcom/zjx/jyandroid/e$f;->gc:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->G7:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/e$f;->hc:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;

    iput-object v0, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->H7:Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;

    sget v0, Lcom/zjx/jyandroid/e$f;->ic:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->I7:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/e$f;->jc:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;

    iput-object v0, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->J7:Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;

    sget v0, Lcom/zjx/jyandroid/e$f;->kc:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->K7:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/e$f;->lc:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;

    iput-object v0, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->L7:Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;

    sget v0, Lcom/zjx/jyandroid/e$f;->mc:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->M7:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/e$f;->nc:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->N7:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->Z6:LO6/a;

    iget-object v1, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->U6:Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;->getBindingKeyTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, LO6/a;->setBindKeyLabel(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->Z6:LO6/a;

    iget-object v1, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->U6:Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/base/Components/ModifyBindingKeyComponent;->getChangeKeyButton()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, LO6/a;->setChangeKeyButton(Landroid/widget/Button;)V

    return-void
.end method

.method public setComponent(LK6/b;)V
    .locals 1

    .line 2
    invoke-super {p0, p1}, Lu7/a;->setComponent(Lq7/a;)V

    .line 3
    iget-object v0, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->Z6:LO6/a;

    invoke-virtual {v0, p1}, LO6/a;->setComponent(Lq7/f;)V

    return-void
.end method

.method public bridge synthetic setComponent(Lq7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1
    check-cast p1, LK6/b;

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->setComponent(LK6/b;)V

    return-void
.end method

.method public u0()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->Y6:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView$a;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView$a;-><init>(Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->V6:Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;

    new-instance v1, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView$b;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView$b;-><init>(Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;)V

    invoke-virtual {v0, v1}, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons$g;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->W6:Landroid/widget/Switch;

    new-instance v1, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView$c;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView$c;-><init>(Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->A7:Landroid/widget/Switch;

    new-instance v1, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView$d;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView$d;-><init>(Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->C7:Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;

    new-instance v1, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView$e;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView$e;-><init>(Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;)V

    invoke-virtual {v0, v1}, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons$g;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->H7:Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;

    new-instance v1, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView$g;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView$g;-><init>(Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;)V

    invoke-virtual {v0, v1}, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons$g;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->J7:Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;

    new-instance v1, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView$h;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView$h;-><init>(Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;)V

    invoke-virtual {v0, v1}, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons$g;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->L7:Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;

    new-instance v1, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView$i;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView$i;-><init>(Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;)V

    invoke-virtual {v0, v1}, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->setOnValueChangeListener(Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons$g;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->N7:Landroid/widget/Switch;

    new-instance v1, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView$j;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView$j;-><init>(Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->Z6:LO6/a;

    invoke-virtual {v0}, LO6/a;->u0()V

    return-void
.end method

.method public bridge synthetic w0(Lq7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, LK6/b;

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->y0(LK6/b;)V

    return-void
.end method

.method public y0(LK6/b;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lu7/a;->t0()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->V6:Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;

    invoke-virtual {p1}, LK6/b;->getSensitivity()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->setValue(F)V

    iget-object v0, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->W6:Landroid/widget/Switch;

    invoke-virtual {p1}, LK6/b;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->A7:Landroid/widget/Switch;

    invoke-virtual {p1}, LK6/b;->isNadeGyroMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->C7:Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;

    invoke-virtual {p1}, LK6/b;->getInitialPullDown()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->setValue(F)V

    invoke-virtual {p1}, LK6/b;->isNadeGyroMode()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->B7:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->G7:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->H7:Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;

    invoke-virtual {p1}, LK6/b;->getNadeGyroSpeed()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->setValue(F)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->M7:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->N7:Landroid/widget/Switch;

    invoke-virtual {p1}, LK6/b;->getScrollAdjust()Z

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v3, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->J7:Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;

    invoke-virtual {p1}, LK6/b;->getScrollStep()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Lcom/zjx/jysdk/uicomponent/FilledSliderWithButtons;->setValue(F)V

    invoke-virtual {p1}, LK6/b;->getScrollAdjust()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    :goto_0
    iget-object v3, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->I7:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->K7:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->B7:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->G7:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->I7:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->K7:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->M7:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->Z6:LO6/a;

    invoke-virtual {v0, p1}, LO6/a;->z0(Lq7/f;)V

    return-void
.end method

.method public z0(Lq7/f;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/module/keymapeditor/componentsettingsview/FreeLookComponentSettingsView;->Z6:LO6/a;

    invoke-virtual {v0, p1}, LO6/a;->z0(Lq7/f;)V

    return-void
.end method
