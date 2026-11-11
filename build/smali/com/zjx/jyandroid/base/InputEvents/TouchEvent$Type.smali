.class public final enum Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

.field public static final enum down:Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

.field public static final enum move:Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

.field public static final enum up:Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;


# direct methods
.method private static synthetic $values()[Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;
    .locals 3

    sget-object v0, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;->down:Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    sget-object v1, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;->move:Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    sget-object v2, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;->up:Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    filled-new-array {v0, v1, v2}, [Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    const-string v1, "down"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;->down:Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    new-instance v0, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    const-string v1, "move"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;->move:Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    new-instance v0, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    const-string v1, "up"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;->up:Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    invoke-static {}, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;->$values()[Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    move-result-object v0

    sput-object v0, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;->$VALUES:[Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    return-object p0
.end method

.method public static values()[Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;->$VALUES:[Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    invoke-virtual {v0}, [Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    return-object v0
.end method
