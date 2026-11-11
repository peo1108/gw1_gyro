.class Lcom/zjx/jyandroid/base/Components/Alert$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/base/Components/Alert;->destroy(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/base/Components/Alert;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/base/Components/Alert;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/base/Components/Alert$1;->this$0:Lcom/zjx/jyandroid/base/Components/Alert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zjx/jyandroid/base/Components/Alert$1;->this$0:Lcom/zjx/jyandroid/base/Components/Alert;

    invoke-static {p1}, Lcom/zjx/jyandroid/base/Components/Alert;->access$100(Lcom/zjx/jyandroid/base/Components/Alert;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/Alert$1;->this$0:Lcom/zjx/jyandroid/base/Components/Alert;

    invoke-static {v0}, Lcom/zjx/jyandroid/base/Components/Alert;->access$000(Lcom/zjx/jyandroid/base/Components/Alert;)Lcom/zjx/jyandroid/base/CustomViews/AlertView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
