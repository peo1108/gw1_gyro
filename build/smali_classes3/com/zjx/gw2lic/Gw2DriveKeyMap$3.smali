.class Lcom/zjx/gw2lic/Gw2DriveKeyMap$3;
.super Ljava/lang/Object;
.source "Gw2DriveKeyMap.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/gw2lic/Gw2DriveKeyMap;->showNative(Landroid/content/Context;Landroid/view/WindowManager;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$mSetFrame:Ljava/lang/reflect/Method;

.field final synthetic val$scr:Landroid/graphics/Point;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Landroid/graphics/Point;ILjava/lang/reflect/Method;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 319
    iput-object p1, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$3;->val$scr:Landroid/graphics/Point;

    iput p2, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$3;->val$size:I

    iput-object p3, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$3;->val$mSetFrame:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 323
    :try_start_0
    invoke-static {}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->access$800()[F

    move-result-object v1

    aget v1, v1, v0

    iget-object v2, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$3;->val$scr:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$3;->val$size:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$3;->val$scr:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$3;->val$size:I

    sub-int/2addr v2, v3

    invoke-static {v1, p1, v2}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->access$900(III)I

    move-result v1

    .line 324
    invoke-static {}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->access$1000()[F

    move-result-object v2

    aget v2, v2, v0

    iget-object v3, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$3;->val$scr:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$3;->val$size:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$3;->val$scr:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$3;->val$size:I

    sub-int/2addr v3, v4

    invoke-static {v2, p1, v3}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->access$900(III)I

    move-result v2

    .line 325
    iget-object v3, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$3;->val$mSetFrame:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->access$200()[Landroid/view/View;

    move-result-object v4

    aget-object v4, v4, v0

    new-instance v5, Landroid/graphics/Rect;

    iget v6, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$3;->val$size:I

    add-int v7, v1, v6

    add-int/2addr v6, v2

    invoke-direct {v5, v1, v2, v7, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 328
    const-string v0, "\u001d\u00b0\u0006\u00e5|\u0012\u009e0\u0089J\u00e5"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(\u00a2G\u00c4z[\u008e4\u00abC\u00f9m"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
