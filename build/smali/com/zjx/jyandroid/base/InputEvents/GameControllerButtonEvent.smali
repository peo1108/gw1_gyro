.class public Lcom/zjx/jyandroid/base/InputEvents/GameControllerButtonEvent;
.super Lcom/zjx/jyandroid/base/InputEvents/InputEvent;
.source "SourceFile"


# static fields
.field public static final MASK_BUTTON:I = 0x4

.field public static final MASK_JOYSTICK:I = 0x2

.field public static final MASK_SHOULDER_L1:I = 0x1

.field public static final OFFSET_BUTTON:I = 0x2

.field public static final OFFSET_JOYSTICK:I = 0x1

.field public static final OFFSET_SHOULDER_L1:I


# instance fields
.field buttonMask:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;-><init>()V

    .line 2
    sget-object v0, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->GameControllerButtonEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    iput-object v0, p0, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;->type:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/zjx/jyandroid/base/InputEvents/GameControllerButtonEvent;-><init>()V

    .line 4
    iput p1, p0, Lcom/zjx/jyandroid/base/InputEvents/GameControllerButtonEvent;->buttonMask:I

    return-void
.end method


# virtual methods
.method public getButtonMask()I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/base/InputEvents/GameControllerButtonEvent;->buttonMask:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<JoystickButtonEvent @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">: buttonMask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zjx/jyandroid/base/InputEvents/GameControllerButtonEvent;->buttonMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
