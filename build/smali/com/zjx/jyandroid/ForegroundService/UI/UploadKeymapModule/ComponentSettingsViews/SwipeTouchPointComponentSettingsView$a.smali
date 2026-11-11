.class public Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView$a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance p1, Lcom/zjx/jyandroid/base/Components/Alert;

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView$a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView;

    sget v1, Lcom/zjx/jyandroid/R$string;->help:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/zjx/jyandroid/R$string;->swipe_touch_point_help1:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/zjx/jyandroid/base/Components/Alert;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;

    sget v1, Lcom/zjx/jyandroid/R$string;->ok:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;->DEFAULT:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    new-instance v3, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView$a$a;

    invoke-direct {v3, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView$a$a;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/SwipeTouchPointComponentSettingsView$a;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;)V

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/base/Components/Alert;->addAction(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/Components/Alert;->show()V

    return-void
.end method
