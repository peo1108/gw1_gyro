.class public final Lmdm/RcEngine;
.super Ljava/lang/Object;
.source "RcEngine.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static markAliasesDirty(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 19

    .line 31
    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 31
    if-eqz p0, :cond_a2

    if-nez v0, :cond_d

    goto/16 :goto_a2

    .line 33
    :cond_d
    :try_start_d
    const-string v2, "l"

    invoke-static {v0, v2}, Lmdm/RcEngine;->shortField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v9

    .line 34
    const-string v2, "h"

    invoke-static {v0, v2}, Lmdm/RcEngine;->shortField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v10

    .line 35
    const-string v2, "g"

    invoke-static {v0, v2}, Lmdm/RcEngine;->shortField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    .line 36
    nop

    .line 37
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v4, v2

    move v5, v1

    :goto_2a
    const/4 v11, 0x0

    if-ge v5, v4, :cond_55

    aget-object v6, v2, v5

    .line 38
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "b"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_52

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    const/4 v8, 0x7

    if-ne v7, v8, :cond_52

    .line 39
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    aget-object v7, v7, v1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    if-ne v7, v8, :cond_52

    .line 40
    nop

    .line 41
    move-object v12, v6

    goto :goto_56

    .line 37
    :cond_52
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    :cond_55
    move-object v12, v11

    .line 44
    :goto_56
    if-nez v12, :cond_59

    return v1

    .line 45
    :cond_59
    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 46
    invoke-static {v10}, Lmdm/RcStore;->realSlot(I)I

    move-result v14

    .line 47
    nop

    .line 48
    move v15, v1

    move/from16 v16, v15

    :goto_65
    const/16 v2, 0xb

    if-ge v15, v2, :cond_9f

    .line 49
    if-eq v15, v10, :cond_9c

    invoke-static {v15}, Lmdm/RcStore;->realSlot(I)I

    move-result v2

    if-eq v2, v14, :cond_72

    goto :goto_9c

    .line 50
    :cond_72
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v4, v3

    move-object v5, v3

    move-object/from16 v2, p0

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v12, v11, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 51
    if-nez v2, :cond_8d

    goto :goto_9c

    .line 52
    :cond_8d
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "a"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 53
    invoke-virtual {v4, v2, v13}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_9a
    .catchall {:try_start_d .. :try_end_9a} :catchall_a0

    .line 54
    add-int/lit8 v16, v16, 0x1

    .line 48
    :cond_9c
    :goto_9c
    add-int/lit8 v15, v15, 0x1

    goto :goto_65

    .line 56
    :cond_9f
    return v16

    .line 57
    :catchall_a0
    move-exception v0

    .line 58
    return v1

    .line 31
    :cond_a2
    :goto_a2
    return v1
.end method

.method public static reloadIfRunning(Ljava/lang/Object;Ljava/lang/String;Ljava/util/concurrent/Executor;)Z
    .registers 7

    .line 68
    const/4 v0, 0x0

    if-eqz p0, :cond_5b

    if-eqz p1, :cond_5b

    if-nez p2, :cond_8

    goto :goto_5b

    .line 70
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "G"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1d

    return v0

    .line 71
    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "L"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "b0"

    const-class v3, Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 73
    new-instance v2, Lmdm/RcEngine$1;

    invoke-direct {v2, v1, p0, p1}, Lmdm/RcEngine$1;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_57
    .catchall {:try_start_8 .. :try_end_57} :catchall_59

    .line 78
    const/4 p0, 0x1

    return p0

    .line 79
    :catchall_59
    move-exception p0

    .line 80
    return v0

    .line 68
    :cond_5b
    :goto_5b
    return v0
.end method

.method static shortField(Ljava/lang/Object;Ljava/lang/String;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 21
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method
