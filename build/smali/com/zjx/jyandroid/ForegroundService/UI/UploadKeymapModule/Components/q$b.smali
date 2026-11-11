.class public Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q$b;
.super Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->disableDeleteButton:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setResizeIndicatorHidden(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/zjx/jyandroid/R$color;->system_red:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    const v0, 0x3ecccccd    # 0.4f

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/base/util/b;->f(IF)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setSelectedBackgroundColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/zjx/jyandroid/R$color;->system_red:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/base/util/b;->f(IF)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBackgroundColor(I)V

    const/16 p1, 0xa

    invoke-virtual {p0, p1, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setBorderDashWidthAndGap(II)V

    sget p1, Lcom/zjx/jyandroid/R$string;->terminate_area:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setTextLabelText(Ljava/lang/String;)V

    return-void
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


# virtual methods
.method public onKeyEvent(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;)V
    .locals 0

    return-void
.end method
