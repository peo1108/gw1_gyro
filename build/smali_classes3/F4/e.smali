.class public final LF4/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LF4/e$f;
    }
.end annotation


# static fields
.field public static final A:Z = false

.field public static final B:Z = false

.field public static final C:Z = true

.field public static final D:Z = false

.field public static final E:Z = false

.field public static final F:Z = false

.field public static final G:Z = true

.field public static final H:Ljava/lang/String; = null

.field public static final I:LF4/d;

.field public static final J:LF4/y;

.field public static final K:LF4/y;

.field public static final L:Ljava/lang/String; = ")]}\'\n"

.field public static final z:Z


# instance fields
.field public final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "LM4/a<",
            "*>;",
            "LF4/e$f<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "LM4/a<",
            "*>;",
            "LF4/z<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final c:LH4/c;

.field public final d:LI4/e;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LF4/A;",
            ">;"
        }
    .end annotation
.end field

.field public final f:LH4/d;

.field public final g:LF4/d;

.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "LF4/g<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final i:Z

.field public final j:Z

.field public final k:Z

.field public final l:Z

.field public final m:Z

.field public final n:Z

.field public final o:Z

.field public final p:Z

.field public final q:Ljava/lang/String;

.field public final r:I

.field public final s:I

.field public final t:LF4/v;

.field public final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LF4/A;",
            ">;"
        }
    .end annotation
.end field

.field public final v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LF4/A;",
            ">;"
        }
    .end annotation
.end field

.field public final w:LF4/y;

.field public final x:LF4/y;

.field public final y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LF4/w;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, LF4/c;->X:LF4/c;

    sput-object v0, LF4/e;->I:LF4/d;

    sget-object v0, LF4/x;->X:LF4/x;

    sput-object v0, LF4/e;->J:LF4/y;

    sget-object v0, LF4/x;->Y:LF4/x;

    sput-object v0, LF4/e;->K:LF4/y;

    return-void
.end method

