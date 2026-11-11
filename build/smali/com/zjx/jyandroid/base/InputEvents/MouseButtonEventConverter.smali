.class public abstract Lcom/zjx/jyandroid/base/InputEvents/MouseButtonEventConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field lastButtonMask:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract keyEventOccurred(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;)V
.end method

.method public mouseButtonMaskChanged(I)V
    .locals 7

    iget v0, p0, Lcom/zjx/jyandroid/base/InputEvents/MouseButtonEventConverter;->lastButtonMask:I

    xor-int/2addr v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x7

    if-ge v2, v3, :cond_2

    const/4 v3, 0x1

    shl-int v4, v3, v2

    and-int v5, v0, v4

    if-eqz v5, :cond_1

    sget-object v5, Lcom/zjx/jyandroid/base/Definitions/MouseButtons;->buttonIndexToKeyCode:[I

    aget v5, v5, v2

    and-int/2addr v4, p1

    if-eqz v4, :cond_0

    new-instance v4, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;

    sget-object v6, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;->MOUSE:Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;

    invoke-direct {v4, v6, v5, v3}, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;-><init>(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;IZ)V

    invoke-virtual {p0, v4}, Lcom/zjx/jyandroid/base/InputEvents/MouseButtonEventConverter;->keyEventOccurred(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;)V

    goto :goto_1

    :cond_0
    new-instance v3, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;

    sget-object v4, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;->MOUSE:Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;

    invoke-direct {v3, v4, v5, v1}, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;-><init>(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;IZ)V

    invoke-virtual {p0, v3}, Lcom/zjx/jyandroid/base/InputEvents/MouseButtonEventConverter;->keyEventOccurred(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/zjx/jyandroid/base/InputEvents/MouseButtonEventConverter;->lastButtonMask:I

    return-void
.end method
