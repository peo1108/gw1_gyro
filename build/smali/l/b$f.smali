.class public Ll/b$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll/b;->g(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ll/b;


# direct methods
.method public constructor <init>(Ll/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Ll/b$f;->a:Ll/b;

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

    iget-object p1, p0, Ll/b$f;->a:Ll/b;

    iget-object p1, p1, Ll/b;->g:Lcom/zjx/jyandroid/base/util/ToastView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ll/b$f;->a:Ll/b;

    iget-object p1, p1, Ll/b;->g:Lcom/zjx/jyandroid/base/util/ToastView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Ll/b$f;->a:Ll/b;

    iget-object v0, p1, Ll/b;->g:Lcom/zjx/jyandroid/base/util/ToastView;

    invoke-static {p1, v0}, Ll/b;->a(Ll/b;Lcom/zjx/jyandroid/base/BaseFloatingView;)V

    iget-object p1, p0, Ll/b$f;->a:Ll/b;

    const/4 v0, 0x0

    iput-object v0, p1, Ll/b;->g:Lcom/zjx/jyandroid/base/util/ToastView;

    :cond_1
    :goto_0
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
