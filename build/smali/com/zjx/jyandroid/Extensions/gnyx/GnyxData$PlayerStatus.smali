.class public Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PlayerStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayerStatus"
.end annotation


# instance fields
.field private aiming:Z

.field private currentWeapon:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Weapon;

.field private gesture:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;->STAND:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PlayerStatus;->gesture:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PlayerStatus;->aiming:Z

    return-void
.end method


# virtual methods
.method public getCurrentWeapon()Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Weapon;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PlayerStatus;->currentWeapon:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Weapon;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Weapon;->emptyWeapon()Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Weapon;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getGesture()Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PlayerStatus;->gesture:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;

    return-object v0
.end method

.method public isAiming()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PlayerStatus;->aiming:Z

    return v0
.end method

.method public setAiming(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PlayerStatus;->aiming:Z

    return-void
.end method

.method public setCurrentWeapon(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Weapon;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PlayerStatus;->currentWeapon:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Weapon;

    return-void
.end method

.method public setGesture(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PlayerStatus;->gesture:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;

    return-void
.end method
