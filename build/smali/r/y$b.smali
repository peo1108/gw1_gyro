.class public final enum Lr/y$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lr/y$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lr/y$b;

.field public static final enum b:Lr/y$b;

.field public static final enum c:Lr/y$b;

.field public static final enum d:Lr/y$b;

.field public static final enum e:Lr/y$b;

.field public static final synthetic f:[Lr/y$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lr/y$b;

    const-string v1, "PRESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr/y$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr/y$b;->a:Lr/y$b;

    new-instance v0, Lr/y$b;

    const-string v1, "RELEASE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lr/y$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr/y$b;->b:Lr/y$b;

    new-instance v0, Lr/y$b;

    const-string v1, "CLICK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lr/y$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr/y$b;->c:Lr/y$b;

    new-instance v0, Lr/y$b;

    const-string v1, "SLEEP"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lr/y$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr/y$b;->d:Lr/y$b;

    new-instance v0, Lr/y$b;

    const-string v1, "SWIPE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lr/y$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr/y$b;->e:Lr/y$b;

    invoke-static {}, Lr/y$b;->a()[Lr/y$b;

    move-result-object v0

    sput-object v0, Lr/y$b;->f:[Lr/y$b;

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

.method public static synthetic a()[Lr/y$b;
    .locals 5

    sget-object v0, Lr/y$b;->a:Lr/y$b;

    sget-object v1, Lr/y$b;->b:Lr/y$b;

    sget-object v2, Lr/y$b;->c:Lr/y$b;

    sget-object v3, Lr/y$b;->d:Lr/y$b;

    sget-object v4, Lr/y$b;->e:Lr/y$b;

    filled-new-array {v0, v1, v2, v3, v4}, [Lr/y$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lr/y$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lr/y$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr/y$b;

    return-object p0
.end method

.method public static values()[Lr/y$b;
    .locals 1

    sget-object v0, Lr/y$b;->f:[Lr/y$b;

    invoke-virtual {v0}, [Lr/y$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr/y$b;

    return-object v0
.end method
