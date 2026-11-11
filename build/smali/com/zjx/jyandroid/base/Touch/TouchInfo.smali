.class public Lcom/zjx/jyandroid/base/Touch/TouchInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public fingerIndex:I

.field public pressure:F

.field public size:F

.field public touchRadius:F

.field public type:I

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(IIFFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zjx/jyandroid/base/Touch/TouchInfo;->type:I

    iput p2, p0, Lcom/zjx/jyandroid/base/Touch/TouchInfo;->fingerIndex:I

    iput p3, p0, Lcom/zjx/jyandroid/base/Touch/TouchInfo;->x:F

    iput p4, p0, Lcom/zjx/jyandroid/base/Touch/TouchInfo;->y:F

    iput p5, p0, Lcom/zjx/jyandroid/base/Touch/TouchInfo;->pressure:F

    iput p6, p0, Lcom/zjx/jyandroid/base/Touch/TouchInfo;->size:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/zjx/jyandroid/base/Touch/TouchInfo;->touchRadius:F

    return-void
.end method
