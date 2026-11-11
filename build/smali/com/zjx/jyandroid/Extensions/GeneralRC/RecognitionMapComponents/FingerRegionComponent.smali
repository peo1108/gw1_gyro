.class public Lcom/zjx/jyandroid/Extensions/GeneralRC/RecognitionMapComponents/FingerRegionComponent;
.super Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->textView:Landroid/widget/TextView;

    const-string v0, "\u89c6\u89d2\u63a7\u5236\u624b\u6307\u8303\u56f4"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x1a000000

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->setUnselectedBackgroundColor(I)V

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->setSelectedBackgroundColor(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/x;->setResizeIndicatorHidden(Z)V

    return-void
.end method


# virtual methods
.method public onKeyEvent(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;)V
    .locals 0

    return-void
.end method
