.class public Lmdm/PostureColor;
.super Lk/j;
.source "PostureColor.java"


# instance fields
.field public final need:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Lk/j;-><init>()V

    .line 12
    const/16 v0, 0xa

    iput v0, p0, Lmdm/PostureColor;->need:I

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)I
    .registers 15

    .line 16
    iget-object p1, p0, Lmdm/PostureColor;->a:Landroid/graphics/Bitmap;

    .line 17
    const/4 v0, 0x0

    if-nez p1, :cond_6

    .line 18
    return v0

    .line 20
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 21
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 22
    div-int/lit8 v3, v1, 0x2

    add-int/lit8 v4, v3, -0x5

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v1, v5

    add-int/lit8 v3, v3, 0x5

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 23
    div-int/lit8 v3, v2, 0x2

    add-int/lit8 v6, v3, -0x5

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int/2addr v2, v5

    add-int/lit8 v3, v3, 0x5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 24
    nop

    .line 25
    move v3, v0

    :goto_2f
    const/16 v7, 0xa

    if-gt v4, v1, :cond_63

    if-ge v3, v7, :cond_63

    .line 26
    move v8, v6

    :goto_36
    if-gt v8, v2, :cond_60

    .line 27
    invoke-virtual {p1, v4, v8}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    .line 28
    shr-int/lit8 v10, v9, 0x10

    and-int/lit16 v10, v10, 0xff

    shr-int/lit8 v11, v9, 0x8

    and-int/lit16 v11, v11, 0xff

    and-int/lit16 v9, v9, 0xff

    .line 29
    const/16 v12, 0xb4

    if-lt v10, v12, :cond_5d

    mul-int/lit8 v9, v9, 0x5

    if-gt v9, v10, :cond_5d

    mul-int/lit8 v11, v11, 0x64

    mul-int/lit8 v9, v10, 0x42

    if-lt v11, v9, :cond_5d

    mul-int/lit8 v10, v10, 0x54

    if-gt v11, v10, :cond_5d

    .line 30
    add-int/lit8 v3, v3, 0x1

    .line 31
    if-lt v3, v7, :cond_5d

    goto :goto_60

    .line 26
    :cond_5d
    add-int/lit8 v8, v8, 0x1

    goto :goto_36

    .line 25
    :cond_60
    :goto_60
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 35
    :cond_63
    if-lt v3, v7, :cond_66

    move v0, v5

    :cond_66
    return v0
.end method
