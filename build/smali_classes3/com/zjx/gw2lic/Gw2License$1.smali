.class Lcom/zjx/gw2lic/Gw2License$1;
.super Ljava/lang/Object;
.source "Gw2License.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/gw2lic/Gw2License;->backgroundCheck(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lcom/zjx/gw2lic/Gw2License$1;->val$c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/zjx/gw2lic/Gw2License$1;->val$c:Landroid/content/Context;

    invoke-static {v0}, Lcom/zjx/gw2lic/Gw2License;->checkStatusSync(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    const-string v1, "\u001b\u0084`\u00e8X>"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/zjx/gw2lic/Gw2License$1;->val$c:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u0016\u00aeW\u00c4`\u0008\u008du\u00a9Ghg\u0011\u00c33OD\u00b7`\u0088\u00b0,\u0098\u0134\u0122\u1e1c\u000f\u00f9n"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "s\u00e9\u0014\u00ed\u1ea9\u0015\u00c8\u0006\u00b6N\u00ee}V\u00901\u00c8\n\u00e4\u1eb9Q\u00bc\u1e80\u0098N\u00fa\u000c\r\u00f7"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zjx/gw2lic/Gw2License;->access$000(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