.method public constructor <init>()V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    sget-object v1, LH4/d;->n6:LH4/d;

    sget-object v2, LF4/e;->I:LF4/d;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    sget-object v12, LF4/v;->X:LF4/v;

    sget-object v13, LF4/e;->H:Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v17

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v18

    sget-object v19, LF4/e;->J:LF4/y;

    sget-object v20, LF4/e;->K:LF4/y;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v21

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v14, 0x2

    const/4 v15, 0x2

    .line 6
    invoke-direct/range {v0 .. v21}, LF4/e;-><init>(LH4/d;LF4/d;Ljava/util/Map;ZZZZZZZZLF4/v;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;LF4/y;LF4/y;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(LH4/d;LF4/d;Ljava/util/Map;ZZZZZZZZLF4/v;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;LF4/y;LF4/y;Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LH4/d;",
            "LF4/d;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "LF4/g<",
            "*>;>;ZZZZZZZZ",
            "LF4/v;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "LF4/A;",
            ">;",
            "Ljava/util/List<",
            "LF4/A;",
            ">;",
            "Ljava/util/List<",
            "LF4/A;",
            ">;",
            "LF4/y;",
            "LF4/y;",
            "Ljava/util/List<",
            "LF4/w;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p5

    move/from16 v4, p10

    move/from16 v5, p11

    move-object/from16 v6, p21

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v7, Ljava/lang/ThreadLocal;

    invoke-direct {v7}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v7, v0, LF4/e;->a:Ljava/lang/ThreadLocal;

    .line 9
    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v7, v0, LF4/e;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 10
    iput-object v1, v0, LF4/e;->f:LH4/d;

    move-object/from16 v7, p2

    .line 11
    iput-object v7, v0, LF4/e;->g:LF4/d;

    .line 12
    iput-object v2, v0, LF4/e;->h:Ljava/util/Map;

    .line 13
    new-instance v8, LH4/c;

    invoke-direct {v8, v2, v5, v6}, LH4/c;-><init>(Ljava/util/Map;ZLjava/util/List;)V

    iput-object v8, v0, LF4/e;->c:LH4/c;

    move/from16 v2, p4

    .line 14
    iput-boolean v2, v0, LF4/e;->i:Z

    .line 15
    iput-boolean v3, v0, LF4/e;->j:Z

    move/from16 v2, p6

    .line 16
    iput-boolean v2, v0, LF4/e;->k:Z

    move/from16 v2, p7

    .line 17
    iput-boolean v2, v0, LF4/e;->l:Z

    move/from16 v2, p8

    .line 18
    iput-boolean v2, v0, LF4/e;->m:Z

    move/from16 v2, p9

    .line 19
    iput-boolean v2, v0, LF4/e;->n:Z

    .line 20
    iput-boolean v4, v0, LF4/e;->o:Z

    .line 21
    iput-boolean v5, v0, LF4/e;->p:Z

    move-object/from16 v2, p12

    .line 22
    iput-object v2, v0, LF4/e;->t:LF4/v;

    move-object/from16 v5, p13

    .line 23
    iput-object v5, v0, LF4/e;->q:Ljava/lang/String;

    move/from16 v5, p14

    .line 24
    iput v5, v0, LF4/e;->r:I

    move/from16 v5, p15

    .line 25
    iput v5, v0, LF4/e;->s:I

    move-object/from16 v5, p16

    .line 26
    iput-object v5, v0, LF4/e;->u:Ljava/util/List;

    move-object/from16 v5, p17

    .line 27
    iput-object v5, v0, LF4/e;->v:Ljava/util/List;

    move-object/from16 v5, p19

    .line 28
    iput-object v5, v0, LF4/e;->w:LF4/y;

    move-object/from16 v9, p20

    .line 29
    iput-object v9, v0, LF4/e;->x:LF4/y;

    .line 30
    iput-object v6, v0, LF4/e;->y:Ljava/util/List;

    .line 31
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 32
    sget-object v11, LI4/o;->W:LF4/A;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-static/range {p19 .. p19}, LI4/j;->j(LF4/y;)LF4/A;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, p18

    .line 35
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 36
    sget-object v5, LI4/o;->C:LF4/A;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v5, LI4/o;->m:LF4/A;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v5, LI4/o;->g:LF4/A;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v5, LI4/o;->i:LF4/A;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v5, LI4/o;->k:LF4/A;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-static/range {p12 .. p12}, LF4/e;->x(LF4/v;)LF4/z;

    move-result-object v2

    .line 42
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 43
    new-instance v11, LI4/o$y;

    const-class v12, Ljava/lang/Long;

    invoke-direct {v11, v5, v12, v2}, LI4/o$y;-><init>(Ljava/lang/Class;Ljava/lang/Class;LF4/z;)V

    .line 44
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 46
    invoke-virtual {p0, v4}, LF4/e;->e(Z)LF4/z;

    move-result-object v11

    .line 47
    new-instance v12, LI4/o$y;

    const-class v13, Ljava/lang/Double;

    invoke-direct {v12, v5, v13, v11}, LI4/o$y;-><init>(Ljava/lang/Class;Ljava/lang/Class;LF4/z;)V

    .line 48
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 50
    invoke-virtual {p0, v4}, LF4/e;->h(Z)LF4/z;

    move-result-object v4

    .line 51
    new-instance v11, LI4/o$y;

    const-class v12, Ljava/lang/Float;

    invoke-direct {v11, v5, v12, v4}, LI4/o$y;-><init>(Ljava/lang/Class;Ljava/lang/Class;LF4/z;)V

    .line 52
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-static/range {p20 .. p20}, LI4/i;->j(LF4/y;)LF4/A;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v4, LI4/o;->o:LF4/A;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v4, LI4/o;->q:LF4/A;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-static {v2}, LF4/e;->b(LF4/z;)LF4/z;

    move-result-object v4

    .line 57
    new-instance v5, LI4/o$x;

    const-class v9, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v5, v9, v4}, LI4/o$x;-><init>(Ljava/lang/Class;LF4/z;)V

    .line 58
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-static {v2}, LF4/e;->c(LF4/z;)LF4/z;

    move-result-object v2

    .line 60
    new-instance v4, LI4/o$x;

    const-class v5, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-direct {v4, v5, v2}, LI4/o$x;-><init>(Ljava/lang/Class;LF4/z;)V

    .line 61
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v2, LI4/o;->s:LF4/A;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v2, LI4/o;->x:LF4/A;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v2, LI4/o;->E:LF4/A;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v2, LI4/o;->G:LF4/A;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v2, LI4/o;->z:LF4/z;

    .line 67
    new-instance v4, LI4/o$x;

    const-class v5, Ljava/math/BigDecimal;

    invoke-direct {v4, v5, v2}, LI4/o$x;-><init>(Ljava/lang/Class;LF4/z;)V

    .line 68
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v2, LI4/o;->A:LF4/z;

    .line 70
    new-instance v4, LI4/o$x;

    const-class v5, Ljava/math/BigInteger;

    invoke-direct {v4, v5, v2}, LI4/o$x;-><init>(Ljava/lang/Class;LF4/z;)V

    .line 71
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v2, LI4/o;->B:LF4/z;

    .line 73
    new-instance v4, LI4/o$x;

    const-class v5, LH4/h;

    invoke-direct {v4, v5, v2}, LI4/o$x;-><init>(Ljava/lang/Class;LF4/z;)V

    .line 74
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v2, LI4/o;->I:LF4/A;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v2, LI4/o;->K:LF4/A;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v2, LI4/o;->O:LF4/A;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v2, LI4/o;->Q:LF4/A;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v2, LI4/o;->U:LF4/A;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v2, LI4/o;->M:LF4/A;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v2, LI4/o;->d:LF4/A;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v2, LI4/c;->b:LF4/A;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v2, LI4/o;->S:LF4/A;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    sget-boolean v2, LL4/d;->a:Z

    if-eqz v2, :cond_0

    .line 85
    sget-object v2, LL4/d;->e:LF4/A;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v2, LL4/d;->d:LF4/A;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v2, LL4/d;->f:LF4/A;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_0
    sget-object v2, LI4/a;->c:LF4/A;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v2, LI4/o;->b:LF4/A;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v2, LI4/b;

    invoke-direct {v2, v8}, LI4/b;-><init>(LH4/c;)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v2, LI4/h;

    invoke-direct {v2, v8, v3}, LI4/h;-><init>(LH4/c;Z)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v2, LI4/e;

    invoke-direct {v2, v8}, LI4/e;-><init>(LH4/c;)V

    iput-object v2, v0, LF4/e;->d:LI4/e;

    .line 93
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v3, LI4/o;->X:LF4/A;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v3, LI4/k;

    move-object/from16 p3, v3

    move-object/from16 p4, v8

    move-object/from16 p5, p2

    move-object/from16 p6, p1

    move-object/from16 p7, v2

    move-object/from16 p8, p21

    invoke-direct/range {p3 .. p8}, LI4/k;-><init>(LH4/c;LF4/d;LH4/d;LI4/e;Ljava/util/List;)V

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, LF4/e;->e:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/lang/Object;LN4/a;)V
    .locals 0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p1}, LN4/a;->j0()LN4/c;

    move-result-object p0

    sget-object p1, LN4/c;->p6:LN4/c;

    if-ne p0, p1, :cond_0

    goto :goto_2

    :cond_0
    new-instance p0, LF4/u;

    const-string p1, "JSON document was not fully consumed."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch LN4/e; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance p1, LF4/l;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :goto_1
    new-instance p1, LF4/u;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_2
    return-void
