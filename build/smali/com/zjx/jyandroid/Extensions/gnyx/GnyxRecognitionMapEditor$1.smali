.class Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

.field tmp:D


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$1;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

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

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$1;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->access$000(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$1;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->access$000(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$1;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->access$000(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;

    iget-wide v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$1;->tmp:D

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    float-to-double v4, p1

    mul-double/2addr v2, v4

    iput-wide v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$1;->tmp:D

    double-to-int p1, v2

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->setWidth(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$1;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    iput-boolean v1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->blockUnselectComponent:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$1;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->access$000(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentCircle;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$1;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->access$000(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentCircle;

    iget-wide v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$1;->tmp:D

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    float-to-double v4, p1

    mul-double/2addr v2, v4

    iput-wide v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$1;->tmp:D

    double-to-int p1, v2

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentCircle;->setRadius(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$1;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    iput-boolean v1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->blockUnselectComponent:Z

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

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$1;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->access$000(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$1;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->access$000(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$1;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->access$000(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-double v0, p1

    iput-wide v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$1;->tmp:D

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$1;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->access$000(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentCircle;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$1;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->access$000(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentCircle;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->getRadius()I

    move-result p1

    int-to-double v0, p1

    iput-wide v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$1;->tmp:D

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
