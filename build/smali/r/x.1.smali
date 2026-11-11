.class public Lr/x;
.super Lr/c;
.source "SourceFile"

# interfaces
.implements Ls/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr/x$b;,
        Lr/x$a;
    }
.end annotation


# instance fields
.field public a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lr/x$b;

.field public f:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;

.field public g:Lr/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lr/c;-><init>()V

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;

    invoke-direct {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;-><init>()V

    iput-object v0, p0, Lr/x;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;

    sget v0, Lcom/zjx/jyandroid/R$string;->keymap_component_text10:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lr/x;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lr/x;->c:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lr/x;->d:Ljava/util/List;

    sget-object v0, Lr/x$b;->a:Lr/x$b;

    iput-object v0, p0, Lr/x;->e:Lr/x$b;

    new-instance v0, Lr/e;

    invoke-direct {v0}, Lr/e;-><init>()V

    iput-object v0, p0, Lr/x;->g:Lr/e;

    return-void
.end method

.method public static i(Ljava/util/List;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;"
        }
    .end annotation

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;

    invoke-direct {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "type"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v3

    sget-object v4, Lr/x$a;->a:Lr/x$a;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_2

    new-instance v2, Lq/e;

    sget-object v3, Lq/e$c;->a:Lq/e$c;

    invoke-direct {v2, v3}, Lq/e;-><init>(Lq/e$c;)V

    invoke-virtual {v0, v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;->b(Lq/a;)Z

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v3

    sget-object v4, Lr/x$a;->b:Lr/x$a;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_3

    new-instance v2, Lq/e;

    sget-object v3, Lq/e$c;->b:Lq/e$c;

    invoke-direct {v2, v3}, Lq/e;-><init>(Lq/e$c;)V

    invoke-virtual {v0, v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;->b(Lq/a;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v3

    sget-object v4, Lr/x$a;->c:Lr/x$a;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_4

    new-instance v2, Lq/b;

    invoke-direct {v2}, Lq/b;-><init>()V

    invoke-virtual {v0, v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;->b(Lq/a;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v3

    sget-object v4, Lr/x$a;->d:Lr/x$a;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_5

    new-instance v2, Lq/f;

    invoke-direct {v2}, Lq/f;-><init>()V

    invoke-virtual {v0, v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;->b(Lq/a;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v3

    sget-object v4, Lr/x$a;->e:Lr/x$a;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_6

    new-instance v2, Lq/g;

    invoke-direct {v2}, Lq/g;-><init>()V

    invoke-virtual {v0, v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;->b(Lq/a;)Z

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v3

    const/16 v4, 0x270f

    if-ne v3, v4, :cond_7

    new-instance v2, Lq/h;

    invoke-direct {v2}, Lq/h;-><init>()V

    invoke-virtual {v0, v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;->b(Lq/a;)Z

    goto :goto_1

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/16 v3, 0x270e

    if-ne v2, v3, :cond_8

    new-instance v2, Lq/d;

    invoke-direct {v2}, Lq/d;-><init>()V

    invoke-virtual {v0, v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;->b(Lq/a;)Z

    goto :goto_1

    :cond_8
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lq/a;->d(Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_9
    return-object v0
.end method


# virtual methods
.method public b()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lr/x;->g:Lr/e;

    invoke-virtual {v0}, Lr/e;->b()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;

    iput-object v0, p0, Lr/x;->f:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;

    iget-object v0, p0, Lr/x;->g:Lr/e;

    invoke-virtual {v0, p1}, Lr/e;->d(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    return-void
.end method

.method public e(Ljava/util/Map;)V
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

    iget-object v0, p0, Lr/x;->g:Lr/e;

    invoke-virtual {v0, p1}, Lr/e;->e(Ljava/util/Map;)V

    const-string v0, "data"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, "name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lr/x;->b:Ljava/lang/String;

    const-string v0, "triggerKeyCodes"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lr/x;->c:Ljava/util/List;

    const-string v0, "terminateKeyCodes"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lr/x;->d:Ljava/util/List;

    invoke-static {}, Lr/x$b;->values()[Lr/x$b;

    move-result-object v0

    const-string v1, "triggerMode"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lr/x;->e:Lr/x$b;

    const-string v0, "operationList"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lr/x;->i(Ljava/util/List;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;

    move-result-object p1

    iput-object p1, p0, Lr/x;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;

    return-void
.end method

.method public f()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr/x;->g:Lr/e;

    invoke-virtual {v0}, Lr/e;->f()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->MACRO:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "type"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "data"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lr/x;->f:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;

    invoke-virtual {v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lr/x;->f:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;

    invoke-virtual {v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->getTriggerMode()Lr/x$b;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "triggerMode"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lr/x;->f:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;

    invoke-virtual {v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->getTriggerKeyCodes()Ljava/util/LinkedList;

    move-result-object v2

    const-string v3, "triggerKeyCodes"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lr/x;->f:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;

    invoke-virtual {v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->getTerminateKeyCodes()Ljava/util/LinkedList;

    move-result-object v2

    const-string v3, "terminateKeyCodes"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "operationList"

    invoke-virtual {p0}, Lr/x;->h()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public g()Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;
    .locals 1

    iget-object v0, p0, Lr/x;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 3
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lr/x;->f:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->getOperations()Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/a;

    invoke-virtual {v2}, Lq/a;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