.end method

.method public static b(LF4/z;)LF4/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LF4/z<",
            "Ljava/lang/Number;",
            ">;)",
            "LF4/z<",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation

    new-instance v0, LF4/e$d;

    invoke-direct {v0, p0}, LF4/e$d;-><init>(LF4/z;)V

    new-instance p0, LF4/z$a;

    invoke-direct {p0, v0}, LF4/z$a;-><init>(LF4/z;)V

    return-object p0
.end method

.method public static c(LF4/z;)LF4/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LF4/z<",
            "Ljava/lang/Number;",
            ">;)",
            "LF4/z<",
            "Ljava/util/concurrent/atomic/AtomicLongArray;",
            ">;"
        }
    .end annotation

    new-instance v0, LF4/e$e;

    invoke-direct {v0, p0}, LF4/e$e;-><init>(LF4/z;)V

    new-instance p0, LF4/z$a;

    invoke-direct {p0, v0}, LF4/z$a;-><init>(LF4/z;)V

    return-object p0
.end method

.method public static d(D)V
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static x(LF4/v;)LF4/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LF4/v;",
            ")",
            "LF4/z<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    sget-object v0, LF4/v;->X:LF4/v;

    if-ne p0, v0, :cond_0

    sget-object p0, LI4/o;->t:LF4/z;

    return-object p0

    :cond_0
    new-instance p0, LF4/e$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0
.end method


