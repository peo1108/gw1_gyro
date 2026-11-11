.class public abstract Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/TaskPerformKeyActionNode;
.super Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/ITouchTriggerable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeBase;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract startActionWithKeyCodes(II)V
.end method

.method public abstract stopActionWithKeyCodes(II)V
.end method
