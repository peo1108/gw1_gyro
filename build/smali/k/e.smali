.class public Lk/e;
.super Lk/c;
.source "SourceFile"


# static fields
.field public static d:I = 0x14


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lk/c;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)I
    .locals 8

    iget-object p1, p0, Lk/j;->a:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/16 p1, 0x5a

    move v1, v0

    :goto_0
    iget-object v2, p0, Lk/j;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x32

    if-ge p1, v2, :cond_4

    const/16 v2, 0x14

    move v3, v2

    :goto_1
    iget-object v4, p0, Lk/j;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lk/j;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4, p1, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    const/high16 v5, 0xff0000

    and-int/2addr v5, v4

    shr-int/lit8 v5, v5, 0x10

    const v6, 0xff00

    and-int/2addr v6, v4

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v4, v4, 0xff

    const/16 v7, 0xfe

    if-lt v5, v7, :cond_1

    if-lt v6, v7, :cond_1

    if-lt v4, v7, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    sget v4, Lk/e;->d:I

    if-lt v1, v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    sget p1, Lk/e;->d:I

    if-lt v1, p1, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0
.end method
