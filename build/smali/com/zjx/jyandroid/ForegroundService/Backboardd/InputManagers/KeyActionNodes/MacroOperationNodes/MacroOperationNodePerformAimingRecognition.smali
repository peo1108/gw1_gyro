.class public Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroOperationNodes/MacroOperationNodePerformAimingRecognition;
.super Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroOperationNodes/MacroOperationNodeBase;
.source "SourceFile"


# instance fields
.field performAimingRecognitionKeyActionNode:Lh/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroOperationNodes/MacroOperationNodeBase;-><init>()V

    new-instance v0, Lh/c;

    invoke-direct {v0}, Lh/c;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroOperationNodes/MacroOperationNodePerformAimingRecognition;->performAimingRecognitionKeyActionNode:Lh/c;

    return-void
.end method


# virtual methods
.method public getLatency()I
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroOperationNodes/MacroOperationNodePerformAimingRecognition;->performAimingRecognitionKeyActionNode:Lh/c;

    iget v0, v0, Lh/c;->c:I

    return v0
.end method

.method public performAction()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroOperationNodes/MacroOperationNodePerformAimingRecognition;->performAimingRecognitionKeyActionNode:Lh/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lh/c;->startActionWithKeyCodes(II)V

    return-void
.end method

.method public setLatency(I)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroOperationNodes/MacroOperationNodePerformAimingRecognition;->performAimingRecognitionKeyActionNode:Lh/c;

    iput p1, v0, Lh/c;->c:I

    return-void
.end method

.method public terminate()V
    .locals 0

    return-void
.end method
