.class public Lk/d;
.super Lk/c;
.source "SourceFile"


# static fields
.field public static d:I = 0x5

.field public static e:I = 0x32

.field public static f:I = 0x32


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
    .locals 7

    iget-object p1, p0, Lk/j;->a:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    move p1, v0

    move v1, p1

    :goto_0
    sget v2, Lk/d;->e:I

    if-ge p1, v2, :cond_4

    move v2, v0

    :goto_1
    sget v3, Lk/d;->f:I

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lk/j;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3, p1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    const/high16 v4, 0xff0000

    and-int/2addr v4, v3

    shr-int/lit8 v4, v4, 0x10

    const v5, 0xff00

    and-int/2addr v5, v3

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v3, v3, 0xff

    const/16 v6, 0xf0

    if-le v4, v6, :cond_1

    const/16 v4, 0xd2

    if-le v5, v4, :cond_1

    const/16 v4, 0xe6

    if-ge v5, v4, :cond_1

    const/16 v4, 0x55

    if-ge v3, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    sget v3, Lk/d;->d:I

    if-lt v1, v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    sget p1, Lk/d;->d:I

    if-lt v1, p1, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0
.end method
