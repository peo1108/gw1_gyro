.class public final enum Lr/x$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lr/x$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lr/x$b;

.field public static final enum b:Lr/x$b;

.field public static final enum c:Lr/x$b;

.field public static final enum d:Lr/x$b;

.field public static final synthetic e:[Lr/x$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lr/x$b;

    const-string v1, "PRESS_TRIGGER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr/x$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr/x$b;->a:Lr/x$b;

    new-instance v0, Lr/x$b;

    const-string v1, "RELEASE_TRIGGER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lr/x$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr/x$b;->b:Lr/x$b;

    new-instance v0, Lr/x$b;

    const-string v1, "CYCLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lr/x$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr/x$b;->c:Lr/x$b;

    new-instance v0, Lr/x$b;

    const-string v1, "DOWN_UP_TRIGGER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lr/x$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr/x$b;->d:Lr/x$b;

    invoke-static {}, Lr/x$b;->a()[Lr/x$b;

    move-result-object v0

    sput-object v0, Lr/x$b;->e:[Lr/x$b;

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

.method public static synthetic a()[Lr/x$b;
    .locals 4

    sget-object v0, Lr/x$b;->a:Lr/x$b;

    sget-object v1, Lr/x$b;->b:Lr/x$b;

    sget-object v2, Lr/x$b;->c:Lr/x$b;

    sget-object v3, Lr/x$b;->d:Lr/x$b;

    filled-new-array {v0, v1, v2, v3}, [Lr/x$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lr/x$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lr/x$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr/x$b;

    return-object p0
.end method

.method public static values()[Lr/x$b;
    .locals 1

    sget-object v0, Lr/x$b;->e:[Lr/x$b;

    invoke-virtual {v0}, [Lr/x$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr/x$b;

    return-object v0
.end method
