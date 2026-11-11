.class public Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/AimStatusRecognizer;
.super Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/GnyxRecognizer;
.source "SourceFile"


# static fields
.field public static final AIMING:I = 0x1

.field public static final NOT_AIMING:I


# instance fields
.field public final THRESHOLD:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/GnyxRecognizer;-><init>()V

    const/16 v0, 0x8

    .line 2
    iput v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/AimStatusRecognizer;->THRESHOLD:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/GnyxRecognizer;-><init>()V

    .line 4
    iput p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/AimStatusRecognizer;->THRESHOLD:I

    return-void
.end method


# virtual methods
.method public getResult(Ljava/lang/Object;)I
    .locals 9

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/GnyxRecognizer;->image:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/GnyxRecognizer;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    move v2, v0

    move v3, v2

    :goto_0
    if-ge v2, p1, :cond_5

    move v4, v0

    :goto_1
    if-ge v4, v1, :cond_4

    iget-object v5, p0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/GnyxRecognizer;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v2, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    const/high16 v6, 0xff0000

    and-int/2addr v6, v5

    shr-int/lit8 v6, v6, 0x10

    const v7, 0xff00

    and-int/2addr v7, v5

    shr-int/lit8 v7, v7, 0x8

    and-int/lit16 v5, v5, 0xff

    const/16 v8, 0xe1

    if-le v6, v8, :cond_3

    if-gt v7, v8, :cond_1

    goto :goto_2

    :cond_1
    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v6, v5

    const/16 v5, 0x28

    if-lt v6, v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    iget v5, p0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/AimStatusRecognizer;->THRESHOLD:I

    if-lt v3, v5, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    iget p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/AimStatusRecognizer;->THRESHOLD:I

    if-lt v3, p1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method
