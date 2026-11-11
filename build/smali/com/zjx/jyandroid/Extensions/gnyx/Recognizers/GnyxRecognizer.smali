.class public abstract Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/GnyxRecognizer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected image:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/GnyxRecognizer;->image:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public abstract getResult(Ljava/lang/Object;)I
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/GnyxRecognizer;->image:Landroid/graphics/Bitmap;

    return-void
.end method
