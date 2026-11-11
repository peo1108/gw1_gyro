.class public Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;
.implements Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ActivateKeymapChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$TouchTriggerComponentsIndicatorHolder;,
        Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$ComponentIndicator;
    }
.end annotation


# static fields
.field static instance:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;


# instance fields
.field private enabled:Z

.field fingerIndexToBlockingTouchStateMap:[Z

.field indicatorHolder:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$TouchTriggerComponentsIndicatorHolder;

.field mainHandler:Landroid/os/Handler;

.field private nodeExecutor:Ljava/util/concurrent/ExecutorService;

.field touchHandler:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;",
            ">;>;"
        }
    .end annotation
.end field

.field touchTriggeredNodeWrappers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$TouchTriggerComponentsIndicatorHolder;

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$TouchTriggerComponentsIndicatorHolder;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->indicatorHolder:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$TouchTriggerComponentsIndicatorHolder;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->mainHandler:Landroid/os/Handler;

    const/16 v0, 0x14

    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->fingerIndexToBlockingTouchStateMap:[Z

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->nodeExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->touchTriggeredNodeWrappers:Ljava/util/Set;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->touchHandler:Ljava/util/List;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->J()Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->A(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$ActivateKeymapChangedListener;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->touchHandler:Ljava/util/List;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->enabled:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->nodeExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public static sharedInstance()Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;
    .locals 1

    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->instance:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;

    invoke-direct {v0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;-><init>()V

    sput-object v0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->instance:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;

    :cond_0
    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->instance:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;

    return-object v0
.end method


# virtual methods
.method public activatedKeymapHasChanged(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;)Z
    .locals 21

    move-object/from16 v7, p0

    const-string v8, ". Error: "

    iget-object v1, v7, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$4;

    invoke-direct {v2, v7}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$4;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, v7, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->touchTriggeredNodeWrappers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v2, p1

    :try_start_0
    iget-object v2, v2, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;->content:Ljava/util/Map;

    const-string v3, "components"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/AbstractList;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v1}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :catch_1
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    const-string v10, "type"

    if-eqz v3, :cond_3

    :try_start_1
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v5, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->MACRO_TERMINATE_SC:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_0

    new-instance v4, Lr/C;

    invoke-direct {v4}, Lr/C;-><init>()V

    invoke-virtual {v4, v3}, Lr/C;->loadFromMap(Ljava/util/Map;)V

    invoke-virtual {v4}, Lr/C;->e()Ljava/util/UUID;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_2

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v9, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/util/Map;

    :try_start_2
    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    sget-object v2, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->NORMAL_TOUCH_POINT_SC:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_e

    if-ne v1, v2, :cond_b

    :try_start_3
    new-instance v1, Lr/e0;

    invoke-direct {v1}, Lr/e0;-><init>()V

    new-instance v2, Lr/e;

    invoke-direct {v2}, Lr/e;-><init>()V

    new-instance v3, Lr/z0;

    invoke-direct {v3}, Lr/z0;-><init>()V

    new-instance v4, Lf/m;

    invoke-direct {v4}, Lf/m;-><init>()V

    invoke-virtual {v1, v12}, Lr/e0;->loadFromMap(Ljava/util/Map;)V

    invoke-virtual {v3, v12}, Lr/z0;->loadFromMap(Ljava/util/Map;)V

    invoke-virtual {v2, v12}, Lr/e;->e(Ljava/util/Map;)V

    invoke-virtual {v4, v12}, Lf/m;->loadFromMap(Ljava/util/Map;)V

    iget-object v5, v3, Lr/z0;->a:Lr/z0$a;

    sget-object v6, Lr/z0$a;->a:Lr/z0$a;

    if-eq v5, v6, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lr/e0;->l()Lr/e0$a;

    move-result-object v5

    invoke-virtual {v2}, Lr/e;->b()Landroid/graphics/Rect;

    move-result-object v2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget-object v13, Lr/e0$a;->a:Lr/e0$a;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    if-ne v5, v13, :cond_6

    :try_start_4
    iget-object v5, v1, Lr/e0;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Point;

    new-instance v14, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/NormalPressKeyActionNode;

    invoke-direct {v14}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/NormalPressKeyActionNode;-><init>()V

    iput-object v13, v14, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeCoordinateAction;->coordinate:Landroid/graphics/Point;

    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v1, v0

    move-object/from16 v16, v9

    move-object/from16 v20, v10

    move-object v15, v11

    goto/16 :goto_14

    :catch_3
    move-exception v0

    move-object v1, v0

    move-object/from16 v16, v9

    move-object/from16 v20, v10

    move-object v15, v11

    goto/16 :goto_15

    :cond_5
    move-object/from16 p1, v10

    move-object v15, v11

    goto/16 :goto_a

    :cond_6
    :try_start_5
    sget-object v13, Lr/e0$a;->b:Lr/e0$a;
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    if-ne v5, v13, :cond_7

    :try_start_6
    iget-object v5, v1, Lr/e0;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Point;

    new-instance v14, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SingleClickKeyActionNode;

    invoke-direct {v14}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SingleClickKeyActionNode;-><init>()V

    iput-object v13, v14, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeCoordinateAction;->coordinate:Landroid/graphics/Point;

    invoke-virtual {v1}, Lr/e0;->h()I

    move-result v13

    iput v13, v14, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SingleClickKeyActionNode;->clickDuration:I

    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :cond_7
    :try_start_7
    sget-object v13, Lr/e0$a;->c:Lr/e0$a;
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    if-ne v5, v13, :cond_a

    :try_start_8
    invoke-virtual {v1}, Lr/e0;->m()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, v1, Lr/e0;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Point;

    new-instance v14, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/CrazyTapKeyActionNode;

    invoke-direct {v14}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/CrazyTapKeyActionNode;-><init>()V

    iput-object v13, v14, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeCoordinateAction;->coordinate:Landroid/graphics/Point;

    invoke-virtual {v1}, Lr/e0;->h()I

    move-result v13

    iput v13, v14, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/CrazyTapKeyActionNode;->clickDuration:I

    invoke-virtual {v1}, Lr/e0;->i()I

    move-result v13

    iput v13, v14, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/CrazyTapKeyActionNode;->clickInterval:I

    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    iget-object v5, v1, Lr/e0;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Point;

    new-instance v14, Lh/a;

    invoke-direct {v14}, Lh/a;-><init>()V

    iput-object v13, v14, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeCoordinateAction;->coordinate:Landroid/graphics/Point;

    invoke-virtual {v1}, Lr/e0;->h()I

    move-result v13

    iput v13, v14, Lh/a;->b:I

    invoke-virtual {v1}, Lr/e0;->i()I

    move-result v13

    iput v13, v14, Lh/a;->c:I

    invoke-virtual {v1}, Lr/e0;->j()Ljava/util/List;

    move-result-object v13

    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Number;

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->values()[Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    move-result-object v17

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    move-result v16

    move-object/from16 p1, v5

    aget-object v5, v17, v16

    invoke-interface {v15, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, p1

    goto :goto_6

    :cond_9
    move-object/from16 p1, v5

    invoke-virtual {v14, v15}, Lh/a;->g(Ljava/util/Set;)V

    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move-object/from16 v5, p1

    goto :goto_5

    :cond_a
    :try_start_9
    sget-object v13, Lr/e0$a;->d:Lr/e0$a;

    if-ne v5, v13, :cond_5

    iget-object v5, v1, Lr/e0;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Point;

    new-instance v14, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/DownUpClickKeyActionNode;

    invoke-direct {v14}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/DownUpClickKeyActionNode;-><init>()V

    iput-object v13, v14, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/KeyActionNodeCoordinateAction;->coordinate:Landroid/graphics/Point;

    invoke-virtual {v1}, Lr/e0;->h()I

    move-result v13
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    move-object/from16 p1, v10

    move-object v15, v11

    int-to-long v10, v13

    :try_start_a
    iput-wide v10, v14, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/DownUpClickKeyActionNode;->clickDuration:J

    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, p1

    move-object v11, v15

    goto :goto_7

    :catch_4
    move-exception v0

    :goto_8
    move-object/from16 v20, p1

    move-object v1, v0

    move-object/from16 v16, v9

    goto/16 :goto_14

    :catch_5
    move-exception v0

    :goto_9
    move-object/from16 v20, p1

    move-object v1, v0

    move-object/from16 v16, v9

    goto/16 :goto_15

    :catch_6
    move-exception v0

    move-object/from16 p1, v10

    move-object v15, v11

    goto :goto_8

    :catch_7
    move-exception v0

    move-object/from16 p1, v10

    move-object v15, v11

    goto :goto_9

    :goto_a
    new-instance v5, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$5;

    invoke-direct {v5, v7, v6, v4}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$5;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;Ljava/util/List;Lf/m;)V

    new-instance v4, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;

    invoke-direct {v4}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;-><init>()V

    iput-object v5, v4, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->triggerKeyActionNode:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/ITouchTriggerable;

    iput-object v2, v4, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->touchRect:Landroid/graphics/Rect;

    iget-boolean v3, v3, Lr/z0;->b:Z

    invoke-virtual {v4, v3}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->setBlockTouch(Z)V

    iget-object v3, v7, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->touchTriggeredNodeWrappers:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$ComponentIndicator;

    iget-object v4, v7, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->indicatorHolder:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$TouchTriggerComponentsIndicatorHolder;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v7, v4}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$ComponentIndicator;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;Landroid/content/Context;)V

    iget-object v4, v7, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->mainHandler:Landroid/os/Handler;

    new-instance v5, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$6;

    invoke-direct {v5, v7, v3, v2, v1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$6;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$ComponentIndicator;Landroid/graphics/Rect;Lr/e0;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_12

    :cond_b
    move-object/from16 p1, v10

    move-object v15, v11

    :try_start_b
    sget-object v2, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->MACRO_SC:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_10

    new-instance v1, Lr/a;

    invoke-direct {v1}, Lr/a;-><init>()V

    new-instance v2, Lr/y;

    invoke-direct {v2}, Lr/y;-><init>()V

    new-instance v3, Lr/z0;

    invoke-direct {v3}, Lr/z0;-><init>()V

    invoke-virtual {v2, v12}, Lr/y;->e(Ljava/util/Map;)V

    invoke-virtual {v1, v12}, Lr/a;->loadFromMap(Ljava/util/Map;)V

    invoke-virtual {v3, v12}, Lr/z0;->loadFromMap(Ljava/util/Map;)V

    iget-object v4, v3, Lr/z0;->a:Lr/z0$a;

    sget-object v5, Lr/z0$a;->a:Lr/z0$a;

    if-eq v4, v5, :cond_c

    move-object/from16 v10, p1

    move-object v11, v15

    goto/16 :goto_1

    :cond_c
    new-instance v10, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroKeyActionNode;

    invoke-direct {v10}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroKeyActionNode;-><init>()V

    iget-object v4, v2, Lr/y;->e:Lr/x$b;

    iput-object v4, v10, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroKeyActionNode;->triggerMode:Lr/x$b;

    const-string v4, "data"

    invoke-interface {v12, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "operationList"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v10, v4}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroKeyActionNode;->parseOperations(Ljava/util/List;)V

    new-instance v11, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;

    invoke-direct {v11}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;-><init>()V

    invoke-virtual {v2}, Lr/y;->b()Landroid/graphics/Rect;

    move-result-object v4

    iput-object v10, v11, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->triggerKeyActionNode:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/ITouchTriggerable;

    iput-object v4, v11, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->touchRect:Landroid/graphics/Rect;

    iget-boolean v3, v3, Lr/z0;->b:Z

    invoke-virtual {v11, v3}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->setBlockTouch(Z)V

    iget-object v3, v7, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->touchTriggeredNodeWrappers:Ljava/util/Set;

    invoke-interface {v3, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$ComponentIndicator;

    iget-object v3, v7, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->indicatorHolder:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$TouchTriggerComponentsIndicatorHolder;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v13, v7, v3}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$ComponentIndicator;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;Landroid/content/Context;)V

    iget-object v3, v7, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->mainHandler:Landroid/os/Handler;

    new-instance v4, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$7;

    invoke-direct {v4, v7, v13, v2}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$7;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$ComponentIndicator;Lr/y;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v1}, Lr/a;->c()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_b
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c

    move-object/from16 v6, p1

    :try_start_c
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    sget-object v3, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->MACRO_TERMINATE_SC:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_e

    new-instance v5, Lr/a;

    invoke-direct {v5}, Lr/a;-><init>()V

    new-instance v4, Lr/C;

    invoke-direct {v4}, Lr/C;-><init>()V

    new-instance v3, Lr/z0;

    invoke-direct {v3}, Lr/z0;-><init>()V

    invoke-virtual {v5, v1}, Lr/a;->loadFromMap(Ljava/util/Map;)V

    invoke-virtual {v4, v1}, Lr/C;->loadFromMap(Ljava/util/Map;)V

    invoke-virtual {v3, v1}, Lr/z0;->loadFromMap(Ljava/util/Map;)V

    new-instance v2, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$ComponentIndicator;

    iget-object v1, v7, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->indicatorHolder:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$TouchTriggerComponentsIndicatorHolder;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v7, v1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$ComponentIndicator;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;Landroid/content/Context;)V

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$8;
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    move-object/from16 p1, v1

    move-object/from16 v1, p1

    move-object/from16 v16, v9

    move-object v9, v2

    move-object/from16 v2, p0

    move-object/from16 v17, v14

    move-object v14, v3

    move-object v3, v10

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object v5, v11

    move-object/from16 v20, v6

    move-object v6, v13

    :try_start_d
    invoke-direct/range {v1 .. v6}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$8;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroKeyActionNode;Lr/C;Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$ComponentIndicator;)V

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;

    invoke-direct {v1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;-><init>()V

    invoke-virtual/range {v19 .. v19}, Lr/a;->b()Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->touchRect:Landroid/graphics/Rect;

    move-object/from16 v2, p1

    iput-object v2, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->triggerKeyActionNode:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/ITouchTriggerable;

    iget-boolean v2, v14, Lr/z0;->b:Z

    iput-boolean v2, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->blockTouch:Z

    iget-object v2, v7, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$9;

    move-object/from16 v4, v19

    invoke-direct {v3, v7, v9, v4}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$9;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$ComponentIndicator;Lr/a;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual/range {v18 .. v18}, Lr/C;->f()Lr/C$a;

    move-result-object v2

    sget-object v3, Lr/C$a;->b:Lr/C$a;

    if-ne v2, v3, :cond_d

    iget-object v2, v7, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$10;

    invoke-direct {v3, v7, v9}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$10;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$ComponentIndicator;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_e

    :catch_8
    move-exception v0

    :goto_c
    move-object v1, v0

    goto/16 :goto_14

    :catch_9
    move-exception v0

    :goto_d
    move-object v1, v0

    goto/16 :goto_15

    :cond_d
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->setDisabled(Z)V

    iget-object v2, v7, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$11;

    invoke-direct {v3, v7, v9}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$11;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$ComponentIndicator;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v2, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$12;

    invoke-direct {v2, v7, v1, v9}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$12;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$ComponentIndicator;)V

    invoke-virtual {v10, v2}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroKeyActionNode;->setStatusListener(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/MacroKeyActionNode$MacroPerformStatusListener;)V

    :goto_e
    iget-object v2, v7, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->touchTriggeredNodeWrappers:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :catch_a
    move-exception v0

    move-object/from16 v20, v6

    :goto_f
    move-object/from16 v16, v9

    goto :goto_c

    :catch_b
    move-exception v0

    move-object/from16 v20, v6

    :goto_10
    move-object/from16 v16, v9

    goto :goto_d

    :cond_e
    move-object/from16 v20, v6

    move-object/from16 v16, v9

    move-object/from16 v17, v14

    :goto_11
    move-object/from16 v9, v16

    move-object/from16 v14, v17

    move-object/from16 p1, v20

    goto/16 :goto_b

    :catch_c
    move-exception v0

    move-object/from16 v20, p1

    goto :goto_f

    :catch_d
    move-exception v0

    move-object/from16 v20, p1

    goto :goto_10

    :cond_f
    :goto_12
    move-object/from16 v20, p1

    move-object/from16 v16, v9

    goto :goto_13

    :cond_10
    move-object/from16 v20, p1

    move-object/from16 v16, v9

    sget-object v2, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->BIND_HORIZONTAL_RECOIL_CONTROL_SC:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_13

    new-instance v1, Lf/e;

    invoke-direct {v1}, Lf/e;-><init>()V

    new-instance v2, Lr/e;

    invoke-direct {v2}, Lr/e;-><init>()V

    new-instance v3, Lr/z0;

    invoke-direct {v3}, Lr/z0;-><init>()V

    invoke-virtual {v1, v12}, Lf/e;->loadFromMap(Ljava/util/Map;)V

    invoke-virtual {v3, v12}, Lr/z0;->loadFromMap(Ljava/util/Map;)V

    invoke-virtual {v2, v12}, Lr/e;->e(Ljava/util/Map;)V

    iget-object v4, v3, Lr/z0;->a:Lr/z0$a;

    sget-object v5, Lr/z0$a;->a:Lr/z0$a;

    if-eq v4, v5, :cond_12

    :cond_11
    :goto_13
    move-object v11, v15

    move-object/from16 v9, v16

    move-object/from16 v10, v20

    goto/16 :goto_1

    :cond_12
    new-instance v4, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchHorizontalRecoilControlStartKeyActionNode;

    invoke-direct {v4}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchHorizontalRecoilControlStartKeyActionNode;-><init>()V

    iget-object v1, v1, Lf/e;->a:Lf/c$a;

    iput-object v1, v4, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/SwitchHorizontalRecoilControlStartKeyActionNode;->enableType:Lf/c$a;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;

    invoke-direct {v1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;-><init>()V

    iput-object v4, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->triggerKeyActionNode:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/ITouchTriggerable;

    invoke-virtual {v2}, Lr/e;->b()Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->touchRect:Landroid/graphics/Rect;

    iget-boolean v3, v3, Lr/z0;->b:Z

    invoke-virtual {v1, v3}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->setBlockTouch(Z)V

    iget-object v3, v7, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->touchTriggeredNodeWrappers:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$ComponentIndicator;

    iget-object v3, v7, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->indicatorHolder:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$TouchTriggerComponentsIndicatorHolder;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v7, v3}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$ComponentIndicator;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;Landroid/content/Context;)V

    iget-object v3, v7, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->mainHandler:Landroid/os/Handler;

    new-instance v4, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$13;

    invoke-direct {v4, v7, v1, v2}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$13;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$ComponentIndicator;Lr/e;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_13

    :cond_13
    sget-object v2, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->GENERAL_RC_SWITCH_CONFIG_SC:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_11

    new-instance v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentProperties/GeneralRCSwitchConfigPropertySC;

    invoke-direct {v1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentProperties/GeneralRCSwitchConfigPropertySC;-><init>()V

    new-instance v2, Lr/e;

    invoke-direct {v2}, Lr/e;-><init>()V

    new-instance v3, Lr/z0;

    invoke-direct {v3}, Lr/z0;-><init>()V

    invoke-virtual {v1, v12}, Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentProperties/GeneralRCSwitchConfigPropertySC;->loadFromMap(Ljava/util/Map;)V

    invoke-virtual {v3, v12}, Lr/z0;->loadFromMap(Ljava/util/Map;)V

    invoke-virtual {v2, v12}, Lr/e;->e(Ljava/util/Map;)V

    new-instance v4, Lcom/zjx/jyandroid/Extensions/GeneralRC/KeyActionNodes/GeneralRCSwitchConfigKeyActionNode;

    invoke-direct {v4}, Lcom/zjx/jyandroid/Extensions/GeneralRC/KeyActionNodes/GeneralRCSwitchConfigKeyActionNode;-><init>()V

    iget v5, v1, Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentProperties/GeneralRCSwitchConfigPropertySC;->switchToIndex:I

    iput v5, v4, Lcom/zjx/jyandroid/Extensions/GeneralRC/KeyActionNodes/GeneralRCSwitchConfigKeyActionNode;->switchToIndex:I

    new-instance v5, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;

    invoke-direct {v5}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;-><init>()V

    iput-object v4, v5, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->triggerKeyActionNode:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/KeyActionNodes/base/ITouchTriggerable;

    invoke-virtual {v2}, Lr/e;->b()Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, v5, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->touchRect:Landroid/graphics/Rect;

    iget-boolean v3, v3, Lr/z0;->b:Z

    invoke-virtual {v5, v3}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->setBlockTouch(Z)V

    iget-object v3, v7, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->touchTriggeredNodeWrappers:Ljava/util/Set;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$ComponentIndicator;

    iget-object v4, v7, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->indicatorHolder:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$TouchTriggerComponentsIndicatorHolder;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v7, v4}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$ComponentIndicator;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;Landroid/content/Context;)V

    iget-object v4, v7, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->mainHandler:Landroid/os/Handler;

    new-instance v5, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$14;

    invoke-direct {v5, v7, v3, v2, v1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$14;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$ComponentIndicator;Lr/e;Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentProperties/GeneralRCSwitchConfigPropertySC;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    goto/16 :goto_13

    :catch_e
    move-exception v0

    move-object/from16 v16, v9

    move-object/from16 v20, v10

    move-object v15, v11

    goto/16 :goto_c

    :catch_f
    move-exception v0

    move-object/from16 v16, v9

    move-object/from16 v20, v10

    move-object v15, v11

    goto/16 :goto_d

    :goto_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyInputManager: \u9519\u8bef\u3002componentInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ly/c;->b(Ljava/lang/String;)V

    goto/16 :goto_13

    :goto_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyInputManager: \u6620\u5c04\u56fe\u9519\u8bef\u3002componentInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ly/c;->b(Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public clearIndicatorView()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$3;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$3;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public eventOccurred(Ljava/util/LinkedList;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/zjx/jyandroid/base/InputEvents/InputEvent;",
            ">;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->enabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;

    invoke-virtual {v2}, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;->getType()Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    move-result-object v4

    sget-object v5, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->TouchEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    if-ne v4, v5, :cond_1

    check-cast v2, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;

    iget-object v4, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->touchHandler:Ljava/util/List;

    iget v5, v2, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->index:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    iget-object v5, v2, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->touchType:Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    sget-object v6, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;->move:Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    if-ne v5, v6, :cond_2

    iget-object v3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->fingerIndexToBlockingTouchStateMap:[Z

    iget v2, v2, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->index:I

    aget-boolean v2, v3, v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v1

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;

    iget-object v9, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->nodeExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v10, v2, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->touchType:Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    iget v11, v2, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->index:I

    iget v12, v2, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->x:F

    iget v13, v2, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->y:F

    invoke-virtual/range {v8 .. v13}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->touchOccurred(Ljava/util/concurrent/ExecutorService;Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;IFF)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v6, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->fingerIndexToBlockingTouchStateMap:[Z

    iget v7, v2, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->index:I

    aput-boolean v3, v6, v7

    move v6, v3

    goto :goto_1

    :cond_4
    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    :cond_5
    iget-object v3, v2, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->touchType:Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    sget-object v5, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;->up:Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    if-ne v3, v5, :cond_1

    iget-object v3, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->fingerIndexToBlockingTouchStateMap:[Z

    iget v2, v2, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->index:I

    aput-boolean v1, v3, v2

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    goto :goto_0

    :cond_6
    iget-object v5, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->touchTriggeredNodeWrappers:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v1

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;

    invoke-virtual {v7}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->isReceiveOutsideEvents()Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, v7, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->touchRect:Landroid/graphics/Rect;

    new-instance v9, Lcom/zjx/jyandroid/base/FloatPoint;

    iget v10, v2, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->x:F

    iget v11, v2, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->y:F

    invoke-direct {v9, v10, v11}, Lcom/zjx/jyandroid/base/FloatPoint;-><init>(FF)V

    invoke-static {v8, v9}, Lcom/zjx/jyandroid/base/util/b;->E(Landroid/graphics/Rect;Lcom/zjx/jyandroid/base/FloatPoint;)Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_7
    iget-object v9, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->nodeExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v10, v2, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->touchType:Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    iget v11, v2, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->index:I

    iget v12, v2, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->x:F

    iget v13, v2, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->y:F

    move-object v8, v7

    invoke-virtual/range {v8 .. v13}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchTriggeredNodeWrapper;->touchOccurred(Ljava/util/concurrent/ExecutorService;Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;IFF)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v6, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->fingerIndexToBlockingTouchStateMap:[Z

    iget v8, v2, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->index:I

    aput-boolean v3, v6, v8

    move v6, v3

    :cond_8
    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-nez p1, :cond_b

    move v1, v3

    :cond_b
    return v1
.end method

.method public hideIndicatorView()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->indicatorHolder:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$TouchTriggerComponentsIndicatorHolder;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$2;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$2;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->enabled:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->enabled:Z

    if-eqz p1, :cond_0

    invoke-static {}, Ly/d;->C()Ly/d;

    move-result-object p1

    invoke-virtual {p1}, Ly/d;->l()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->showIndicatorView()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->hideIndicatorView()V

    :cond_1
    :goto_0
    return-void
.end method

.method public showIndicatorView()V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->indicatorHolder:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$TouchTriggerComponentsIndicatorHolder;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->j()Landroid/util/Size;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$1;

    invoke-direct {v2, p0, v0}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$1;-><init>(Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;Landroid/util/Size;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateComponentIndicatorStyle()V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->indicatorHolder:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$TouchTriggerComponentsIndicatorHolder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->indicatorHolder:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$TouchTriggerComponentsIndicatorHolder;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager;->indicatorHolder:Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$TouchTriggerComponentsIndicatorHolder;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$ComponentIndicator;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$ComponentIndicator;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/ForegroundService/Backboardd/InputManagers/TouchInputEventManager$ComponentIndicator;->updateBorderDashStyle()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
