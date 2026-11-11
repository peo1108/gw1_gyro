.class Lcom/googlecode/leptonica/android/Pixa$PixIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/leptonica/android/Pixa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PixIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/googlecode/leptonica/android/Pix;",
        ">;"
    }
.end annotation


# instance fields
.field private mIndex:I

.field final synthetic this$0:Lcom/googlecode/leptonica/android/Pixa;


# direct methods
.method private constructor <init>(Lcom/googlecode/leptonica/android/Pixa;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/googlecode/leptonica/android/Pixa$PixIterator;->this$0:Lcom/googlecode/leptonica/android/Pixa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/googlecode/leptonica/android/Pixa$PixIterator;->mIndex:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/googlecode/leptonica/android/Pixa;Lcom/googlecode/leptonica/android/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/googlecode/leptonica/android/Pixa$PixIterator;-><init>(Lcom/googlecode/leptonica/android/Pixa;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget-object v0, p0, Lcom/googlecode/leptonica/android/Pixa$PixIterator;->this$0:Lcom/googlecode/leptonica/android/Pixa;

    invoke-virtual {v0}, Lcom/googlecode/leptonica/android/Pixa;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Lcom/googlecode/leptonica/android/Pixa$PixIterator;->mIndex:I

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Lcom/googlecode/leptonica/android/Pix;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/googlecode/leptonica/android/Pixa$PixIterator;->this$0:Lcom/googlecode/leptonica/android/Pixa;

    iget v1, p0, Lcom/googlecode/leptonica/android/Pixa$PixIterator;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/googlecode/leptonica/android/Pixa$PixIterator;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/googlecode/leptonica/android/Pixa;->getPix(I)Lcom/googlecode/leptonica/android/Pix;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pixa$PixIterator;->next()Lcom/googlecode/leptonica/android/Pix;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
