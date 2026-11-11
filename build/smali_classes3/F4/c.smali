.class public abstract enum LF4/c;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements LF4/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LF4/c;",
        ">;",
        "LF4/d;"
    }
.end annotation


# static fields
.field public static final enum V1:LF4/c;

.field public static final enum X:LF4/c;

.field public static final enum Y:LF4/c;

.field public static final enum Z:LF4/c;

.field public static final enum k6:LF4/c;

.field public static final enum l6:LF4/c;

.field public static final enum m6:LF4/c;

.field public static final synthetic n6:[LF4/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LF4/c$a;

    const-string v1, "IDENTITY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LF4/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LF4/c;->X:LF4/c;

    new-instance v0, LF4/c$b;

    const-string v1, "UPPER_CAMEL_CASE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LF4/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LF4/c;->Y:LF4/c;

    new-instance v0, LF4/c$c;

    const-string v1, "UPPER_CAMEL_CASE_WITH_SPACES"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LF4/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, LF4/c;->Z:LF4/c;

    new-instance v0, LF4/c$d;

    const-string v1, "UPPER_CASE_WITH_UNDERSCORES"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LF4/c$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, LF4/c;->V1:LF4/c;

    new-instance v0, LF4/c$e;

    const-string v1, "LOWER_CASE_WITH_UNDERSCORES"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, LF4/c$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, LF4/c;->k6:LF4/c;

    new-instance v0, LF4/c$f;

    const-string v1, "LOWER_CASE_WITH_DASHES"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LF4/c$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, LF4/c;->l6:LF4/c;

    new-instance v0, LF4/c$g;

    const-string v1, "LOWER_CASE_WITH_DOTS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, LF4/c$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, LF4/c;->m6:LF4/c;

    invoke-static {}, LF4/c;->f()[LF4/c;

    move-result-object v0

    sput-object v0, LF4/c;->n6:[LF4/c;

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

.method public constructor <init>(Ljava/lang/String;ILF4/c$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic f()[LF4/c;
    .locals 7

    sget-object v0, LF4/c;->X:LF4/c;

    sget-object v1, LF4/c;->Y:LF4/c;

    sget-object v2, LF4/c;->Z:LF4/c;

    sget-object v3, LF4/c;->V1:LF4/c;

    sget-object v4, LF4/c;->k6:LF4/c;

    sget-object v5, LF4/c;->l6:LF4/c;

    sget-object v6, LF4/c;->m6:LF4/c;

    filled-new-array/range {v0 .. v6}, [LF4/c;

    move-result-object v0

    return-object v0
.end method

.method public static g(Ljava/lang/String;C)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    const/4 v3, 0x1

    if-nez v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)LF4/c;
    .locals 1

    const-class v0, LF4/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LF4/c;

    return-object p0
.end method

.method public static values()[LF4/c;
    .locals 1

    sget-object v0, LF4/c;->n6:[LF4/c;

    invoke-virtual {v0}, [LF4/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LF4/c;

    return-object v0
.end method
