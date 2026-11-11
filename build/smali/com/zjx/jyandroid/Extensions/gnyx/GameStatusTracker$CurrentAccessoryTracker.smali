.class public Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnCurrentWeaponChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CurrentAccessoryTracker"
.end annotation


# instance fields
.field private currentWeaponPrivate:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

.field firstWeaponAccessoryRect:Landroid/graphics/Rect;
    .annotation build Landroidx/test/annotation/Beta;
    .end annotation
.end field

.field muzzleRecognizer:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/MuzzleRecognizer;

.field scopeRecognizer:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/ScopeRecognizer;

.field secondWeaponAccessoryRect:Landroid/graphics/Rect;
    .annotation build Landroidx/test/annotation/Beta;
    .end annotation
.end field

.field sleepTime:I

.field stockRecognizer:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/StockRecognizer;

.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->sleepTime:I

    iget-object v1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->currentWeapon:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->currentWeaponPrivate:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    iget-object v1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->gnyxUserSettings:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings;->getRecognitionFrequency()Lcom/zjx/jyandroid/Extensions/gnyx/GnyxUserSettings$RecognitionFrequency;

    move-result-object v1

    sget-object v2, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$2;->$SwitchMap$com$zjx$jyandroid$Extensions$gnyx$GnyxUserSettings$RecognitionFrequency:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x96

    iput v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->sleepTime:I

    goto :goto_0

    :cond_1
    const/16 v0, 0xfa

    iput v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->sleepTime:I

    goto :goto_0

    :cond_2
    iput v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->sleepTime:I

    goto :goto_0

    :cond_3
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->sleepTime:I

    :goto_0
    iget-object v0, p1, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->firstWeaponAccessoryRectCustom:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->firstWeaponAccessoryRect:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->secondWeaponAccessoryRectCustom:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->secondWeaponAccessoryRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->access$400()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/scope/s1.JPG"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iget p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->accessoryComponentSize:I

    int-to-float p1, p1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/ScopeRecognizer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/scope"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/ScopeRecognizer;-><init>(Ljava/lang/String;F)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->scopeRecognizer:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/ScopeRecognizer;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/MuzzleRecognizer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/muzzle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/MuzzleRecognizer;-><init>(Ljava/lang/String;F)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->muzzleRecognizer:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/MuzzleRecognizer;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/StockRecognizer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/stock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/StockRecognizer;-><init>(Ljava/lang/String;F)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->stockRecognizer:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/StockRecognizer;

    :cond_4
    return-void
.end method

