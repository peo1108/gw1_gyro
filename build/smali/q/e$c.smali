.class public final enum Lq/e$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lq/e$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lq/e$c;

.field public static final enum b:Lq/e$c;

.field public static final synthetic c:[Lq/e$c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lq/e$c;

    const-string v1, "PRESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lq/e$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq/e$c;->a:Lq/e$c;

    new-instance v0, Lq/e$c;

    const-string v1, "RELEASE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lq/e$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq/e$c;->b:Lq/e$c;

    invoke-static {}, Lq/e$c;->a()[Lq/e$c;

    move-result-object v0

    sput-object v0, Lq/e$c;->c:[Lq/e$c;

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

.method public static synthetic a()[Lq/e$c;
    .locals 2

    sget-object v0, Lq/e$c;->a:Lq/e$c;

    sget-object v1, Lq/e$c;->b:Lq/e$c;

    filled-new-array {v0, v1}, [Lq/e$c;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lq/e$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lq/e$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq/e$c;

    return-object p0
.end method

.method public static values()[Lq/e$c;
    .locals 1

    sget-object v0, Lq/e$c;->c:[Lq/e$c;

    invoke-virtual {v0}, [Lq/e$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq/e$c;

    return-object v0
.end method
