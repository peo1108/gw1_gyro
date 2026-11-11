.class public Lr/y;
.super Lr/c;
.source "SourceFile"

# interfaces
.implements Ls/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr/y$b;,
        Lr/y$c;
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

.field public h:Z

.field public i:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lr/c;-><init>()V

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;

    invoke-direct {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;-><init>()V

    iput-object v0, p0, Lr/y;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;

    sget v0, Lcom/zjx/jyandroid/R$string;->keymap_component_text10:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lr/y;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lr/y;->c:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lr/y;->d:Ljava/util/List;

    sget-object v0, Lr/x$b;->a:Lr/x$b;

    iput-object v0, p0, Lr/y;->e:Lr/x$b;

    new-instance v0, Lr/e;

    invoke-direct {v0}, Lr/e;-><init>()V

    iput-object v0, p0, Lr/y;->g:Lr/e;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr/y;->h:Z

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v0, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lr/y;->i:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public b()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lr/y;->g:Lr/e;

    invoke-virtual {v0}, Lr/e;->b()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;

    iput-object v0, p0, Lr/y;->f:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;

    iget-object v0, p0, Lr/y;->g:Lr/e;

    invoke-virtual {v0, p1}, Lr/e;->d(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    check-cast p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->g()Z

    move-result v0

    iput-boolean v0, p0, Lr/y;->h:Z

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->getTouchTerminateRect()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lr/y;->i:Landroid/graphics/Rect;

    return-void
.end method

.method public e(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lr/y;->g:Lr/e;

    invoke-virtual {v0, p1}, Lr/e;->e(Ljava/util/Map;)V

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;

    invoke-direct {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;-><init>()V

    iput-object v0, p0, Lr/y;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;

    const-string v0, "data"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, "name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lr/y;->b:Ljava/lang/String;

    const-string v0, "triggerKeyCodes"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lr/y;->c:Ljava/util/List;

    const-string v0, "terminateKeyCodes"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lr/y;->d:Ljava/util/List;

    invoke-static {}, Lr/x$b;->values()[Lr/x$b;

    move-result-object v0

    const-string v1, "triggerMode"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lr/y;->e:Lr/x$b;

    new-instance v0, Lr/y$a;

    invoke-direct {v0, p0, p1}, Lr/y$a;-><init>(Lr/y;Ljava/util/Map;)V

    invoke-static {v0}, Lr/c;->c(Lr/c$a;)V

    const-string v0, "operationList"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v2

    sget-object v3, Lr/y$b;->a:Lr/y$b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_2

    new-instance v1, Lq/e;

    sget-object v2, Lq/e$c;->a:Lq/e$c;

    invoke-direct {v1, v2}, Lq/e;-><init>(Lq/e$c;)V

    iget-object v2, p0, Lr/y;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;

    invoke-virtual {v2, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;->b(Lq/a;)Z

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v2

    sget-object v3, Lr/y$b;->b:Lr/y$b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_3

    new-instance v1, Lq/e;

    sget-object v2, Lq/e$c;->b:Lq/e$c;

    invoke-direct {v1, v2}, Lq/e;-><init>(Lq/e$c;)V

    iget-object v2, p0, Lr/y;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;

    invoke-virtual {v2, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;->b(Lq/a;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v2

    sget-object v3, Lr/y$b;->c:Lr/y$b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_4

    new-instance v1, Lq/b;

    invoke-direct {v1}, Lq/b;-><init>()V

    iget-object v2, p0, Lr/y;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;

    invoke-virtual {v2, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;->b(Lq/a;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v2

    sget-object v3, Lr/y$b;->d:Lr/y$b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_5

    new-instance v1, Lq/f;

    invoke-direct {v1}, Lq/f;-><init>()V

    iget-object v2, p0, Lr/y;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;

    invoke-virtual {v2, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;->b(Lq/a;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v2

    sget-object v3, Lr/y$b;->e:Lr/y$b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_6

    new-instance v1, Lq/g;

    invoke-direct {v1}, Lq/g;-><init>()V

    iget-object v2, p0, Lr/y;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;

    invoke-virtual {v2, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;->b(Lq/a;)Z

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/16 v3, 0x270f

    if-ne v2, v3, :cond_7

    new-instance v1, Lq/h;

    invoke-direct {v1}, Lq/h;-><init>()V

    iget-object v2, p0, Lr/y;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;

    invoke-virtual {v2, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;->b(Lq/a;)Z

    goto :goto_1

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/16 v2, 0x270e

    if-ne v1, v2, :cond_8

    new-instance v1, Lq/d;

    invoke-direct {v1}, Lq/d;-><init>()V

    iget-object v2, p0, Lr/y;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;

    invoke-virtual {v2, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;->b(Lq/a;)Z

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lq/a;->d(Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public f()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr/y;->g:Lr/e;

    invoke-virtual {v0}, Lr/e;->f()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->MACRO_SC:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

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

    iget-object v2, p0, Lr/y;->f:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;

    invoke-virtual {v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lr/y;->f:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;

    invoke-virtual {v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->getTriggerMode()Lr/x$b;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "triggerMode"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lr/y;->f:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;

    invoke-virtual {v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->getTriggerKeyCodes()Ljava/util/LinkedList;

    move-result-object v2

    const-string v3, "triggerKeyCodes"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lr/y;->f:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;

    invoke-virtual {v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->getTerminateKeyCodes()Ljava/util/LinkedList;

    move-result-object v2

    const-string v3, "terminateKeyCodes"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lr/y;->f:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;

    invoke-virtual {v3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->getOperations()Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq/a;

    invoke-virtual {v4}, Lq/a;->a()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v3, "operationList"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, p0, Lr/y;->h:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "touchTerminate"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lr/y;->i:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "x"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lr/y;->i:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "y"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lr/y;->i:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "width"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lr/y;->i:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "height"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "touchTerminateRect"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public g()Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;
    .locals 1

    iget-object v0, p0, Lr/y;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;

    return-object v0
.end method
