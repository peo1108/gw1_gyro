.class public final enum Lcom/zjx/jyandroid/ForegroundService/UI/a$g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zjx/jyandroid/ForegroundService/UI/a$g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/zjx/jyandroid/ForegroundService/UI/a$g;

.field public static final enum b:Lcom/zjx/jyandroid/ForegroundService/UI/a$g;

.field public static final enum c:Lcom/zjx/jyandroid/ForegroundService/UI/a$g;

.field public static final enum d:Lcom/zjx/jyandroid/ForegroundService/UI/a$g;

.field public static final synthetic e:[Lcom/zjx/jyandroid/ForegroundService/UI/a$g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/UI/a$g;

    const-string v1, "CursorStyle1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/ForegroundService/UI/a$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/ForegroundService/UI/a$g;->a:Lcom/zjx/jyandroid/ForegroundService/UI/a$g;

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/UI/a$g;

    const-string v1, "CursorStyle2"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/ForegroundService/UI/a$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/ForegroundService/UI/a$g;->b:Lcom/zjx/jyandroid/ForegroundService/UI/a$g;

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/UI/a$g;

    const-string v1, "CursorStyle3"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/ForegroundService/UI/a$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/ForegroundService/UI/a$g;->c:Lcom/zjx/jyandroid/ForegroundService/UI/a$g;

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/UI/a$g;

    const-string v1, "CursorStyle4"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/ForegroundService/UI/a$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/ForegroundService/UI/a$g;->d:Lcom/zjx/jyandroid/ForegroundService/UI/a$g;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/a$g;->a()[Lcom/zjx/jyandroid/ForegroundService/UI/a$g;

    move-result-object v0

    sput-object v0, Lcom/zjx/jyandroid/ForegroundService/UI/a$g;->e:[Lcom/zjx/jyandroid/ForegroundService/UI/a$g;

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

.method public static synthetic a()[Lcom/zjx/jyandroid/ForegroundService/UI/a$g;
    .locals 4

    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/UI/a$g;->a:Lcom/zjx/jyandroid/ForegroundService/UI/a$g;

    sget-object v1, Lcom/zjx/jyandroid/ForegroundService/UI/a$g;->b:Lcom/zjx/jyandroid/ForegroundService/UI/a$g;

    sget-object v2, Lcom/zjx/jyandroid/ForegroundService/UI/a$g;->c:Lcom/zjx/jyandroid/ForegroundService/UI/a$g;

    sget-object v3, Lcom/zjx/jyandroid/ForegroundService/UI/a$g;->d:Lcom/zjx/jyandroid/ForegroundService/UI/a$g;

    filled-new-array {v0, v1, v2, v3}, [Lcom/zjx/jyandroid/ForegroundService/UI/a$g;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zjx/jyandroid/ForegroundService/UI/a$g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/zjx/jyandroid/ForegroundService/UI/a$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zjx/jyandroid/ForegroundService/UI/a$g;

    return-object p0
.end method

.method public static values()[Lcom/zjx/jyandroid/ForegroundService/UI/a$g;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/UI/a$g;->e:[Lcom/zjx/jyandroid/ForegroundService/UI/a$g;

    invoke-virtual {v0}, [Lcom/zjx/jyandroid/ForegroundService/UI/a$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zjx/jyandroid/ForegroundService/UI/a$g;

    return-object v0
.end method
