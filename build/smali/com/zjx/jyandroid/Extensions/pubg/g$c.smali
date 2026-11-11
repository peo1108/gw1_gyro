.class public Lcom/zjx/jyandroid/Extensions/pubg/g$c;
.super Lcom/zjx/jyandroid/Extensions/pubg/g$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/g;->j(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

.field public final synthetic d:Ljava/util/ArrayList;

.field public final synthetic e:Ljava/util/Map;

.field public final synthetic f:Lcom/zjx/jyandroid/Extensions/pubg/g;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/g;Lcom/zjx/jyandroid/Extensions/pubg/g$f;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$c;->f:Lcom/zjx/jyandroid/Extensions/pubg/g;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$c;->c:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    iput-object p3, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$c;->d:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$c;->e:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/g$d;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/g;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$c;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()V
    .locals 2

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/g$c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$c;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$c;->c:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->e()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$c;->f:Lcom/zjx/jyandroid/Extensions/pubg/g;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/g;->c(Lcom/zjx/jyandroid/Extensions/pubg/g;)Lcom/zjx/jyandroid/Extensions/pubg/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->U()V

    iput-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$c;->b:Ljava/util/HashMap;

    return-void
.end method

.method public c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$c;->f:Lcom/zjx/jyandroid/Extensions/pubg/g;

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/g;->e:Ljava/util/Map;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/g;->d(Lcom/zjx/jyandroid/Extensions/pubg/g;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zjx/jyandroid/base/util/b;->R(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$c;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$c;->e:Ljava/util/Map;

    return-object v0
.end method

.method public e(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$c;->b:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$c;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$c;->c:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    iget-short v1, v1, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->j:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "grip"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$c;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$c;->c:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    iget-short v1, v1, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->h:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "scope"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$c;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$c;->c:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    iget-short v1, v1, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->i:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "muzzle"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$c;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$c;->c:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    iget-short v1, v1, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->k:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "stock"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$c;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$c;->c:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    iget-short v1, v1, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->g:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "gesture"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$c;->b:Ljava/util/HashMap;

    const-string v1, "recoilValue"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$c;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$c;->c:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    iput-object p1, v0, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->e()V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$c;->f:Lcom/zjx/jyandroid/Extensions/pubg/g;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/g;->c(Lcom/zjx/jyandroid/Extensions/pubg/g;)Lcom/zjx/jyandroid/Extensions/pubg/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->U()V

    return-void
.end method

.method public f()V
    .locals 12

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c$d;->values()[Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    move-result-object v1

    array-length v1, v1

    if-ge v8, v1, :cond_3

    move v9, v0

    :goto_1
    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c$c;->values()[Lcom/zjx/jyandroid/Extensions/pubg/c$c;

    move-result-object v1

    array-length v1, v1

    if-ge v9, v1, :cond_2

    move v10, v0

    :goto_2
    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c$h;->values()[Lcom/zjx/jyandroid/Extensions/pubg/c$h;

    move-result-object v1

    array-length v1, v1

    if-ge v10, v1, :cond_1

    move v11, v0

    :goto_3
    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c$b;->values()[Lcom/zjx/jyandroid/Extensions/pubg/c$b;

    move-result-object v1

    array-length v1, v1

    if-ge v11, v1, :cond_0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$c;->f:Lcom/zjx/jyandroid/Extensions/pubg/g;

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$c;->c:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    iget-short v5, v2, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->l:S

    iget-short v6, v2, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->h:S

    move v2, v8

    move v3, v9

    move v4, v10

    move v7, v11

    invoke-static/range {v1 .. v7}, Lcom/zjx/jyandroid/Extensions/pubg/g;->b(Lcom/zjx/jyandroid/Extensions/pubg/g;IIIIII)Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->a:Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$c;->c:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->e()V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/g$c;->f:Lcom/zjx/jyandroid/Extensions/pubg/g;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/g;->c(Lcom/zjx/jyandroid/Extensions/pubg/g;)Lcom/zjx/jyandroid/Extensions/pubg/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->U()V

    return-void
.end method
