.class Lcom/zjx/gw2lic/SkipShot$6;
.super Ljava/lang/Object;
.source "SkipShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/gw2lic/SkipShot;->reapply(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field n:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 186
    iput-object p1, p0, Lcom/zjx/gw2lic/SkipShot$6;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/zjx/gw2lic/SkipShot$6;->val$view:Landroid/view/View;

    invoke-static {v0}, Lcom/zjx/gw2lic/SkipShot;->access$200(Landroid/view/View;)Z

    .line 192
    iget v0, p0, Lcom/zjx/gw2lic/SkipShot$6;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zjx/gw2lic/SkipShot$6;->n:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/zjx/gw2lic/SkipShot$6;->val$view:Landroid/view/View;

    const-wide/16 v1, 0x10

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
