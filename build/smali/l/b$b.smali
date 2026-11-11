.class public Ll/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll/b;->f(Lcom/zjx/jyandroid/base/BaseFloatingView;Landroid/view/WindowManager$LayoutParams;)V
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

    iput-object p1, p0, Ll/b$b;->a:Ll/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ll/b$b;->a:Ll/b;

    iget-object v1, v0, Ll/b;->d:Lcom/zjx/jyandroid/base/BaseFloatingView;

    iget-object v2, v1, Lcom/zjx/jyandroid/base/BaseFloatingView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Ll/b;->b:Landroid/view/WindowManager;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Ll/b$b;->a:Ll/b;

    iget-object v1, v0, Ll/b;->b:Landroid/view/WindowManager;

    iget-object v0, v0, Ll/b;->d:Lcom/zjx/jyandroid/base/BaseFloatingView;

    invoke-interface {v1, v0, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
