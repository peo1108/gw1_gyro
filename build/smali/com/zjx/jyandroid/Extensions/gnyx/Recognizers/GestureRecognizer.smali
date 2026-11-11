.class public Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/GestureRecognizer;
.super Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/GnyxRecognizer;
.source "SourceFile"


# static fields
.field public static final OFF:I = 0x0

.field public static final ON:I = 0x1


# instance fields
.field public final THRESHOLD:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/GnyxRecognizer;-><init>()V

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/GestureRecognizer;->THRESHOLD:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/GnyxRecognizer;-><init>()V

    .line 4
    iput p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/GestureRecognizer;->THRESHOLD:I

    return-void
.end method


# virtual methods
.method public getResult(Ljava/lang/Object;)I
    .locals 11

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

    div-int/lit8 v2, p1, 0x2

    add-int/lit8 v3, v2, -0x5

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v4, v1, 0x2

    add-int/lit8 v5, v4, -0x5

    add-int/lit8 v4, v4, 0x5

    if-gez v3, :cond_1

    move v3, v0

    :cond_1
    const/4 v6, 0x1

    sub-int/2addr p1, v6

    if-le v2, p1, :cond_2

    move v2, p1

    :cond_2
    if-gez v5, :cond_3

    move v5, v0

    :cond_3
    sub-int/2addr v1, v6

    if-le v4, v1, :cond_4

    move v4, v1

    :cond_4
    move p1, v0

    :goto_0
    if-gt v3, v2, :cond_9

    move v1, v5

    :goto_1
    if-gt v1, v4, :cond_8

    iget-object v7, p0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/GnyxRecognizer;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v3, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    const/high16 v8, 0xff0000

    and-int/2addr v8, v7

    shr-int/lit8 v8, v8, 0x10

    const v9, 0xff00

    and-int/2addr v9, v7

    shr-int/lit8 v9, v9, 0x8

    and-int/lit16 v7, v7, 0xff

    const/16 v10, 0xe1

    if-le v8, v10, :cond_7

    if-gt v9, v10, :cond_5

    goto :goto_2

    :cond_5
    add-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v8, v7

    const/16 v7, 0x28

    if-lt v8, v7, :cond_6

    add-int/lit8 p1, p1, 0x1

    :cond_6
    iget v7, p0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/GestureRecognizer;->THRESHOLD:I

    if-lt p1, v7, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_9
    iget v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/GestureRecognizer;->THRESHOLD:I

    if-lt p1, v1, :cond_a

    move v0, v6

    :cond_a
    return v0
.end method
