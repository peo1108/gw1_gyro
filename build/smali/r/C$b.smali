.class public final enum Lr/C$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr/C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lr/C$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lr/C$b;

.field public static final enum b:Lr/C$b;

.field public static final synthetic c:[Lr/C$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lr/C$b;

    const-string v1, "PRESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr/C$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr/C$b;->a:Lr/C$b;

    new-instance v0, Lr/C$b;

    const-string v1, "CLICK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lr/C$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr/C$b;->b:Lr/C$b;

    invoke-static {}, Lr/C$b;->a()[Lr/C$b;

    move-result-object v0

    sput-object v0, Lr/C$b;->c:[Lr/C$b;

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

.method public static synthetic a()[Lr/C$b;
    .locals 2

    sget-object v0, Lr/C$b;->a:Lr/C$b;

    sget-object v1, Lr/C$b;->b:Lr/C$b;

    filled-new-array {v0, v1}, [Lr/C$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lr/C$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lr/C$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr/C$b;

    return-object p0
.end method

.method public static values()[Lr/C$b;
    .locals 1

    sget-object v0, Lr/C$b;->c:[Lr/C$b;

    invoke-virtual {v0}, [Lr/C$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr/C$b;

    return-object v0
.end method
