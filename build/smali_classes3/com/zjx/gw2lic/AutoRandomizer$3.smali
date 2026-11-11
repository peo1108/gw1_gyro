.class Lcom/zjx/gw2lic/AutoRandomizer$3;
.super Ljava/lang/Object;
.source "AutoRandomizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/gw2lic/AutoRandomizer;->onProgressChange(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$idx:I

.field final synthetic val$revertTo:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 187
    iput p1, p0, Lcom/zjx/gw2lic/AutoRandomizer$3;->val$idx:I

    iput p2, p0, Lcom/zjx/gw2lic/AutoRandomizer$3;->val$revertTo:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 190
    invoke-static {}, Lcom/zjx/gw2lic/AutoRandomizer;->access$800()[Ljava/lang/Runnable;

    move-result-object v0

    iget v1, p0, Lcom/zjx/gw2lic/AutoRandomizer$3;->val$idx:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 191
    invoke-static {}, Lcom/zjx/gw2lic/AutoRandomizer;->access$000()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    invoke-static {}, Lcom/zjx/gw2lic/AutoRandomizer;->access$000()Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/zjx/gw2lic/AutoRandomizer;->access$200()[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/zjx/gw2lic/AutoRandomizer$3;->val$idx:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 198
    invoke-static {v1}, Lcom/zjx/gw2lic/AutoRandomizer;->access$502(Z)Z

    const/4 v1, 0x0

    .line 200
    :try_start_0
    iget v2, p0, Lcom/zjx/gw2lic/AutoRandomizer$3;->val$revertTo:I

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    invoke-static {v1}, Lcom/zjx/gw2lic/AutoRandomizer;->access$502(Z)Z

    .line 204
    invoke-static {}, Lcom/zjx/gw2lic/AutoRandomizer;->access$600()[I

    move-result-object v0

    iget v1, p0, Lcom/zjx/gw2lic/AutoRandomizer$3;->val$idx:I

    iget v2, p0, Lcom/zjx/gw2lic/AutoRandomizer$3;->val$revertTo:I

    aput v2, v0, v1

    return-void

    :catchall_0
    move-exception v0

    .line 202
    invoke-static {v1}, Lcom/zjx/gw2lic/AutoRandomizer;->access$502(Z)Z

    .line 203
    throw v0
.end method
