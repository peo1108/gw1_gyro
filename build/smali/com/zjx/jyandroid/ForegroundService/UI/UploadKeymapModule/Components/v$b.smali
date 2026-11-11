.class public Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/v$b;
.super Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->disableDeleteButton:Z

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/zjx/jyandroid/R$color;->normal_touch_point_background:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setSelectedBackgroundColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/zjx/jyandroid/R$color;->normal_touch_point_background:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBackgroundColor(I)V

    return-void
.end method

.method public static getDefaultSize()Landroid/util/Size;
    .locals 3

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$c;->k()Z

    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x1e

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v2

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public onKeyEvent(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;)V
    .locals 0

    return-void
.end method
