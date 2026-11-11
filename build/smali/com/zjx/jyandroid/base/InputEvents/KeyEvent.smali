.class public Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;
.super Lcom/zjx/jyandroid/base/InputEvents/InputEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;
    }
.end annotation


# instance fields
.field public down:Z

.field public source:Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;

.field public usage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;-><init>()V

    .line 2
    sget-object v0, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->KeyEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    iput-object v0, p0, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;->type:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    return-void
.end method

.method public constructor <init>(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;IZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;->source:Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;

    .line 5
    iput p2, p0, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;->usage:I

    .line 6
    iput-boolean p3, p0, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;->down:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<KeyEvent @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">: source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;->source:Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". usage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;->usage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". down: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;->down:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
