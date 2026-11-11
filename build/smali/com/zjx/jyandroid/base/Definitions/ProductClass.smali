.class public final enum Lcom/zjx/jyandroid/base/Definitions/ProductClass;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zjx/jyandroid/base/Definitions/ProductClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zjx/jyandroid/base/Definitions/ProductClass;

.field public static final enum ShouCuo:Lcom/zjx/jyandroid/base/Definitions/ProductClass;

.field public static final enum WangZuo:Lcom/zjx/jyandroid/base/Definitions/ProductClass;


# direct methods
.method private static synthetic $values()[Lcom/zjx/jyandroid/base/Definitions/ProductClass;
    .locals 2

    sget-object v0, Lcom/zjx/jyandroid/base/Definitions/ProductClass;->WangZuo:Lcom/zjx/jyandroid/base/Definitions/ProductClass;

    sget-object v1, Lcom/zjx/jyandroid/base/Definitions/ProductClass;->ShouCuo:Lcom/zjx/jyandroid/base/Definitions/ProductClass;

    filled-new-array {v0, v1}, [Lcom/zjx/jyandroid/base/Definitions/ProductClass;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/zjx/jyandroid/base/Definitions/ProductClass;

    const-string v1, "WangZuo"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/base/Definitions/ProductClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/base/Definitions/ProductClass;->WangZuo:Lcom/zjx/jyandroid/base/Definitions/ProductClass;

    new-instance v0, Lcom/zjx/jyandroid/base/Definitions/ProductClass;

    const-string v1, "ShouCuo"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/base/Definitions/ProductClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/base/Definitions/ProductClass;->ShouCuo:Lcom/zjx/jyandroid/base/Definitions/ProductClass;

    invoke-static {}, Lcom/zjx/jyandroid/base/Definitions/ProductClass;->$values()[Lcom/zjx/jyandroid/base/Definitions/ProductClass;

    move-result-object v0

    sput-object v0, Lcom/zjx/jyandroid/base/Definitions/ProductClass;->$VALUES:[Lcom/zjx/jyandroid/base/Definitions/ProductClass;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
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

.method public static valueOf(Ljava/lang/String;)Lcom/zjx/jyandroid/base/Definitions/ProductClass;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/zjx/jyandroid/base/Definitions/ProductClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zjx/jyandroid/base/Definitions/ProductClass;

    return-object p0
.end method

.method public static values()[Lcom/zjx/jyandroid/base/Definitions/ProductClass;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/base/Definitions/ProductClass;->$VALUES:[Lcom/zjx/jyandroid/base/Definitions/ProductClass;

    invoke-virtual {v0}, [Lcom/zjx/jyandroid/base/Definitions/ProductClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zjx/jyandroid/base/Definitions/ProductClass;

    return-object v0
.end method
