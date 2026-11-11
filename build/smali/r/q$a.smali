.class public final enum Lr/q$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lr/q$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lr/q$a;

.field public static final enum b:Lr/q$a;

.field public static final enum c:Lr/q$a;

.field public static final synthetic d:[Lr/q$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lr/q$a;

    const-string v1, "PRESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr/q$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr/q$a;->a:Lr/q$a;

    new-instance v0, Lr/q$a;

    const-string v1, "CLICK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lr/q$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr/q$a;->b:Lr/q$a;

    new-instance v0, Lr/q$a;

    const-string v1, "NO_SWITCH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lr/q$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr/q$a;->c:Lr/q$a;

    invoke-static {}, Lr/q$a;->a()[Lr/q$a;

    move-result-object v0

    sput-object v0, Lr/q$a;->d:[Lr/q$a;

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

.method public static synthetic a()[Lr/q$a;
    .locals 3

    sget-object v0, Lr/q$a;->a:Lr/q$a;

    sget-object v1, Lr/q$a;->b:Lr/q$a;

    sget-object v2, Lr/q$a;->c:Lr/q$a;

    filled-new-array {v0, v1, v2}, [Lr/q$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lr/q$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lr/q$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr/q$a;

    return-object p0
.end method

.method public static values()[Lr/q$a;
    .locals 1

    sget-object v0, Lr/q$a;->d:[Lr/q$a;

    invoke-virtual {v0}, [Lr/q$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr/q$a;

    return-object v0
.end method
