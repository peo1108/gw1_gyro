.class public Lcom/googlecode/tesseract/android/TessBaseAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/tesseract/android/TessBaseAPI$ProgressValues;,
        Lcom/googlecode/tesseract/android/TessBaseAPI$ProgressNotifier;,
        Lcom/googlecode/tesseract/android/TessBaseAPI$PageIteratorLevel;,
        Lcom/googlecode/tesseract/android/TessBaseAPI$OcrEngineMode;,
        Lcom/googlecode/tesseract/android/TessBaseAPI$PageSegMode;
    }
.end annotation


# static fields
.field public static final OEM_DEFAULT:I = 0x3

.field public static final OEM_LSTM_ONLY:I = 0x1

.field public static final OEM_TESSERACT_LSTM_COMBINED:I = 0x2

.field public static final OEM_TESSERACT_ONLY:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field public static final VAR_CHAR_BLACKLIST:Ljava/lang/String; = "tessedit_char_blacklist"

.field public static final VAR_CHAR_WHITELIST:Ljava/lang/String; = "tessedit_char_whitelist"

.field public static final VAR_FALSE:Ljava/lang/String; = "F"

.field public static final VAR_SAVE_BLOB_CHOICES:Ljava/lang/String; = "save_blob_choices"

.field public static final VAR_TRUE:Ljava/lang/String; = "T"


# instance fields
.field private mNativeData:J

.field private mRecycled:Z

.field private progressNotifier:Lcom/googlecode/tesseract/android/TessBaseAPI$ProgressNotifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "jpeg"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "png"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "leptonica"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "tesseract"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeClassInit()V

    const-class v0, Lcom/googlecode/tesseract/android/TessBaseAPI;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/googlecode/tesseract/android/TessBaseAPI;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeConstruct()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t create TessBaseApi object"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/googlecode/tesseract/android/TessBaseAPI$ProgressNotifier;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/googlecode/tesseract/android/TessBaseAPI;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->progressNotifier:Lcom/googlecode/tesseract/android/TessBaseAPI$ProgressNotifier;

    return-void
.end method

.method private native nativeAddPageToDocument(JJLjava/lang/String;J)Z
.end method

.method private native nativeBeginDocument(JLjava/lang/String;)Z
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeClear(J)V
.end method

.method private native nativeConstruct()J
.end method

.method private native nativeEndDocument(J)Z
.end method

.method private native nativeGetBoxText(JI)Ljava/lang/String;
.end method

.method private native nativeGetConnectedComponents(J)J
.end method

.method private native nativeGetHOCRText(JI)Ljava/lang/String;
.end method

.method private native nativeGetInitLanguagesAsString(J)Ljava/lang/String;
.end method

.method private native nativeGetPageSegMode(J)I
.end method

.method private native nativeGetRegions(J)J
.end method

.method private native nativeGetResultIterator(J)J
.end method

.method private native nativeGetStrips(J)J
.end method

.method private native nativeGetTextlines(J)J
.end method

.method private native nativeGetThresholdedImage(J)J
.end method

.method private native nativeGetUTF8Text(J)Ljava/lang/String;
.end method

