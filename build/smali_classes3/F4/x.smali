.class public abstract enum LF4/x;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements LF4/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LF4/x;",
        ">;",
        "LF4/y;"
    }
.end annotation


# static fields
.field public static final enum V1:LF4/x;

.field public static final enum X:LF4/x;

.field public static final enum Y:LF4/x;

.field public static final enum Z:LF4/x;

.field public static final synthetic k6:[LF4/x;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LF4/x$a;

    const-string v1, "DOUBLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LF4/x$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LF4/x;->X:LF4/x;

    new-instance v0, LF4/x$b;

    const-string v1, "LAZILY_PARSED_NUMBER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LF4/x$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LF4/x;->Y:LF4/x;

    new-instance v0, LF4/x$c;

    const-string v1, "LONG_OR_DOUBLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LF4/x$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, LF4/x;->Z:LF4/x;

    new-instance v0, LF4/x$d;

    const-string v1, "BIG_DECIMAL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LF4/x$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, LF4/x;->V1:LF4/x;

    invoke-static {}, LF4/x;->f()[LF4/x;

    move-result-object v0

    sput-object v0, LF4/x;->k6:[LF4/x;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILF4/x$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic f()[LF4/x;
    .locals 4

    sget-object v0, LF4/x;->X:LF4/x;

    sget-object v1, LF4/x;->Y:LF4/x;

    sget-object v2, LF4/x;->Z:LF4/x;

    sget-object v3, LF4/x;->V1:LF4/x;

    filled-new-array {v0, v1, v2, v3}, [LF4/x;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LF4/x;
    .locals 1

    const-class v0, LF4/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LF4/x;

    return-object p0
.end method

.method public static values()[LF4/x;
    .locals 1

    sget-object v0, LF4/x;->k6:[LF4/x;

    invoke-virtual {v0}, [LF4/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LF4/x;

    return-object v0
.end method
