.class public Lcom/googlecode/tesseract/android/TessBaseAPI$ProgressValues;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/tesseract/android/TessBaseAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProgressValues"
.end annotation


# instance fields
.field private final percent:I

.field private final textRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/googlecode/tesseract/android/TessBaseAPI;

.field private final wordRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/googlecode/tesseract/android/TessBaseAPI;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI$ProgressValues;->this$0:Lcom/googlecode/tesseract/android/TessBaseAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/googlecode/tesseract/android/TessBaseAPI$ProgressValues;->percent:I

    iput-object p3, p0, Lcom/googlecode/tesseract/android/TessBaseAPI$ProgressValues;->wordRect:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/googlecode/tesseract/android/TessBaseAPI$ProgressValues;->textRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getCurrentRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI$ProgressValues;->textRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getCurrentWordRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI$ProgressValues;->wordRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPercent()I
    .locals 1

    iget v0, p0, Lcom/googlecode/tesseract/android/TessBaseAPI$ProgressValues;->percent:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProgressValues{percent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI$ProgressValues;->percent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wordRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI$ProgressValues;->wordRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/googlecode/tesseract/android/TessBaseAPI$ProgressValues;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
