.class public final LF4/m;
.super LF4/k;
.source "SourceFile"


# static fields
.field public static final X:LF4/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LF4/m;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LF4/m;->X:LF4/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LF4/k;
    .locals 1

    sget-object v0, LF4/m;->X:LF4/m;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    instance-of p1, p1, LF4/m;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hashCode()I
    .locals 1

    const-class v0, LF4/m;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public y()LF4/m;
    .locals 1

    sget-object v0, LF4/m;->X:LF4/m;

    return-object v0
.end method
