.class public Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;
.super Lcom/zjx/jyandroid/base/InputEvents/InputEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;
    }
.end annotation


# instance fields
.field public index:I

.field public touchType:Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;IFF)V
    .locals 1

    invoke-direct {p0}, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;-><init>()V

    sget-object v0, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->TouchEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    iput-object v0, p0, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;->type:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    iput-object p1, p0, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->touchType:Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    iput p2, p0, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->index:I

    iput p3, p0, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->x:F

    iput p4, p0, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->y:F

    return-void
.end method
