.class public final enum Lq/h$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lq/h$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lq/h$b;

.field public static final enum b:Lq/h$b;

.field public static final enum c:Lq/h$b;

.field public static final synthetic d:[Lq/h$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lq/h$b;

    const-string v1, "SWITCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lq/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq/h$b;->a:Lq/h$b;

    new-instance v0, Lq/h$b;

    const-string v1, "SET_FALSE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lq/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq/h$b;->b:Lq/h$b;

    new-instance v0, Lq/h$b;

    const-string v1, "SET_TRUE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lq/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq/h$b;->c:Lq/h$b;

    invoke-static {}, Lq/h$b;->a()[Lq/h$b;

    move-result-object v0

    sput-object v0, Lq/h$b;->d:[Lq/h$b;

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

.method public static synthetic a()[Lq/h$b;
    .locals 3

    sget-object v0, Lq/h$b;->a:Lq/h$b;

    sget-object v1, Lq/h$b;->b:Lq/h$b;

    sget-object v2, Lq/h$b;->c:Lq/h$b;

    filled-new-array {v0, v1, v2}, [Lq/h$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lq/h$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lq/h$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq/h$b;

    return-object p0
.end method

.method public static values()[Lq/h$b;
    .locals 1

    sget-object v0, Lq/h$b;->d:[Lq/h$b;

    invoke-virtual {v0}, [Lq/h$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq/h$b;

    return-object v0
.end method
