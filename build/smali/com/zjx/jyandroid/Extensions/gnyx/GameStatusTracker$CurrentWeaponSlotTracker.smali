.class public Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponSlotTracker;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CurrentWeaponSlotTracker"
.end annotation


# instance fields
.field equippedWeaponIndicatorDetector:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/EquippedWeaponIndicatorDetector;

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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponSlotTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance p1, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/EquippedWeaponIndicatorDetector;

    invoke-direct {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/EquippedWeaponIndicatorDetector;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponSlotTracker;->equippedWeaponIndicatorDetector:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/EquippedWeaponIndicatorDetector;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_6

    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponSlotTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->firstWeaponRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->secondWeaponRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->access$000(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnStatusChangeListener;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponSlotTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->screenCaptureManager:Lcom/zjx/jyandroid/ScreenCaptureManager;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->firstWeaponRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/ScreenCaptureManager;->getScreenshot(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponSlotTracker;->equippedWeaponIndicatorDetector:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/EquippedWeaponIndicatorDetector;

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/GnyxRecognizer;->setImage(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponSlotTracker;->equippedWeaponIndicatorDetector:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/EquippedWeaponIndicatorDetector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/EquippedWeaponIndicatorDetector;->getResult(Ljava/lang/Object;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponSlotTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->currentWeapon:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    iget-object v3, v1, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->weapon1:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    if-eq v2, v3, :cond_2

    invoke-virtual {v1, v3}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->setCurrentWeapon(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponSlotTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->currentAccessoryTracker:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;

    if-eqz v2, :cond_2

    sget-object v3, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;->SLOT_1:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->weapon1:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    invoke-virtual {v2, v3, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->onWeaponChanged(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponSlotTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->screenCaptureManager:Lcom/zjx/jyandroid/ScreenCaptureManager;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->secondWeaponRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/ScreenCaptureManager;->getScreenshot(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponSlotTracker;->equippedWeaponIndicatorDetector:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/EquippedWeaponIndicatorDetector;

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/GnyxRecognizer;->setImage(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponSlotTracker;->equippedWeaponIndicatorDetector:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/EquippedWeaponIndicatorDetector;

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/EquippedWeaponIndicatorDetector;->getResult(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponSlotTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->currentWeapon:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    iget-object v3, v1, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->weapon2:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    if-eq v2, v3, :cond_4

    invoke-virtual {v1, v3}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->setCurrentWeapon(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponSlotTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->currentAccessoryTracker:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;

    if-eqz v2, :cond_4

    sget-object v3, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;->SLOT_2:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->weapon2:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    invoke-virtual {v2, v3, v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->onWeaponChanged(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;)V

    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponSlotTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->currentWeapon:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->setCurrentWeapon(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponSlotTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->currentAccessoryTracker:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;->NONE:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;

    invoke-virtual {v0, v1, v2}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->onWeaponChanged(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly/c;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    :cond_6
    const-string v0, "CurrentWeaponSlotTracker exit"

    invoke-static {v0}, Ly/c;->a(Ljava/lang/String;)V

    return-void
.end method
