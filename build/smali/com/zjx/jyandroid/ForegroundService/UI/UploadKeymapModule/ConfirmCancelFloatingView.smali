.class public Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView;
.super Lcom/zjx/jyandroid/base/BaseFloatingView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView$c;
    }
.end annotation


# instance fields
.field public a:Landroid/widget/Button;

.field public b:Landroid/widget/Button;

.field public c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView;->c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView$c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView;->c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView$c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView;->c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView$c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView;->c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView$c;

    return-void
.end method

.method public static synthetic a(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView$c;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView;->c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView$c;

    return-object p0
.end method


# virtual methods
.method public getOnButtonClickedListener()Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView$c;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView;->c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView$c;

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/zjx/jyandroid/base/BaseFloatingView;->onFinishInflate()V

    sget v0, Lcom/zjx/jyandroid/R$id;->confirmButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView;->a:Landroid/widget/Button;

    sget v0, Lcom/zjx/jyandroid/R$id;->cancelButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView;->a:Landroid/widget/Button;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView$a;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView$a;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView;->b:Landroid/widget/Button;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView$b;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView$b;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnButtonClickedListener(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView$c;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView;->c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView$c;

    return-void
.end method
