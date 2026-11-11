.class public final enum Lcom/zjx/jyandroid/Extensions/pubg/c$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/pubg/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zjx/jyandroid/Extensions/pubg/c$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

.field public static final enum b:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

.field public static final enum c:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

.field public static final enum d:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

.field public static final enum BRAKE:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

.field public static final enum EXTENDER:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

.field public static final synthetic e:[Lcom/zjx/jyandroid/Extensions/pubg/c$d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Extensions/pubg/c$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/Extensions/pubg/c$d;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    const-string v1, "COMPENSATOR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Extensions/pubg/c$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/Extensions/pubg/c$d;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    const-string v1, "FLASH_HIDER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Extensions/pubg/c$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/Extensions/pubg/c$d;->c:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    const-string v1, "SUPPRESSOR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Extensions/pubg/c$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/Extensions/pubg/c$d;->d:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    const-string v1, "BRAKE"

    const/16 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Extensions/pubg/c$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/Extensions/pubg/c$d;->BRAKE:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    const-string v1, "EXTENDER"

    const/16 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Extensions/pubg/c$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/Extensions/pubg/c$d;->EXTENDER:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c$d;->a()[Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    move-result-object v0

    sput-object v0, Lcom/zjx/jyandroid/Extensions/pubg/c$d;->e:[Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a()[Lcom/zjx/jyandroid/Extensions/pubg/c$d;
    .locals 3

    const/16 v0, 0x6

    new-array v0, v0, [Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$d;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    const/16 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$d;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    const/16 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$d;->c:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    const/16 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$d;->d:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    const/16 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$d;->BRAKE:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    const/16 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$d;->EXTENDER:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    const/16 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zjx/jyandroid/Extensions/pubg/c$d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    return-object p0
.end method

.method public static values()[Lcom/zjx/jyandroid/Extensions/pubg/c$d;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/Extensions/pubg/c$d;->e:[Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    invoke-virtual {v0}, [Lcom/zjx/jyandroid/Extensions/pubg/c$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    return-object v0
.end method
