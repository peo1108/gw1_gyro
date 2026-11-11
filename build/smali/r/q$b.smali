.class public final enum Lr/q$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lr/q$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lr/q$b;

.field public static final enum b:Lr/q$b;

.field public static final enum c:Lr/q$b;

.field public static final synthetic d:[Lr/q$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lr/q$b;

    const-string v1, "WASD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr/q$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr/q$b;->a:Lr/q$b;

    new-instance v0, Lr/q$b;

    const-string v1, "ARROW"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lr/q$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr/q$b;->b:Lr/q$b;

    new-instance v0, Lr/q$b;

    const-string v1, "CUSTOMIZED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lr/q$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr/q$b;->c:Lr/q$b;

    invoke-static {}, Lr/q$b;->a()[Lr/q$b;

    move-result-object v0

    sput-object v0, Lr/q$b;->d:[Lr/q$b;

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

.method public static synthetic a()[Lr/q$b;
    .locals 3

    sget-object v0, Lr/q$b;->a:Lr/q$b;

    sget-object v1, Lr/q$b;->b:Lr/q$b;

    sget-object v2, Lr/q$b;->c:Lr/q$b;

    filled-new-array {v0, v1, v2}, [Lr/q$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lr/q$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lr/q$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr/q$b;

    return-object p0
.end method

.method public static values()[Lr/q$b;
    .locals 1

    sget-object v0, Lr/q$b;->d:[Lr/q$b;

    invoke-virtual {v0}, [Lr/q$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr/q$b;

    return-object v0
.end method
