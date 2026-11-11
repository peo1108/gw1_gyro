.class Lcom/zjx/gw2lic/Gw2DriveKeyMap$1;
.super Ljava/lang/Object;
.source "Gw2DriveKeyMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/gw2lic/Gw2DriveKeyMap;->open(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$hideWhileEditing:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 202
    iput-object p1, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$1;->val$ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$1;->val$hideWhileEditing:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$1;->val$ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$1;->val$hideWhileEditing:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->access$000(Landroid/content/Context;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 208
    const-string v1, "\u001d\u00b0\u0006\u00e5|\u0012\u009e0\u0089J\u00e5"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "5\u00b7Q\u00cf.\u001d\u0089<\u00aeJ\u00f8"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    invoke-static {}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->access$100()V

    :goto_0
    return-void
.end method
