.class public Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView$b;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView$b;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView;

    invoke-static {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView;->a(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView$c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView$b;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView;

    invoke-static {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView;->a(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView$c;

    move-result-object p1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView$b;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView;

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView;->b:Landroid/widget/Button;

    invoke-interface {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ConfirmCancelFloatingView$c;->b(Landroid/widget/Button;)V

    :cond_0
    return-void
.end method