.method private convertPhysicalScopeToLogicalScope(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PhysicalScope;Z)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;
    .locals 1

    sget-object p2, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;->XNoScope:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$2;->$SwitchMap$com$zjx$jyandroid$Extensions$gnyx$GnyxData$PhysicalScope:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p2, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;->X10:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

    goto :goto_0

    :pswitch_1
    sget-object p2, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;->X8:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

    goto :goto_0

    :pswitch_2
    sget-object p2, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;->X6:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

    goto :goto_0

    :pswitch_3
    sget-object p2, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;->X3:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

    goto :goto_0

    :pswitch_4
    sget-object p2, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;->X2:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

    goto :goto_0

    :pswitch_5
    sget-object p2, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;->X2:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

    goto :goto_0

    :pswitch_6
    sget-object p2, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;->X1:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

    goto :goto_0

    :pswitch_7
    sget-object p2, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;->X1:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

    :goto_0
    :pswitch_8
    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private performAccessoryRecognitionHelper(Landroid/graphics/Bitmap;)V
    .locals 11

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->firstWeaponAccessoryRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;->NONE:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->currentWeaponPrivate:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    iget-object v4, v3, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->weapon1:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    if-ne v2, v4, :cond_1

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;->SLOT_1:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;

    goto :goto_0

    :cond_1
    iget-object v3, v3, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->weapon2:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    if-ne v2, v3, :cond_2

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;->SLOT_2:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;

    :cond_2
    :goto_0
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->firstWeaponAccessoryRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {p1, v2, v3, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->secondWeaponAccessoryRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v5, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->secondWeaponAccessoryRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {p1, v3, v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->scopeRecognizer:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/ScopeRecognizer;

    invoke-virtual {v2, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/GnyxRecognizer;->setImage(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->scopeRecognizer:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/ScopeRecognizer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/ScopeRecognizer;->getResult(Ljava/lang/Object;)I

    move-result v2

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->scopeRecognizer:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/ScopeRecognizer;

    invoke-virtual {v4, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/GnyxRecognizer;->setImage(Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->scopeRecognizer:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/ScopeRecognizer;

    invoke-virtual {v4, v3}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/ScopeRecognizer;->getResult(Ljava/lang/Object;)I

    move-result v4

    iget-object v5, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->muzzleRecognizer:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/MuzzleRecognizer;

    invoke-virtual {v5, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/GnyxRecognizer;->setImage(Landroid/graphics/Bitmap;)V

    iget-object v5, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->muzzleRecognizer:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/MuzzleRecognizer;

    invoke-virtual {v5, v3}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/MuzzleRecognizer;->getResult(Ljava/lang/Object;)I

    move-result v5

    iget-object v6, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->muzzleRecognizer:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/MuzzleRecognizer;

    invoke-virtual {v6, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/GnyxRecognizer;->setImage(Landroid/graphics/Bitmap;)V

    iget-object v6, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->muzzleRecognizer:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/MuzzleRecognizer;

    invoke-virtual {v6, v3}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/MuzzleRecognizer;->getResult(Ljava/lang/Object;)I

    move-result v6

    iget-object v7, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->stockRecognizer:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/StockRecognizer;

    invoke-virtual {v7, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/GnyxRecognizer;->setImage(Landroid/graphics/Bitmap;)V

    iget-object v7, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->stockRecognizer:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/StockRecognizer;

    invoke-virtual {v7, v3}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/StockRecognizer;->getResult(Ljava/lang/Object;)I

    move-result v7

    iget-object v8, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->stockRecognizer:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/StockRecognizer;

    invoke-virtual {v8, p1}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/GnyxRecognizer;->setImage(Landroid/graphics/Bitmap;)V

    iget-object v8, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->stockRecognizer:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/StockRecognizer;

    invoke-virtual {v8, v3}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/StockRecognizer;->getResult(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p1, -0x1

    const/4 v0, 0x0

    if-eq v2, p1, :cond_3

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PhysicalScope;->values()[Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PhysicalScope;

    move-result-object v8

    aget-object v2, v8, v2

    iget-object v8, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    iget-object v9, v8, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->weapon1:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    iget-object v10, v9, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;->scope:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PhysicalScope;

    if-eq v2, v10, :cond_3

    iput-object v2, v9, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;->scope:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PhysicalScope;

    sget-object v2, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;->SLOT_1:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;

    if-ne v1, v2, :cond_3

    invoke-static {v8}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->access$000(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnStatusChangeListener;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    invoke-static {v2}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->access$100(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    invoke-static {v2}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->access$000(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnStatusChangeListener;

    move-result-object v2

    iget-object v8, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    iget-object v8, v8, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->weapon1:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    iget-object v8, v8, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;->scope:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PhysicalScope;

    invoke-direct {p0, v8, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->convertPhysicalScopeToLogicalScope(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PhysicalScope;Z)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

    move-result-object v8

    invoke-interface {v2, v8}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnStatusChangeListener;->onCurrentWeaponScopeChanged(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;)V

    :cond_3
    sget v2, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/MuzzleRecognizer;->UNKNOWN:I

    const/4 v8, 0x1

    if-eq v5, v2, :cond_4

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;->values()[Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;

    move-result-object v2

    aget-object v2, v2, v5

    iget-object v5, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    iget-object v5, v5, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->weapon1:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    iget-object v9, v5, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;->muzzle:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;

    if-eq v2, v9, :cond_4

    iput-object v2, v5, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;->muzzle:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;

    sget-object v2, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;->SLOT_1:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;

    if-ne v1, v2, :cond_4

    move v2, v8

    goto :goto_1

    :cond_4
    move v2, v0

    :goto_1
    iget-object v5, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->stockRecognizer:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/StockRecognizer;

    iget v5, v5, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/StockRecognizer;->UNKNOWN:I

    if-eq v7, v5, :cond_5

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;->values()[Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    move-result-object v5

    aget-object v5, v5, v7

    iget-object v7, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    iget-object v7, v7, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->weapon1:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    iget-object v9, v7, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;->stock:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    if-eq v5, v9, :cond_5

    iput-object v5, v7, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;->stock:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    sget-object v5, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;->SLOT_1:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;

    if-ne v1, v5, :cond_5

    move v2, v8

    :cond_5
    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    invoke-static {v2}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->access$000(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnStatusChangeListener;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    invoke-static {v2}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->access$100(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    invoke-static {v2}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->access$000(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnStatusChangeListener;

    move-result-object v2

    iget-object v5, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    iget-object v5, v5, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->weapon1:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    iget-object v7, v5, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;->muzzle:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;

    sget-object v9, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;->None:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;

    iget-object v5, v5, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;->stock:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    invoke-interface {v2, v7, v9, v5}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnStatusChangeListener;->onCurrentAccessoryChanged(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;)V

    :cond_6
    if-eq v4, p1, :cond_7

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PhysicalScope;->values()[Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PhysicalScope;

    move-result-object p1

    aget-object p1, p1, v4

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->weapon2:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    iget-object v4, v2, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;->scope:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PhysicalScope;

    if-eq p1, v4, :cond_7

    iput-object p1, v2, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;->scope:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PhysicalScope;

    sget-object p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;->SLOT_2:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;

    if-ne v1, p1, :cond_7

    move p1, v8

    goto :goto_2

    :cond_7
    move p1, v0

    :goto_2
    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->access$000(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnStatusChangeListener;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->access$100(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->access$000(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnStatusChangeListener;

    move-result-object p1

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->weapon2:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;->scope:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PhysicalScope;

    invoke-direct {p0, v2, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->convertPhysicalScopeToLogicalScope(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PhysicalScope;Z)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnStatusChangeListener;->onCurrentWeaponScopeChanged(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;)V

    :cond_8
    sget p1, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/MuzzleRecognizer;->UNKNOWN:I

    if-eq v6, p1, :cond_9

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;->values()[Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;

    move-result-object p1

    aget-object p1, p1, v6

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->weapon2:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    iget-object v4, v2, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;->muzzle:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;

    if-eq p1, v4, :cond_9

    iput-object p1, v2, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;->muzzle:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;

    sget-object p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;->SLOT_2:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;

    if-ne v1, p1, :cond_9

    move v0, v8

    :cond_9
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->stockRecognizer:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/StockRecognizer;

    iget p1, p1, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/StockRecognizer;->UNKNOWN:I

    if-eq v3, p1, :cond_a

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;->values()[Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    move-result-object p1

    aget-object p1, p1, v3

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->weapon2:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    iget-object v3, v2, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;->stock:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    if-eq p1, v3, :cond_a

    iput-object p1, v2, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;->stock:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    sget-object p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;->SLOT_2:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;

    if-ne v1, p1, :cond_a

    goto :goto_3

    :cond_a
    move v8, v0

    :goto_3
    if-eqz v8, :cond_b

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->access$000(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnStatusChangeListener;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->access$100(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->access$000(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnStatusChangeListener;

    move-result-object p1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->weapon2:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;->muzzle:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;

    sget-object v2, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;->None:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;->stock:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    invoke-interface {p1, v1, v2, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnStatusChangeListener;->onCurrentAccessoryChanged(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;)V

    :cond_b
    return-void
.end method


# virtual methods
.method public onWeaponChanged(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;)V
    .locals 7

    sget-object p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;->None:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;->None:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PhysicalScope;->NoScope:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PhysicalScope;

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->currentWeaponPrivate:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;->muzzle:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;

    iget-object v4, v2, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;->stock:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;->scope:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PhysicalScope;

    goto :goto_0

    :cond_0
    move-object v3, p1

    move-object v4, v0

    move-object v2, v1

    :goto_0
    if-eqz p2, :cond_1

    iget-object p1, p2, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;->muzzle:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;

    iget-object v0, p2, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;->stock:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    iget-object v1, p2, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;->scope:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PhysicalScope;

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, p1, :cond_2

    move v3, v6

    goto :goto_1

    :cond_2
    move v3, v5

    :goto_1
    if-eq v2, v1, :cond_3

    move v3, v6

    :cond_3
    if-eq v4, v0, :cond_4

    move v3, v6

    :cond_4
    if-eq v2, v1, :cond_5

    goto :goto_2

    :cond_5
    move v6, v5

    :goto_2
    if-eqz v3, :cond_6

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    invoke-static {v2}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->access$000(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnStatusChangeListener;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    invoke-static {v2}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->access$100(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    invoke-static {v2}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->access$000(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnStatusChangeListener;

    move-result-object v2

    sget-object v3, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;->None:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;

    invoke-interface {v2, p1, v3, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnStatusChangeListener;->onCurrentAccessoryChanged(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;)V

    :cond_6
    if-eqz v6, :cond_7

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->access$000(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnStatusChangeListener;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->access$100(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->access$000(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnStatusChangeListener;

    move-result-object p1

    invoke-direct {p0, v1, v5}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->convertPhysicalScopeToLogicalScope(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PhysicalScope;Z)Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnStatusChangeListener;->onCurrentWeaponScopeChanged(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;)V

    :cond_7
    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->currentWeaponPrivate:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;

    return-void
.end method

.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->firstWeaponAccessoryRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->secondWeaponAccessoryRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_3

    :try_start_0
    iget v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->sleepTime:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->access$000(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$OnStatusChangeListener;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->j()Landroid/util/Size;

    move-result-object v0

    :try_start_1
    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->screenCaptureManager:Lcom/zjx/jyandroid/ScreenCaptureManager;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    const/4 v4, 0x5

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0xa

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v7

    add-int/lit8 v7, v7, -0x7

    invoke-direct {v2, v3, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/ScreenCaptureManager;->getScreenshot(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->screenCaptureManager:Lcom/zjx/jyandroid/ScreenCaptureManager;

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/16 v6, 0x9

    invoke-direct {v3, v5, v4, v0, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/ScreenCaptureManager;->getScreenshot(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b$d;->b(Landroid/graphics/Bitmap;)I

    move-result v2

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b$d;->e(I)S

    move-result v3

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b$d;->c(I)S

    move-result v4

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b$d;->d(I)S

    move-result v2

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$d;->b(Landroid/graphics/Bitmap;)I

    move-result v5

    invoke-static {v5}, Lcom/zjx/jyandroid/base/util/b$d;->e(I)S

    move-result v6

    invoke-static {v5}, Lcom/zjx/jyandroid/base/util/b$d;->c(I)S

    move-result v7

    invoke-static {v5}, Lcom/zjx/jyandroid/base/util/b$d;->d(I)S

    move-result v5

    const/16 v8, 0x32

    if-ge v3, v8, :cond_2

    if-ge v2, v8, :cond_2

    if-ge v4, v8, :cond_2

    if-ge v6, v8, :cond_2

    if-ge v5, v8, :cond_2

    if-ge v7, v8, :cond_2

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;->screenCaptureManager:Lcom/zjx/jyandroid/ScreenCaptureManager;

    invoke-virtual {v2}, Lcom/zjx/jyandroid/ScreenCaptureManager;->getScreenshot()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->performAccessoryRecognitionHelper(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly/c;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    :cond_3
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$CurrentAccessoryTracker;->scopeRecognizer:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/ScopeRecognizer;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/ScopeRecognizer;->recycle()V

    const-string v0, "accessory tracker exit"

    invoke-static {v0}, Ly/c;->a(Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void
.end method
