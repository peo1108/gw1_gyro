.class public final enum Lcom/zjx/jyandroid/Extensions/pubg/f$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/pubg/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zjx/jyandroid/Extensions/pubg/f$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/zjx/jyandroid/Extensions/pubg/f$a;

.field public static final enum b:Lcom/zjx/jyandroid/Extensions/pubg/f$a;

.field public static final enum c:Lcom/zjx/jyandroid/Extensions/pubg/f$a;

.field public static final enum d:Lcom/zjx/jyandroid/Extensions/pubg/f$a;

.field public static final synthetic e:[Lcom/zjx/jyandroid/Extensions/pubg/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/f$a;

    const-wide v1, -0x3557dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Extensions/pubg/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/Extensions/pubg/f$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/f$a;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/f$a;

    const-wide v1, -0x3597dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Extensions/pubg/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/Extensions/pubg/f$a;->b:Lcom/zjx/jyandroid/Extensions/pubg/f$a;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/f$a;

    const-wide v1, -0x3607dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Extensions/pubg/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/Extensions/pubg/f$a;->c:Lcom/zjx/jyandroid/Extensions/pubg/f$a;

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/f$a;

    const-wide v1, -0x3657dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Extensions/pubg/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/Extensions/pubg/f$a;->d:Lcom/zjx/jyandroid/Extensions/pubg/f$a;

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/f$a;->a()[Lcom/zjx/jyandroid/Extensions/pubg/f$a;

    move-result-object v0

    sput-object v0, Lcom/zjx/jyandroid/Extensions/pubg/f$a;->e:[Lcom/zjx/jyandroid/Extensions/pubg/f$a;

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

.method public static synthetic a()[Lcom/zjx/jyandroid/Extensions/pubg/f$a;
    .locals 4

    sget-object v0, Lcom/zjx/jyandroid/Extensions/pubg/f$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/f$a;

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/f$a;->b:Lcom/zjx/jyandroid/Extensions/pubg/f$a;

    sget-object v2, Lcom/zjx/jyandroid/Extensions/pubg/f$a;->c:Lcom/zjx/jyandroid/Extensions/pubg/f$a;

    sget-object v3, Lcom/zjx/jyandroid/Extensions/pubg/f$a;->d:Lcom/zjx/jyandroid/Extensions/pubg/f$a;

    filled-new-array {v0, v1, v2, v3}, [Lcom/zjx/jyandroid/Extensions/pubg/f$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zjx/jyandroid/Extensions/pubg/f$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/zjx/jyandroid/Extensions/pubg/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zjx/jyandroid/Extensions/pubg/f$a;

    return-object p0
.end method

.method public static values()[Lcom/zjx/jyandroid/Extensions/pubg/f$a;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/Extensions/pubg/f$a;->e:[Lcom/zjx/jyandroid/Extensions/pubg/f$a;

    invoke-virtual {v0}, [Lcom/zjx/jyandroid/Extensions/pubg/f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zjx/jyandroid/Extensions/pubg/f$a;

    return-object v0
.end method
