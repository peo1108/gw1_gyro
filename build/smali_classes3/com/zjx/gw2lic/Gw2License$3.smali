.class Lcom/zjx/gw2lic/Gw2License$3;
.super Ljava/lang/Object;
.source "Gw2License.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/gw2lic/Gw2License;->activate(Landroid/content/Context;Ljava/lang/String;Lcom/zjx/gw2lic/Gw2License$Cb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$app:Landroid/content/Context;

.field final synthetic val$cb:Lcom/zjx/gw2lic/Gw2License$Cb;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/zjx/gw2lic/Gw2License$Cb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 335
    iput-object p1, p0, Lcom/zjx/gw2lic/Gw2License$3;->val$app:Landroid/content/Context;

    iput-object p2, p0, Lcom/zjx/gw2lic/Gw2License$3;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/zjx/gw2lic/Gw2License$3;->val$cb:Lcom/zjx/gw2lic/Gw2License$Cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 338
    :try_start_0
    iget-object v1, p0, Lcom/zjx/gw2lic/Gw2License$3;->val$app:Landroid/content/Context;

    iget-object v2, p0, Lcom/zjx/gw2lic/Gw2License$3;->val$key:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/zjx/gw2lic/Gw2License;->activateBlocking(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 339
    iget-object v2, p0, Lcom/zjx/gw2lic/Gw2License$3;->val$cb:Lcom/zjx/gw2lic/Gw2License$Cb;

    const-string v3, "\u001b\u0084`\u00e8X>"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v2, v3, v1, v0}, Lcom/zjx/gw2lic/Gw2License;->access$100(Lcom/zjx/gw2lic/Gw2License$Cb;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/zjx/gw2lic/Gw2License$Gw2Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 341
    iget-object v2, p0, Lcom/zjx/gw2lic/Gw2License$3;->val$cb:Lcom/zjx/gw2lic/Gw2License$Cb;

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/zjx/gw2lic/Gw2License$Gw2Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v0, v1}, Lcom/zjx/gw2lic/Gw2License;->access$100(Lcom/zjx/gw2lic/Gw2License$Cb;ZLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
