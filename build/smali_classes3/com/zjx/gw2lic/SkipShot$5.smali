.class Lcom/zjx/gw2lic/SkipShot$5;
.super Ljava/lang/Object;
.source "SkipShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/gw2lic/SkipShot;->hide(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field tries:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lcom/zjx/gw2lic/SkipShot$5;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/zjx/gw2lic/SkipShot$5;->val$view:Landroid/view/View;

    invoke-static {v0}, Lcom/zjx/gw2lic/SkipShot;->access$200(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 163
    :cond_0
    iget v0, p0, Lcom/zjx/gw2lic/SkipShot$5;->tries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zjx/gw2lic/SkipShot$5;->tries:I

    const/16 v1, 0x28

    if-ge v0, v1, :cond_1

    .line 164
    iget-object v0, p0, Lcom/zjx/gw2lic/SkipShot$5;->val$view:Landroid/view/View;

    const-wide/16 v1, 0x10

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
