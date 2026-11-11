.class public abstract Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewBase;
.super Lcom/zjx/jyandroid/base/BaseFloatingView;
.source "SourceFile"


# instance fields
.field private color:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;)V

    const/high16 p1, -0x1000000

    .line 2
    iput p1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewBase;->color:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, -0x1000000

    .line 4
    iput p1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewBase;->color:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, -0x1000000

    .line 6
    iput p1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewBase;->color:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 p1, -0x1000000

    .line 8
    iput p1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewBase;->color:I

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewBase;->color:I

    return v0
.end method

.method public abstract getPreferredWHRatio()F
.end method

.method public abstract onColorChange(I)V
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewBase;->color:I

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairViewBase;->onColorChange(I)V

    return-void
.end method
