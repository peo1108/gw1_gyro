.class public abstract enum LF4/v;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LF4/v;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum X:LF4/v;

.field public static final enum Y:LF4/v;

.field public static final synthetic Z:[LF4/v;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LF4/v$a;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LF4/v$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LF4/v;->X:LF4/v;

    new-instance v0, LF4/v$b;

    const-string v1, "STRING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LF4/v$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LF4/v;->Y:LF4/v;

    invoke-static {}, LF4/v;->e()[LF4/v;

    move-result-object v0

    sput-object v0, LF4/v;->Z:[LF4/v;

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

.method public constructor <init>(Ljava/lang/String;ILF4/v$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic e()[LF4/v;
    .locals 2

    sget-object v0, LF4/v;->X:LF4/v;

    sget-object v1, LF4/v;->Y:LF4/v;

    filled-new-array {v0, v1}, [LF4/v;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LF4/v;
    .locals 1

    const-class v0, LF4/v;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LF4/v;

    return-object p0
.end method

.method public static values()[LF4/v;
    .locals 1

    sget-object v0, LF4/v;->Z:[LF4/v;

    invoke-virtual {v0}, [LF4/v;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LF4/v;

    return-object v0
.end method


# virtual methods
.method public abstract f(Ljava/lang/Long;)LF4/k;
.end method