.method private native nativeGetVariable(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeGetVersion(J)Ljava/lang/String;
.end method

.method private native nativeGetWords(J)J
.end method

.method private native nativeInit(JLjava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeInitOem(JLjava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native nativeInitParams(JLjava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)Z
.end method

.method private native nativeMeanConfidence(J)I
.end method

.method private native nativeReadConfigFile(JLjava/lang/String;)V
.end method

.method private native nativeRecycle(J)V
.end method

.method private native nativeSetDebug(JZ)V
.end method

.method private native nativeSetImageBytes(J[BIIII)V
.end method

.method private native nativeSetImagePix(JJ)V
.end method

.method private native nativeSetInputName(JLjava/lang/String;)V
.end method

.method private native nativeSetOutputName(JLjava/lang/String;)V
.end method

.method private native nativeSetPageSegMode(JI)V
.end method

.method private native nativeSetRectangle(JIIII)V
.end method

.method private native nativeSetVariable(JLjava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeStop(J)V
.end method

.method private native nativeWordConfidences(J)[I
.end method


# virtual methods
.method public addPageToDocument(Lcom/googlecode/leptonica/android/Pix;Ljava/lang/String;Lcom/googlecode/tesseract/android/TessPdfRenderer;)Z
    .locals 9

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-virtual {p1}, Lcom/googlecode/leptonica/android/Pix;->getNativePix()J

    move-result-wide v4

    invoke-virtual {p3}, Lcom/googlecode/tesseract/android/TessPdfRenderer;->getNativePdfRenderer()J

    move-result-wide v7

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v8}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeAddPageToDocument(JJLjava/lang/String;J)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public beginDocument(Lcom/googlecode/tesseract/android/TessPdfRenderer;)Z
    .locals 2

    .line 4
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/googlecode/tesseract/android/TessPdfRenderer;->getNativePdfRenderer()J

    move-result-wide v0

    const-string p1, ""

    invoke-direct {p0, v0, v1, p1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeBeginDocument(JLjava/lang/String;)Z

    move-result p1

    return p1

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public beginDocument(Lcom/googlecode/tesseract/android/TessPdfRenderer;Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/googlecode/tesseract/android/TessPdfRenderer;->getNativePdfRenderer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeBeginDocument(JLjava/lang/String;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public clear()V
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeClear(J)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public endDocument(Lcom/googlecode/tesseract/android/TessPdfRenderer;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/googlecode/tesseract/android/TessPdfRenderer;->getNativePdfRenderer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeEndDocument(J)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/googlecode/tesseract/android/TessBaseAPI;->TAG:Ljava/lang/String;

    const-string v1, "TessBaseAPI was not terminated using recycle()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/googlecode/tesseract/android/TessBaseAPI;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getBoxText(I)Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v0, v1, p1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetBoxText(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public getConnectedComponents()Lcom/googlecode/leptonica/android/Pixa;
    .locals 4

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/googlecode/leptonica/android/Pixa;

    iget-wide v1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v1, v2}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetConnectedComponents(J)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/googlecode/leptonica/android/Pixa;-><init>(JII)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getHOCRText(I)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v0, v1, p1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetHOCRText(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public getInitLanguagesAsString()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetInitLanguagesAsString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getLibraryFlavor()Ljava/lang/String;
    .locals 1

    const-string v0, "standard"

    return-object v0
.end method

.method public getNativeData()J
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getPageSegMode()I
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetPageSegMode(J)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getRegions()Lcom/googlecode/leptonica/android/Pixa;
    .locals 4

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/googlecode/leptonica/android/Pixa;

    iget-wide v1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v1, v2}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetRegions(J)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/googlecode/leptonica/android/Pixa;-><init>(JII)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getResultIterator()Lcom/googlecode/tesseract/android/ResultIterator;
    .locals 4

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetResultIterator(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v2, Lcom/googlecode/tesseract/android/ResultIterator;

    invoke-direct {v2, v0, v1}, Lcom/googlecode/tesseract/android/ResultIterator;-><init>(J)V

    return-object v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getStrips()Lcom/googlecode/leptonica/android/Pixa;
    .locals 4

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/googlecode/leptonica/android/Pixa;

    iget-wide v1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v1, v2}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetStrips(J)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/googlecode/leptonica/android/Pixa;-><init>(JII)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getTextlines()Lcom/googlecode/leptonica/android/Pixa;
    .locals 4

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/googlecode/leptonica/android/Pixa;

    iget-wide v1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v1, v2}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetTextlines(J)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/googlecode/leptonica/android/Pixa;-><init>(JII)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getThresholdedImage()Lcom/googlecode/leptonica/android/Pix;
    .locals 3

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/googlecode/leptonica/android/Pix;

    iget-wide v1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v1, v2}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetThresholdedImage(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getUTF8Text()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetUTF8Text(J)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getVariable(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v0, v1, p1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetVariable(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetVersion(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getWords()Lcom/googlecode/leptonica/android/Pixa;
    .locals 4

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/googlecode/leptonica/android/Pixa;

    iget-wide v1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v1, v2}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeGetWords(J)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/googlecode/leptonica/android/Pixa;-><init>(JII)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/googlecode/tesseract/android/TessBaseAPI;->init(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/googlecode/tesseract/android/TessBaseAPI;->init(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 3
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_6

    if-eqz p1, :cond_5

    .line 4
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "tessdata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    iget-wide v4, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, p0

    move-object v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeInitOem(JLjava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1

    .line 12
    :cond_1
    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v0

    .line 13
    new-array v9, v0, [Ljava/lang/String;

    .line 14
    new-array v10, v0, [Ljava/lang/String;

    .line 15
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 16
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v9, v0

    .line 17
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v10, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 18
    :cond_2
    iget-wide v4, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, p0

    move-object v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v10}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeInitParams(JLjava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 19
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Data path must contain subfolder tessdata!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Data path does not exist!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Data path must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public meanConfidence()I
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeMeanConfidence(J)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public onProgressValues(IIIIIIIII)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->progressNotifier:Lcom/googlecode/tesseract/android/TessBaseAPI$ProgressNotifier;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    sub-int p4, p8, p4

    sub-int p5, p8, p5

    invoke-direct {v0, p2, p4, p3, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p6, p9, p7, p8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p3, Lcom/googlecode/tesseract/android/TessBaseAPI$ProgressValues;

    invoke-direct {p3, p0, p1, v0, p2}, Lcom/googlecode/tesseract/android/TessBaseAPI$ProgressValues;-><init>(Lcom/googlecode/tesseract/android/TessBaseAPI;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->progressNotifier:Lcom/googlecode/tesseract/android/TessBaseAPI$ProgressNotifier;

    invoke-interface {p1, p3}, Lcom/googlecode/tesseract/android/TessBaseAPI$ProgressNotifier;->onProgressValues(Lcom/googlecode/tesseract/android/TessBaseAPI$ProgressValues;)V

    :cond_0
    return-void
.end method

.method public readConfigFile(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v0, v1, p1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeReadConfigFile(JLjava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public recycle()V
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeRecycle(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    :cond_0
    return-void
.end method

.method public setDebug(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v0, v1, p1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeSetDebug(JZ)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 7
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_1

    .line 8
    invoke-static {p1}, Lcom/googlecode/leptonica/android/ReadFile;->readBitmap(Landroid/graphics/Bitmap;)Lcom/googlecode/leptonica/android/Pix;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-virtual {p1}, Lcom/googlecode/leptonica/android/Pix;->getNativePix()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeSetImagePix(JJ)V

    .line 10
    invoke-virtual {p1}, Lcom/googlecode/leptonica/android/Pix;->recycle()V

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to read bitmap"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public setImage(Lcom/googlecode/leptonica/android/Pix;)V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 13
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    .line 14
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-virtual {p1}, Lcom/googlecode/leptonica/android/Pix;->getNativePix()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeSetImagePix(JJ)V

    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public setImage(Ljava/io/File;)V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_1

    .line 2
    invoke-static {p1}, Lcom/googlecode/leptonica/android/ReadFile;->readFile(Ljava/io/File;)Lcom/googlecode/leptonica/android/Pix;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-virtual {p1}, Lcom/googlecode/leptonica/android/Pix;->getNativePix()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeSetImagePix(JJ)V

    .line 4
    invoke-virtual {p1}, Lcom/googlecode/leptonica/android/Pix;->recycle()V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to read image file"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public setImage([BIIII)V
    .locals 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 16
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    .line 17
    iget-wide v2, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeSetImageBytes(J[BIIII)V

    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public setInputName(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v0, v1, p1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeSetInputName(JLjava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public setOutputName(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v0, v1, p1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeSetOutputName(JLjava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public setPageSegMode(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v0, v1, p1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeSetPageSegMode(JI)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public setRectangle(IIII)V
    .locals 8

    .line 4
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    .line 5
    iget-wide v2, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeSetRectangle(JIIII)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public setRectangle(Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    .line 2
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->setRectangle(IIII)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public setVariable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeSetVariable(JLjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public stop()V
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeStop(J)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public wordConfidences()[I
    .locals 2

    iget-boolean v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mRecycled:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI;->mNativeData:J

    invoke-direct {p0, v0, v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->nativeWordConfidences(J)[I

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [I

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
