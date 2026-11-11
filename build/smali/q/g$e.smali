.class public final enum Lq/g$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lq/g$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lq/g$e;

.field public static final enum b:Lq/g$e;

.field public static final enum c:Lq/g$e;

.field public static final synthetic d:[Lq/g$e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lq/g$e;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lq/g$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq/g$e;->a:Lq/g$e;

    new-instance v0, Lq/g$e;

    const-string v1, "FORWARD_BACKWARD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lq/g$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq/g$e;->b:Lq/g$e;

    new-instance v0, Lq/g$e;

    const-string v1, "POINTER_STARTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lq/g$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq/g$e;->c:Lq/g$e;

    invoke-static {}, Lq/g$e;->a()[Lq/g$e;

    move-result-object v0

    sput-object v0, Lq/g$e;->d:[Lq/g$e;

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

.method public static synthetic a()[Lq/g$e;
    .locals 3

    sget-object v0, Lq/g$e;->a:Lq/g$e;

    sget-object v1, Lq/g$e;->b:Lq/g$e;

    sget-object v2, Lq/g$e;->c:Lq/g$e;

    filled-new-array {v0, v1, v2}, [Lq/g$e;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lq/g$e;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lq/g$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq/g$e;

    return-object p0
.end method

.method public static values()[Lq/g$e;
    .locals 1

    sget-object v0, Lq/g$e;->d:[Lq/g$e;

    invoke-virtual {v0}, [Lq/g$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq/g$e;

    return-object v0
.end method
