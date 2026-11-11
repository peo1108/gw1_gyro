.class Landroidx/test/internal/util/ProcSummary$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/util/ProcSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private cmdline:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private parent:Ljava/lang/String;

.field private pid:Ljava/lang/String;

.field private realUid:Ljava/lang/String;

.field private startTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Landroidx/test/internal/util/ProcSummary$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/test/internal/util/ProcSummary$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Landroidx/test/internal/util/ProcSummary$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/test/internal/util/ProcSummary$Builder;->pid:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Landroidx/test/internal/util/ProcSummary$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/test/internal/util/ProcSummary$Builder;->realUid:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Landroidx/test/internal/util/ProcSummary$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/test/internal/util/ProcSummary$Builder;->parent:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$400(Landroidx/test/internal/util/ProcSummary$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/test/internal/util/ProcSummary$Builder;->cmdline:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$500(Landroidx/test/internal/util/ProcSummary$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroidx/test/internal/util/ProcSummary$Builder;->startTime:J

    return-wide v0
.end method


# virtual methods
.method public build()Landroidx/test/internal/util/ProcSummary;
    .locals 2

    new-instance v0, Landroidx/test/internal/util/ProcSummary;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/internal/util/ProcSummary;-><init>(Landroidx/test/internal/util/ProcSummary$Builder;Landroidx/test/internal/util/ProcSummary$1;)V

    return-object v0
.end method

.method public withCmdline(Ljava/lang/String;)Landroidx/test/internal/util/ProcSummary$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cmdline"
        }
    .end annotation

    iput-object p1, p0, Landroidx/test/internal/util/ProcSummary$Builder;->cmdline:Ljava/lang/String;

    return-object p0
.end method

.method public withName(Ljava/lang/String;)Landroidx/test/internal/util/ProcSummary$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    iput-object p1, p0, Landroidx/test/internal/util/ProcSummary$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public withParent(Ljava/lang/String;)Landroidx/test/internal/util/ProcSummary$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ppid"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, p0, Landroidx/test/internal/util/ProcSummary$Builder;->parent:Ljava/lang/String;

    return-object p0

    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "not a pid: "

    if-eqz v1, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withPid(Ljava/lang/String;)Landroidx/test/internal/util/ProcSummary$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pid"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, p0, Landroidx/test/internal/util/ProcSummary$Builder;->pid:Ljava/lang/String;

    return-object p0

    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "not a pid: "

    if-eqz v1, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withRealUid(Ljava/lang/String;)Landroidx/test/internal/util/ProcSummary$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, p0, Landroidx/test/internal/util/ProcSummary$Builder;->realUid:Ljava/lang/String;

    return-object p0

    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "not a uid: "

    if-eqz v1, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withStartTime(J)Landroidx/test/internal/util/ProcSummary$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startTime"
        }
    .end annotation

    iput-wide p1, p0, Landroidx/test/internal/util/ProcSummary$Builder;->startTime:J

    return-object p0
.end method
