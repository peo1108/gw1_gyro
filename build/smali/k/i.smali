.class public Lk/i;
.super Lk/m;
.source "i.java"


# static fields
.field static final FILES:[Ljava/lang/String;


# instance fields
.field public brake:I

.field public c:I

.field public d:I

.field public e:I

.field public extender:I

.field public f:I

.field public g:I

.field public final h:I

.field public i:[Lorg/opencv/core/Mat;


# direct methods
.method static constructor <clinit>()V
    .registers 17

    .line 27
    const-string v15, "/muzzle-extender-cfq.JPG"

    const-string v16, "/muzzle-duckbill.JPG"

    const-string v1, "/empty.JPG"

    const-string v2, "/muzzle-compensator-cfq.JPG"

    const-string v3, "/muzzle-compensator-bq.JPG"

    const-string v4, "/muzzle-compensator-ju.JPG"

    const-string v5, "/muzzle-flashhider-cfq.JPG"

    const-string v6, "/muzzle-flashhider-bq.JPG"

    const-string v7, "/muzzle-flashhider-ju.JPG"

    const-string v8, "/muzzle-suppressor-cfq.JPG"

    const-string v9, "/muzzle-suppressor-bq.JPG"

    const-string v10, "/muzzle-suppressor-ju.JPG"

    const-string v11, "/muzzle-brake-bq.JPG"

    const-string v12, "/muzzle-brake-cfq.JPG"

    const-string v13, "/muzzle-brake-ju.JPG"

    const-string v14, "/muzzle-extender-bq.JPG"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lk/i;->FILES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 16

    .line 36
    invoke-direct {p0}, Lk/m;-><init>()V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lk/i;->c:I

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lk/i;->d:I

    .line 19
    const/4 v1, 0x1

    iput v1, p0, Lk/i;->e:I

    .line 20
    const/4 v1, 0x2

    iput v1, p0, Lk/i;->f:I

    .line 21
    const/4 v2, 0x3

    iput v2, p0, Lk/i;->g:I

    .line 22
    const/16 v3, 0x10

    iput v3, p0, Lk/i;->h:I

    .line 23
    new-array v4, v3, [Lorg/opencv/core/Mat;

    iput-object v4, p0, Lk/i;->i:[Lorg/opencv/core/Mat;

    .line 24
    const/4 v4, 0x4

    iput v4, p0, Lk/i;->brake:I

    .line 25
    const/4 v4, 0x5

    iput v4, p0, Lk/i;->extender:I

    .line 37
    new-instance v4, Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-direct {v4}, Lcom/zjx/jyandroid/Extensions/pubg/f;-><init>()V

    invoke-virtual {v4}, Lcom/zjx/jyandroid/Extensions/pubg/f;->f()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    iput-wide v4, p0, Lk/i;->b:D

    .line 38
    move v4, v0

    :goto_31
    if-ge v4, v3, :cond_53

    .line 39
    iget-object v5, p0, Lk/i;->i:[Lorg/opencv/core/Mat;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lk/i;->FILES:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lorg/opencv/imgcodecs/Imgcodecs;->imread(Ljava/lang/String;I)Lorg/opencv/core/Mat;

    move-result-object v6

    aput-object v6, v5, v4

    .line 38
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 41
    :cond_53
    move v4, v0

    :goto_54
    if-ge v4, v3, :cond_b9

    .line 42
    iget-object v0, p0, Lk/i;->i:[Lorg/opencv/core/Mat;

    aget-object v5, v0, v4

    .line 43
    if-eqz v5, :cond_b6

    invoke-virtual {v5}, Lorg/opencv/core/Mat;->rows()I

    move-result v0

    if-nez v0, :cond_63

    .line 44
    goto :goto_b6

    .line 46
    :cond_63
    int-to-float v0, p2

    const-string v6, "\u4e2d\u6587\u56fd\u670d"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6f

    const/high16 v6, 0x42ac0000    # 86.0f

    goto :goto_71

    :cond_6f
    const/high16 v6, 0x42960000    # 75.0f

    :goto_71
    div-float/2addr v0, v6

    .line 47
    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v7, v0, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v7, v7

    const-wide v9, 0x3fb999999999999aL    # 0.1

    cmpg-double v7, v7, v9

    if-gez v7, :cond_85

    .line 48
    return-void

    .line 50
    :cond_85
    move v7, v6

    new-instance v6, Lorg/opencv/core/Mat;

    invoke-direct {v6}, Lorg/opencv/core/Mat;-><init>()V

    .line 52
    move v8, v7

    :try_start_8c
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

    if-lez v0, :cond_a5

    move v12, v1

    goto :goto_a6

    :cond_a5
    move v12, v2

    :goto_a6
    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-static/range {v5 .. v12}, Lorg/opencv/imgproc/Imgproc;->resize(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;DDI)V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_ad} :catch_ae

    .line 54
    goto :goto_af

    .line 53
    :catch_ae
    move-exception v0

    .line 55
    :goto_af
    invoke-virtual {v5}, Lorg/opencv/core/Mat;->release()V

    .line 56
    iget-object v0, p0, Lk/i;->i:[Lorg/opencv/core/Mat;

    aput-object v6, v0, v4

    .line 41
    :cond_b6
    :goto_b6
    add-int/lit8 v4, v4, 0x1

    goto :goto_54

    .line 58
    :cond_b9
    return-void
.end method

.method public static f(Landroid/graphics/Bitmap;)Lorg/opencv/core/Mat;
    .registers 2

    .line 61
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    .line 62
    invoke-static {p0, v0}, Lorg/opencv/android/Utils;->bitmapToMat(Landroid/graphics/Bitmap;Lorg/opencv/core/Mat;)V

    .line 63
    const/4 p0, 0x7

    invoke-static {v0, v0, p0}, Lorg/opencv/imgproc/Imgproc;->cvtColor(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    .line 64
    return-object v0
.end method

.method private g(ILorg/opencv/core/Mat;)D
    .registers 7

    .line 69
    if-ltz p1, :cond_3f

    const/16 v0, 0x10

    if-ge p1, v0, :cond_3f

    iget-object v0, p0, Lk/i;->i:[Lorg/opencv/core/Mat;

    aget-object p1, v0, p1

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Lorg/opencv/core/Mat;->rows()I

    move-result v0

    if-eqz v0, :cond_3f

    .line 70
    invoke-virtual {p2}, Lorg/opencv/core/Mat;->cols()I

    move-result v0

    invoke-virtual {p1}, Lorg/opencv/core/Mat;->cols()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 71
    invoke-virtual {p2}, Lorg/opencv/core/Mat;->rows()I

    move-result v1

    invoke-virtual {p1}, Lorg/opencv/core/Mat;->rows()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 72
    if-lez v0, :cond_3f

    if-lez v1, :cond_3f

    .line 73
    new-instance v2, Lorg/opencv/core/Mat;

    const/4 v3, 0x5

    invoke-direct {v2, v1, v0, v3}, Lorg/opencv/core/Mat;-><init>(III)V

    .line 74
    invoke-static {p2, p1, v2, v3}, Lorg/opencv/imgproc/Imgproc;->matchTemplate(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    .line 75
    invoke-static {v2}, Lorg/opencv/core/Core;->minMaxLoc(Lorg/opencv/core/Mat;)Lorg/opencv/core/Core$MinMaxLocResult;

    move-result-object p1

    .line 76
    invoke-virtual {v2}, Lorg/opencv/core/Mat;->release()V

    .line 77
    iget-wide p1, p1, Lorg/opencv/core/Core$MinMaxLocResult;->maxVal:D

    return-wide p1

    .line 80
    :cond_3f
    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    return-wide p1
.end method

.method private h(Landroid/graphics/Bitmap;)Lk/m$a;
    .registers 11

    .line 84
    invoke-static {p1}, Lk/i;->f(Landroid/graphics/Bitmap;)Lorg/opencv/core/Mat;

    move-result-object p1

    .line 85
    nop

    .line 86
    nop

    .line 87
    const/4 v0, -0x1

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    const/4 v3, 0x0

    move-wide v4, v1

    :goto_b
    const/16 v6, 0x10

    if-ge v3, v6, :cond_21

    .line 88
    invoke-direct {p0, v3, p1}, Lk/i;->g(ILorg/opencv/core/Mat;)D

    move-result-wide v6

    .line 89
    cmpl-double v8, v6, v1

    if-eqz v8, :cond_1e

    cmpl-double v8, v6, v4

    if-lez v8, :cond_1e

    .line 90
    nop

    .line 91
    move v0, v3

    move-wide v4, v6

    .line 87
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 94
    :cond_21
    invoke-virtual {p1}, Lorg/opencv/core/Mat;->release()V

    .line 95
    new-instance p1, Lk/m$a;

    invoke-direct {p1, p0, v0, v4, v5}, Lk/m$a;-><init>(Lk/m;ID)V

    return-object p1
.end method


# virtual methods
.method public b(Ljava/lang/Object;)I
    .registers 7

    .line 100
    iget-object p1, p0, Lk/i;->a:Landroid/graphics/Bitmap;

    .line 101
    if-nez p1, :cond_7

    .line 102
    iget p1, p0, Lk/i;->c:I

    return p1

    .line 104
    :cond_7
    invoke-direct {p0, p1}, Lk/i;->h(Landroid/graphics/Bitmap;)Lk/m$a;

    move-result-object p1

    .line 105
    iget v0, p1, Lk/m$a;->a:I

    .line 106
    iget-wide v1, p1, Lk/m$a;->b:D

    iget-wide v3, p0, Lk/i;->b:D

    cmpg-double p1, v1, v3

    if-ltz p1, :cond_3b

    const/4 p1, -0x1

    if-ne v0, p1, :cond_19

    goto :goto_3b

    .line 109
    :cond_19
    if-nez v0, :cond_1e

    iget p1, p0, Lk/i;->d:I

    return p1

    .line 110
    :cond_1e
    const/4 p1, 0x3

    if-gt v0, p1, :cond_24

    iget p1, p0, Lk/i;->e:I

    return p1

    .line 111
    :cond_24
    const/4 p1, 0x6

    if-gt v0, p1, :cond_2a

    iget p1, p0, Lk/i;->f:I

    return p1

    .line 112
    :cond_2a
    const/16 p1, 0x9

    if-gt v0, p1, :cond_31

    iget p1, p0, Lk/i;->g:I

    return p1

    .line 113
    :cond_31
    const/16 p1, 0xc

    if-gt v0, p1, :cond_38

    iget p1, p0, Lk/i;->brake:I

    return p1

    .line 114
    :cond_38
    iget p1, p0, Lk/i;->extender:I

    return p1

    .line 107
    :cond_3b
    :goto_3b
    iget p1, p0, Lk/i;->c:I

    return p1
.end method

.method public e()V
    .registers 4

    .line 119
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x10

    if-ge v0, v1, :cond_16

    .line 120
    iget-object v1, p0, Lk/i;->i:[Lorg/opencv/core/Mat;

    aget-object v1, v1, v0

    .line 121
    if-eqz v1, :cond_e

    .line 122
    invoke-virtual {v1}, Lorg/opencv/core/Mat;->release()V

    .line 124
    :cond_e
    iget-object v1, p0, Lk/i;->i:[Lorg/opencv/core/Mat;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 126
    :cond_16
    return-void
.end method
