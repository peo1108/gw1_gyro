.class public Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/ScopeRecognizer;
.super Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/TemplateMatchRecognizer;
.source "SourceFile"


# static fields
.field public static final HOLO:I = 0x2

.field public static final NO_SCOPE:I = 0x0

.field public static final RED_DOT:I = 0x1

.field public static final SCOPE_PHOTO_COUNT:I

.field public static final UNKNOWN:I = -0x1

.field public static final X10:I = 0x9

.field public static final X12:I = 0x3

.field public static final X2:I = 0x4

.field public static final X3:I = 0x6

.field public static final X6:I = 0x7

.field public static final X8:I = 0x8


# instance fields
.field templates:[Lorg/opencv/core/Mat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PhysicalScope;->values()[Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PhysicalScope;

    move-result-object v0

    array-length v0, v0

    sput v0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/ScopeRecognizer;->SCOPE_PHOTO_COUNT:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;F)V
    .locals 9

    invoke-direct {p0}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/TemplateMatchRecognizer;-><init>()V

    sget v0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/ScopeRecognizer;->SCOPE_PHOTO_COUNT:I

    new-array v0, v0, [Lorg/opencv/core/Mat;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/ScopeRecognizer;->templates:[Lorg/opencv/core/Mat;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

    invoke-direct {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;-><init>()V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->getScopeRecognitionThreshold()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/TemplateMatchRecognizer;->threshold:D

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget v2, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/ScopeRecognizer;->SCOPE_PHOTO_COUNT:I

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".JPG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/ScopeRecognizer;->templates:[Lorg/opencv/core/Mat;

    invoke-static {v2, v0}, Lorg/opencv/imgcodecs/Imgcodecs;->imread(Ljava/lang/String;I)Lorg/opencv/core/Mat;

    move-result-object v2

    aput-object v2, v3, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3fa999999999999aL    # 0.05

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/ScopeRecognizer;->templates:[Lorg/opencv/core/Mat;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/opencv/core/Mat;->rows()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/ScopeRecognizer;->templates:[Lorg/opencv/core/Mat;

    aget-object v2, v2, v1

    new-instance v3, Lorg/opencv/core/Mat;

    invoke-direct {v3}, Lorg/opencv/core/Mat;-><init>()V

    new-instance v4, Lorg/opencv/core/Size;

    invoke-virtual {v2}, Lorg/opencv/core/Mat;->cols()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p2

    float-to-double v5, v5

    invoke-virtual {v2}, Lorg/opencv/core/Mat;->rows()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, p2

    float-to-double v7, v7

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/opencv/core/Size;-><init>(DD)V

    invoke-static {v2, v3, v4}, Lorg/opencv/imgproc/Imgproc;->resize(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;)V

    invoke-virtual {v2}, Lorg/opencv/core/Mat;->release()V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/ScopeRecognizer;->templates:[Lorg/opencv/core/Mat;

    aput-object v3, v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
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

    sget v2, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/ScopeRecognizer;->SCOPE_PHOTO_COUNT:I

    if-lt p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/ScopeRecognizer;->templates:[Lorg/opencv/core/Mat;

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

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/ScopeRecognizer;->createProcessedMatFromBitmap(Landroid/graphics/Bitmap;)Lorg/opencv/core/Mat;

    move-result-object p1

    const/4 v0, -0x1

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    const/4 v3, 0x0

    move-wide v4, v1

    :goto_0
    sget v6, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/ScopeRecognizer;->SCOPE_PHOTO_COUNT:I

    if-ge v3, v6, :cond_2

    invoke-direct {p0, v3, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/ScopeRecognizer;->getMatchConfidenceOfTemplateIndex(ILorg/opencv/core/Mat;)D

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
    .locals 6

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/GnyxRecognizer;->image:Landroid/graphics/Bitmap;

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/ScopeRecognizer;->getMatchIndexAndConfidence(Landroid/graphics/Bitmap;)Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/TemplateMatchRecognizer$MatchIndexAndConfidence;

    move-result-object p1

    iget v1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/TemplateMatchRecognizer$MatchIndexAndConfidence;->index:I

    iget-wide v2, p1, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/TemplateMatchRecognizer$MatchIndexAndConfidence;->confidence:D

    if-gez v1, :cond_1

    return v0

    :cond_1
    iget-wide v4, p0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/TemplateMatchRecognizer;->threshold:D

    cmpl-double p1, v2, v4

    if-lez p1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public recycle()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/ScopeRecognizer;->SCOPE_PHOTO_COUNT:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/ScopeRecognizer;->templates:[Lorg/opencv/core/Mat;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/opencv/core/Mat;->release()V

    :cond_0
    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/ScopeRecognizer;->templates:[Lorg/opencv/core/Mat;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
