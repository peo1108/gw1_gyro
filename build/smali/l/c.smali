.class public Ll/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ActivateKeymapChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll/c$e;,
        Ll/c$d;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Ll/c$e;

.field public b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ll/c$e;

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ll/c$e;-><init>(Ll/c;Landroid/content/Context;)V

    iput-object v0, p0, Ll/c;->a:Ll/c$e;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ll/c;->b:Landroid/os/Handler;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->J()Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->A(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ActivateKeymapChangedListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Ll/c;->a:Ll/c$e;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v0

    iget-object v1, p0, Ll/c;->a:Ll/c$e;

    invoke-virtual {v0, v1}, Ll/b;->q(Lcom/zjx/jyandroid/base/BaseFloatingView;)V

    return-void
.end method

.method public activatedKeymapHasChanged(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;)Z
    .locals 4

    iget-object v0, p0, Ll/c;->b:Landroid/os/Handler;

    new-instance v1, Ll/c$a;

    invoke-direct {v1, p0}, Ll/c$a;-><init>(Ll/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;->content:Ljava/util/Map;

    const-string v1, "components"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/AbstractList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    :try_start_0
    const-string v1, "x"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    const-string v1, "y"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    const-string v1, "width"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    const-string v1, "height"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    const-string v1, "data"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v1, "type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    sget-object v2, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->MACRO_SC:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1

    new-instance v1, Lr/y;

    invoke-direct {v1}, Lr/y;-><init>()V

    invoke-virtual {v1, v0}, Lr/y;->e(Ljava/util/Map;)V

    new-instance v0, Ll/c$d;

    iget-object v2, p0, Ll/c;->a:Ll/c$e;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Ll/c$d;-><init>(Ll/c;Landroid/content/Context;)V

    iget-object v2, p0, Ll/c;->b:Landroid/os/Handler;

    new-instance v3, Ll/c$b;

    invoke-direct {v3, p0, v0, v1}, Ll/c$b;-><init>(Ll/c;Ll/c$d;Lr/y;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->NORMAL_TOUCH_POINT_SC:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_0

    new-instance v1, Lr/e;

    invoke-direct {v1}, Lr/e;-><init>()V

    invoke-virtual {v1, v0}, Lr/e;->e(Ljava/util/Map;)V

    new-instance v0, Ll/c$d;

    iget-object v2, p0, Ll/c;->a:Ll/c$e;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Ll/c$d;-><init>(Ll/c;Landroid/content/Context;)V

    iget-object v2, p0, Ll/c;->b:Landroid/os/Handler;

    new-instance v3, Ll/c$c;

    invoke-direct {v3, p0, v0, v1}, Ll/c$c;-><init>(Ll/c;Ll/c$d;Lr/e;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly/c;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 9

    iget-object v0, p0, Ll/c;->a:Ll/c$e;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->i()Landroid/util/Size;

    move-result-object v0

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v1

    iget-object v2, p0, Ll/c;->a:Ll/c$e;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-static {}, Ll/b;->i()I

    move-result v0

    or-int/lit8 v8, v0, 0x18

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x33

    invoke-virtual/range {v1 .. v8}, Ll/b;->d(Lcom/zjx/jyandroid/base/BaseFloatingView;IIIIII)V

    return-void
.end method
