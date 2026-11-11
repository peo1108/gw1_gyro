.class public Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponTracker;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CurrentWeaponTracker"
.end annotation


# instance fields
.field sleepTime:I

.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

.field weaponRecognizer:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/WeaponRecognizer;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/WeaponRecognizer;

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->access$200()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->weaponComponentSize:I

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/WeaponRecognizer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponTracker;->weaponRecognizer:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/WeaponRecognizer;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponTracker;->sleepTime:I

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->gnyxUserSettings:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->getRecognitionFrequency()Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;

    move-result-object p1

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$2;->$SwitchMap$com$zjx$jyandroid$Extensions$gnyx$GnyxUserSettings$RecognitionFrequency:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xfa

    iput p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponTracker;->sleepTime:I

    goto :goto_0

    :cond_1
    const/16 p1, 0x1f4

    iput p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponTracker;->sleepTime:I

    goto :goto_0

    :cond_2
    iput v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponTracker;->sleepTime:I

    goto :goto_0

    :cond_3
    const/16 p1, 0x7d0

    iput p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponTracker;->sleepTime:I

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_6

    :try_start_0
    iget v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponTracker;->sleepTime:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

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
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->access$300(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;->NONE:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;->SLOT_1:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;

    const/4 v2, -0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->screenCaptureManager:Lcom/zjx/jyandroid/ScreenCaptureManager;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->firstWeaponRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Lcom/zjx/jyandroid/ScreenCaptureManager;->getScreenshot(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponTracker;->weaponRecognizer:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/WeaponRecognizer;

    invoke-virtual {v3, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/GnyxRecognizer;->setImage(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    iget-object v3, v3, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->weapon1:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    iget-object v3, v3, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;->weaponType:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponTracker;->weaponRecognizer:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/WeaponRecognizer;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/WeaponRecognizer;->getResult(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, v2, :cond_3

    if-eq v4, v3, :cond_3

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    invoke-static {v4}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/WeaponRecognizer;->convertResultToWeaponType(I)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;)V

    iput-object v3, v2, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->weapon1:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    iget-object v3, v2, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->weapon1:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->setCurrentWeapon(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    iget-object v3, v2, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->currentAccessoryTracker:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;

    if-eqz v3, :cond_3

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->weapon1:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    invoke-virtual {v3, v1, v2}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->onWeaponChanged(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;->SLOT_2:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    iget-object v3, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->screenCaptureManager:Lcom/zjx/jyandroid/ScreenCaptureManager;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->secondWeaponRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Lcom/zjx/jyandroid/ScreenCaptureManager;->getScreenshot(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponTracker;->weaponRecognizer:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/WeaponRecognizer;

    invoke-virtual {v3, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/GnyxRecognizer;->setImage(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    iget-object v3, v3, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->weapon2:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    iget-object v3, v3, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;->weaponType:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponTracker;->weaponRecognizer:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/WeaponRecognizer;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/WeaponRecognizer;->getResult(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, v2, :cond_5

    if-eq v4, v3, :cond_5

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    new-instance v3, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    invoke-static {v4}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/WeaponRecognizer;->convertResultToWeaponType(I)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;)V

    iput-object v3, v2, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->weapon2:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    iget-object v3, v2, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->weapon2:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->setCurrentWeapon(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    iget-object v3, v2, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->currentAccessoryTracker:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;

    if-eqz v3, :cond_5

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->weapon2:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    invoke-virtual {v3, v1, v2}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->onWeaponChanged(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;)V

    :cond_5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly/c;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    :cond_6
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentWeaponTracker;->weaponRecognizer:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/WeaponRecognizer;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/WeaponRecognizer;->recycle()V

    const-string v0, "weapon tracker exit"

    invoke-static {v0}, Ly/c;->a(Ljava/lang/String;)V

    return-void
.end method
