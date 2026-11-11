.class public final enum Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

.field public static final enum CANCEL:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

.field public static final enum DEFAULT:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

.field public static final enum DESTRUCTIVE:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;


# direct methods
.method private static synthetic $values()[Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;
    .locals 3

    sget-object v0, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;->DEFAULT:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    sget-object v1, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;->CANCEL:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    sget-object v2, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;->DESTRUCTIVE:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    filled-new-array {v0, v1, v2}, [Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;->DEFAULT:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    new-instance v0, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    const-string v1, "CANCEL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;->CANCEL:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    new-instance v0, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    const-string v1, "DESTRUCTIVE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;->DESTRUCTIVE:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    invoke-static {}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;->$values()[Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    move-result-object v0

    sput-object v0, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;->$VALUES:[Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

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

.method public static valueOf(Ljava/lang/String;)Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    return-object p0
.end method

.method public static values()[Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;->$VALUES:[Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    invoke-virtual {v0}, [Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    return-object v0
.end method
