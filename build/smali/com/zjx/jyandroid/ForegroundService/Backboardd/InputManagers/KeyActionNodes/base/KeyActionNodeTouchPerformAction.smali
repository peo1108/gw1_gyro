.class public abstract Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeTouchPerformAction;
.super Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeCoordinateAction;
.source "SourceFile"


# instance fields
.field protected touchManager:Lcom/zjx/jyandroid/TouchManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeCoordinateAction;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/TouchManager;->f()Lcom/zjx/jyandroid/TouchManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeTouchPerformAction;->touchManager:Lcom/zjx/jyandroid/TouchManager;

    return-void
.end method
