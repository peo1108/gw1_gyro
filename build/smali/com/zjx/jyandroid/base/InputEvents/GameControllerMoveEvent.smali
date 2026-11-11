.class public Lcom/zjx/jyandroid/base/InputEvents/GameControllerMoveEvent;
.super Lcom/zjx/jyandroid/base/InputEvents/InputEvent;
.source "SourceFile"


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;-><init>()V

    .line 2
    sget-object v0, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->GameControllerMoveEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    iput-object v0, p0, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;->type:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/zjx/jyandroid/base/InputEvents/GameControllerMoveEvent;-><init>()V

    .line 4
    iput p1, p0, Lcom/zjx/jyandroid/base/InputEvents/GameControllerMoveEvent;->x:F

    .line 5
    iput p2, p0, Lcom/zjx/jyandroid/base/InputEvents/GameControllerMoveEvent;->y:F

    .line 6
    iput p3, p0, Lcom/zjx/jyandroid/base/InputEvents/GameControllerMoveEvent;->z:F

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<JoystickMoveEvent @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">: x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zjx/jyandroid/base/InputEvents/GameControllerMoveEvent;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ". y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zjx/jyandroid/base/InputEvents/GameControllerMoveEvent;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
