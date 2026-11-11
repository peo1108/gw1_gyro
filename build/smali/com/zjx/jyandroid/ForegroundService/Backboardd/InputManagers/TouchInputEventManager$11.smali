.class Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->activatedKeymapHasChanged(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;

.field final synthetic val$terminateIndicator:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$ComponentIndicator;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$ComponentIndicator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$11;->this$0:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$11;->val$terminateIndicator:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$ComponentIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$11;->val$terminateIndicator:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$ComponentIndicator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
