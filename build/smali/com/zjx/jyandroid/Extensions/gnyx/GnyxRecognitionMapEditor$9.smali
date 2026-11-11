.class Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->setWhiteComponentSize(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

.field final synthetic val$weaponBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$9;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$9;->val$weaponBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/zjx/jyandroid/base/Components/FilledSliderWithButtons;F)F
    .locals 4

    float-to-int p1, p2

    int-to-float p2, p1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$9;->val$weaponBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p2, v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$9;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->weapon1:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;

    new-instance v2, Landroid/util/Size;

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$9;->val$weaponBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    invoke-direct {v2, p1, v3}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->setImageViewSize(Landroid/util/Size;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$9;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor;->weapon2:Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;

    new-instance v2, Landroid/util/Size;

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxRecognitionMapEditor$9;->val$weaponBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-direct {v2, p1, v0}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/Extensions/gnyx/RecognitionMapComponents/RecognitionComponentWeapon;->setImageViewSize(Landroid/util/Size;)V

    return p2
.end method
