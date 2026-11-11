.class Lcom/zjx/gw2lic/SkipShot$4;
.super Ljava/lang/Object;
.source "SkipShot.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/gw2lic/SkipShot;->hide(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/zjx/gw2lic/SkipShot$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/zjx/gw2lic/SkipShot$4;->val$view:Landroid/view/View;

    invoke-static {v0}, Lcom/zjx/gw2lic/SkipShot;->access$200(Landroid/view/View;)Z

    const/4 v0, 0x1

    return v0
.end method
