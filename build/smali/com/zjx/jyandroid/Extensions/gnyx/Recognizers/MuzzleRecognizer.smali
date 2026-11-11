.class public Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/MuzzleRecognizer;
.super Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/TemplateMatchRecognizer;
.source "SourceFile"


# static fields
.field public static MUZZLE_LEVEL1:I = 0x1

.field public static MUZZLE_LEVEL2:I = 0x2

.field public static MUZZLE_LEVEL3:I = 0x3

.field public static MUZZLE_LEVEL4:I = 0x4

.field public static MUZZLE_NONE:I = 0x0

.field public static UNKNOWN:I = -0x1


# instance fields
.field private final MUZZLE_COUNT:I

.field templates:[Lorg/opencv/core/Mat;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;F)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/TemplateMatchRecognizer;-><init>()V

    const/4 v2, 0x5

    iput v2, v0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/MuzzleRecognizer;->MUZZLE_COUNT:I

    new-array v3, v2, [Lorg/opencv/core/Mat;

    iput-object v3, v0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/MuzzleRecognizer;->templates:[Lorg/opencv/core/Mat;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

    invoke-direct {v3}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;-><init>()V

    invoke-virtual {v3}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->getAccessoryRecognitionThreshold()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    float-to-double v3, v3

    iput-wide v3, v0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/TemplateMatchRecognizer;->threshold:D

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/MuzzleRecognizer;->templates:[Lorg/opencv/core/Mat;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/empty.JPG"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/opencv/imgcodecs/Imgcodecs;->imread(Ljava/lang/String;I)Lorg/opencv/core/Mat;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/MuzzleRecognizer;->templates:[Lorg/opencv/core/Mat;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/muzzle.JPG"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lorg/opencv/imgcodecs/Imgcodecs;->imread(Ljava/lang/String;I)Lorg/opencv/core/Mat;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/MuzzleRecognizer;->templates:[Lorg/opencv/core/Mat;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/muzzle_golden.JPG"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lorg/opencv/imgcodecs/Imgcodecs;->imread(Ljava/lang/String;I)Lorg/opencv/core/Mat;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v3, v6

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/MuzzleRecognizer;->templates:[Lorg/opencv/core/Mat;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/empty_cfq.JPG"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lorg/opencv/imgcodecs/Imgcodecs;->imread(Ljava/lang/String;I)Lorg/opencv/core/Mat;

    move-result-object v4

    const/4 v7, 0x3

    aput-object v4, v3, v7

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/MuzzleRecognizer;->templates:[Lorg/opencv/core/Mat;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/muzzle_cfq.JPG"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lorg/opencv/imgcodecs/Imgcodecs;->imread(Ljava/lang/String;I)Lorg/opencv/core/Mat;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v3, v4

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v3, p2, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    const-wide v8, 0x3fb999999999999aL    # 0.1

    cmpg-double v3, v3, v8

    if-gez v3, :cond_0

    return-void

    :cond_0
    :goto_0
    if-ge v5, v2, :cond_2

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/MuzzleRecognizer;->templates:[Lorg/opencv/core/Mat;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lorg/opencv/core/Mat;->cols()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p2

    float-to-int v4, v4

    invoke-virtual {v3}, Lorg/opencv/core/Mat;->rows()I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, p2

    float-to-int v8, v8

    cmpl-float v9, p2, v1

    if-lez v9, :cond_1

    move v15, v6

    goto :goto_1

    :cond_1
    move v15, v7

    :goto_1
    new-instance v16, Lorg/opencv/core/Mat;

    invoke-direct/range {v16 .. v16}, Lorg/opencv/core/Mat;-><init>()V

    :try_start_0
    new-instance v10, Lorg/opencv/core/Size;

    int-to-double v11, v4

    int-to-double v8, v8

    invoke-direct {v10, v11, v12, v8, v9}, Lorg/opencv/core/Size;-><init>(DD)V

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    move-object v8, v3

    move-object/from16 v9, v16

    invoke-static/range {v8 .. v15}, Lorg/opencv/imgproc/Imgproc;->resize(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;DDI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "io: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ly/c;->b(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v3}, Lorg/opencv/core/Mat;->release()V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/MuzzleRecognizer;->templates:[Lorg/opencv/core/Mat;

    aput-object v16, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static createProcessedMatFromBitmap(Landroid/graphics/Bitmap;)Lorg/opencv/core/Mat;
    .locals 1

    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    invoke-static {p0, v0}, Lorg/opencv/android/Utils;->bitmapToMat(Landroid/graphics/Bitmap;Lorg/opencv/core/Mat;)V

    const/4 p0, 0x7

    invoke-static {v0, v0, p0}, Lorg/opencv/imgproc/Imgproc;->cvtColor(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    return-object v0
.end method

.method private getMatchConfidenceOfTemplateIndex(ILorg/opencv/core/Mat;)D
    .locals 6

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    if-ltz p1, :cond_3

    const/4 v2, 0x5

    if-lt p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/MuzzleRecognizer;->templates:[Lorg/opencv/core/Mat;

    aget-object p1, v3, p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/opencv/core/Mat;->rows()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lorg/opencv/core/Mat;->cols()I

    move-result v3

    invoke-virtual {p1}, Lorg/opencv/core/Mat;->cols()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2}, Lorg/opencv/core/Mat;->rows()I

    move-result v4

    invoke-virtual {p1}, Lorg/opencv/core/Mat;->rows()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    if-lez v3, :cond_3

    if-gtz v4, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/opencv/core/Mat;

    sget v1, Lorg/opencv/core/CvType;->CV_32FC1:I

    invoke-direct {v0, v4, v3, v1}, Lorg/opencv/core/Mat;-><init>(III)V

    invoke-static {p2, p1, v0, v2}, Lorg/opencv/imgproc/Imgproc;->matchTemplate(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    invoke-static {v0}, Lorg/opencv/core/Core;->minMaxLoc(Lorg/opencv/core/Mat;)Lorg/opencv/core/Core$MinMaxLocResult;

    move-result-object p1

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    iget-wide p1, p1, Lorg/opencv/core/Core$MinMaxLocResult;->maxVal:D

    return-wide p1

    :cond_3
    :goto_0
    return-wide v0
.end method

.method private getMatchIndexAndConfidence(Landroid/graphics/Bitmap;)Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/TemplateMatchRecognizer$MatchIndexAndConfidence;
    .locals 9

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/MuzzleRecognizer;->createProcessedMatFromBitmap(Landroid/graphics/Bitmap;)Lorg/opencv/core/Mat;

    move-result-object p1

    const/4 v0, -0x1

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    const/4 v3, 0x0

    move-wide v4, v1

    :goto_0
    const/4 v6, 0x5

    if-ge v3, v6, :cond_2

    invoke-direct {p0, v3, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/MuzzleRecognizer;->getMatchConfidenceOfTemplateIndex(ILorg/opencv/core/Mat;)D

    move-result-wide v6

    cmpl-double v8, v6, v1

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    cmpl-double v8, v6, v4

    if-lez v8, :cond_1

    move v0, v3

    move-wide v4, v6

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/opencv/core/Mat;->release()V

    new-instance p1, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/TemplateMatchRecognizer$MatchIndexAndConfidence;

    invoke-direct {p1, p0, v0, v4, v5}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/TemplateMatchRecognizer$MatchIndexAndConfidence;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/TemplateMatchRecognizer;ID)V

    return-object p1
.end method


# virtual methods
.method public getResult(Ljava/lang/Object;)I
    .locals 4

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/GnyxRecognizer;->image:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    sget p1, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/MuzzleRecognizer;->UNKNOWN:I

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/MuzzleRecognizer;->getMatchIndexAndConfidence(Landroid/graphics/Bitmap;)Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/TemplateMatchRecognizer$MatchIndexAndConfidence;

    move-result-object p1

    iget-wide v0, p1, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/TemplateMatchRecognizer$MatchIndexAndConfidence;->confidence:D

    iget-wide v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/TemplateMatchRecognizer;->threshold:D

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_7

    iget p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/TemplateMatchRecognizer$MatchIndexAndConfidence;->index:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_6

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    sget p1, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/MuzzleRecognizer;->MUZZLE_LEVEL4:I

    return p1

    :cond_4
    sget p1, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/MuzzleRecognizer;->UNKNOWN:I

    return p1

    :cond_5
    :goto_0
    sget p1, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/MuzzleRecognizer;->MUZZLE_LEVEL1:I

    return p1

    :cond_6
    :goto_1
    sget p1, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/MuzzleRecognizer;->MUZZLE_NONE:I

    return p1

    :cond_7
    :goto_2
    sget p1, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/MuzzleRecognizer;->UNKNOWN:I

    return p1
.end method

.method public recycle()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/MuzzleRecognizer;->templates:[Lorg/opencv/core/Mat;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/opencv/core/Mat;->release()V

    :cond_0
    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/MuzzleRecognizer;->templates:[Lorg/opencv/core/Mat;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