# virtual methods
.method public A(Ljava/io/Writer;)LN4/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LF4/e;->k:Z

    if-eqz v0, :cond_0

    const-string v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    new-instance v0, LN4/d;

    invoke-direct {v0, p1}, LN4/d;-><init>(Ljava/io/Writer;)V

    iget-boolean p1, p0, LF4/e;->m:Z

    if-eqz p1, :cond_1

    const-string p1, "  "

    invoke-virtual {v0, p1}, LN4/d;->Z(Ljava/lang/String;)V

    :cond_1
    iget-boolean p1, p0, LF4/e;->l:Z

    iput-boolean p1, v0, LN4/d;->m6:Z

    iget-boolean p1, p0, LF4/e;->n:Z

    iput-boolean p1, v0, LN4/d;->l6:Z

    iget-boolean p1, p0, LF4/e;->i:Z

    iput-boolean p1, v0, LN4/d;->o6:Z

    return-object v0
.end method

.method public B()Z
    .locals 1

    iget-boolean v0, p0, LF4/e;->i:Z

    return v0
.end method

.method public C(LF4/k;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, p1, v0}, LF4/e;->G(LF4/k;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public D(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, LF4/m;->X:LF4/m;

    invoke-virtual {p0, p1}, LF4/e;->C(LF4/k;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LF4/e;->E(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public E(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, LF4/e;->J(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public F(LF4/k;LN4/d;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LF4/l;
        }
    .end annotation

    const-string v0, "AssertionError (GSON 2.10): "

    invoke-virtual {p2}, LN4/d;->n()Z

    move-result v1

    const/4 v2, 0x1

    iput-boolean v2, p2, LN4/d;->l6:Z

    iget-boolean v2, p2, LN4/d;->m6:Z

    iget-boolean v3, p0, LF4/e;->l:Z

    iput-boolean v3, p2, LN4/d;->m6:Z

    iget-boolean v3, p2, LN4/d;->o6:Z

    iget-boolean v4, p0, LF4/e;->i:Z

    iput-boolean v4, p2, LN4/d;->o6:Z

    :try_start_0
    invoke-static {p1, p2}, LH4/o;->b(LF4/k;LN4/d;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p2, LN4/d;->l6:Z

    iput-boolean v2, p2, LN4/d;->m6:Z

    iput-boolean v3, p2, LN4/d;->o6:Z

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v4

    :catch_1
    move-exception p1

    new-instance v0, LF4/l;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-boolean v1, p2, LN4/d;->l6:Z

    iput-boolean v2, p2, LN4/d;->m6:Z

    iput-boolean v3, p2, LN4/d;->o6:Z

    throw p1
.end method

.method public G(LF4/k;Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LF4/l;
        }
    .end annotation

    :try_start_0
    invoke-static {p2}, LH4/o;->c(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object p2

    invoke-virtual {p0, p2}, LF4/e;->A(Ljava/io/Writer;)LN4/d;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, LF4/e;->F(LF4/k;LN4/d;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, LF4/l;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public H(Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LF4/l;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, LF4/e;->J(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    goto :goto_0

    :cond_0
    sget-object p1, LF4/m;->X:LF4/m;

    invoke-virtual {p0, p1, p2}, LF4/e;->G(LF4/k;Ljava/lang/Appendable;)V

    :goto_0
    return-void
.end method

.method public I(Ljava/lang/Object;Ljava/lang/reflect/Type;LN4/d;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LF4/l;
        }
    .end annotation

    const-string v0, "AssertionError (GSON 2.10): "

    new-instance v1, LM4/a;

    invoke-direct {v1, p2}, LM4/a;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p0, v1}, LF4/e;->t(LM4/a;)LF4/z;

    move-result-object p2

    invoke-virtual {p3}, LN4/d;->n()Z

    move-result v1

    const/4 v2, 0x1

    iput-boolean v2, p3, LN4/d;->l6:Z

    iget-boolean v2, p3, LN4/d;->m6:Z

    iget-boolean v3, p0, LF4/e;->l:Z

    iput-boolean v3, p3, LN4/d;->m6:Z

    iget-boolean v3, p3, LN4/d;->o6:Z

    iget-boolean v4, p0, LF4/e;->i:Z

    iput-boolean v4, p3, LN4/d;->o6:Z

    :try_start_0
    invoke-virtual {p2, p3, p1}, LF4/z;->i(LN4/d;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p3, LN4/d;->l6:Z

    iput-boolean v2, p3, LN4/d;->m6:Z

    iput-boolean v3, p3, LN4/d;->o6:Z

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, LF4/l;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-boolean v1, p3, LN4/d;->l6:Z

    iput-boolean v2, p3, LN4/d;->m6:Z

    iput-boolean v3, p3, LN4/d;->o6:Z

    throw p1
.end method

.method public J(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LF4/l;
        }
    .end annotation

    :try_start_0
    invoke-static {p3}, LH4/o;->c(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object p3

    invoke-virtual {p0, p3}, LF4/e;->A(Ljava/io/Writer;)LN4/d;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, LF4/e;->I(Ljava/lang/Object;Ljava/lang/reflect/Type;LN4/d;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, LF4/l;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public K(Ljava/lang/Object;)LF4/k;
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, LF4/m;->X:LF4/m;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LF4/e;->L(Ljava/lang/Object;Ljava/lang/reflect/Type;)LF4/k;

    move-result-object p1

    return-object p1
.end method

.method public L(Ljava/lang/Object;Ljava/lang/reflect/Type;)LF4/k;
    .locals 1

    new-instance v0, LI4/g;

    invoke-direct {v0}, LI4/g;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, LF4/e;->I(Ljava/lang/Object;Ljava/lang/reflect/Type;LN4/d;)V

    invoke-virtual {v0}, LI4/g;->y0()LF4/k;

    move-result-object p1

    return-object p1
.end method

.method public final e(Z)LF4/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "LF4/z<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object p1, LI4/o;->v:LF4/z;

    return-object p1

    :cond_0
    new-instance p1, LF4/e$a;

    invoke-direct {p1, p0}, LF4/e$a;-><init>(LF4/e;)V

    return-object p1
.end method

.method public f()LH4/d;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, LF4/e;->f:LH4/d;

    return-object v0
.end method

.method public g()LF4/d;
    .locals 1

    iget-object v0, p0, LF4/e;->g:LF4/d;

    return-object v0
.end method

.method public final h(Z)LF4/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "LF4/z<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object p1, LI4/o;->u:LF4/z;

    return-object p1

    :cond_0
    new-instance p1, LF4/e$b;

    invoke-direct {p1, p0}, LF4/e$b;-><init>(LF4/e;)V

    return-object p1
.end method

.method public i(LF4/k;LM4/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LF4/k;",
            "LM4/a<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            LF4/u;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, LI4/f;

    invoke-direct {v0, p1}, LI4/f;-><init>(LF4/k;)V

    invoke-virtual {p0, v0, p2}, LF4/e;->l(LN4/a;LM4/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public j(LF4/k;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LF4/k;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            LF4/u;
        }
    .end annotation

    new-instance v0, LM4/a;

    invoke-direct {v0, p2}, LM4/a;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p0, p1, v0}, LF4/e;->i(LF4/k;LM4/a;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2}, LH4/m;->d(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public k(LF4/k;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LF4/k;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            LF4/u;
        }
    .end annotation

    new-instance v0, LM4/a;

    invoke-direct {v0, p2}, LM4/a;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p0, p1, v0}, LF4/e;->i(LF4/k;LM4/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public l(LN4/a;LM4/a;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LN4/a;",
            "LM4/a<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            LF4/l;,
            LF4/u;
        }
    .end annotation

    const-string v0, "AssertionError (GSON 2.10): "

    iget-boolean v1, p1, LN4/a;->Y:Z

    const/4 v2, 0x1

    iput-boolean v2, p1, LN4/a;->Y:Z

    :try_start_0
    invoke-virtual {p1}, LN4/a;->j0()LN4/c;

    const/4 v2, 0x0

    invoke-virtual {p0, p2}, LF4/e;->t(LM4/a;)LF4/z;

    move-result-object p2

    invoke-virtual {p2, p1}, LF4/z;->e(LN4/a;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p1, LN4/a;->Y:Z

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_4

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    goto :goto_1

    :catch_2
    move-exception p2

    goto :goto_2

    :catch_3
    move-exception p2

    goto :goto_3

    :goto_0
    :try_start_1
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2

    :goto_1
    new-instance v0, LF4/u;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_2
    new-instance v0, LF4/u;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    if-eqz v2, :cond_0

    iput-boolean v1, p1, LN4/a;->Y:Z

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :try_start_2
    new-instance v0, LF4/u;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    iput-boolean v1, p1, LN4/a;->Y:Z

    throw p2
.end method

.method public m(LN4/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LN4/a;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            LF4/l;,
            LF4/u;
        }
    .end annotation

    new-instance v0, LM4/a;

    invoke-direct {v0, p2}, LM4/a;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p0, p1, v0}, LF4/e;->l(LN4/a;LM4/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public n(Ljava/io/Reader;LM4/a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "LM4/a<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            LF4/l;,
            LF4/u;
        }
    .end annotation

    invoke-virtual {p0, p1}, LF4/e;->z(Ljava/io/Reader;)LN4/a;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, LF4/e;->l(LN4/a;LM4/a;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, p1}, LF4/e;->a(Ljava/lang/Object;LN4/a;)V

    return-object p2
.end method

.method public o(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            LF4/u;,
            LF4/l;
        }
    .end annotation

    new-instance v0, LM4/a;

    invoke-direct {v0, p2}, LM4/a;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p0, p1, v0}, LF4/e;->n(Ljava/io/Reader;LM4/a;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2}, LH4/m;->d(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public p(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            LF4/l;,
            LF4/u;
        }
    .end annotation

    new-instance v0, LM4/a;

    invoke-direct {v0, p2}, LM4/a;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p0, p1, v0}, LF4/e;->n(Ljava/io/Reader;LM4/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public q(Ljava/lang/String;LM4/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "LM4/a<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            LF4/u;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, LF4/e;->n(Ljava/io/Reader;LM4/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public r(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            LF4/u;
        }
    .end annotation

    new-instance v0, LM4/a;

    invoke-direct {v0, p2}, LM4/a;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p0, p1, v0}, LF4/e;->q(Ljava/lang/String;LM4/a;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2}, LH4/m;->d(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public s(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            LF4/u;
        }
    .end annotation

    new-instance v0, LM4/a;

    invoke-direct {v0, p2}, LM4/a;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p0, p1, v0}, LF4/e;->q(Ljava/lang/String;LM4/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public t(LM4/a;)LF4/z;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LM4/a<",
            "TT;>;)",
            "LF4/z<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "type must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, LF4/e;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF4/z;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, LF4/e;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, LF4/e;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LF4/e$f;

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    :try_start_0
    new-instance v2, LF4/e$f;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, LF4/e;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LF4/A;

    invoke-interface {v4, p0, p1}, LF4/A;->b(LF4/e;LM4/a;)LF4/z;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v3, p0, LF4/e;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p1, v4}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LF4/z;

    if-eqz v3, :cond_4

    move-object v4, v3

    :cond_4
    invoke-virtual {v2, v4}, LF4/e$f;->l(LF4/z;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_5

    iget-object p1, p0, LF4/e;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_5
    return-object v4

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_6
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GSON (2.10) cannot handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_7

    iget-object p1, p0, LF4/e;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_7
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, LF4/e;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LF4/e;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LF4/e;->c:LH4/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Ljava/lang/Class;)LF4/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "LF4/z<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LM4/a;

    invoke-direct {v0, p1}, LM4/a;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p0, v0}, LF4/e;->t(LM4/a;)LF4/z;

    move-result-object p1

    return-object p1
.end method

.method public v(LF4/A;LM4/a;)LF4/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LF4/A;",
            "LM4/a<",
            "TT;>;)",
            "LF4/z<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, LF4/e;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, LF4/e;->d:LI4/e;

    :cond_0
    iget-object v0, p0, LF4/e;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LF4/A;

    if-nez v1, :cond_2

    if-ne v2, p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v2, p0, p2}, LF4/A;->b(LF4/e;LM4/a;)LF4/z;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GSON cannot serialize "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public w()Z
    .locals 1

    iget-boolean v0, p0, LF4/e;->l:Z

    return v0
.end method

.method public y()LF4/f;
    .locals 1

    new-instance v0, LF4/f;

    invoke-direct {v0, p0}, LF4/f;-><init>(LF4/e;)V

    return-object v0
.end method

.method public z(Ljava/io/Reader;)LN4/a;
    .locals 1

    new-instance v0, LN4/a;

    invoke-direct {v0, p1}, LN4/a;-><init>(Ljava/io/Reader;)V

    iget-boolean p1, p0, LF4/e;->n:Z

    iput-boolean p1, v0, LN4/a;->Y:Z

    return-object v0
.end method
