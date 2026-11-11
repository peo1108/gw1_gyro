.class public Lcom/zjx/jyandroid/Extensions/dnf/keymapcomponent/UploadKeymapComponentDnfMoveFingerCastSkill;
.super Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/t;


# instance fields
.field dnfMoveFingerCastSkillProperty:Lcom/zjx/jyandroid/Extensions/dnf/componentproperty/DnfMoveFingerCastSkillProperty;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/zjx/jyandroid/Extensions/dnf/componentproperty/DnfMoveFingerCastSkillProperty;

    invoke-direct {p1}, Lcom/zjx/jyandroid/Extensions/dnf/componentproperty/DnfMoveFingerCastSkillProperty;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/dnf/keymapcomponent/UploadKeymapComponentDnfMoveFingerCastSkill;->dnfMoveFingerCastSkillProperty:Lcom/zjx/jyandroid/Extensions/dnf/componentproperty/DnfMoveFingerCastSkillProperty;

    .line 3
    const-string p1, "DNF\u6280\u80fd"

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setTextLabelText(Ljava/lang/String;)V

    .line 4
    sget p1, Lcom/zjx/jyandroid/R$color;->switch_floating_ball_display_background:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBackgroundColor(I)V

    .line 5
    sget p1, Lcom/zjx/jyandroid/R$color;->switch_floating_ball_display_background:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setSelectedBackgroundColor(I)V

    const p1, 0xffff8f

    .line 6
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBorderColor(I)V

    .line 7
    sget p1, Lcom/zjx/jyandroid/R$color;->white:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setSelectedBorderColor(I)V

    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBorderWidth(I)V

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setResizeIndicatorHidden(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    new-instance p1, Lcom/zjx/jyandroid/Extensions/dnf/componentproperty/DnfMoveFingerCastSkillProperty;

    invoke-direct {p1}, Lcom/zjx/jyandroid/Extensions/dnf/componentproperty/DnfMoveFingerCastSkillProperty;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/dnf/keymapcomponent/UploadKeymapComponentDnfMoveFingerCastSkill;->dnfMoveFingerCastSkillProperty:Lcom/zjx/jyandroid/Extensions/dnf/componentproperty/DnfMoveFingerCastSkillProperty;

    .line 12
    const-string p1, "DNF\u6280\u80fd"

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setTextLabelText(Ljava/lang/String;)V

    .line 13
    sget p1, Lcom/zjx/jyandroid/R$color;->switch_floating_ball_display_background:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBackgroundColor(I)V

    .line 14
    sget p1, Lcom/zjx/jyandroid/R$color;->switch_floating_ball_display_background:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setSelectedBackgroundColor(I)V

    const p1, 0xffff8f

    .line 15
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBorderColor(I)V

    .line 16
    sget p1, Lcom/zjx/jyandroid/R$color;->white:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setSelectedBorderColor(I)V

    const/4 p1, 0x1

    .line 17
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBorderWidth(I)V

    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setResizeIndicatorHidden(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    new-instance p1, Lcom/zjx/jyandroid/Extensions/dnf/componentproperty/DnfMoveFingerCastSkillProperty;

    invoke-direct {p1}, Lcom/zjx/jyandroid/Extensions/dnf/componentproperty/DnfMoveFingerCastSkillProperty;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/dnf/keymapcomponent/UploadKeymapComponentDnfMoveFingerCastSkill;->dnfMoveFingerCastSkillProperty:Lcom/zjx/jyandroid/Extensions/dnf/componentproperty/DnfMoveFingerCastSkillProperty;

    .line 21
    const-string p1, "DNF\u6280\u80fd"

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setTextLabelText(Ljava/lang/String;)V

    .line 22
    sget p1, Lcom/zjx/jyandroid/R$color;->switch_floating_ball_display_background:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBackgroundColor(I)V

    .line 23
    sget p1, Lcom/zjx/jyandroid/R$color;->switch_floating_ball_display_background:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setSelectedBackgroundColor(I)V

    const p1, 0xffff8f

    .line 24
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBorderColor(I)V

    .line 25
    sget p1, Lcom/zjx/jyandroid/R$color;->white:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setSelectedBorderColor(I)V

    const/4 p1, 0x1

    .line 26
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBorderWidth(I)V

    const/4 p1, 0x0

    .line 27
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setResizeIndicatorHidden(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 29
    new-instance p1, Lcom/zjx/jyandroid/Extensions/dnf/componentproperty/DnfMoveFingerCastSkillProperty;

    invoke-direct {p1}, Lcom/zjx/jyandroid/Extensions/dnf/componentproperty/DnfMoveFingerCastSkillProperty;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/dnf/keymapcomponent/UploadKeymapComponentDnfMoveFingerCastSkill;->dnfMoveFingerCastSkillProperty:Lcom/zjx/jyandroid/Extensions/dnf/componentproperty/DnfMoveFingerCastSkillProperty;

    .line 30
    const-string p1, "DNF\u6280\u80fd"

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setTextLabelText(Ljava/lang/String;)V

    .line 31
    sget p1, Lcom/zjx/jyandroid/R$color;->switch_floating_ball_display_background:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBackgroundColor(I)V

    .line 32
    sget p1, Lcom/zjx/jyandroid/R$color;->switch_floating_ball_display_background:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setSelectedBackgroundColor(I)V

    const p1, 0xffff8f

    .line 33
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBorderColor(I)V

    .line 34
    sget p1, Lcom/zjx/jyandroid/R$color;->white:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setSelectedBorderColor(I)V

    const/4 p1, 0x1

    .line 35
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBorderWidth(I)V

    const/4 p1, 0x0

    .line 36
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setResizeIndicatorHidden(Z)V

    return-void
.end method

.method public static getDefaultSize()Landroid/util/Size;
    .locals 3

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$c;->k()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x64

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v2

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x82

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v2

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public getSensitivity()F
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/dnf/keymapcomponent/UploadKeymapComponentDnfMoveFingerCastSkill;->dnfMoveFingerCastSkillProperty:Lcom/zjx/jyandroid/Extensions/dnf/componentproperty/DnfMoveFingerCastSkillProperty;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/dnf/componentproperty/DnfMoveFingerCastSkillProperty;->getSensitivity()F

    move-result v0

    return v0
.end method

.method public loadFromMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;->loadFromMap(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/dnf/keymapcomponent/UploadKeymapComponentDnfMoveFingerCastSkill;->dnfMoveFingerCastSkillProperty:Lcom/zjx/jyandroid/Extensions/dnf/componentproperty/DnfMoveFingerCastSkillProperty;

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/Extensions/dnf/componentproperty/DnfMoveFingerCastSkillProperty;->loadFromMap(Ljava/util/Map;)V

    return-void
.end method

.method public setSensitivity(F)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/dnf/keymapcomponent/UploadKeymapComponentDnfMoveFingerCastSkill;->dnfMoveFingerCastSkillProperty:Lcom/zjx/jyandroid/Extensions/dnf/componentproperty/DnfMoveFingerCastSkillProperty;

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/Extensions/dnf/componentproperty/DnfMoveFingerCastSkillProperty;->setSensitivity(F)V

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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/dnf/keymapcomponent/UploadKeymapComponentDnfMoveFingerCastSkill;->dnfMoveFingerCastSkillProperty:Lcom/zjx/jyandroid/Extensions/dnf/componentproperty/DnfMoveFingerCastSkillProperty;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/dnf/componentproperty/DnfMoveFingerCastSkillProperty;->toMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zjx/jyandroid/base/util/b;->M(Ljava/util/Map;Ljava/util/Map;)V

    invoke-super {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;->toMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zjx/jyandroid/base/util/b;->M(Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method public updateTextByCurrentKeyCodeArray()V
    .locals 0

    return-void
.end method
