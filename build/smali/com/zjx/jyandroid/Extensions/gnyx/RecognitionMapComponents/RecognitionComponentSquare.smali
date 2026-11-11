.class public Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentSquare;
.super Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;
.source "SourceFile"


# instance fields
.field backgroundColor:I

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/zjx/jyandroid/R$color;->normal_touch_point_background:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    const v0, 0x3e99999a    # 0.3f

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/base/util/b;->f(IF)I

    move-result p1

    iput p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentSquare;->backgroundColor:I

    .line 3
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->setSelectedBackgroundColor(I)V

    .line 4
    iget p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentSquare;->backgroundColor:I

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->setUnselectedBackgroundColor(I)V

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->setSelectedBorderWidth(I)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->setUnselectedBorderWidth(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/zjx/jyandroid/R$color;->normal_touch_point_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    const p2, 0x3e99999a    # 0.3f

    invoke-static {p1, p2}, Lcom/zjx/jyandroid/base/util/b;->f(IF)I

    move-result p1

    iput p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentSquare;->backgroundColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/zjx/jyandroid/R$color;->normal_touch_point_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    const p2, 0x3e99999a    # 0.3f

    invoke-static {p1, p2}, Lcom/zjx/jyandroid/base/util/b;->f(IF)I

    move-result p1

    iput p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentSquare;->backgroundColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 11
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/zjx/jyandroid/R$color;->normal_touch_point_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    const p2, 0x3e99999a    # 0.3f

    invoke-static {p1, p2}, Lcom/zjx/jyandroid/base/util/b;->f(IF)I

    move-result p1

    iput p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentSquare;->backgroundColor:I

    return-void
.end method

.method public static getDefaultSize()Landroid/util/Size;
    .locals 2

    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x58

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentSquare;->type:I

    return v0
.end method

.method public onKeyEvent(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentSquare;->type:I

    return-void
.end method
