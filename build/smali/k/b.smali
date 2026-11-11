.class public Lk/b;
.super Lk/j;
.source "SourceFile"


# static fields
.field public static f:I = 0x5

.field public static final g:I = 0x1

.field public static final h:I


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lk/j;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lk/b;->b:I

    iput v0, p0, Lk/b;->c:I

    const/16 v0, 0xd

    iput v0, p0, Lk/b;->d:I

    iput v0, p0, Lk/b;->e:I

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)I
    .locals 8

    iget-object p1, p0, Lk/j;->a:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget p1, p0, Lk/b;->b:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lk/b;->b:I

    iget v4, p0, Lk/b;->d:I

    add-int/2addr v3, v4

    if-ge p1, v3, :cond_4

    iget v3, p0, Lk/b;->c:I

    :goto_1
    iget v4, p0, Lk/b;->c:I

    iget v5, p0, Lk/b;->e:I

    add-int/2addr v4, v5

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

    const/16 v7, 0xd2

    if-le v5, v7, :cond_1

    const/16 v5, 0x5a

    if-ge v6, v5, :cond_1

    const/16 v5, 0x32

    if-ge v4, v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    sget v4, Lk/b;->f:I

    if-lt v2, v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    sget p1, Lk/b;->f:I

    if-lt v2, p1, :cond_5

    move v0, v1

    :cond_5
    return v0
.end method

.method public c(Landroid/graphics/Bitmap;)V
    .locals 4

    invoke-super {p0, p1}, Lk/j;->c(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fd3d70a3d70a3d7L    # 0.31

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lk/b;->b:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lk/b;->c:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lk/b;->d:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-double v0, p1

    const-wide/high16 v2, 0x3fd8000000000000L    # 0.375

    mul-double/2addr v0, v2

    double-to-int p1, v0

    iput p1, p0, Lk/b;->e:I

    return-void
.end method
