.class public final enum Lr/X$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr/X;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lr/X$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lr/X$a;

.field public static final enum b:Lr/X$a;

.field public static final enum c:Lr/X$a;

.field public static final enum d:Lr/X$a;

.field public static final enum e:Lr/X$a;

.field public static final enum f:Lr/X$a;

.field public static final synthetic g:[Lr/X$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lr/X$a;

    const-string v1, "NORMAL_PRESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr/X$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr/X$a;->a:Lr/X$a;

    new-instance v0, Lr/X$a;

    const-string v1, "SINGLE_CLICK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lr/X$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr/X$a;->b:Lr/X$a;

    new-instance v0, Lr/X$a;

    const-string v1, "CRAZY_TAP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lr/X$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr/X$a;->c:Lr/X$a;

    new-instance v0, Lr/X$a;

    const-string v1, "DOWN_UP_CLICK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lr/X$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr/X$a;->d:Lr/X$a;

    new-instance v0, Lr/X$a;

    const-string v1, "LONG_PRESS_TRIGGER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lr/X$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr/X$a;->e:Lr/X$a;

    new-instance v0, Lr/X$a;

    const-string v1, "UP_TRIGGER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lr/X$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr/X$a;->f:Lr/X$a;

    invoke-static {}, Lr/X$a;->a()[Lr/X$a;

    move-result-object v0

    sput-object v0, Lr/X$a;->g:[Lr/X$a;

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

.method public static synthetic a()[Lr/X$a;
    .locals 6

    sget-object v0, Lr/X$a;->a:Lr/X$a;

    sget-object v1, Lr/X$a;->b:Lr/X$a;

    sget-object v2, Lr/X$a;->c:Lr/X$a;

    sget-object v3, Lr/X$a;->d:Lr/X$a;

    sget-object v4, Lr/X$a;->e:Lr/X$a;

    sget-object v5, Lr/X$a;->f:Lr/X$a;

    filled-new-array/range {v0 .. v5}, [Lr/X$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lr/X$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lr/X$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr/X$a;

    return-object p0
.end method

.method public static values()[Lr/X$a;
    .locals 1

    sget-object v0, Lr/X$a;->g:[Lr/X$a;

    invoke-virtual {v0}, [Lr/X$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr/X$a;

    return-object v0
.end method
