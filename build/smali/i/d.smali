.class public Li/d;
.super Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/t;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;-><init>(Landroid/content/Context;)V

    .line 2
    sget p1, Lcom/zjx/jyandroid/R$string;->switch_rc_panel_display_component_text1:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setTextLabelText(Ljava/lang/String;)V

    .line 3
    sget p1, Lcom/zjx/jyandroid/R$color;->switch_floating_ball_display_background:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBackgroundColor(I)V

    .line 4
    sget p1, Lcom/zjx/jyandroid/R$color;->switch_floating_ball_display_background:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setSelectedBackgroundColor(I)V

    const p1, 0xffff8f

    .line 5
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBorderColor(I)V

    .line 6
    sget p1, Lcom/zjx/jyandroid/R$color;->white:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setSelectedBorderColor(I)V

    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBorderWidth(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    sget p1, Lcom/zjx/jyandroid/R$string;->switch_rc_panel_display_component_text1:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setTextLabelText(Ljava/lang/String;)V

    .line 10
    sget p1, Lcom/zjx/jyandroid/R$color;->switch_floating_ball_display_background:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBackgroundColor(I)V

    .line 11
    sget p1, Lcom/zjx/jyandroid/R$color;->switch_floating_ball_display_background:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setSelectedBackgroundColor(I)V

    const p1, 0xffff8f

    .line 12
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBorderColor(I)V

    .line 13
    sget p1, Lcom/zjx/jyandroid/R$color;->white:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setSelectedBorderColor(I)V

    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBorderWidth(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    sget p1, Lcom/zjx/jyandroid/R$string;->switch_rc_panel_display_component_text1:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setTextLabelText(Ljava/lang/String;)V

    .line 17
    sget p1, Lcom/zjx/jyandroid/R$color;->switch_floating_ball_display_background:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBackgroundColor(I)V

    .line 18
    sget p1, Lcom/zjx/jyandroid/R$color;->switch_floating_ball_display_background:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setSelectedBackgroundColor(I)V

    const p1, 0xffff8f

    .line 19
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBorderColor(I)V

    .line 20
    sget p1, Lcom/zjx/jyandroid/R$color;->white:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setSelectedBorderColor(I)V

    const/4 p1, 0x1

    .line 21
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBorderWidth(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 23
    sget p1, Lcom/zjx/jyandroid/R$string;->switch_rc_panel_display_component_text1:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setTextLabelText(Ljava/lang/String;)V

    .line 24
    sget p1, Lcom/zjx/jyandroid/R$color;->switch_floating_ball_display_background:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBackgroundColor(I)V

    .line 25
    sget p1, Lcom/zjx/jyandroid/R$color;->switch_floating_ball_display_background:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setSelectedBackgroundColor(I)V

    const p1, 0xffff8f

    .line 26
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBorderColor(I)V

    .line 27
    sget p1, Lcom/zjx/jyandroid/R$color;->white:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setSelectedBorderColor(I)V

    const/4 p1, 0x1

    .line 28
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBorderWidth(I)V

    return-void
.end method


# virtual methods
.method public updateTextByCurrentKeyCodeArray()V
    .locals 0

    return-void
.end method
