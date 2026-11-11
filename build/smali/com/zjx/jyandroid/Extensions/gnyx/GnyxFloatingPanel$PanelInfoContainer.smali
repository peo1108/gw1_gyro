.class public Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel$PanelInfoContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PanelInfoContainer"
.end annotation


# instance fields
.field final aiming:Z

.field gesture:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;

.field muzzle:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;

.field scope:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

.field specialAccessory:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;

.field stock:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

.field final value:I

.field weaponType:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;ZLcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel$PanelInfoContainer;->weaponType:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel$PanelInfoContainer;->gesture:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;

    iput-object p4, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel$PanelInfoContainer;->scope:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

    iput-object p5, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel$PanelInfoContainer;->muzzle:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;

    iput-object p6, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel$PanelInfoContainer;->specialAccessory:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;

    iput-object p7, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel$PanelInfoContainer;->stock:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    iput p8, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel$PanelInfoContainer;->value:I

    iput-boolean p3, p0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxFloatingPanel$PanelInfoContainer;->aiming:Z

    return-void
.end method
