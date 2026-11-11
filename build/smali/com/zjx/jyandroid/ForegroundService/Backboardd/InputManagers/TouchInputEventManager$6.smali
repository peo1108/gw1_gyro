.class Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$6;
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

.field final synthetic val$componentIndicator:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$ComponentIndicator;

.field final synthetic val$frame:Landroid/graphics/Rect;

.field final synthetic val$property:Lr/e0;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$ComponentIndicator;Landroid/graphics/Rect;Lr/e0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
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

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$6;->this$0:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$6;->val$componentIndicator:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$ComponentIndicator;

    iput-object p3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$6;->val$frame:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$6;->val$property:Lr/e0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$6;->this$0:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->indicatorHolder:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$TouchTriggerComponentsIndicatorHolder;

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$6;->val$componentIndicator:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$ComponentIndicator;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$6;->val$componentIndicator:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$ComponentIndicator;

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$6;->val$frame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$6;->val$property:Lr/e0;

    invoke-virtual {v0}, Lr/e0;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget v0, Lcom/zjx/jyandroid/R$string;->shadow:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$6;->val$componentIndicator:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$ComponentIndicator;

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setTextLabelText(Ljava/lang/String;)V

    return-void
.end method
