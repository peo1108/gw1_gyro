.class Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->showIndicatorView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;

.field final synthetic val$screenSize:Landroid/util/Size;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;Landroid/util/Size;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$1;->this$0:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$1;->val$screenSize:Landroid/util/Size;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$1;->this$0:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;

    iget-object v1, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->indicatorHolder:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$TouchTriggerComponentsIndicatorHolder;

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$1;->val$screenSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v4

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$1;->val$screenSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-static {}, Ll/b;->i()I

    move-result v2

    or-int/lit8 v7, v2, 0x18

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x33

    invoke-virtual/range {v0 .. v7}, Ll/b;->d(Lcom/zjx/jyandroid/base/BaseFloatingView;IIIIII)V

    return-void
.end method
