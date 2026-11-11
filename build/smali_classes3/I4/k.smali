.class public final LI4/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF4/A;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LI4/k$e;,
        LI4/k$d;,
        LI4/k$c;,
        LI4/k$b;
    }
.end annotation


# instance fields
.field public final V1:LI4/e;

.field public final X:LH4/c;

.field public final Y:LF4/d;

.field public final Z:LH4/d;

.field public final k6:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LF4/w;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LH4/c;LF4/d;LH4/d;LI4/e;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LH4/c;",
            "LF4/d;",
            "LH4/d;",
            "LI4/e;",
            "Ljava/util/List<",
            "LF4/w;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI4/k;->X:LH4/c;

    iput-object p2, p0, LI4/k;->Y:LF4/d;

    iput-object p3, p0, LI4/k;->Z:LH4/d;

    iput-object p4, p0, LI4/k;->V1:LI4/e;

    iput-object p5, p0, LI4/k;->k6:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;Ljava/lang/reflect/AccessibleObject;)V
    .locals 0

    invoke-static {p0, p1}, LI4/k;->c(Ljava/lang/Object;Ljava/lang/reflect/AccessibleObject;)V

    return-void
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/reflect/AccessibleObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/reflect/AccessibleObject;",
            ":",
            "Ljava/lang/reflect/Member;",
            ">(",
            "Ljava/lang/Object;",
            "TM;)V"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    sget-object v0, LH4/n$b;->a:LH4/n$b;

    invoke-virtual {v0, p1, p0}, LH4/n$b;->a(Ljava/lang/reflect/AccessibleObject;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    const/4 p0, 0x1

    invoke-static {p1, p0}, LK4/a;->f(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    move-result-object p0

    new-instance p1, LF4/l;

    const-string v0, " is not accessible and ReflectionAccessFilter does not permit making it accessible. Register a TypeAdapter for the declaring type, adjust the access filter or increase the visibility of the element and its declaring type."

    invoke-static {p0, v0}, LC/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public b(LF4/e;LM4/a;)LF4/z;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LF4/e;",
            "LM4/a<",
            "TT;>;)",
            "LF4/z<",
            "TT;>;"
        }
    .end annotation

    iget-object v6, p2, LM4/a;->a:Ljava/lang/Class;

    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, LI4/k;->k6:Ljava/util/List;

    invoke-static {v0, v6}, LH4/n;->b(Ljava/util/List;Ljava/lang/Class;)LF4/w$e;

    move-result-object v0

    sget-object v1, LF4/w$e;->V1:LF4/w$e;

    if-eq v0, v1, :cond_3

    sget-object v1, LF4/w$e;->Z:LF4/w$e;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    move v7, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-static {v6}, LK4/a;->j(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v8, LI4/k$e;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v6

    move v4, v7

    invoke-virtual/range {v0 .. v5}, LI4/k;->e(LF4/e;LM4/a;Ljava/lang/Class;ZZ)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v8, v6, p1, v7}, LI4/k$e;-><init>(Ljava/lang/Class;Ljava/util/Map;Z)V

    return-object v8

    :cond_2
    iget-object v0, p0, LI4/k;->X:LH4/c;

    invoke-virtual {v0, p2}, LH4/c;->b(LM4/a;)LH4/k;

    move-result-object v8

    new-instance v9, LI4/k$d;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v6

    move v4, v7

    invoke-virtual/range {v0 .. v5}, LI4/k;->e(LF4/e;LM4/a;Ljava/lang/Class;ZZ)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v9, v8, p1}, LI4/k$d;-><init>(LH4/k;Ljava/util/Map;)V

    return-object v9

    :cond_3
    new-instance p1, LF4/l;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "ReflectionAccessFilter does not permit using reflection for "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Register a TypeAdapter for this type or adjust the access filter."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(LF4/e;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/String;LM4/a;ZZZ)LI4/k$c;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LF4/e;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/String;",
            "LM4/a<",
            "*>;ZZZ)",
            "LI4/k$c;"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p5

    iget-object v0, v12, LM4/a;->a:Ljava/lang/Class;

    invoke-static {v0}, LH4/m;->a(Ljava/lang/reflect/Type;)Z

    move-result v13

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v14, v3

    goto :goto_0

    :cond_0
    move v14, v2

    :goto_0
    const-class v0, LG4/b;

    move-object/from16 v8, p2

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, LG4/b;

    if-eqz v0, :cond_1

    iget-object v1, v15, LI4/k;->V1:LI4/e;

    iget-object v4, v15, LI4/k;->X:LH4/c;

    invoke-virtual {v1, v4, v11, v12, v0}, LI4/e;->a(LH4/c;LF4/e;LM4/a;LG4/b;)LF4/z;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    move v9, v3

    goto :goto_2

    :cond_2
    move v9, v2

    :goto_2
    if-nez v0, :cond_3

    invoke-virtual {v11, v12}, LF4/e;->t(LM4/a;)LF4/z;

    move-result-object v0

    :cond_3
    move-object v10, v0

    new-instance v16, LI4/k$a;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p3

    move-object/from16 v8, p2

    move-object/from16 v11, p1

    move-object/from16 v12, p5

    invoke-direct/range {v0 .. v14}, LI4/k$a;-><init>(LI4/k;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/reflect/Method;Ljava/lang/reflect/Field;ZLF4/z;LF4/e;LM4/a;ZZ)V

    return-object v16
