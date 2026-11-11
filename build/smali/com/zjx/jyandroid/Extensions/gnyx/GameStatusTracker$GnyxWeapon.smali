.class Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GnyxWeapon"
.end annotation


# instance fields
.field aiming:Z

.field muzzle:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;

.field scope:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PhysicalScope;

.field specialAccessory:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;

.field stock:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

.field switchedScope:Z

.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

.field weaponType:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;->Empty:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    invoke-direct {p0, p1, v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;-><init>(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;)V

    return-void
.end method

.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;->Empty:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;->weaponType:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    .line 3
    sget-object p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PhysicalScope;->NoScope:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PhysicalScope;

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;->scope:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PhysicalScope;

    .line 4
    sget-object p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;->None:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;->muzzle:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;

    .line 5
    sget-object p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;->None:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;->specialAccessory:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;

    .line 6
    sget-object p1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;->None:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;->stock:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;->aiming:Z

    .line 8
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;->switchedScope:Z

    .line 9
    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GameStatusTracker$GnyxWeapon;->weaponType:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    return-void
.end method
