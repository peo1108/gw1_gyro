.class final enum Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/g00fy2/versioncompare/VersionComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReleaseType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;

.field public static final enum ALPHA:Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;

.field public static final enum BETA:Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;

.field public static final enum PRE_ALPHA:Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;

.field public static final enum RC:Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;

.field public static final enum SNAPSHOT:Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;

.field public static final enum STABLE:Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;


# direct methods
.method private static synthetic $values()[Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;
    .locals 6

    sget-object v0, Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;->SNAPSHOT:Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;

    sget-object v1, Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;->PRE_ALPHA:Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;

    sget-object v2, Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;->ALPHA:Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;

    sget-object v3, Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;->BETA:Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;

    sget-object v4, Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;->RC:Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;

    sget-object v5, Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;->STABLE:Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;

    filled-new-array/range {v0 .. v5}, [Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;

    const-string v1, "SNAPSHOT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;->SNAPSHOT:Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;

    new-instance v0, Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;

    const-string v1, "PRE_ALPHA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;->PRE_ALPHA:Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;

    new-instance v0, Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;

    const-string v1, "ALPHA"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;->ALPHA:Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;

    new-instance v0, Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;

    const-string v1, "BETA"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;->BETA:Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;

    new-instance v0, Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;

    const-string v1, "RC"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;->RC:Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;

    new-instance v0, Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;

    const-string v1, "STABLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;->STABLE:Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;

    invoke-static {}, Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;->$values()[Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;

    move-result-object v0

    sput-object v0, Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;->$VALUES:[Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;
    .locals 1

    const-class v0, Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;

    return-object p0
.end method

.method public static values()[Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;
    .locals 1

    sget-object v0, Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;->$VALUES:[Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;

    invoke-virtual {v0}, [Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;

    return-object v0
.end method
