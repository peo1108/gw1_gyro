.class public Lk/h;
.super Lk/m;
.source "h.java"


# static fields
.field static final FILES:[Ljava/lang/String;


# instance fields
.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public final k:I

.field public l:[Lorg/opencv/core/Mat;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 27
    const-string v6, "/grip-laser.JPG"

    const-string v7, "/grip-ergonomic.JPG"

    const-string v0, "/empty.JPG"

    const-string v1, "/grip-vertical.JPG"

    const-string v2, "/grip-horizontal.JPG"

    const-string v3, "/grip-half.JPG"

    const-string v4, "/grip-light.JPG"

    const-string v5, "/grip-thumb.JPG"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lk/h;->FILES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 16

    .line 32
    invoke-direct {p0}, Lk/m;-><init>()V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lk/h;->c:I

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lk/h;->d:I

    .line 18
    const/4 v1, 0x1

    iput v1, p0, Lk/h;->e:I

    .line 19
    const/4 v1, 0x2

    iput v1, p0, Lk/h;->f:I

    .line 20
    const/4 v2, 0x3

    iput v2, p0, Lk/h;->g:I

    .line 21
    const/4 v3, 0x4

    iput v3, p0, Lk/h;->h:I

    .line 22
    const/4 v3, 0x5

    iput v3, p0, Lk/h;->i:I

    .line 23
    const/4 v3, 0x6

    iput v3, p0, Lk/h;->j:I

    .line 24
    const/16 v3, 0x8

    iput v3, p0, Lk/h;->k:I

    .line 25
    new-array v4, v3, [Lorg/opencv/core/Mat;

    iput-object v4, p0, Lk/h;->l:[Lorg/opencv/core/Mat;

    .line 33
    new-instance v4, Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-direct {v4}, Lcom/zjx/jyandroid/Extensions/pubg/f;-><init>()V

    invoke-virtual {v4}, Lcom/zjx/jyandroid/Extensions/pubg/f;->f()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    iput-wide v4, p0, Lk/h;->b:D

    .line 34
    move v4, v0

    :goto_34
    if-ge v4, v3, :cond_56

    .line 35
    iget-object v5, p0, Lk/h;->l:[Lorg/opencv/core/Mat;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lk/h;->FILES:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lorg/opencv/imgcodecs/Imgcodecs;->imread(Ljava/lang/String;I)Lorg/opencv/core/Mat;

    move-result-object v6

    aput-object v6, v5, v4

    .line 34
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 37
    :cond_56
    move v4, v0

    :goto_57
    if-ge v4, v3, :cond_bc

    .line 38
    iget-object v0, p0, Lk/h;->l:[Lorg/opencv/core/Mat;

    aget-object v5, v0, v4

    .line 39
    if-eqz v5, :cond_b9

    invoke-virtual {v5}, Lorg/opencv/core/Mat;->rows()I

    move-result v0

    if-nez v0, :cond_66

    .line 40
    goto :goto_b9

    .line 42
    :cond_66
    int-to-float v0, p2

    const-string v6, "\u4e2d\u6587\u56fd\u670d"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_72

    const/high16 v6, 0x42ac0000    # 86.0f

    goto :goto_74

    :cond_72
    const/high16 v6, 0x42960000    # 75.0f

    :goto_74
    div-float/2addr v0, v6

    .line 43
    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v7, v0, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v7, v7

    const-wide v9, 0x3fb999999999999aL    # 0.1

    cmpg-double v7, v7, v9

    if-gez v7, :cond_88

    .line 44
    return-void

    .line 46
    :cond_88
    move v7, v6

    new-instance v6, Lorg/opencv/core/Mat;

    invoke-direct {v6}, Lorg/opencv/core/Mat;-><init>()V

    .line 48
    move v8, v7

    :try_start_8f
    new-instance v7, Lorg/opencv/core/Size;

    invoke-virtual {v5}, Lorg/opencv/core/Mat;->cols()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v0

    float-to-double v9, v9

    invoke-virtual {v5}, Lorg/opencv/core/Mat;->rows()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v0

    float-to-double v11, v11

    invoke-direct {v7, v9, v10, v11, v12}, Lorg/opencv/core/Size;-><init>(DD)V

    cmpl-float v0, v0, v8

    if-lez v0, :cond_a8

    move v12, v1

    goto :goto_a9

    :cond_a8
    move v12, v2

    :goto_a9
    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-static/range {v5 .. v12}, Lorg/opencv/imgproc/Imgproc;->resize(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;DDI)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_b0} :catch_b1

    .line 50
    goto :goto_b2

    .line 49
    :catch_b1
    move-exception v0

    .line 51
    :goto_b2
    invoke-virtual {v5}, Lorg/opencv/core/Mat;->release()V

    .line 52
    iget-object v0, p0, Lk/h;->l:[Lorg/opencv/core/Mat;

    aput-object v6, v0, v4

    .line 37
    :cond_b9
    :goto_b9
    add-int/lit8 v4, v4, 0x1

    goto :goto_57

    .line 54
    :cond_bc
    return-void
.end method

.method public static f(Landroid/graphics/Bitmap;)Lorg/opencv/core/Mat;
    .registers 2

    .line 57
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    .line 58
    invoke-static {p0, v0}, Lorg/opencv/android/Utils;->bitmapToMat(Landroid/graphics/Bitmap;Lorg/opencv/core/Mat;)V

    .line 59
    const/4 p0, 0x7

    invoke-static {v0, v0, p0}, Lorg/opencv/imgproc/Imgproc;->cvtColor(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    .line 60
    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/Object;)I
    .registers 6

    .line 96
    iget-object p1, p0, Lk/h;->a:Landroid/graphics/Bitmap;

    .line 97
    if-nez p1, :cond_7

    .line 98
    iget p1, p0, Lk/h;->c:I

    return p1

    .line 100
    :cond_7
    invoke-virtual {p0, p1}, Lk/h;->h(Landroid/graphics/Bitmap;)Lk/m$a;

    move-result-object p1

    .line 101
    iget-wide v0, p1, Lk/m$a;->b:D

    iget-wide v2, p0, Lk/h;->b:D

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_1c

    iget v0, p1, Lk/m$a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    goto :goto_1c

    :cond_19
    iget p1, p1, Lk/m$a;->a:I

    goto :goto_1e

    :cond_1c
    :goto_1c
    iget p1, p0, Lk/h;->c:I

    :goto_1e
    return p1
.end method

.method public e()V
    .registers 4

    .line 106
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x8

    if-ge v0, v1, :cond_16

    .line 107
    iget-object v1, p0, Lk/h;->l:[Lorg/opencv/core/Mat;

    aget-object v1, v1, v0

    .line 108
    if-eqz v1, :cond_e

    .line 109
    invoke-virtual {v1}, Lorg/opencv/core/Mat;->release()V

    .line 111
    :cond_e
    iget-object v1, p0, Lk/h;->l:[Lorg/opencv/core/Mat;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 113
    :cond_16
    return-void
.end method

.method public final g(ILorg/opencv/core/Mat;)D
    .registers 7

    .line 65
    if-ltz p1, :cond_3f

    const/16 v0, 0x8

    if-ge p1, v0, :cond_3f

    iget-object v0, p0, Lk/h;->l:[Lorg/opencv/core/Mat;

    aget-object p1, v0, p1

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Lorg/opencv/core/Mat;->rows()I

    move-result v0

    if-eqz v0, :cond_3f

    .line 66
    invoke-virtual {p2}, Lorg/opencv/core/Mat;->cols()I

    move-result v0

    invoke-virtual {p1}, Lorg/opencv/core/Mat;->cols()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 67
    invoke-virtual {p2}, Lorg/opencv/core/Mat;->rows()I

    move-result v1

    invoke-virtual {p1}, Lorg/opencv/core/Mat;->rows()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 68
    if-lez v0, :cond_3f

    if-lez v1, :cond_3f

    .line 69
    new-instance v2, Lorg/opencv/core/Mat;

    const/4 v3, 0x5

    invoke-direct {v2, v1, v0, v3}, Lorg/opencv/core/Mat;-><init>(III)V

    .line 70
    invoke-static {p2, p1, v2, v3}, Lorg/opencv/imgproc/Imgproc;->matchTemplate(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    .line 71
    invoke-static {v2}, Lorg/opencv/core/Core;->minMaxLoc(Lorg/opencv/core/Mat;)Lorg/opencv/core/Core$MinMaxLocResult;

    move-result-object p1

    .line 72
    invoke-virtual {v2}, Lorg/opencv/core/Mat;->release()V

    .line 73
    iget-wide p1, p1, Lorg/opencv/core/Core$MinMaxLocResult;->maxVal:D

    return-wide p1

    .line 76
    :cond_3f
    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    return-wide p1
.end method

.method public final h(Landroid/graphics/Bitmap;)Lk/m$a;
    .registers 11

    .line 80
    invoke-static {p1}, Lk/h;->f(Landroid/graphics/Bitmap;)Lorg/opencv/core/Mat;

    move-result-object p1

    .line 81
    nop

    .line 82
    nop

    .line 83
    const/4 v0, -0x1

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    const/4 v3, 0x0

    move-wide v4, v1

    :goto_b
    const/16 v6, 0x8

    if-ge v3, v6, :cond_21

    .line 84
    invoke-virtual {p0, v3, p1}, Lk/h;->g(ILorg/opencv/core/Mat;)D

    move-result-wide v6

    .line 85
    cmpl-double v8, v6, v1

    if-eqz v8, :cond_1e

    cmpl-double v8, v6, v4

    if-lez v8, :cond_1e

    .line 86
    nop

    .line 87
    move v0, v3

    move-wide v4, v6

    .line 83
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 90
    :cond_21
    invoke-virtual {p1}, Lorg/opencv/core/Mat;->release()V

    .line 91
    new-instance p1, Lk/m$a;

    invoke-direct {p1, p0, v0, v4, v5}, Lk/m$a;-><init>(Lk/m;ID)V

    return-object p1
.end method
