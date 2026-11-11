.class public Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/StockRecognizer;
.super Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/TemplateMatchRecognizer;
.source "SourceFile"


# instance fields
.field private final STOCK_COUNT:I

.field public STOCK_LEVEL1:I

.field public STOCK_LEVEL2:I

.field public STOCK_LEVEL3:I

.field public STOCK_LEVEL4:I

.field public STOCK_NONE:I

.field public UNKNOWN:I

.field templates:[Lorg/opencv/core/Mat;


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/TemplateMatchRecognizer;-><init>()V

    const/4 v2, -0x1

    iput v2, v0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/StockRecognizer;->UNKNOWN:I

    const/4 v2, 0x0

    iput v2, v0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/StockRecognizer;->STOCK_NONE:I

    const/4 v3, 0x1

    iput v3, v0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/StockRecognizer;->STOCK_LEVEL1:I

    const/4 v4, 0x2

    iput v4, v0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/StockRecognizer;->STOCK_LEVEL2:I

    const/4 v5, 0x3

    iput v5, v0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/StockRecognizer;->STOCK_LEVEL3:I

    const/4 v6, 0x4

    iput v6, v0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/StockRecognizer;->STOCK_LEVEL4:I

    iput v6, v0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/StockRecognizer;->STOCK_COUNT:I

    new-array v7, v6, [Lorg/opencv/core/Mat;

    iput-object v7, v0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/StockRecognizer;->templates:[Lorg/opencv/core/Mat;

    new-instance v7, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

    invoke-direct {v7}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;-><init>()V

    invoke-virtual {v7}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->getAccessoryRecognitionThreshold()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v7, v8

    float-to-double v7, v7

    iput-wide v7, v0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/TemplateMatchRecognizer;->threshold:D

    iget-object v7, v0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/StockRecognizer;->templates:[Lorg/opencv/core/Mat;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/empty.JPG"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Lorg/opencv/imgcodecs/Imgcodecs;->imread(Ljava/lang/String;I)Lorg/opencv/core/Mat;

    move-result-object v8

    aput-object v8, v7, v2

    iget-object v7, v0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/StockRecognizer;->templates:[Lorg/opencv/core/Mat;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/empty_ju.JPG"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Lorg/opencv/imgcodecs/Imgcodecs;->imread(Ljava/lang/String;I)Lorg/opencv/core/Mat;

    move-result-object v8

    aput-object v8, v7, v3

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/StockRecognizer;->templates:[Lorg/opencv/core/Mat;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lorg/opencv/imgcodecs/Imgcodecs;->imread(Ljava/lang/String;I)Lorg/opencv/core/Mat;

    move-result-object v7

    aput-object v7, v3, v4

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/StockRecognizer;->templates:[Lorg/opencv/core/Mat;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/stock_ju.JPG"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lorg/opencv/imgcodecs/Imgcodecs;->imread(Ljava/lang/String;I)Lorg/opencv/core/Mat;

    move-result-object v1

    aput-object v1, v3, v5

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v3, p2, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v7, v3

    const-wide v9, 0x3fb999999999999aL    # 0.1

    cmpg-double v3, v7, v9

    if-gez v3, :cond_0

    return-void

    :cond_0
    :goto_0
    if-ge v2, v6, :cond_2

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/StockRecognizer;->templates:[Lorg/opencv/core/Mat;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/opencv/core/Mat;->cols()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, p2

    float-to-int v7, v7

    invoke-virtual {v3}, Lorg/opencv/core/Mat;->rows()I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, p2

    float-to-int v8, v8

    cmpl-float v9, p2, v1

    if-lez v9, :cond_1

    move v14, v4

    goto :goto_1

    :cond_1
    move v14, v5

    :goto_1
    new-instance v15, Lorg/opencv/core/Mat;

    invoke-direct {v15}, Lorg/opencv/core/Mat;-><init>()V

    :try_start_0
    new-instance v9, Lorg/opencv/core/Size;

    int-to-double v10, v7

    int-to-double v7, v8

    invoke-direct {v9, v10, v11, v7, v8}, Lorg/opencv/core/Size;-><init>(DD)V

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object v7, v3

    move-object v8, v15

    invoke-static/range {v7 .. v14}, Lorg/opencv/imgproc/Imgproc;->resize(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;DDI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "io: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ly/c;->b(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v3}, Lorg/opencv/core/Mat;->release()V

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/StockRecognizer;->templates:[Lorg/opencv/core/Mat;

    aput-object v15, v3, v2

    add-int/lit8 v2, v2, 0x1

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
    .locals 5

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    if-ltz p1, :cond_3

    const/4 v2, 0x4

    if-lt p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/StockRecognizer;->templates:[Lorg/opencv/core/Mat;

    aget-object p1, v2, p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/opencv/core/Mat;->rows()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lorg/opencv/core/Mat;->cols()I

    move-result v2

    invoke-virtual {p1}, Lorg/opencv/core/Mat;->cols()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2}, Lorg/opencv/core/Mat;->rows()I

    move-result v3

    invoke-virtual {p1}, Lorg/opencv/core/Mat;->rows()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    if-lez v2, :cond_3

    if-gtz v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/opencv/core/Mat;

    sget v1, Lorg/opencv/core/CvType;->CV_32FC1:I

    invoke-direct {v0, v3, v2, v1}, Lorg/opencv/core/Mat;-><init>(III)V

    const/4 v1, 0x5

    invoke-static {p2, p1, v0, v1}, Lorg/opencv/imgproc/Imgproc;->matchTemplate(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

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

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/StockRecognizer;->createProcessedMatFromBitmap(Landroid/graphics/Bitmap;)Lorg/opencv/core/Mat;

    move-result-object p1

    const/4 v0, -0x1

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    const/4 v3, 0x0

    move-wide v4, v1

    :goto_0
    const/4 v6, 0x4

    if-ge v3, v6, :cond_2

    invoke-direct {p0, v3, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/StockRecognizer;->getMatchConfidenceOfTemplateIndex(ILorg/opencv/core/Mat;)D

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

    iget p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/StockRecognizer;->UNKNOWN:I

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/StockRecognizer;->getMatchIndexAndConfidence(Landroid/graphics/Bitmap;)Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/TemplateMatchRecognizer$MatchIndexAndConfidence;

    move-result-object p1

    iget-wide v0, p1, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/TemplateMatchRecognizer$MatchIndexAndConfidence;->confidence:D

    iget-wide v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/TemplateMatchRecognizer;->threshold:D

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_4

    iget p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/TemplateMatchRecognizer$MatchIndexAndConfidence;->index:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/StockRecognizer;->STOCK_LEVEL1:I

    return p1

    :cond_3
    :goto_0
    iget p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/StockRecognizer;->STOCK_NONE:I

    return p1

    :cond_4
    :goto_1
    iget p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/StockRecognizer;->UNKNOWN:I

    return p1
.end method

.method public recycle()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/StockRecognizer;->templates:[Lorg/opencv/core/Mat;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/opencv/core/Mat;->release()V

    :cond_0
    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/StockRecognizer;->templates:[Lorg/opencv/core/Mat;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
