.class Lcom/zjx/gw2lic/Gw2DriveKeyMap$6;
.super Ljava/lang/Object;
.source "Gw2DriveKeyMap.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/gw2lic/Gw2DriveKeyMap;->showFallback(Landroid/content/Context;Landroid/view/WindowManager;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$markerSize:I

.field final synthetic val$marks:[Landroid/widget/TextView;

.field final synthetic val$scr:Landroid/graphics/Point;


# direct methods
.method constructor <init>([Landroid/widget/TextView;Landroid/graphics/Point;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 417
    iput-object p1, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$6;->val$marks:[Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$6;->val$scr:Landroid/graphics/Point;

    iput p3, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$6;->val$markerSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 420
    iget-object v1, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$6;->val$marks:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 421
    invoke-static {}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->access$800()[F

    move-result-object v2

    aget v2, v2, v0

    iget-object v3, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$6;->val$scr:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$6;->val$markerSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$6;->val$scr:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$6;->val$markerSize:I

    sub-int/2addr v3, v4

    invoke-static {v2, p1, v3}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->access$900(III)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 422
    invoke-static {}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->access$1000()[F

    move-result-object v2

    aget v2, v2, v0

    iget-object v3, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$6;->val$scr:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$6;->val$markerSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$6;->val$scr:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$6;->val$markerSize:I

    sub-int/2addr v3, v4

    invoke-static {v2, p1, v3}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->access$900(III)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 423
    iget-object v2, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$6;->val$marks:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
