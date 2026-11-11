.class public Lcom/zjx/jyandroid/Extensions/pubg/e$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/pubg/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:D

.field public final synthetic b:Lcom/zjx/jyandroid/Extensions/pubg/e;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$g;->b:Lcom/zjx/jyandroid/Extensions/pubg/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6
    .param p1    # Landroid/view/ScaleGestureDetector;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$g;->b:Lcom/zjx/jyandroid/Extensions/pubg/e;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/e;->a(Lcom/zjx/jyandroid/Extensions/pubg/e;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$g;->b:Lcom/zjx/jyandroid/Extensions/pubg/e;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/e;->a(Lcom/zjx/jyandroid/Extensions/pubg/e;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lj/g;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$g;->b:Lcom/zjx/jyandroid/Extensions/pubg/e;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/e;->a(Lcom/zjx/jyandroid/Extensions/pubg/e;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    move-result-object v0

    check-cast v0, Lj/g;

    iget-wide v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$g;->a:D

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    float-to-double v4, p1

    mul-double/2addr v2, v4

    iput-wide v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$g;->a:D

    double-to-int p1, v2

    invoke-virtual {v0, p1}, Lj/g;->setWidth(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$g;->b:Lcom/zjx/jyandroid/Extensions/pubg/e;

    iput-boolean v1, p1, Lcom/zjx/jyandroid/Extensions/pubg/e;->c:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$g;->b:Lcom/zjx/jyandroid/Extensions/pubg/e;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/e;->a(Lcom/zjx/jyandroid/Extensions/pubg/e;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lj/c;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$g;->b:Lcom/zjx/jyandroid/Extensions/pubg/e;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/e;->a(Lcom/zjx/jyandroid/Extensions/pubg/e;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    move-result-object v0

    check-cast v0, Lj/c;

    iget-wide v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$g;->a:D

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    float-to-double v4, p1

    mul-double/2addr v2, v4

    iput-wide v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$g;->a:D

    double-to-int p1, v2

    invoke-virtual {v0, p1}, Lj/c;->setRadius(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$g;->b:Lcom/zjx/jyandroid/Extensions/pubg/e;

    iput-boolean v1, p1, Lcom/zjx/jyandroid/Extensions/pubg/e;->c:Z

    :cond_1
    :goto_0
    return v1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .param p1    # Landroid/view/ScaleGestureDetector;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$g;->b:Lcom/zjx/jyandroid/Extensions/pubg/e;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/e;->a(Lcom/zjx/jyandroid/Extensions/pubg/e;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$g;->b:Lcom/zjx/jyandroid/Extensions/pubg/e;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/e;->a(Lcom/zjx/jyandroid/Extensions/pubg/e;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lj/g;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$g;->b:Lcom/zjx/jyandroid/Extensions/pubg/e;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/e;->a(Lcom/zjx/jyandroid/Extensions/pubg/e;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    move-result-object p1

    check-cast p1, Lj/g;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-double v0, p1

    iput-wide v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$g;->a:D

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$g;->b:Lcom/zjx/jyandroid/Extensions/pubg/e;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/e;->a(Lcom/zjx/jyandroid/Extensions/pubg/e;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lj/c;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$g;->b:Lcom/zjx/jyandroid/Extensions/pubg/e;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/e;->a(Lcom/zjx/jyandroid/Extensions/pubg/e;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    move-result-object p1

    check-cast p1, Lj/c;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->getRadius()I

    move-result p1

    int-to-double v0, p1

    iput-wide v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$g;->a:D

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .param p1    # Landroid/view/ScaleGestureDetector;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
