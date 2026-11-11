.class public Lcom/zjx/jyandroid/base/InputEvents/KeyboardEvent;
.super Lcom/zjx/jyandroid/base/InputEvents/InputEvent;
.source "SourceFile"


# instance fields
.field public down:Z

.field public usage:I

.field public usagePage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;-><init>()V

    .line 2
    sget-object v0, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->KeyboardEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    iput-object v0, p0, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;->type:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/zjx/jyandroid/base/InputEvents/KeyboardEvent;-><init>()V

    .line 4
    iput p1, p0, Lcom/zjx/jyandroid/base/InputEvents/KeyboardEvent;->usagePage:I

    .line 5
    iput p2, p0, Lcom/zjx/jyandroid/base/InputEvents/KeyboardEvent;->usage:I

    .line 6
    iput-boolean p3, p0, Lcom/zjx/jyandroid/base/InputEvents/KeyboardEvent;->down:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<KeyboardEvent @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">: usagePage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zjx/jyandroid/base/InputEvents/KeyboardEvent;->usagePage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". usage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zjx/jyandroid/base/InputEvents/KeyboardEvent;->usage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". down: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zjx/jyandroid/base/InputEvents/KeyboardEvent;->down:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
