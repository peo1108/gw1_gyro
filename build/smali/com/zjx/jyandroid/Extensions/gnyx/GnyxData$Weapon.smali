.class public Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Weapon;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Weapon"
.end annotation


# instance fields
.field public muzzle:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;

.field public scope:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PhysicalScope;

.field public specialAccessory:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;

.field public stock:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

.field public weaponType:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;->Empty:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Weapon;->weaponType:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;->None:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Weapon;->muzzle:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;->None:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Weapon;->stock:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;->None:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Weapon;->specialAccessory:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PhysicalScope;->NoScope:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PhysicalScope;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Weapon;->scope:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PhysicalScope;

    return-void
.end method

.method public static emptyWeapon()Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Weapon;
    .locals 1

    new-instance v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Weapon;

    invoke-direct {v0}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Weapon;-><init>()V

    return-object v0
.end method
