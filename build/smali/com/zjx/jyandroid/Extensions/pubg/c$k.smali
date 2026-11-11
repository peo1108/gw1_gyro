.class public final enum Lcom/zjx/jyandroid/Extensions/pubg/c$k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/pubg/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zjx/jyandroid/Extensions/pubg/c$k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/zjx/jyandroid/Extensions/pubg/c$k;

.field public static final enum b:Lcom/zjx/jyandroid/Extensions/pubg/c$k;

.field public static final enum c:Lcom/zjx/jyandroid/Extensions/pubg/c$k;

.field public static final synthetic d:[Lcom/zjx/jyandroid/Extensions/pubg/c$k;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/c$k;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Extensions/pubg/c$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/Extensions/pubg/c$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$k;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/c$k;

    const-string v1, "SLOT_1"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Extensions/pubg/c$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/Extensions/pubg/c$k;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$k;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/c$k;

    const-string v1, "SLOT_2"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Extensions/pubg/c$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/Extensions/pubg/c$k;->c:Lcom/zjx/jyandroid/Extensions/pubg/c$k;

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c$k;->a()[Lcom/zjx/jyandroid/Extensions/pubg/c$k;

    move-result-object v0

    sput-object v0, Lcom/zjx/jyandroid/Extensions/pubg/c$k;->d:[Lcom/zjx/jyandroid/Extensions/pubg/c$k;

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

.method public static synthetic a()[Lcom/zjx/jyandroid/Extensions/pubg/c$k;
    .locals 3

    sget-object v0, Lcom/zjx/jyandroid/Extensions/pubg/c$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$k;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/c$k;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$k;

    sget-object v2, Lcom/zjx/jyandroid/Extensions/pubg/c$k;->c:Lcom/zjx/jyandroid/Extensions/pubg/c$k;

    filled-new-array {v0, v1, v2}, [Lcom/zjx/jyandroid/Extensions/pubg/c$k;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zjx/jyandroid/Extensions/pubg/c$k;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/zjx/jyandroid/Extensions/pubg/c$k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zjx/jyandroid/Extensions/pubg/c$k;

    return-object p0
.end method

.method public static values()[Lcom/zjx/jyandroid/Extensions/pubg/c$k;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/Extensions/pubg/c$k;->d:[Lcom/zjx/jyandroid/Extensions/pubg/c$k;

    invoke-virtual {v0}, [Lcom/zjx/jyandroid/Extensions/pubg/c$k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zjx/jyandroid/Extensions/pubg/c$k;

    return-object v0
.end method
