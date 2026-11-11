.class public final enum LN4/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LN4/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum V1:LN4/c;

.field public static final enum X:LN4/c;

.field public static final enum Y:LN4/c;

.field public static final enum Z:LN4/c;

.field public static final enum k6:LN4/c;

.field public static final enum l6:LN4/c;

.field public static final enum m6:LN4/c;

.field public static final enum n6:LN4/c;

.field public static final enum o6:LN4/c;

.field public static final enum p6:LN4/c;

.field public static final synthetic q6:[LN4/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LN4/c;

    const-string v1, "BEGIN_ARRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LN4/c;->X:LN4/c;

    new-instance v0, LN4/c;

    const-string v1, "END_ARRAY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LN4/c;->Y:LN4/c;

    new-instance v0, LN4/c;

    const-string v1, "BEGIN_OBJECT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LN4/c;->Z:LN4/c;

    new-instance v0, LN4/c;

    const-string v1, "END_OBJECT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LN4/c;->V1:LN4/c;

    new-instance v0, LN4/c;

    const-string v1, "NAME"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LN4/c;->k6:LN4/c;

    new-instance v0, LN4/c;

    const-string v1, "STRING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LN4/c;->l6:LN4/c;

    new-instance v0, LN4/c;

    const-string v1, "NUMBER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LN4/c;->m6:LN4/c;

    new-instance v0, LN4/c;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LN4/c;->n6:LN4/c;

    new-instance v0, LN4/c;

    const-string v1, "NULL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LN4/c;->o6:LN4/c;

    new-instance v0, LN4/c;

    const-string v1, "END_DOCUMENT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LN4/c;->p6:LN4/c;

    invoke-static {}, LN4/c;->e()[LN4/c;

    move-result-object v0

    sput-object v0, LN4/c;->q6:[LN4/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic e()[LN4/c;
    .locals 10

    sget-object v0, LN4/c;->X:LN4/c;

    sget-object v1, LN4/c;->Y:LN4/c;

    sget-object v2, LN4/c;->Z:LN4/c;

    sget-object v3, LN4/c;->V1:LN4/c;

    sget-object v4, LN4/c;->k6:LN4/c;

    sget-object v5, LN4/c;->l6:LN4/c;

    sget-object v6, LN4/c;->m6:LN4/c;

    sget-object v7, LN4/c;->n6:LN4/c;

    sget-object v8, LN4/c;->o6:LN4/c;

    sget-object v9, LN4/c;->p6:LN4/c;

    filled-new-array/range {v0 .. v9}, [LN4/c;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LN4/c;
    .locals 1

    const-class v0, LN4/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LN4/c;

    return-object p0
.end method

.method public static values()[LN4/c;
    .locals 1

    sget-object v0, LN4/c;->q6:[LN4/c;

    invoke-virtual {v0}, [LN4/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LN4/c;

    return-object v0
.end method
