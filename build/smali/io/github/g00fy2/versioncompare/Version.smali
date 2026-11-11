.class public Lio/github/g00fy2/versioncompare/Version;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/github/g00fy2/versioncompare/Version;",
        ">;"
    }
.end annotation


# instance fields
.field private final originalString:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final preReleaseVersion:J

.field private final releaseType:Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final subversionNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final suffix:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final trimmedSubversionNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lio/github/g00fy2/versioncompare/Version;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/github/g00fy2/versioncompare/Version;->subversionNumbers:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/github/g00fy2/versioncompare/Version;->trimmedSubversionNumbers:Ljava/util/List;

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    .line 5
    invoke-static {p1}, Lio/github/g00fy2/versioncompare/VersionComparator;->startsNumeric(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument versionString is no valid version"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument versionString is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    :goto_0
    iput-object p1, p0, Lio/github/g00fy2/versioncompare/Version;->originalString:Ljava/lang/String;

    .line 9
    const-string p2, ""

    if-eqz p1, :cond_a

    invoke-static {p1}, Lio/github/g00fy2/versioncompare/VersionComparator;->startsNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 10
    const-string v0, "\\s"

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 11
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v4, v3

    :goto_1
    const/4 v5, 0x1

    if-ge v3, v0, :cond_8

    aget-object v6, p1, v3

    if-eqz v4, :cond_3

    .line 12
    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 14
    :cond_3
    invoke-static {v6}, Lio/github/g00fy2/versioncompare/VersionComparator;->isNumeric(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 15
    iget-object v5, p0, Lio/github/g00fy2/versioncompare/Version;->subversionNumbers:Ljava/util/List;

    invoke-static {v6}, Lio/github/g00fy2/versioncompare/VersionComparator;->safeParseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    move v7, v1

    .line 16
    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_7

    .line 17
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_6

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v7, :cond_5

    .line 19
    iget-object v4, p0, Lio/github/g00fy2/versioncompare/Version;->subversionNumbers:Ljava/util/List;

    invoke-virtual {v6, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lio/github/g00fy2/versioncompare/VersionComparator;->safeParseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 21
    :cond_5
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    move v4, v5

    goto :goto_4

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    if-eqz v2, :cond_9

    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_9
    iput-object p2, p0, Lio/github/g00fy2/versioncompare/Version;->suffix:Ljava/lang/String;

    .line 23
    iget-object p1, p0, Lio/github/g00fy2/versioncompare/Version;->trimmedSubversionNumbers:Ljava/util/List;

    iget-object p2, p0, Lio/github/g00fy2/versioncompare/Version;->subversionNumbers:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 24
    :goto_5
    iget-object p1, p0, Lio/github/g00fy2/versioncompare/Version;->trimmedSubversionNumbers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lio/github/g00fy2/versioncompare/Version;->trimmedSubversionNumbers:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object p2, p0, Lio/github/g00fy2/versioncompare/Version;->trimmedSubversionNumbers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v5

    if-ne p1, p2, :cond_b

    .line 26
    iget-object p1, p0, Lio/github/g00fy2/versioncompare/Version;->trimmedSubversionNumbers:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_5

    .line 27
    :cond_a
    iput-object p2, p0, Lio/github/g00fy2/versioncompare/Version;->suffix:Ljava/lang/String;

    .line 28
    :cond_b
    iget-object p1, p0, Lio/github/g00fy2/versioncompare/Version;->suffix:Ljava/lang/String;

    invoke-static {p1}, Lio/github/g00fy2/versioncompare/VersionComparator;->qualifierToReleaseType(Ljava/lang/String;)Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;

    move-result-object p1

    iput-object p1, p0, Lio/github/g00fy2/versioncompare/Version;->releaseType:Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;

    .line 29
    iget-object p2, p0, Lio/github/g00fy2/versioncompare/Version;->suffix:Ljava/lang/String;

    invoke-static {p2, p1}, Lio/github/g00fy2/versioncompare/VersionComparator;->preReleaseVersion(Ljava/lang/String;Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;)J

    move-result-wide p1

    iput-wide p1, p0, Lio/github/g00fy2/versioncompare/Version;->preReleaseVersion:J

    return-void
.end method

.method private compareTo(Lio/github/g00fy2/versioncompare/Version;Z)I
    .locals 2
    .param p1    # Lio/github/g00fy2/versioncompare/Version;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 3
    iget-object v0, p0, Lio/github/g00fy2/versioncompare/Version;->trimmedSubversionNumbers:Ljava/util/List;

    iget-object v1, p1, Lio/github/g00fy2/versioncompare/Version;->trimmedSubversionNumbers:Ljava/util/List;

    invoke-static {v0, v1}, Lio/github/g00fy2/versioncompare/VersionComparator;->compareSubversionNumbers(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lio/github/g00fy2/versioncompare/Version;->releaseType:Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;

    iget-object v0, p1, Lio/github/g00fy2/versioncompare/Version;->releaseType:Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p2

    if-eqz p2, :cond_1

    return p2

    .line 5
    :cond_1
    iget-wide v0, p0, Lio/github/g00fy2/versioncompare/Version;->preReleaseVersion:J

    iget-wide p1, p1, Lio/github/g00fy2/versioncompare/Version;->preReleaseVersion:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public final compareTo(Lio/github/g00fy2/versioncompare/Version;)I
    .locals 1
    .param p1    # Lio/github/g00fy2/versioncompare/Version;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lio/github/g00fy2/versioncompare/Version;->compareTo(Lio/github/g00fy2/versioncompare/Version;Z)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lio/github/g00fy2/versioncompare/Version;

    invoke-virtual {p0, p1}, Lio/github/g00fy2/versioncompare/Version;->compareTo(Lio/github/g00fy2/versioncompare/Version;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lio/github/g00fy2/versioncompare/Version;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/github/g00fy2/versioncompare/Version;

    invoke-virtual {p0, v0}, Lio/github/g00fy2/versioncompare/Version;->isEqual(Lio/github/g00fy2/versioncompare/Version;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getMajor()J
    .locals 2

    iget-object v0, p0, Lio/github/g00fy2/versioncompare/Version;->trimmedSubversionNumbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lio/github/g00fy2/versioncompare/Version;->trimmedSubversionNumbers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getMinor()J
    .locals 2

    iget-object v0, p0, Lio/github/g00fy2/versioncompare/Version;->trimmedSubversionNumbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lio/github/g00fy2/versioncompare/Version;->trimmedSubversionNumbers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getOriginalString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lio/github/g00fy2/versioncompare/Version;->originalString:Ljava/lang/String;

    return-object v0
.end method

.method public getPatch()J
    .locals 2

    iget-object v0, p0, Lio/github/g00fy2/versioncompare/Version;->trimmedSubversionNumbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lio/github/g00fy2/versioncompare/Version;->trimmedSubversionNumbers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getSubversionNumbers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lio/github/g00fy2/versioncompare/Version;->subversionNumbers:Ljava/util/List;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lio/github/g00fy2/versioncompare/Version;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lio/github/g00fy2/versioncompare/Version;->trimmedSubversionNumbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/github/g00fy2/versioncompare/Version;->releaseType:Lio/github/g00fy2/versioncompare/VersionComparator$ReleaseType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lio/github/g00fy2/versioncompare/Version;->preReleaseVersion:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isAtLeast(Lio/github/g00fy2/versioncompare/Version;)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/github/g00fy2/versioncompare/Version;->compareTo(Lio/github/g00fy2/versioncompare/Version;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isAtLeast(Lio/github/g00fy2/versioncompare/Version;Z)Z
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lio/github/g00fy2/versioncompare/Version;->compareTo(Lio/github/g00fy2/versioncompare/Version;Z)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isAtLeast(Ljava/lang/String;)Z
    .locals 1

    .line 1
    new-instance v0, Lio/github/g00fy2/versioncompare/Version;

    invoke-direct {v0, p1}, Lio/github/g00fy2/versioncompare/Version;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/github/g00fy2/versioncompare/Version;->isAtLeast(Lio/github/g00fy2/versioncompare/Version;)Z

    move-result p1

    return p1
.end method

.method public isAtLeast(Ljava/lang/String;Z)Z
    .locals 1

    .line 3
    new-instance v0, Lio/github/g00fy2/versioncompare/Version;

    invoke-direct {v0, p1}, Lio/github/g00fy2/versioncompare/Version;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lio/github/g00fy2/versioncompare/Version;->isAtLeast(Lio/github/g00fy2/versioncompare/Version;Z)Z

    move-result p1

    return p1
.end method

.method public isEqual(Lio/github/g00fy2/versioncompare/Version;)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/github/g00fy2/versioncompare/Version;->compareTo(Lio/github/g00fy2/versioncompare/Version;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isEqual(Ljava/lang/String;)Z
    .locals 1

    .line 1
    new-instance v0, Lio/github/g00fy2/versioncompare/Version;

    invoke-direct {v0, p1}, Lio/github/g00fy2/versioncompare/Version;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/github/g00fy2/versioncompare/Version;->isEqual(Lio/github/g00fy2/versioncompare/Version;)Z

    move-result p1

    return p1
.end method

.method public isHigherThan(Lio/github/g00fy2/versioncompare/Version;)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/github/g00fy2/versioncompare/Version;->compareTo(Lio/github/g00fy2/versioncompare/Version;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isHigherThan(Ljava/lang/String;)Z
    .locals 1

    .line 1
    new-instance v0, Lio/github/g00fy2/versioncompare/Version;

    invoke-direct {v0, p1}, Lio/github/g00fy2/versioncompare/Version;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/github/g00fy2/versioncompare/Version;->isHigherThan(Lio/github/g00fy2/versioncompare/Version;)Z

    move-result p1

    return p1
.end method

.method public isLowerThan(Lio/github/g00fy2/versioncompare/Version;)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/github/g00fy2/versioncompare/Version;->compareTo(Lio/github/g00fy2/versioncompare/Version;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isLowerThan(Ljava/lang/String;)Z
    .locals 1

    .line 1
    new-instance v0, Lio/github/g00fy2/versioncompare/Version;

    invoke-direct {v0, p1}, Lio/github/g00fy2/versioncompare/Version;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/github/g00fy2/versioncompare/Version;->isLowerThan(Lio/github/g00fy2/versioncompare/Version;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/github/g00fy2/versioncompare/Version;->originalString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
