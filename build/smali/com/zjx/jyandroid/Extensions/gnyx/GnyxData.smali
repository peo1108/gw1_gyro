.class public Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;,
        Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;,
        Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;,
        Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;,
        Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;,
        Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$AimingMode;,
        Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;,
        Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PhysicalScope;,
        Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$RecognitionComponentType;,
        Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponAndScopeSizeHolder;,
        Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$PlayerStatus;,
        Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponSlot;,
        Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Weapon;
    }
.end annotation


# static fields
.field public static gestureNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static muzzleNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static scopeNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static specialAccessoryNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$SpecialAccessory;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static stockNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static weaponNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->weaponNames:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->muzzleNames:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->specialAccessoryNames:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->stockNames:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->gestureNames:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->scopeNames:Ljava/util/Map;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->gestureNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;->STAND:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;

    sget v2, Lcom/zjx/jyandroid/R$string;->pubg_data_name_text11:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->gestureNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;->CROUCH:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;

    sget v2, Lcom/zjx/jyandroid/R$string;->pubg_data_name_text12:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->gestureNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;->PRONE:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Gesture;

    sget v2, Lcom/zjx/jyandroid/R$string;->pubg_data_name_text13:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->scopeNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;->XNoScope:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

    const-string v2, "\u673a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->scopeNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;->X1:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->scopeNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;->X2:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->scopeNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;->X3:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

    const-string v2, "3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->scopeNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;->X4:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

    const-string v2, "4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->scopeNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;->X6:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

    const-string v2, "6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->scopeNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;->X8:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

    const-string v2, "8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->scopeNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;->X10:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

    const-string v2, "10"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->scopeNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;->X12:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

    const-string v2, "12"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->scopeNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;->X24:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;

    const-string v2, "24"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->muzzleNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;->None:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;

    const-string v2, "\u7a7a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->muzzleNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;->Level1:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;

    const-string v3, "\u67aa\u53e31"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->muzzleNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;->Level2:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;

    const-string v3, "\u67aa\u53e32"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->muzzleNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;->Level3:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;

    const-string v3, "\u67aa\u53e33"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->muzzleNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;->Level4:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;

    const-string v3, "\u67aa\u53e34"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->stockNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;->None:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->stockNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;->Level1:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    const-string v2, "\u67aa\u62581"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->stockNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;->Level2:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    const-string v2, "\u67aa\u62582"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->stockNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;->Level3:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    const-string v2, "\u67aa\u62583"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->stockNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;->Level4:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;

    const-string v2, "\u67aa\u62584"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->weaponNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;->Empty:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    sget v2, Lcom/zjx/jyandroid/R$string;->pubg_data_name_text16:I

    invoke-static {v2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->weaponNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;->PingXing:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    const-string v2, "\u5e73\u884c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->weaponNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;->SA8:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    const-string v2, "SA8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->weaponNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;->DuanYa:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    const-string v2, "\u77ed\u7259"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->weaponNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;->DianChong:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    const-string v2, "\u7535\u6d8c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->weaponNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;->PD90:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    const-string v2, "PD90"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->weaponNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;->ShuangZi:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    const-string v2, "\u53cc\u5b50"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->weaponNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;->JianRen:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    const-string v2, "\u5c16\u5203"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->weaponNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;->HaoJie:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    const-string v2, "\u6d69\u52ab"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->weaponNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;->FenSuiZhe:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    const-string v2, "\u7c89\u788e\u8005"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->weaponNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;->LeiShe:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    const-string v2, "\u956d\u5c04"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->weaponNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;->ZhuiLieZhe:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    const-string v2, "\u8ffd\u730e\u8005"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->weaponNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;->FeiZhun:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    const-string v2, "\u98de\u51d6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->weaponNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;->ShenPanZhe:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    const-string v2, "\u5ba1\u5224\u8005"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->weaponNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;->KuangNu:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    const-string v2, "\u72c2\u6012"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->weaponNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;->JuFeng:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    const-string v2, "\u98d3\u98ce"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->weaponNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;->XingLi:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    const-string v2, "\u661f\u7c92"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->weaponNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;->MG600:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    const-string v2, "MG600"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->weaponNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;->MaiChongXing:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    const-string v2, "\u8109\u51b2\u661f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->weaponNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;->M401:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    const-string v2, "M401"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->weaponNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;->XuNeng:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    const-string v2, "\u84c4\u80fd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->weaponNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;->B16:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    const-string v2, "B16"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->weaponNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;->R117:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    const-string v2, "R117"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->weaponNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;->GK47:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    const-string v2, "GK47"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->weaponNames:Ljava/util/Map;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;->LianYu:Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;

    const-string v2, "\u70bc\u72f1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canEquipMuzzle(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static canEquipStock(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static getMuzzleName(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Muzzle;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->muzzleNames:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getScopeName(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Scope;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->scopeNames:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getStockName(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$Stock;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->stockNames:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getWeaponNameByIndex(Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData$WeaponType;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/Extensions/gnyx/GnyxData;->weaponNames:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
