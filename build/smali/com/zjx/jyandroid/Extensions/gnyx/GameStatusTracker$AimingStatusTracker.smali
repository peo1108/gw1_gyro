.class public Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$AimingStatusTracker;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AimingStatusTracker"
.end annotation


# instance fields
.field private aimStatusRecognizer:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/AimStatusRecognizer;

.field private aiming:Z

.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$AimingStatusTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$AimingStatusTracker;->aiming:Z

    new-instance p1, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/AimStatusRecognizer;

    invoke-direct {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/AimStatusRecognizer;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$AimingStatusTracker;->aimStatusRecognizer:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/AimStatusRecognizer;

    return-void
.end method


# virtual methods
.method public aimingStatusChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$AimingStatusTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->access$100(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$AimingStatusTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->access$000(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnStatusChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnStatusChangeListener;->onCurrentAimingStatusChanged(Z)V

    :cond_0
    return-void
.end method

.method public isAiming()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$AimingStatusTracker;->aiming:Z

    return v0
.end method

.method public run()V
    .locals 3

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$AimingStatusTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->screenCaptureManager:Lcom/zjx/jyandroid/ScreenCaptureManager;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->aimRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/ScreenCaptureManager;->getScreenshot(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$AimingStatusTracker;->aimStatusRecognizer:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/AimStatusRecognizer;

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/GnyxRecognizer;->setImage(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$AimingStatusTracker;->aimStatusRecognizer:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/AimStatusRecognizer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/AimStatusRecognizer;->getResult(Ljava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$AimingStatusTracker;->setAiming(Z)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aiming check failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setAiming(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$AimingStatusTracker;->aiming:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$AimingStatusTracker;->aimingStatusChanged(Z)V

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$AimingStatusTracker;->aiming:Z

    return-void
.end method
