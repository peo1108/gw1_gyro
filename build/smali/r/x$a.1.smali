.class public final enum Lr/x$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lr/x$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lr/x$a;

.field public static final enum b:Lr/x$a;

.field public static final enum c:Lr/x$a;

.field public static final enum d:Lr/x$a;

.field public static final enum e:Lr/x$a;

.field public static final synthetic f:[Lr/x$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lr/x$a;

    const-string v1, "PRESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr/x$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr/x$a;->a:Lr/x$a;

    new-instance v0, Lr/x$a;

    const-string v1, "RELEASE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lr/x$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr/x$a;->b:Lr/x$a;

    new-instance v0, Lr/x$a;

    const-string v1, "CLICK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lr/x$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr/x$a;->c:Lr/x$a;

    new-instance v0, Lr/x$a;

    const-string v1, "SLEEP"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lr/x$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr/x$a;->d:Lr/x$a;

    new-instance v0, Lr/x$a;

    const-string v1, "SWIPE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lr/x$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr/x$a;->e:Lr/x$a;

    invoke-static {}, Lr/x$a;->a()[Lr/x$a;

    move-result-object v0

    sput-object v0, Lr/x$a;->f:[Lr/x$a;

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

.method public static synthetic a()[Lr/x$a;
    .locals 5

    sget-object v0, Lr/x$a;->a:Lr/x$a;

    sget-object v1, Lr/x$a;->b:Lr/x$a;

    sget-object v2, Lr/x$a;->c:Lr/x$a;

    sget-object v3, Lr/x$a;->d:Lr/x$a;

    sget-object v4, Lr/x$a;->e:Lr/x$a;

    filled-new-array {v0, v1, v2, v3, v4}, [Lr/x$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lr/x$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lr/x$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr/x$a;

    return-object p0
.end method

.method public static values()[Lr/x$a;
    .locals 1

    sget-object v0, Lr/x$a;->f:[Lr/x$a;

    invoke-virtual {v0}, [Lr/x$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr/x$a;

    return-object v0
.end method
