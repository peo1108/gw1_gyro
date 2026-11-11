.class public LM6/e;
.super Lt7/b;
.source "SourceFile"

# interfaces
.implements LN6/c;


# instance fields
.field public V1:LN6/c$a;

.field public X:Ljava/lang/String;

.field public Y:Lh7/b;

.field public Z:Lh7/b;

.field public k6:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/zjx/jyandroid/e$k;->G7:I

    invoke-static {v0}, Lg7/d;->i(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LM6/e;->X:Ljava/lang/String;

    new-instance v0, Lh7/b;

    invoke-direct {v0}, Lh7/b;-><init>()V

    iput-object v0, p0, LM6/e;->Y:Lh7/b;

    new-instance v0, Lh7/b;

    invoke-direct {v0}, Lh7/b;-><init>()V

    iput-object v0, p0, LM6/e;->Z:Lh7/b;

    sget-object v0, LN6/c$a;->X:LN6/c$a;

    iput-object v0, p0, LM6/e;->V1:LN6/c$a;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LM6/e;->k6:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public c()Ljava/util/Map;
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

    const-string v1, "name"

    invoke-virtual {p0}, LM6/e;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, LM6/e;->getTriggerMode()LN6/c$a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "triggerMode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, LM6/e;->getTriggerHotkey()Lh7/b;

    move-result-object v1

    invoke-virtual {v1}, Lh7/b;->u()[I

    move-result-object v1

    const-string v2, "triggerHotkey"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, LM6/e;->getTerminateHotkey()Lh7/b;

    move-result-object v1

    invoke-virtual {v1}, Lh7/b;->u()[I

    move-result-object v1

    const-string v2, "terminateHotkey"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0}, LM6/e;->getMacroOperations()Ljava/util/List;

    move-result-object v1

    const-string v2, "operationList"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public d(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, LM6/e;->setName(Ljava/lang/String;)V

    new-instance v0, Lh7/b;

    const-string v1, "triggerHotkey"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {v0, v1}, Lh7/b;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, LM6/e;->setTriggerHotkey(Lh7/b;)V

    new-instance v0, Lh7/b;

    const-string v1, "terminateHotkey"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {v0, v1}, Lh7/b;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, LM6/e;->setTerminateHotkey(Lh7/b;)V

    invoke-static {}, LN6/c$a;->values()[LN6/c$a;

    move-result-object v0

    const-string v1, "triggerMode"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, LM6/e;->setTriggerMode(LN6/c$a;)V

    const-string v0, "operationList"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, LM6/e;->setMacroOperations(Ljava/util/List;)V

    return-void
.end method

.method public getMacroOperations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, LM6/e;->k6:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LM6/e;->X:Ljava/lang/String;

    return-object v0
.end method

.method public getTerminateHotkey()Lh7/b;
    .locals 1

    iget-object v0, p0, LM6/e;->Z:Lh7/b;

    return-object v0
.end method

.method public getTriggerHotkey()Lh7/b;
    .locals 1

    iget-object v0, p0, LM6/e;->Y:Lh7/b;

    return-object v0
.end method

.method public getTriggerMode()LN6/c$a;
    .locals 1

    iget-object v0, p0, LM6/e;->V1:LN6/c$a;

    return-object v0
.end method

.method public setMacroOperations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, LM6/e;->k6:Ljava/util/List;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LM6/e;->X:Ljava/lang/String;

    return-void
.end method

.method public setTerminateHotkey(Lh7/b;)V
    .locals 0

    iput-object p1, p0, LM6/e;->Z:Lh7/b;

    return-void
.end method

.method public setTriggerHotkey(Lh7/b;)V
    .locals 0

    iput-object p1, p0, LM6/e;->Y:Lh7/b;

    return-void
.end method

.method public setTriggerMode(LN6/c$a;)V
    .locals 0

    iput-object p1, p0, LM6/e;->V1:LN6/c$a;

    return-void
.end method
