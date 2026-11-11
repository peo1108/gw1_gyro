.class public final Lmdm/LocalKeymapStore;
.super Ljava/lang/Object;
.source "LocalKeymapStore.java"


# static fields
.field static final DEFAULT_RECOIL:[D

.field static final GSON:Lcom/google/gson/Gson;

.field static final MAIN:Landroid/os/Handler;

.field static final PUBG_RC_BUNDLE:Ljava/lang/String; = "com.zjx.pubg.rcConfig"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lmdm/LocalKeymapStore;->GSON:Lcom/google/gson/Gson;

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lmdm/LocalKeymapStore;->MAIN:Landroid/os/Handler;

    .line 220
    const/16 v0, 0x8

    new-array v0, v0, [D

    fill-array-data v0, :array_1c

    sput-object v0, Lmdm/LocalKeymapStore;->DEFAULT_RECOIL:[D

    return-void

    :array_1c
    .array-data 8
        0x4028000000000000L    # 12.0
        0x4034000000000000L    # 20.0
        0x4036000000000000L    # 22.0
        0x4050800000000000L    # 66.0
        0x4059000000000000L    # 100.0
        0x4050800000000000L    # 66.0
        0x4050800000000000L    # 66.0
        0x4059000000000000L    # 100.0
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyDefaultRecoil(Ljava/util/Map;)V
    .registers 6

    .line 229
    if-nez p0, :cond_3

    return-void

    .line 230
    :cond_3
    const-string v0, "recoil_data"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 231
    instance-of v0, p0, Ljava/util/List;

    if-nez v0, :cond_e

    return-void

    .line 232
    :cond_e
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 233
    instance-of v1, v0, Ljava/util/Map;

    if-nez v1, :cond_23

    goto :goto_14

    .line 234
    :cond_23
    check-cast v0, Ljava/util/Map;

    const-string v1, "v"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 235
    instance-of v1, v0, Ljava/util/List;

    if-nez v1, :cond_30

    goto :goto_14

    .line 236
    :cond_30
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_36
    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 237
    instance-of v2, v1, Ljava/util/Map;

    if-nez v2, :cond_45

    goto :goto_36

    .line 238
    :cond_45
    check-cast v1, Ljava/util/Map;

    .line 239
    const-string v2, "scope"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 240
    instance-of v3, v2, Ljava/lang/Number;

    if-nez v3, :cond_52

    goto :goto_36

    .line 241
    :cond_52
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 242
    if-ltz v2, :cond_36

    sget-object v3, Lmdm/LocalKeymapStore;->DEFAULT_RECOIL:[D

    array-length v3, v3

    if-lt v2, v3, :cond_60

    goto :goto_36

    .line 243
    :cond_60
    const-string v3, "recoilValue"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 244
    instance-of v3, v1, Ljava/util/List;

    if-nez v3, :cond_6b

    goto :goto_36

    .line 245
    :cond_6b
    check-cast v1, Ljava/util/List;

    .line 246
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_74

    goto :goto_36

    .line 247
    :cond_74
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 248
    instance-of v3, v1, Ljava/util/List;

    if-nez v3, :cond_7e

    goto :goto_36

    .line 249
    :cond_7e
    check-cast v1, Ljava/util/List;

    .line 250
    :goto_80
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_91

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_80

    .line 251
    :cond_91
    sget-object v3, Lmdm/LocalKeymapStore;->DEFAULT_RECOIL:[D

    aget-wide v2, v3, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 252
    goto :goto_36

    .line 253
    :cond_9e
    goto/16 :goto_14

    .line 254
    :cond_a0
    return-void
.end method

.method static baseDir()Ljava/io/File;
    .registers 3

    .line 41
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "mdm_keymaps"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 43
    :cond_18
    new-instance v1, Ljava/io/File;

    const-string v2, "content"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_28

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 45
    :cond_28
    return-object v0
.end method

.method static bool(Ljava/lang/Object;)Z
    .registers 2

    .line 133
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method static buildList(Ljava/util/Map;Ljava/lang/String;)Ljava/util/LinkedList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList;"
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 157
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lmdm/LocalKeymapStore;->bundle(Ljava/util/Map;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p0

    .line 158
    if-eqz p0, :cond_40

    .line 159
    invoke-static {p0}, Lmdm/LocalKeymapStore;->items(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 160
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/util/Map;

    if-eqz v2, :cond_3f

    .line 161
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {v2, p1, v1}, Lmdm/LocalKeymapStore;->toInfo(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_3f
    goto :goto_18

    .line 165
    :cond_40
    return-object v0
.end method

.method static bundle(Ljava/util/Map;Ljava/lang/String;Z)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 101
    invoke-static {p0}, Lmdm/LocalKeymapStore;->bundles(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    .line 102
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 103
    instance-of v1, v0, Ljava/util/Map;

    const-string v2, "items"

    if-eqz v1, :cond_21

    .line 104
    check-cast v0, Ljava/util/Map;

    .line 105
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Ljava/util/Map;

    if-nez p0, :cond_20

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_20
    return-object v0

    .line 108
    :cond_21
    const/4 v0, 0x0

    if-nez p2, :cond_25

    return-object v0

    .line 109
    :cond_25
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 110
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v1, "selected"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-object p2
.end method

.method static bundleOf(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 121
    invoke-static {p0}, Lmdm/LocalKeymapStore;->bundles(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 122
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 123
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_3b

    .line 124
    check-cast v1, Ljava/util/Map;

    const-string v2, "items"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 125
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_3b

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 127
    :cond_3b
    goto :goto_c

    .line 128
    :cond_3c
    const/4 p0, 0x0

    return-object p0
.end method

.method static bundles(Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 97
    const-string v0, "bundles"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method static contentFile(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .line 50
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lmdm/LocalKeymapStore;->baseDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "content"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, ".json"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static createCommon(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;)V
    .registers 11

    .line 414
    invoke-static {}, Lmdm/LocalKeymapStore;->newId()Ljava/lang/String;

    move-result-object v0

    .line 415
    if-nez p2, :cond_1c

    .line 416
    const-string p2, "com.zjx.pubg.rcConfig"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13

    invoke-static {}, Lmdm/LocalKeymapStore;->defaultRcContent()Ljava/util/Map;

    move-result-object p2

    goto :goto_14

    :cond_13
    const/4 p2, 0x0

    .line 417
    :goto_14
    if-eqz p2, :cond_17

    goto :goto_1c

    :cond_17
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 420
    :cond_1c
    :goto_1c
    nop

    .line 421
    nop

    .line 423
    const/4 v1, 0x0

    :try_start_1f
    invoke-static {p2}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->q(Ljava/util/Map;)Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapContentInfo;

    move-result-object v2

    .line 424
    if-eqz v2, :cond_2d

    .line 425
    if-nez p1, :cond_29

    iget-object p1, v2, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapContentInfo;->name:Ljava/lang/String;

    .line 426
    :cond_29
    iget v1, v2, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapContentInfo;->componentCount:I
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_2c

    goto :goto_2d

    .line 428
    :catchall_2c
    move-exception v2

    :cond_2d
    :goto_2d
    nop

    .line 430
    invoke-static {v0}, Lmdm/LocalKeymapStore;->contentFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    sget-object v3, Lmdm/LocalKeymapStore;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v3, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmdm/LocalKeymapStore;->writeFile(Ljava/io/File;Ljava/lang/String;)V

    .line 432
    invoke-static {}, Lmdm/LocalKeymapStore;->loadIndex()Ljava/util/Map;

    move-result-object v2

    .line 433
    const/4 v3, 0x1

    invoke-static {v2, p3, v3}, Lmdm/LocalKeymapStore;->bundle(Ljava/util/Map;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v3

    .line 434
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 435
    const-string v5, "name"

    invoke-interface {v4, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    const-string p1, "bundleId"

    invoke-interface {v4, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    const-string p1, "isOfficial"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v4, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    const-string p1, "componentCount"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    const-string p1, "forPhone"

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const-string p1, "updateTime"

    invoke-static {}, Lmdm/LocalKeymapStore;->now()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    invoke-static {v3}, Lmdm/LocalKeymapStore;->items(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    invoke-static {v2}, Lmdm/LocalKeymapStore;->saveIndex(Ljava/util/Map;)V

    .line 444
    invoke-static {v2, p3}, Lmdm/LocalKeymapStore;->buildList(Ljava/util/Map;Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object p1

    const-string v1, "selected"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lmdm/LocalKeymapStore;->str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p3, p1, v1}, Lmdm/LocalKeymapStore;->syncBundleCache(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Ljava/lang/String;Ljava/util/LinkedList;Ljava/lang/String;)V

    .line 445
    invoke-static {p0, v0, p2}, Lmdm/LocalKeymapStore;->putContentCache(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Ljava/lang/String;Ljava/util/Map;)V

    .line 446
    invoke-static {p3, v0, p2}, Lmdm/LocalKeymapStore;->mirrorRc(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 447
    new-instance p0, Lmdm/LocalKeymapStore$3;

    invoke-direct {p0, p4, v0}, Lmdm/LocalKeymapStore$3;-><init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;Ljava/lang/String;)V

    invoke-static {p0}, Lmdm/LocalKeymapStore;->post(Ljava/lang/Runnable;)V

    .line 448
    return-void
.end method

.method public static createNamed(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;)V
    .registers 5

    .line 403
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lmdm/LocalKeymapStore;->createCommon(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;)V

    .line 404
    return-void
.end method

.method public static createWithContent(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Ljava/util/Map;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;)V
    .registers 5

    .line 408
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lmdm/LocalKeymapStore;->createCommon(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;)V

    .line 409
    return-void
.end method

.method static defaultRcContent()Ljava/util/Map;
    .registers 1

    .line 258
    :try_start_0
    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/g;->f()Ljava/util/Map;

    move-result-object v0

    .line 259
    invoke-static {v0}, Lmdm/LocalKeymapStore;->applyDefaultRecoil(Ljava/util/Map;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    .line 260
    return-object v0

    .line 261
    :catchall_8
    move-exception v0

    .line 262
    const/4 v0, 0x0

    return-object v0
.end method

.method public static deleteKeymap(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$DeleteKeymapCompletionHandler;)V
    .registers 8

    .line 481
    invoke-static {}, Lmdm/LocalKeymapStore;->loadIndex()Ljava/util/Map;

    move-result-object v0

    .line 482
    invoke-static {v0, p1}, Lmdm/LocalKeymapStore;->bundleOf(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 483
    if-eqz v1, :cond_3c

    .line 484
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmdm/LocalKeymapStore;->bundle(Ljava/util/Map;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v2

    .line 485
    invoke-static {v2}, Lmdm/LocalKeymapStore;->items(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    const-string v3, "selected"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lmdm/LocalKeymapStore;->str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    :cond_2a
    invoke-static {v0}, Lmdm/LocalKeymapStore;->saveIndex(Ljava/util/Map;)V

    .line 488
    invoke-static {v0, v1}, Lmdm/LocalKeymapStore;->buildList(Ljava/util/Map;Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lmdm/LocalKeymapStore;->str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v0, v2}, Lmdm/LocalKeymapStore;->syncBundleCache(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Ljava/lang/String;Ljava/util/LinkedList;Ljava/lang/String;)V

    .line 490
    :cond_3c
    :try_start_3c
    invoke-static {p1}, Lmdm/LocalKeymapStore;->contentFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_44

    goto :goto_45

    :catchall_44
    move-exception v0

    .line 491
    :goto_45
    invoke-static {v1, p1}, Lmdm/LocalKeymapStore;->removeRcFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    invoke-static {p0, p1}, Lmdm/LocalKeymapStore;->dropContentCache(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Ljava/lang/String;)V

    .line 493
    new-instance p0, Lmdm/LocalKeymapStore$5;

    invoke-direct {p0, p2}, Lmdm/LocalKeymapStore$5;-><init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$DeleteKeymapCompletionHandler;)V

    invoke-static {p0}, Lmdm/LocalKeymapStore;->post(Ljava/lang/Runnable;)V

    .line 494
    return-void
.end method

.method static dropContentCache(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Ljava/lang/String;)V
    .registers 2

    .line 186
    :try_start_0
    invoke-static {p0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->a(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_9

    :catchall_8
    move-exception p0

    .line 187
    :goto_9
    return-void
.end method

.method public static getConfigContentById(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetConfigContentByIdCompletionHandler;)V
    .registers 3

    .line 537
    invoke-static {p1}, Lmdm/LocalKeymapStore;->contentFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lmdm/LocalKeymapStore;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    .line 538
    new-instance p1, Lmdm/LocalKeymapStore$8;

    invoke-direct {p1, p2, p0}, Lmdm/LocalKeymapStore$8;-><init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetConfigContentByIdCompletionHandler;Ljava/lang/String;)V

    invoke-static {p1}, Lmdm/LocalKeymapStore;->post(Ljava/lang/Runnable;)V

    .line 539
    return-void
.end method

.method public static getKeymap(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapCompletionHandler;)V
    .registers 9

    .line 375
    invoke-static {}, Lmdm/LocalKeymapStore;->loadIndex()Ljava/util/Map;

    move-result-object v0

    .line 376
    invoke-static {v0, p1}, Lmdm/LocalKeymapStore;->bundleOf(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 378
    nop

    .line 379
    invoke-static {p1}, Lmdm/LocalKeymapStore;->contentFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lmdm/LocalKeymapStore;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 380
    const/4 v3, 0x0

    if-eqz v2, :cond_20

    .line 381
    :try_start_14
    sget-object v4, Lmdm/LocalKeymapStore;->GSON:Lcom/google/gson/Gson;

    const-class v5, Ljava/util/HashMap;

    invoke-virtual {v4, v2, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_1f

    goto :goto_21

    :catchall_1f
    move-exception v2

    .line 383
    :cond_20
    move-object v2, v3

    :goto_21
    if-nez v2, :cond_28

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 386
    :cond_28
    if-nez v1, :cond_2c

    move-object v0, v3

    goto :goto_31

    :cond_2c
    const/4 v4, 0x0

    invoke-static {v0, v1, v4}, Lmdm/LocalKeymapStore;->bundle(Ljava/util/Map;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    .line 387
    :goto_31
    if-nez v0, :cond_34

    goto :goto_3c

    :cond_34
    invoke-static {v0}, Lmdm/LocalKeymapStore;->items(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 388
    :goto_3c
    instance-of v0, v3, Ljava/util/Map;

    if-eqz v0, :cond_47

    .line 389
    check-cast v3, Ljava/util/Map;

    invoke-static {p1, v1, v3}, Lmdm/LocalKeymapStore;->toInfo(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;

    move-result-object v0

    goto :goto_50

    .line 391
    :cond_47
    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;

    invoke-direct {v0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;-><init>()V

    .line 392
    iput-object p1, v0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;->id:Ljava/lang/String;

    .line 393
    iput-object v1, v0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;->bundleId:Ljava/lang/String;

    .line 396
    :goto_50
    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;

    invoke-direct {v1, v0, v2}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;-><init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;Ljava/util/Map;)V

    .line 397
    invoke-static {p0, p1, v2}, Lmdm/LocalKeymapStore;->putContentCache(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Ljava/lang/String;Ljava/util/Map;)V

    .line 398
    new-instance p0, Lmdm/LocalKeymapStore$2;

    invoke-direct {p0, p2, v1}, Lmdm/LocalKeymapStore$2;-><init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapCompletionHandler;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;)V

    invoke-static {p0}, Lmdm/LocalKeymapStore;->post(Ljava/lang/Runnable;)V

    .line 399
    return-void
.end method

.method public static getKeymapList(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapListCompletionHandler;)V
    .registers 7

    .line 363
    invoke-static {}, Lmdm/LocalKeymapStore;->loadIndex()Ljava/util/Map;

    move-result-object p2

    .line 364
    invoke-static {p2, p1}, Lmdm/LocalKeymapStore;->buildList(Ljava/util/Map;Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    .line 365
    const/4 v1, 0x0

    invoke-static {p2, p1, v1}, Lmdm/LocalKeymapStore;->bundle(Ljava/util/Map;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v1

    .line 366
    if-nez v1, :cond_11

    const/4 v1, 0x0

    goto :goto_1b

    :cond_11
    const-string v2, "selected"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lmdm/LocalKeymapStore;->str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 367
    :goto_1b
    invoke-static {p0, p2, p1, v1}, Lmdm/LocalKeymapStore;->healAndMirrorSelectedRc(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-static {p0, p1, v0, v1}, Lmdm/LocalKeymapStore;->syncBundleCache(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Ljava/lang/String;Ljava/util/LinkedList;Ljava/lang/String;)V

    .line 369
    new-instance p0, Lmdm/LocalKeymapStore$1;

    invoke-direct {p0, p3, v0, v1}, Lmdm/LocalKeymapStore$1;-><init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapListCompletionHandler;Ljava/util/LinkedList;Ljava/lang/String;)V

    invoke-static {p0}, Lmdm/LocalKeymapStore;->post(Ljava/lang/Runnable;)V

    .line 370
    return-void
.end method

.method static hasRecoilData(Ljava/util/Map;)Z
    .registers 3

    .line 210
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 211
    :cond_4
    const-string v1, "recoil_data"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 212
    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_17

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0
.end method

.method static healAndMirrorSelectedRc(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zjx/jyandroid/ForegroundService/KeymapManager;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 324
    const-string v0, "com.zjx.pubg.rcConfig"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    if-nez p3, :cond_c

    goto/16 :goto_91

    .line 325
    :cond_c
    invoke-static {p2, p3}, Lmdm/LocalKeymapStore;->rcFileExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 326
    invoke-static {p3}, Lmdm/LocalKeymapStore;->readContent(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_32

    .line 327
    invoke-static {p2, p3}, Lmdm/LocalKeymapStore;->readRcFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 328
    invoke-static {p1}, Lmdm/LocalKeymapStore;->hasRecoilData(Ljava/util/Map;)Z

    move-result p2

    if-eqz p2, :cond_32

    .line 329
    invoke-static {p3}, Lmdm/LocalKeymapStore;->contentFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    sget-object v0, Lmdm/LocalKeymapStore;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lmdm/LocalKeymapStore;->writeFile(Ljava/io/File;Ljava/lang/String;)V

    .line 330
    invoke-static {p0, p3, p1}, Lmdm/LocalKeymapStore;->putContentCache(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Ljava/lang/String;Ljava/util/Map;)V

    .line 333
    :cond_32
    return-void

    .line 335
    :cond_33
    invoke-static {p3}, Lmdm/LocalKeymapStore;->readContent(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 336
    invoke-static {v0}, Lmdm/LocalKeymapStore;->hasRecoilData(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_8d

    .line 337
    invoke-static {}, Lmdm/LocalKeymapStore;->defaultRcContent()Ljava/util/Map;

    move-result-object v1

    .line 338
    if-eqz v1, :cond_8d

    .line 339
    nop

    .line 340
    invoke-static {p3}, Lmdm/LocalKeymapStore;->contentFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sget-object v2, Lmdm/LocalKeymapStore;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmdm/LocalKeymapStore;->writeFile(Ljava/io/File;Ljava/lang/String;)V

    .line 342
    const/4 v0, 0x1

    :try_start_52
    invoke-static {p1, p2, v0}, Lmdm/LocalKeymapStore;->bundle(Ljava/util/Map;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    .line 343
    invoke-static {v0}, Lmdm/LocalKeymapStore;->items(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 344
    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_88

    .line 345
    invoke-static {v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->q(Ljava/util/Map;)Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapContentInfo;

    move-result-object v2

    .line 346
    if-eqz v2, :cond_83

    .line 347
    iget-object v3, v2, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapContentInfo;->name:Ljava/lang/String;

    if-eqz v3, :cond_76

    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    const-string v4, "name"

    iget-object v5, v2, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapContentInfo;->name:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    :cond_76
    check-cast v0, Ljava/util/Map;

    const-string v3, "componentCount"

    iget v2, v2, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapContentInfo;->componentCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    :cond_83
    invoke-static {p1}, Lmdm/LocalKeymapStore;->saveIndex(Ljava/util/Map;)V
    :try_end_86
    .catchall {:try_start_52 .. :try_end_86} :catchall_87

    goto :goto_88

    .line 352
    :catchall_87
    move-exception p1

    :cond_88
    :goto_88
    nop

    .line 353
    invoke-static {p0, p3, v1}, Lmdm/LocalKeymapStore;->putContentCache(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Ljava/lang/String;Ljava/util/Map;)V

    move-object v0, v1

    .line 356
    :cond_8d
    invoke-static {p2, p3, v0}, Lmdm/LocalKeymapStore;->mirrorRc(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 357
    return-void

    .line 324
    :cond_91
    :goto_91
    return-void
.end method

.method static indexFile()Ljava/io/File;
    .registers 3

    .line 48
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmdm/LocalKeymapStore;->baseDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "index.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static intOf(Ljava/lang/Object;)I
    .registers 2

    .line 134
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method static items(Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 117
    const-string v0, "items"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method static loadIndex()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 84
    invoke-static {}, Lmdm/LocalKeymapStore;->indexFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lmdm/LocalKeymapStore;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 85
    nop

    .line 86
    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 87
    :try_start_c
    sget-object v2, Lmdm/LocalKeymapStore;->GSON:Lcom/google/gson/Gson;

    const-class v3, Ljava/util/HashMap;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_18

    move-object v1, v0

    goto :goto_19

    :catchall_18
    move-exception v0

    .line 89
    :cond_19
    :goto_19
    if-nez v1, :cond_20

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 90
    :cond_20
    const-string v0, "bundles"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/util/Map;

    if-nez v2, :cond_32

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_32
    return-object v1
.end method

.method static mirrorRc(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 7

    .line 280
    invoke-static {p0, p1}, Lmdm/LocalKeymapStore;->rcFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 281
    if-eqz p0, :cond_3b

    if-nez p2, :cond_9

    goto :goto_3b

    .line 283
    :cond_9
    :try_start_9
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1f

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_1f

    return-void

    .line 285
    :cond_1f
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    .line 286
    if-eqz p0, :cond_2e

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 287
    :cond_2e
    sget-object p0, Lmdm/LocalKeymapStore;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {p0, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lmdm/LocalKeymapStore;->writeFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_9 .. :try_end_37} :catchall_38

    goto :goto_39

    .line 288
    :catchall_38
    move-exception p0

    :goto_39
    nop

    .line 289
    return-void

    .line 281
    :cond_3b
    :goto_3b
    return-void
.end method

.method static newId()Ljava/lang/String;
    .registers 5

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x4170000000000000L    # 1.6777216E7

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static now()Ljava/lang/String;
    .registers 2

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static post(Ljava/lang/Runnable;)V
    .registers 2

    .line 190
    :try_start_0
    sget-object v0, Lmdm/LocalKeymapStore;->MAIN:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    goto :goto_a

    :catchall_6
    move-exception v0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 191
    :goto_a
    return-void
.end method

.method static putContentCache(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Ljava/lang/String;Ljava/util/Map;)V
    .registers 3

    .line 181
    :try_start_0
    invoke-static {p0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->a(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_9

    :catchall_8
    move-exception p0

    .line 182
    :goto_9
    return-void
.end method

.method static rcFileExists(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 292
    invoke-static {p0, p1}, Lmdm/LocalKeymapStore;->rcFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 293
    const/4 p1, 0x0

    if-nez p0, :cond_8

    return p1

    .line 295
    :cond_8
    :try_start_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1e

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_1f

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_1e

    const/4 p1, 0x1

    :cond_1e
    return p1

    .line 297
    :catchall_1f
    move-exception p0

    .line 298
    return p1
.end method

.method static rcFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 201
    const-string v0, "com.zjx.pubg.rcConfig"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 202
    invoke-static {}, Lcom/zjx/jyandroid/App;->getAppDocumentFolder()Ljava/lang/String;

    move-result-object p0

    .line 203
    if-eqz p0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "/pubg_extension/RCConfig/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 205
    :cond_26
    const/4 p0, 0x0

    return-object p0
.end method

.method static readContent(Ljava/lang/String;)Ljava/util/Map;
    .registers 4

    .line 268
    invoke-static {p0}, Lmdm/LocalKeymapStore;->contentFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lmdm/LocalKeymapStore;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    .line 269
    const/4 v0, 0x0

    if-nez p0, :cond_c

    return-object v0

    .line 270
    :cond_c
    :try_start_c
    sget-object v1, Lmdm/LocalKeymapStore;->GSON:Lcom/google/gson/Gson;

    const-class v2, Ljava/util/HashMap;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_17

    return-object p0

    :catchall_17
    move-exception p0

    return-object v0
.end method

.method static readFile(Ljava/io/File;)Ljava/lang/String;
    .registers 7

    .line 53
    const/4 v0, 0x0

    if-eqz p0, :cond_3f

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_3f

    .line 54
    :cond_a
    nop

    .line 56
    :try_start_b
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_34

    .line 57
    :try_start_10
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int p0, v2

    .line 58
    new-array v2, p0, [B

    .line 59
    const/4 v3, 0x0

    move v4, v3

    .line 60
    :goto_19
    if-ge v4, p0, :cond_25

    sub-int v5, p0, v4

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    if-lez v5, :cond_25

    add-int/2addr v4, v5

    goto :goto_19

    .line 61
    :cond_25
    new-instance p0, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {p0, v2, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_10 .. :try_end_2c} :catchall_32

    .line 65
    :try_start_2c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    goto :goto_31

    :catchall_30
    move-exception v0

    .line 61
    :goto_31
    return-object p0

    .line 62
    :catchall_32
    move-exception p0

    goto :goto_36

    :catchall_34
    move-exception p0

    move-object v1, v0

    .line 63
    :goto_36
    nop

    .line 65
    if-eqz v1, :cond_3e

    :try_start_39
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_3e

    :catchall_3d
    move-exception p0

    .line 63
    :cond_3e
    :goto_3e
    return-object v0

    .line 53
    :cond_3f
    :goto_3f
    return-object v0
.end method

.method static readRcFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 4

    .line 305
    invoke-static {p0, p1}, Lmdm/LocalKeymapStore;->rcFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 306
    const/4 p1, 0x0

    if-nez p0, :cond_8

    return-object p1

    .line 307
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lmdm/LocalKeymapStore;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    .line 308
    if-eqz p0, :cond_27

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_27

    .line 309
    :cond_1a
    :try_start_1a
    sget-object v0, Lmdm/LocalKeymapStore;->GSON:Lcom/google/gson/Gson;

    const-class v1, Ljava/util/HashMap;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_25

    return-object p0

    :catchall_25
    move-exception p0

    return-object p1

    .line 308
    :cond_27
    :goto_27
    return-object p1
.end method

.method static removeRcFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 313
    invoke-static {p0, p1}, Lmdm/LocalKeymapStore;->rcFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 314
    if-nez p0, :cond_7

    return-void

    .line 315
    :cond_7
    :try_start_7
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_10

    goto :goto_11

    :catchall_10
    move-exception p0

    .line 316
    :goto_11
    return-void
.end method

.method public static renameKeymap(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$RenameKeymapCompletionHandler;)V
    .registers 9

    .line 499
    invoke-static {}, Lmdm/LocalKeymapStore;->loadIndex()Ljava/util/Map;

    move-result-object v0

    .line 500
    invoke-static {v0, p1}, Lmdm/LocalKeymapStore;->bundleOf(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 501
    if-eqz v1, :cond_3f

    .line 502
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmdm/LocalKeymapStore;->bundle(Ljava/util/Map;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v2

    .line 503
    invoke-static {v2}, Lmdm/LocalKeymapStore;->items(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 504
    instance-of v4, v3, Ljava/util/Map;

    if-eqz v4, :cond_2b

    .line 505
    check-cast v3, Ljava/util/Map;

    const-string v4, "name"

    invoke-interface {v3, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    const-string p2, "updateTime"

    invoke-static {}, Lmdm/LocalKeymapStore;->now()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    :cond_2b
    invoke-static {v0}, Lmdm/LocalKeymapStore;->saveIndex(Ljava/util/Map;)V

    .line 509
    invoke-static {v0, v1}, Lmdm/LocalKeymapStore;->buildList(Ljava/util/Map;Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object p2

    const-string v0, "selected"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lmdm/LocalKeymapStore;->str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, p2, v0}, Lmdm/LocalKeymapStore;->syncBundleCache(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Ljava/lang/String;Ljava/util/LinkedList;Ljava/lang/String;)V

    .line 511
    :cond_3f
    invoke-static {p0, p1}, Lmdm/LocalKeymapStore;->dropContentCache(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Ljava/lang/String;)V

    .line 512
    new-instance p0, Lmdm/LocalKeymapStore$6;

    invoke-direct {p0, p3}, Lmdm/LocalKeymapStore$6;-><init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$RenameKeymapCompletionHandler;)V

    invoke-static {p0}, Lmdm/LocalKeymapStore;->post(Ljava/lang/Runnable;)V

    .line 513
    return-void
.end method

.method static saveIndex(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 94
    invoke-static {}, Lmdm/LocalKeymapStore;->indexFile()Ljava/io/File;

    move-result-object v0

    sget-object v1, Lmdm/LocalKeymapStore;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lmdm/LocalKeymapStore;->writeFile(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public static setSelected(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$SetSelectedKeymapCompletionHandler;)V
    .registers 7

    .line 517
    invoke-static {}, Lmdm/LocalKeymapStore;->loadIndex()Ljava/util/Map;

    move-result-object v0

    .line 518
    invoke-static {v0, p1}, Lmdm/LocalKeymapStore;->bundleOf(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 519
    if-eqz v1, :cond_37

    .line 520
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmdm/LocalKeymapStore;->bundle(Ljava/util/Map;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v2

    .line 521
    const-string v3, "selected"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    invoke-static {v0}, Lmdm/LocalKeymapStore;->saveIndex(Ljava/util/Map;)V

    .line 525
    invoke-static {v1, p1}, Lmdm/LocalKeymapStore;->rcFileExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 526
    invoke-static {p1}, Lmdm/LocalKeymapStore;->readContent(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 527
    invoke-static {v2}, Lmdm/LocalKeymapStore;->hasRecoilData(Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_2b

    invoke-static {}, Lmdm/LocalKeymapStore;->defaultRcContent()Ljava/util/Map;

    move-result-object v2

    .line 528
    :cond_2b
    if-eqz v2, :cond_30

    invoke-static {v1, p1, v2}, Lmdm/LocalKeymapStore;->mirrorRc(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 530
    :cond_30
    invoke-static {v0, v1}, Lmdm/LocalKeymapStore;->buildList(Ljava/util/Map;Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-static {p0, v1, v0, p1}, Lmdm/LocalKeymapStore;->syncBundleCache(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Ljava/lang/String;Ljava/util/LinkedList;Ljava/lang/String;)V

    .line 532
    :cond_37
    new-instance p0, Lmdm/LocalKeymapStore$7;

    invoke-direct {p0, p2}, Lmdm/LocalKeymapStore$7;-><init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$SetSelectedKeymapCompletionHandler;)V

    invoke-static {p0}, Lmdm/LocalKeymapStore;->post(Ljava/lang/Runnable;)V

    .line 533
    return-void
.end method

.method static str(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1

    .line 132
    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_8
    return-object p0
.end method

.method static syncBundleCache(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Ljava/lang/String;Ljava/util/LinkedList;Ljava/lang/String;)V
    .registers 5

    .line 172
    :try_start_0
    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$BundleInfo;

    invoke-direct {v0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$BundleInfo;-><init>()V

    .line 173
    iput-object p2, v0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$BundleInfo;->keymapInfoList:Ljava/util/LinkedList;

    .line 174
    iput-object p3, v0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$BundleInfo;->selectedKeymapId:Ljava/lang/String;

    .line 175
    invoke-static {p0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->b(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    goto :goto_12

    .line 176
    :catchall_11
    move-exception p0

    :goto_12
    nop

    .line 177
    return-void
.end method

.method static toInfo(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;"
        }
    .end annotation

    .line 143
    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;

    invoke-direct {v0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;-><init>()V

    .line 144
    iput-object p0, v0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;->id:Ljava/lang/String;

    .line 145
    iput-object p1, v0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;->bundleId:Ljava/lang/String;

    .line 146
    const-string p0, "name"

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lmdm/LocalKeymapStore;->str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;->name:Ljava/lang/String;

    .line 147
    const-string p0, "isOfficial"

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lmdm/LocalKeymapStore;->bool(Ljava/lang/Object;)Z

    move-result p0

    iput-boolean p0, v0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;->isOfficial:Z

    .line 148
    const-string p0, "componentCount"

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lmdm/LocalKeymapStore;->intOf(Ljava/lang/Object;)I

    move-result p0

    iput p0, v0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;->componentCount:I

    .line 149
    const-string p0, "forPhone"

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lmdm/LocalKeymapStore;->bool(Ljava/lang/Object;)Z

    move-result p0

    iput-boolean p0, v0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;->forPhone:Z

    .line 150
    const-string p0, "updateTime"

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lmdm/LocalKeymapStore;->str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;->updateTime:Ljava/lang/String;

    .line 151
    return-object v0
.end method

.method public static updateKeymap(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Ljava/util/Map;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$UpdateKeymapCompletionHandler;)V
    .registers 11

    .line 453
    invoke-static {p2}, Lmdm/LocalKeymapStore;->contentFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sget-object v1, Lmdm/LocalKeymapStore;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmdm/LocalKeymapStore;->writeFile(Ljava/io/File;Ljava/lang/String;)V

    .line 455
    invoke-static {}, Lmdm/LocalKeymapStore;->loadIndex()Ljava/util/Map;

    move-result-object v0

    .line 456
    invoke-static {v0, p2}, Lmdm/LocalKeymapStore;->bundleOf(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 457
    if-eqz v1, :cond_78

    .line 458
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmdm/LocalKeymapStore;->bundle(Ljava/util/Map;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v2

    .line 459
    invoke-static {v2}, Lmdm/LocalKeymapStore;->items(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 460
    instance-of v4, v3, Ljava/util/Map;

    if-eqz v4, :cond_2b

    check-cast v3, Ljava/util/Map;

    goto :goto_30

    :cond_2b
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 462
    :goto_30
    :try_start_30
    invoke-static {p1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->q(Ljava/util/Map;)Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapContentInfo;

    move-result-object v4

    .line 463
    if-eqz v4, :cond_4e

    .line 464
    iget-object v5, v4, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapContentInfo;->name:Ljava/lang/String;

    if-eqz v5, :cond_41

    const-string v5, "name"

    iget-object v6, v4, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapContentInfo;->name:Ljava/lang/String;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    :cond_41
    const-string v5, "componentCount"

    iget v4, v4, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapContentInfo;->componentCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4c
    .catchall {:try_start_30 .. :try_end_4c} :catchall_4d

    goto :goto_4e

    .line 467
    :catchall_4d
    move-exception v4

    :cond_4e
    :goto_4e
    nop

    .line 468
    const-string v4, "bundleId"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    const-string v4, "updateTime"

    invoke-static {}, Lmdm/LocalKeymapStore;->now()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    invoke-static {v2}, Lmdm/LocalKeymapStore;->items(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    invoke-static {v0}, Lmdm/LocalKeymapStore;->saveIndex(Ljava/util/Map;)V

    .line 472
    invoke-static {v0, v1}, Lmdm/LocalKeymapStore;->buildList(Ljava/util/Map;Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    const-string v3, "selected"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lmdm/LocalKeymapStore;->str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v0, v2}, Lmdm/LocalKeymapStore;->syncBundleCache(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Ljava/lang/String;Ljava/util/LinkedList;Ljava/lang/String;)V

    .line 474
    :cond_78
    invoke-static {v1, p2, p1}, Lmdm/LocalKeymapStore;->mirrorRc(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 475
    invoke-static {p0, p2, p1}, Lmdm/LocalKeymapStore;->putContentCache(Lcom/zjx/jyandroid/ForegroundService/KeymapManager;Ljava/lang/String;Ljava/util/Map;)V

    .line 476
    new-instance p0, Lmdm/LocalKeymapStore$4;

    invoke-direct {p0, p3}, Lmdm/LocalKeymapStore$4;-><init>(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$UpdateKeymapCompletionHandler;)V

    invoke-static {p0}, Lmdm/LocalKeymapStore;->post(Ljava/lang/Runnable;)V

    .line 477
    return-void
.end method

.method static writeFile(Ljava/io/File;Ljava/lang/String;)V
    .registers 4

    .line 70
    nop

    .line 72
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_19

    .line 73
    :try_start_7
    const-string p0, "UTF-8"

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_16

    .line 77
    :try_start_10
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1f

    :catchall_14
    move-exception p0

    goto :goto_1f

    .line 74
    :catchall_16
    move-exception p0

    move-object v0, v1

    goto :goto_1a

    :catchall_19
    move-exception p0

    .line 77
    :goto_1a
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_14

    .line 79
    :cond_1f
    :goto_1f
    return-void
.end method
