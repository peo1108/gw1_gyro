.class public Lf/m;
.super Lr/d;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lr/d;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/m;->a:Z

    iput-boolean v0, p0, Lf/m;->b:Z

    return-void
.end method

.method public static synthetic b(Lf/m;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lf/m;->lambda$loadFromMap$0(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic c(Lf/m;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lf/m;->d(Ljava/util/Map;)V

    return-void
.end method

.method private synthetic d(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "bindStartRecoilControl"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lf/m;->b:Z

    return-void
.end method

.method private synthetic lambda$loadFromMap$0(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "bindAim"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lf/m;->a:Z

    return-void
.end method


# virtual methods
.method public loadFromMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lf/k;

    invoke-direct {v0, p0, p1}, Lf/k;-><init>(Lf/m;Ljava/util/Map;)V

    invoke-static {v0}, Lr/d;->ignoringExc(Lr/d$a;)V

    new-instance v0, Lf/l;

    invoke-direct {v0, p0, p1}, Lf/l;-><init>(Lf/m;Ljava/util/Map;)V

    invoke-static {v0}, Lr/d;->ignoringExc(Lr/d$a;)V

    return-void
.end method

.method public toMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-boolean v1, p0, Lf/m;->a:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "bindAim"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lf/m;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "bindStartRecoilControl"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
