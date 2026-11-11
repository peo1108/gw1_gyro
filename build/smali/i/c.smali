.class public Li/c;
.super Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/t;


# instance fields
.field public a:Lf/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lf/j;

    invoke-direct {p1}, Lf/j;-><init>()V

    iput-object p1, p0, Li/c;->a:Lf/j;

    .line 3
    sget p1, Lcom/zjx/jyandroid/R$string;->multifunctional_settings_long_press_crouch:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p1

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

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    new-instance p1, Lf/j;

    invoke-direct {p1}, Lf/j;-><init>()V

    iput-object p1, p0, Li/c;->a:Lf/j;

    .line 11
    sget p1, Lcom/zjx/jyandroid/R$string;->multifunctional_settings_long_press_crouch:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setTextLabelText(Ljava/lang/String;)V

    .line 12
    sget p1, Lcom/zjx/jyandroid/R$color;->switch_floating_ball_display_background:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBackgroundColor(I)V

    .line 13
    sget p1, Lcom/zjx/jyandroid/R$color;->switch_floating_ball_display_background:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setSelectedBackgroundColor(I)V

    const p1, 0xffff8f

    .line 14
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBorderColor(I)V

    .line 15
    sget p1, Lcom/zjx/jyandroid/R$color;->white:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setSelectedBorderColor(I)V

    const/4 p1, 0x1

    .line 16
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBorderWidth(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance p1, Lf/j;

    invoke-direct {p1}, Lf/j;-><init>()V

    iput-object p1, p0, Li/c;->a:Lf/j;

    .line 19
    sget p1, Lcom/zjx/jyandroid/R$string;->multifunctional_settings_long_press_crouch:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setTextLabelText(Ljava/lang/String;)V

    .line 20
    sget p1, Lcom/zjx/jyandroid/R$color;->switch_floating_ball_display_background:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBackgroundColor(I)V

    .line 21
    sget p1, Lcom/zjx/jyandroid/R$color;->switch_floating_ball_display_background:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setSelectedBackgroundColor(I)V

    const p1, 0xffff8f

    .line 22
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBorderColor(I)V

    .line 23
    sget p1, Lcom/zjx/jyandroid/R$color;->white:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setSelectedBorderColor(I)V

    const/4 p1, 0x1

    .line 24
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBorderWidth(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 26
    new-instance p1, Lf/j;

    invoke-direct {p1}, Lf/j;-><init>()V

    iput-object p1, p0, Li/c;->a:Lf/j;

    .line 27
    sget p1, Lcom/zjx/jyandroid/R$string;->multifunctional_settings_long_press_crouch:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setTextLabelText(Ljava/lang/String;)V

    .line 28
    sget p1, Lcom/zjx/jyandroid/R$color;->switch_floating_ball_display_background:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBackgroundColor(I)V

    .line 29
    sget p1, Lcom/zjx/jyandroid/R$color;->switch_floating_ball_display_background:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setSelectedBackgroundColor(I)V

    const p1, 0xffff8f

    .line 30
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBorderColor(I)V

    .line 31
    sget p1, Lcom/zjx/jyandroid/R$color;->white:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setSelectedBorderColor(I)V

    const/4 p1, 0x1

    .line 32
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBorderWidth(I)V

    return-void
.end method


# virtual methods
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

    iget-object v0, p0, Li/c;->a:Lf/j;

    invoke-virtual {v0, p1}, Lf/j;->loadFromMap(Ljava/util/Map;)V

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

    iget-object v1, p0, Li/c;->a:Lf/j;

    invoke-virtual {v1}, Lf/j;->toMap()Ljava/util/Map;

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