.end method

.method public final e(LF4/e;LM4/a;Ljava/lang/Class;ZZ)Ljava/util/Map;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LF4/e;",
            "LM4/a<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;ZZ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LI4/k$c;",
            ">;"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p3

    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v11

    :cond_0
    move-object/from16 v0, p2

    iget-object v12, v0, LM4/a;->b:Ljava/lang/reflect/Type;

    move-object v13, v0

    move-object v14, v10

    move/from16 v0, p4

    :goto_0
    const-class v1, Ljava/lang/Object;

    if-eq v14, v1, :cond_10

    invoke-virtual {v14}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v15

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-eq v14, v10, :cond_2

    array-length v1, v15

    if-lez v1, :cond_2

    iget-object v0, v9, LI4/k;->k6:Ljava/util/List;

    invoke-static {v0, v14}, LH4/n;->b(Ljava/util/List;Ljava/lang/Class;)LF4/w$e;

    move-result-object v0

    sget-object v1, LF4/w$e;->V1:LF4/w$e;

    if-eq v0, v1, :cond_3

    sget-object v1, LF4/w$e;->Z:LF4/w$e;

    if-ne v0, v1, :cond_1

    move v0, v8

    goto :goto_1

    :cond_1
    move v0, v7

    :cond_2
    :goto_1
    move/from16 v16, v0

    goto :goto_2

    :cond_3
    new-instance v0, LF4/l;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ReflectionAccessFilter does not permit using reflection for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (supertype of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "). Register a TypeAdapter for this type or adjust the access filter."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_2
    array-length v6, v15

    move v5, v7

    :goto_3
    if-ge v5, v6, :cond_f

    aget-object v4, v15, v5

    invoke-virtual {v9, v4, v8}, LI4/k;->g(Ljava/lang/reflect/Field;Z)Z

    move-result v0

    invoke-virtual {v9, v4, v7}, LI4/k;->g(Ljava/lang/reflect/Field;Z)Z

    move-result v1

    if-nez v0, :cond_4

    if-nez v1, :cond_4

    move/from16 v25, v5

    move/from16 v20, v6

    move/from16 v26, v7

    move/from16 v27, v8

    move-object/from16 p2, v15

    goto/16 :goto_9

    :cond_4
    if-eqz p5, :cond_9

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_5

    move/from16 v17, v7

    :goto_4
    const/16 v18, 0x0

    goto :goto_6

    :cond_5
    invoke-static {v14, v4}, LK4/a;->g(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-nez v16, :cond_6

    invoke-static {v3}, LK4/a;->k(Ljava/lang/reflect/AccessibleObject;)V

    :cond_6
    const-class v2, LG4/c;

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v17

    if-eqz v17, :cond_8

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    if-eqz v2, :cond_7

    goto :goto_5

    :cond_7
    invoke-static {v3, v7}, LK4/a;->f(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, LF4/l;

    const-string v2, "@SerializedName on "

    const-string v3, " is not supported"

    invoke-static {v2, v0, v3}, Landroid/support/v4/media/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    :goto_5
    move/from16 v17, v1

    move-object/from16 v18, v3

    goto :goto_6

    :cond_9
    move/from16 v17, v1

    goto :goto_4

    :goto_6
    if-nez v16, :cond_a

    if-nez v18, :cond_a

    invoke-static {v4}, LK4/a;->k(Ljava/lang/reflect/AccessibleObject;)V

    :cond_a
    iget-object v1, v13, LM4/a;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v1, v14, v2}, LH4/b;->o(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v9, v4}, LI4/k;->f(Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    move v10, v7

    const/4 v9, 0x0

    :goto_7
    if-ge v10, v1, :cond_d

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 p2, v15

    move-object/from16 v15, v19

    check-cast v15, Ljava/lang/String;

    if-eqz v10, :cond_b

    move/from16 v19, v7

    goto :goto_8

    :cond_b
    move/from16 v19, v0

    :goto_8
    new-instance v0, LM4/a;

    invoke-direct {v0, v3}, LM4/a;-><init>(Ljava/lang/reflect/Type;)V

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v21, v1

    move-object/from16 v1, p1

    move-object/from16 v22, v2

    move-object v2, v4

    move-object/from16 v23, v3

    move-object/from16 v3, v18

    move-object/from16 v24, v4

    move-object v4, v15

    move/from16 v25, v5

    move-object/from16 v5, v20

    move/from16 v20, v6

    move/from16 v6, v19

    move/from16 v26, v7

    move/from16 v7, v17

    move/from16 v27, v8

    move/from16 v8, v16

    invoke-virtual/range {v0 .. v8}, LI4/k;->d(LF4/e;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/String;LM4/a;ZZZ)LI4/k$c;

    move-result-object v0

    invoke-interface {v11, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LI4/k$c;

    if-nez v9, :cond_c

    move-object v9, v0

    :cond_c
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v15, p2

    move/from16 v0, v19

    move/from16 v6, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    move/from16 v5, v25

    move/from16 v7, v26

    move/from16 v8, v27

    goto :goto_7

    :cond_d
    move/from16 v25, v5

    move/from16 v20, v6

    move/from16 v26, v7

    move/from16 v27, v8

    move-object/from16 p2, v15

    if-nez v9, :cond_e

    :goto_9
    add-int/lit8 v5, v25, 0x1

    move-object/from16 v9, p0

    move-object/from16 v15, p2

    move-object/from16 v10, p3

    move/from16 v6, v20

    move/from16 v7, v26

    move/from16 v8, v27

    goto/16 :goto_3

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " declares multiple JSON fields named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, LI4/k$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget-object v0, v13, LM4/a;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v14}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v14, v1}, LH4/b;->o(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    new-instance v13, LM4/a;

    invoke-direct {v13, v0}, LM4/a;-><init>(Ljava/lang/reflect/Type;)V

    iget-object v14, v13, LM4/a;->a:Ljava/lang/Class;

    move-object/from16 v9, p0

    move-object/from16 v10, p3

    move/from16 v0, v16

    goto/16 :goto_0

    :cond_10
    return-object v11
.end method

.method public final f(Ljava/lang/reflect/Field;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, LG4/c;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, LG4/c;

    if-nez v0, :cond_0

    iget-object v0, p0, LI4/k;->Y:LF4/d;

    invoke-interface {v0, p1}, LF4/d;->e(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {v0}, LG4/c;->value()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0}, LG4/c;->alternate()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v1
.end method

.method public final g(Ljava/lang/reflect/Field;Z)Z
    .locals 2

    iget-object v0, p0, LI4/k;->Z:LH4/d;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, LH4/d;->e(Ljava/lang/Class;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LI4/k;->Z:LH4/d;

    invoke-virtual {v0, p1, p2}, LH4/d;->i(Ljava/lang/reflect/Field;Z)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
