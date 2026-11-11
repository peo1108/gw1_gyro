.class public Lcom/zjx/jyandroid/base/FloatRect;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bottom:F

.field public left:F

.field public right:F

.field public top:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zjx/jyandroid/base/FloatRect;->left:F

    iput p2, p0, Lcom/zjx/jyandroid/base/FloatRect;->top:F

    iput p3, p0, Lcom/zjx/jyandroid/base/FloatRect;->right:F

    iput p4, p0, Lcom/zjx/jyandroid/base/FloatRect;->bottom:F

    return-void
.end method


# virtual methods
.method public height()F
    .locals 2

    iget v0, p0, Lcom/zjx/jyandroid/base/FloatRect;->bottom:F

    iget v1, p0, Lcom/zjx/jyandroid/base/FloatRect;->top:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public width()F
    .locals 2

    iget v0, p0, Lcom/zjx/jyandroid/base/FloatRect;->right:F

    iget v1, p0, Lcom/zjx/jyandroid/base/FloatRect;->left:F

    sub-float/2addr v0, v1

    return v0
.end method
