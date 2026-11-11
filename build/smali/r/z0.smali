.class public Lr/z0;
.super Lr/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr/z0$a;
    }
.end annotation


# instance fields
.field public a:Lr/z0$a;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lr/d;-><init>()V

    sget-object v0, Lr/z0$a;->a:Lr/z0$a;

    iput-object v0, p0, Lr/z0;->a:Lr/z0$a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr/z0;->b:Z

    return-void
.end method

.method public static synthetic b(Lr/z0;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lr/z0;->d(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic c(Lr/z0;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lr/z0;->lambda$loadFromMap$0(Ljava/util/Map;)V

    return-void
.end method

.method private synthetic d(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "blockTouch"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lr/z0;->b:Z

    return-void
.end method

.method private synthetic lambda$loadFromMap$0(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lr/z0$a;->values()[Lr/z0$a;

    move-result-object v0

    const-string v1, "triggerType"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    iput-object p1, p0, Lr/z0;->a:Lr/z0$a;

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

    new-instance v0, Lr/x0;

    invoke-direct {v0, p0, p1}, Lr/x0;-><init>(Lr/z0;Ljava/util/Map;)V

    invoke-static {v0}, Lr/d;->ignoringExc(Lr/d$a;)V

    new-instance v0, Lr/y0;

    invoke-direct {v0, p0, p1}, Lr/y0;-><init>(Lr/z0;Ljava/util/Map;)V

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

    new-instance v1, Ljava/lang/Integer;

    iget-object v2, p0, Lr/z0;->a:Lr/z0$a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "triggerType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lr/z0;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "blockTouch"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
