.class public Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h;->onBindCellViewHolder(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;Ljava/lang/Object;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$g;

.field public final synthetic b:Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$f;

.field public final synthetic c:Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h;Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$g;Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$a;->c:Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h;

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$g;

    iput-object p3, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$a;->b:Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$g;

    iget-boolean p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$g;->d:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    sget v0, Lcom/zjx/jyandroid/R$string;->select_keymap_container_view_cant_delete_current:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->d:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p1, v0, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    return-void

    :cond_0
    new-instance p1, Lcom/zjx/jyandroid/base/Components/Alert;

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$a;->c:Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h;

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h;->b:Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView;

    sget v1, Lcom/zjx/jyandroid/R$string;->prompt:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/zjx/jyandroid/R$string;->select_keymap_container_view_confirm_delete_prompt:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/zjx/jyandroid/base/Components/Alert;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;

    sget v1, Lcom/zjx/jyandroid/R$string;->cancel:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;->DEFAULT:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    new-instance v3, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$a$a;

    invoke-direct {v3, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$a$a;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$a;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;)V

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/base/Components/Alert;->addAction(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V

    new-instance v0, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;

    sget v1, Lcom/zjx/jyandroid/R$string;->ok:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;->DESTRUCTIVE:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    new-instance v3, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$a$b;

    invoke-direct {v3, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$a$b;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/SelectKeymapModule/SelectKeymapContainerView$h$a;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;)V

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/base/Components/Alert;->addAction(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/Components/Alert;->show()V

    return-void
.end method
