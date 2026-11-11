.class Lcom/zjx/jyandroid/ForegroundService/KeymapManager$34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->C(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

.field final synthetic val$activatedKeymap:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$34;->this$0:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$34;->val$activatedKeymap:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/MouseMoveInputManager;->removeAllParsablesAndSetCurrentManager()V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$34;->this$0:Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$34;->val$activatedKeymap:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;

    invoke-static {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->c(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;)V

    return-void
.end method
