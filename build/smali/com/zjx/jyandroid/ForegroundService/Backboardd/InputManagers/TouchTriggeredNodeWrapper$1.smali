.class Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->touchOccurred(Ljava/util/concurrent/ExecutorService;Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;IFF)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;

.field final synthetic val$index:I

.field final synthetic val$touchType:Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

.field final synthetic val$x:F

.field final synthetic val$y:F


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;IFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper$1;->this$0:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper$1;->val$touchType:Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    iput p3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper$1;->val$index:I

    iput p4, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper$1;->val$x:F

    iput p5, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper$1;->val$y:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper$1;->this$0:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->triggerKeyActionNode:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/ITouchTriggerable;

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper$1;->val$touchType:Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    iget v2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper$1;->val$index:I

    iget v3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper$1;->val$x:F

    iget v4, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper$1;->val$y:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/ITouchTriggerable;->startActionByTouch(Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;IFF)V

    return-void
.end method
