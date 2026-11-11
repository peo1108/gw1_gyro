.class public Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$B;,
        Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$C;
    }
.end annotation


# static fields
.field public static final w:Ljava/lang/String; = "0.0.1"


# instance fields
.field public a:Landroid/view/View$OnTouchListener;

.field public b:Lcom/zjx/jyandroid/base/TouchParsers/OnNoMoveDoubleClickEventParser;

.field public c:Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser;

.field public d:Z

.field public e:Landroid/view/ScaleGestureDetector;

.field public f:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$C;

.field public g:I

.field public h:I

.field public i:Ljava/lang/String;

.field public j:Z

.field public k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

.field public l:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;

.field public m:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

.field public n:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public o:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a;

.field public p:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;

.field public q:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$B;

.field public r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public s:Z

.field public t:J

.field public final u:I

.field public v:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$k;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$k;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->a:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$t;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$t;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->b:Lcom/zjx/jyandroid/base/TouchParsers/OnNoMoveDoubleClickEventParser;

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$u;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$u;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;)V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->c:Lcom/zjx/jyandroid/base/TouchParsers/OnLongPressDragEventParser;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->d:Z

    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$v;

    invoke-direct {v3, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$v;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;)V

    invoke-direct {v1, v2, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->e:Landroid/view/ScaleGestureDetector;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->f:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$C;

    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->g:I

    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->h:I

    iput-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->i:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->j:Z

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->s:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->t:J

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->u:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->v:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic H(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static synthetic I(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static synthetic J(Ljava/lang/Number;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static synthetic K(Ljava/lang/Number;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static synthetic a(Ljava/lang/Integer;)I
    .locals 0

    invoke-static {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->H(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/lang/Number;)I
    .locals 0

    invoke-static {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->K(Ljava/lang/Number;)I

    move-result p0

    return p0
.end method

.method public static synthetic c(Ljava/lang/Integer;)I
    .locals 0

    invoke-static {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->I(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static synthetic d(Ljava/lang/Number;)I
    .locals 0

    invoke-static {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->J(Ljava/lang/Number;)I

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->j:Z

    return p0
.end method

.method public static synthetic f(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$B;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->q:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$B;

    return-object p0
.end method

.method public static synthetic g(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->o:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a;

    return-object p0
.end method

.method public static synthetic h(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a;)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a;
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->o:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a;

    return-object p1
.end method


# virtual methods
.method public A()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "version"

    const-string v3, "0.0.1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->i:Ljava/lang/String;

    const-string v3, "name"

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/zjx/jyandroid/R$string;->keymap_editor_text1:I

    invoke-static {v4}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/zjx/jyandroid/base/util/b$h;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/zjx/jyandroid/base/util/b$h;-><init>(I)V

    invoke-virtual {v4}, Lcom/zjx/jyandroid/base/util/b$h;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v2, "components"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1b

    iget-object v3, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    if-nez v4, :cond_1

    goto/16 :goto_3

    :cond_1
    check-cast v3, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;

    if-ne v4, v5, :cond_3

    move-object v4, v3

    check-cast v4, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;

    invoke-virtual {v4}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;->getKeyCodeArray()Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_3

    :cond_2
    new-instance v4, Lr/X;

    invoke-direct {v4}, Lr/X;-><init>()V

    invoke-virtual {v4, v3}, Lr/X;->d(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    invoke-virtual {v4}, Lr/X;->f()Ljava/util/Map;

    move-result-object v3

    goto/16 :goto_2

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;

    if-ne v4, v5, :cond_4

    new-instance v4, Lr/q;

    invoke-direct {v4}, Lr/q;-><init>()V

    invoke-virtual {v4, v3}, Lr/q;->d(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    invoke-virtual {v4}, Lr/q;->f()Ljava/util/Map;

    move-result-object v3

    goto/16 :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;

    if-ne v4, v5, :cond_5

    new-instance v4, Lr/w0;

    invoke-direct {v4}, Lr/w0;-><init>()V

    invoke-virtual {v4, v3}, Lr/w0;->d(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    invoke-virtual {v4}, Lr/w0;->f()Ljava/util/Map;

    move-result-object v3

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;

    if-ne v4, v5, :cond_7

    move-object v4, v3

    check-cast v4, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;

    invoke-virtual {v4}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;->getKeyCodeArray()Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-nez v4, :cond_6

    goto/16 :goto_3

    :cond_6
    new-instance v4, Lr/L0;

    invoke-direct {v4}, Lr/L0;-><init>()V

    invoke-virtual {v4, v3}, Lr/L0;->d(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    invoke-virtual {v4}, Lr/L0;->f()Ljava/util/Map;

    move-result-object v3

    goto/16 :goto_2

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;

    if-ne v4, v5, :cond_8

    new-instance v4, Lr/F0;

    invoke-direct {v4}, Lr/F0;-><init>()V

    invoke-virtual {v4, v3}, Lr/F0;->d(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    invoke-virtual {v4}, Lr/F0;->f()Ljava/util/Map;

    move-result-object v3

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;

    if-ne v4, v5, :cond_9

    new-instance v4, Lr/x;

    invoke-direct {v4}, Lr/x;-><init>()V

    invoke-virtual {v4, v3}, Lr/x;->d(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    invoke-virtual {v4}, Lr/x;->f()Ljava/util/Map;

    move-result-object v3

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/B;

    if-ne v4, v5, :cond_b

    new-instance v4, Lr/M0;

    invoke-direct {v4}, Lr/M0;-><init>()V

    move-object v5, v3

    check-cast v5, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/B;

    invoke-virtual {v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;->getKeyCodeArray()Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-nez v5, :cond_a

    goto/16 :goto_3

    :cond_a
    invoke-virtual {v4, v3}, Lr/M0;->d(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    invoke-virtual {v4}, Lr/M0;->f()Ljava/util/Map;

    move-result-object v3

    goto/16 :goto_2

    :cond_b
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Li/d;

    if-ne v4, v5, :cond_d

    new-instance v4, Lf/n;

    invoke-direct {v4}, Lf/n;-><init>()V

    move-object v5, v3

    check-cast v5, Li/d;

    invoke-virtual {v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;->getKeyCodeArray()Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-nez v5, :cond_c

    goto/16 :goto_3

    :cond_c
    invoke-virtual {v4, v3}, Lf/n;->d(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    invoke-virtual {v4}, Lf/n;->f()Ljava/util/Map;

    move-result-object v3

    goto/16 :goto_2

    :cond_d
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Li/a;

    if-ne v4, v5, :cond_f

    new-instance v4, Lf/b;

    invoke-direct {v4}, Lf/b;-><init>()V

    move-object v5, v3

    check-cast v5, Li/a;

    invoke-virtual {v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;->getKeyCodeArray()Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-nez v5, :cond_e

    goto/16 :goto_3

    :cond_e
    invoke-virtual {v4, v3}, Lf/b;->d(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    invoke-virtual {v4}, Lf/b;->f()Ljava/util/Map;

    move-result-object v3

    goto/16 :goto_2

    :cond_f
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/v;

    if-ne v4, v5, :cond_10

    check-cast v3, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/v;

    invoke-virtual {v3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/v;->toMap()Ljava/util/Map;

    move-result-object v3

    goto/16 :goto_2

    :cond_10
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;

    if-ne v4, v5, :cond_11

    check-cast v3, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;

    invoke-virtual {v3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->toMap()Ljava/util/Map;

    move-result-object v3

    goto/16 :goto_2

    :cond_11
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/l;

    if-ne v4, v5, :cond_12

    new-instance v4, Lr/r;

    invoke-direct {v4}, Lr/r;-><init>()V

    invoke-virtual {v4, v3}, Lr/q;->d(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    invoke-virtual {v4}, Lr/r;->f()Ljava/util/Map;

    move-result-object v3

    goto/16 :goto_2

    :cond_12
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/r;

    if-ne v4, v5, :cond_13

    check-cast v3, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/r;

    invoke-virtual {v3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/r;->toMap()Ljava/util/Map;

    move-result-object v3

    goto :goto_2

    :cond_13
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/h;

    if-ne v4, v5, :cond_14

    check-cast v3, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/h;

    invoke-virtual {v3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/h;->toMap()Ljava/util/Map;

    move-result-object v3

    goto :goto_2

    :cond_14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/i;

    if-ne v4, v5, :cond_15

    check-cast v3, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/i;

    invoke-virtual {v3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/i;->toMap()Ljava/util/Map;

    move-result-object v3

    goto :goto_2

    :cond_15
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Li/c;

    if-ne v4, v5, :cond_16

    check-cast v3, Li/c;

    invoke-virtual {v3}, Li/c;->toMap()Ljava/util/Map;

    move-result-object v3

    goto :goto_2

    :cond_16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Li/b;

    if-ne v4, v5, :cond_17

    check-cast v3, Li/b;

    invoke-virtual {v3}, Li/b;->toMap()Ljava/util/Map;

    move-result-object v3

    goto :goto_2

    :cond_17
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/zjx/jyandroid/Extensions/GeneralRC/KeymapComponents/UploadKeymapComponentGeneralRCSwitchConfig;

    if-ne v4, v5, :cond_18

    check-cast v3, Lcom/zjx/jyandroid/Extensions/GeneralRC/KeymapComponents/UploadKeymapComponentGeneralRCSwitchConfig;

    invoke-virtual {v3}, Lcom/zjx/jyandroid/Extensions/GeneralRC/KeymapComponents/UploadKeymapComponentGeneralRCSwitchConfig;->toMap()Ljava/util/Map;

    move-result-object v3

    goto :goto_2

    :cond_18
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/zjx/jyandroid/Extensions/dnf/keymapcomponent/UploadKeymapComponentDnfMoveFingerCastSkill;

    if-ne v4, v5, :cond_19

    check-cast v3, Lcom/zjx/jyandroid/Extensions/dnf/keymapcomponent/UploadKeymapComponentDnfMoveFingerCastSkill;

    invoke-virtual {v3}, Lcom/zjx/jyandroid/Extensions/dnf/keymapcomponent/UploadKeymapComponentDnfMoveFingerCastSkill;->toMap()Ljava/util/Map;

    move-result-object v3

    goto :goto_2

    :cond_19
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_1a

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_1b
    return-object v1
.end method

.method public B()Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$C;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->f:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$C;

    return-object v0
.end method

.method public C()Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->m:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    return-object v0
.end method

.method public D()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->o:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->l:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public E(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;->getKeymapComponents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->C()Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    move-result-object v2

    if-ne v2, v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->R(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public F()Z
    .locals 1

    const-class v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->G(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public G(Ljava/lang/Class;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public declared-synchronized L()V
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->setDefaultEventReceiverEnabled(Z)V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    sget v3, Lcom/zjx/jyandroid/R$layout;->components_holder_view:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    iput-object v3, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    sget v3, Lcom/zjx/jyandroid/R$layout;->keymap_upload_floating_panel:I

    invoke-virtual {v2, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;

    iput-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->l:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;

    new-instance v2, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$w;

    invoke-direct {v2, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$w;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;)V

    iput-object v2, v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;->a:Lcom/zjx/jyandroid/base/Interfaces/ObjectRunnable;

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->l:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;

    new-instance v2, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$x;

    invoke-direct {v2, p0, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$x;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;Landroid/content/Context;)V

    iput-object v2, v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;->b:Lcom/zjx/jyandroid/base/Interfaces/ObjectRunnable;

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->l:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$y;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$y;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;)V

    iput-object v1, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;->c:Lcom/zjx/jyandroid/base/Interfaces/ObjectRunnable;

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->l:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$z;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$z;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;)V

    iput-object v1, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;->d:Lcom/zjx/jyandroid/base/Interfaces/ObjectRunnable;

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->l:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$A;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$A;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;)V

    iput-object v1, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;->e:Lcom/zjx/jyandroid/base/Interfaces/ObjectRunnable;

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->i()Landroid/util/Size;

    move-result-object v0

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v1

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-static {}, Ll/b;->i()I

    move-result v0

    or-int/lit8 v8, v0, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x33

    invoke-virtual/range {v1 .. v8}, Ll/b;->d(Lcom/zjx/jyandroid/base/BaseFloatingView;IIIIII)V

    const/16 v0, 0x118

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v5

    const/16 v0, 0x32

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v6

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v1

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->l:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;

    const/4 v4, 0x0

    const/16 v7, 0x31

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v7}, Ll/b;->c(Lcom/zjx/jyandroid/base/BaseFloatingView;IIIII)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->l:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setDraggable(Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    new-instance v2, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$a;

    invoke-direct {v2, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$a;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;)V

    invoke-virtual {v0, v2}, Lcom/zjx/jyandroid/base/BaseFloatingView;->setOnConfigurationChangedListener(Lcom/zjx/jyandroid/base/Interfaces/MView$OnViewConfigurationChangedListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->a:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->registerEventReceiver(Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->n:Ljava/util/HashSet;

    iput-boolean v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public M(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V
    .locals 6

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->r(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    invoke-virtual {p2}, Lcom/zjx/jyandroid/base/CustomViews/MConstraintLayout;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v5, v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->i(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    instance-of v0, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;->getKeyCodeArray()Ljava/util/LinkedList;

    move-result-object p1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->c:Ljava/util/LinkedList;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    instance-of v0, p2, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;

    if-eqz v0, :cond_2

    check-cast p2, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;

    invoke-virtual {p2, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;->setKeyCodeArray(Ljava/util/LinkedList;)V

    const/4 p1, 0x1

    iput-boolean p1, p2, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;->disableKeysChange:Z

    goto :goto_1

    :cond_2
    instance-of v0, p2, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;

    if-eqz v0, :cond_3

    check-cast p2, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;

    iput-object p1, p2, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->c:Ljava/util/LinkedList;

    :cond_3
    :goto_1
    return-void
.end method

.method public N()V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->r:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->p(Ljava/util/Map;)V

    return-void
.end method

.method public O(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$B;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->q:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$B;

    return-void
.end method

.method public P(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->r:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;->content:Ljava/util/Map;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->r:Ljava/util/Map;

    :goto_0
    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->p:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->r:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->p(Ljava/util/Map;)V

    return-void
.end method

.method public Q(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$C;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->f:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$C;

    return-void
.end method

.method public R(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->m:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setSelected(Z)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setSelected(Z)V

    :cond_1
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->f:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$C;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->m:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    if-eq v1, p1, :cond_2

    invoke-interface {v0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$C;->a(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    :cond_2
    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->m:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    return-void
.end method

.method public S()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->o:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->l:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public T()V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;->getKeymapComponents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public U(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V
    .locals 9

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->o:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b;->y()Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    move-result-object v1

    sget-object v2, Lcom/zjx/jyandroid/base/Definitions/WorkingMode;->WangzuoMode:Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    sget v1, Lcom/zjx/jyandroid/R$layout;->component_settings_container_view_wangzuo:I

    invoke-virtual {v0, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->o:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a;

    goto :goto_0

    :cond_1
    sget v1, Lcom/zjx/jyandroid/R$layout;->component_settings_container_view_sc:I

    invoke-virtual {v0, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->o:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a;

    :goto_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->o:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a;

    invoke-virtual {v0, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a;->setKeymapEditor(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;)V

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->j()Landroid/util/Size;

    move-result-object v0

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v1

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->o:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v6

    const/16 v7, 0x33

    invoke-static {}, Ll/b;->i()I

    move-result v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v8}, Ll/b;->d(Lcom/zjx/jyandroid/base/BaseFloatingView;IIIIII)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->o:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a;

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a;->setComponent(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->o:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a;

    iget-object p1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a;->b:Landroid/widget/Button;

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$q;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$q;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->o:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a;

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$r;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$r;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;)V

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a;->setOnButtonClickedListener(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a$c;)V

    return-void
.end method

.method public declared-synchronized V()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->unregisterEventReceiver(Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;)V

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->l:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;

    invoke-virtual {v0, v1}, Ll/b;->q(Lcom/zjx/jyandroid/base/BaseFloatingView;)V

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v0, v1}, Ll/b;->q(Lcom/zjx/jyandroid/base/BaseFloatingView;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->l:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/KeymapUploadPanelView;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->setDefaultEventReceiverEnabled(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public eventOccurred(Ljava/util/LinkedList;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/zjx/jyandroid/base/InputEvents/InputEvent;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;

    sget-object v4, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$s;->b:[I

    invoke-virtual {v1}, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;->getType()Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x7

    if-eq v4, v5, :cond_1a

    const/4 v5, 0x3

    if-eq v4, v5, :cond_18

    if-eq v4, v6, :cond_12

    const/4 v6, 0x5

    if-eq v4, v6, :cond_c

    if-eq v4, v7, :cond_6

    const/16 v2, 0x8

    if-eq v4, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->m:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->s:Z

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    check-cast v1, Lcom/zjx/jyandroid/base/InputEvents/GameControllerMoveEvent;

    :try_start_0
    iget v2, v1, Lcom/zjx/jyandroid/base/InputEvents/GameControllerMoveEvent;->x:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v4, v2

    const-wide v6, 0x3fc999999999999aL    # 0.2

    cmpl-double v2, v4, v6

    if-gtz v2, :cond_4

    iget v1, v1, Lcom/zjx/jyandroid/base/InputEvents/GameControllerMoveEvent;->y:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    cmpl-double v1, v1, v6

    if-lez v1, :cond_0

    :cond_4
    const-class v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/l;

    invoke-virtual {p0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->G(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->o:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a;

    if-nez v1, :cond_5

    new-instance v1, Lcom/zjx/jyandroid/base/Components/Alert;

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    sget v4, Lcom/zjx/jyandroid/R$string;->keymap_editor_select_type_title:I

    invoke-static {v4}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/zjx/jyandroid/R$string;->keymap_editor_select_type_content:I

    invoke-static {v5}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v4, v5}, Lcom/zjx/jyandroid/base/Components/Alert;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;

    sget v4, Lcom/zjx/jyandroid/R$string;->keymap_editor_select_type_btn_joystick:I

    invoke-static {v4}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;->DEFAULT:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    new-instance v6, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$n;

    invoke-direct {v6, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$n;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;)V

    invoke-direct {v2, v4, v5, v6}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;)V

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/base/Components/Alert;->addAction(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V

    new-instance v2, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;

    sget v4, Lcom/zjx/jyandroid/R$string;->keymap_editor_select_type_btn_press:I

    invoke-static {v4}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;->CANCEL:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    new-instance v6, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$o;

    invoke-direct {v6, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$o;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;)V

    invoke-direct {v2, v4, v5, v6}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;)V

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/base/Components/Alert;->addAction(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V

    iput-boolean v3, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->s:Z

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    new-instance v3, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$p;

    invoke-direct {v3, p0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$p;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;Lcom/zjx/jyandroid/base/Components/Alert;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_5
    new-instance v1, Lcom/zjx/jyandroid/base/Exceptions/JumpOutOfIfDummyException;

    invoke-direct {v1}, Lcom/zjx/jyandroid/base/Exceptions/JumpOutOfIfDummyException;-><init>()V

    throw v1
    :try_end_0
    .catch Lcom/zjx/jyandroid/base/Exceptions/JumpOutOfIfDummyException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    check-cast v1, Lcom/zjx/jyandroid/base/InputEvents/GameControllerButtonEvent;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/base/InputEvents/GameControllerButtonEvent;->getButtonMask()I

    move-result v1

    iget-object v4, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->m:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    if-nez v4, :cond_7

    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->h:I

    goto/16 :goto_0

    :cond_7
    instance-of v4, v4, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/m;

    if-nez v4, :cond_8

    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->h:I

    goto/16 :goto_0

    :cond_8
    iget v4, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->h:I

    xor-int/2addr v4, v1

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_b

    shl-int v7, v3, v6

    and-int v8, v4, v7

    if-eqz v8, :cond_a

    sget-object v8, Lcom/zjx/jyandroid/base/Definitions/GameControllerButtons;->buttonIndexToKeyCode:[I

    aget v8, v8, v6

    iget-object v9, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->m:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    check-cast v9, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/m;

    and-int/2addr v7, v1

    if-eqz v7, :cond_9

    new-instance v7, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;

    sget-object v10, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;->GAME_CONTROLLER:Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;

    invoke-direct {v7, v10, v8, v3}, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;-><init>(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;IZ)V

    invoke-virtual {v9, v7}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/m;->keyEventReceived(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;)V

    goto :goto_2

    :cond_9
    new-instance v7, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;

    sget-object v10, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;->GAME_CONTROLLER:Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;

    invoke-direct {v7, v10, v8, v2}, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;-><init>(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;IZ)V

    invoke-virtual {v9, v7}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/m;->keyEventReceived(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;)V

    :cond_a
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_b
    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->h:I

    goto/16 :goto_0

    :cond_c
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->m:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    if-nez v2, :cond_d

    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_d
    instance-of v2, v2, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/m;

    if-nez v2, :cond_e

    monitor-exit p0

    goto/16 :goto_0

    :cond_e
    iget-boolean v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->s:Z

    if-eqz v2, :cond_f

    monitor-exit p0

    goto/16 :goto_0

    :cond_f
    check-cast v1, Lcom/zjx/jyandroid/base/InputEvents/ScrollEvent;

    iget v1, v1, Lcom/zjx/jyandroid/base/InputEvents/ScrollEvent;->y:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gez v1, :cond_10

    const v1, 0xfff8

    goto :goto_3

    :cond_10
    const v1, 0xfff7

    :goto_3
    :try_start_2
    const-class v2, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;

    invoke-virtual {p0, v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->G(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->o:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a;

    if-nez v2, :cond_11

    new-instance v2, Lcom/zjx/jyandroid/base/Components/Alert;

    iget-object v4, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    sget v5, Lcom/zjx/jyandroid/R$string;->keymap_editor_select_type_title:I

    invoke-static {v5}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/zjx/jyandroid/R$string;->keymap_editor_select_type_content:I

    invoke-static {v6}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v5, v6}, Lcom/zjx/jyandroid/base/Components/Alert;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;

    sget v5, Lcom/zjx/jyandroid/R$string;->keymap_editor_select_type_btn_scroll:I

    invoke-static {v5}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;->DEFAULT:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    new-instance v7, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$i;

    invoke-direct {v7, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$i;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;)V

    invoke-direct {v4, v5, v6, v7}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;)V

    invoke-virtual {v2, v4}, Lcom/zjx/jyandroid/base/Components/Alert;->addAction(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V

    new-instance v4, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;

    sget v5, Lcom/zjx/jyandroid/R$string;->keymap_editor_select_type_btn_press:I

    invoke-static {v5}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;->CANCEL:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    new-instance v7, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$j;

    invoke-direct {v7, p0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$j;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;I)V

    invoke-direct {v4, v5, v6, v7}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;)V

    invoke-virtual {v2, v4}, Lcom/zjx/jyandroid/base/Components/Alert;->addAction(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V

    iput-boolean v3, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->s:Z

    iget-object v4, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    new-instance v5, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$l;

    invoke-direct {v5, p0, v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$l;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;Lcom/zjx/jyandroid/base/Components/Alert;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Lcom/zjx/jyandroid/base/Exceptions/JumpOutOfIfDummyException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :cond_11
    :try_start_4
    new-instance v2, Lcom/zjx/jyandroid/base/Exceptions/JumpOutOfIfDummyException;

    invoke-direct {v2}, Lcom/zjx/jyandroid/base/Exceptions/JumpOutOfIfDummyException;-><init>()V

    throw v2
    :try_end_4
    .catch Lcom/zjx/jyandroid/base/Exceptions/JumpOutOfIfDummyException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_1
    :try_start_5
    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->m:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    check-cast v2, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/m;

    new-instance v4, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;

    sget-object v5, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;->MOUSE:Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;

    invoke-direct {v4, v5, v1, v3}, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;-><init>(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;IZ)V

    invoke-virtual {v2, v4}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/m;->keyEventReceived(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;)V

    iget-object v3, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    new-instance v4, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$m;

    invoke-direct {v4, p0, v2, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$m;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/m;I)V

    const-wide/16 v1, 0x64

    invoke-virtual {v3, v4, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit p0

    goto/16 :goto_0

    :goto_4
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1

    :cond_12
    check-cast v1, Lcom/zjx/jyandroid/base/InputEvents/MouseButtonEvent;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/base/InputEvents/MouseButtonEvent;->getButtonMask()I

    move-result v1

    iget-object v4, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->m:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    if-nez v4, :cond_13

    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->g:I

    goto/16 :goto_0

    :cond_13
    instance-of v4, v4, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/m;

    if-nez v4, :cond_14

    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->g:I

    goto/16 :goto_0

    :cond_14
    iget v4, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->g:I

    xor-int/2addr v4, v1

    move v5, v2

    :goto_5
    if-ge v5, v7, :cond_17

    shl-int v6, v3, v5

    and-int v8, v4, v6

    if-eqz v8, :cond_16

    sget-object v8, Lcom/zjx/jyandroid/base/Definitions/MouseButtons;->buttonIndexToKeyCode:[I

    aget v8, v8, v5

    iget-object v9, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->m:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    check-cast v9, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/m;

    and-int/2addr v6, v1

    if-eqz v6, :cond_15

    new-instance v6, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;

    sget-object v10, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;->MOUSE:Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;

    invoke-direct {v6, v10, v8, v3}, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;-><init>(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;IZ)V

    invoke-virtual {v9, v6}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/m;->keyEventReceived(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;)V

    goto :goto_6

    :cond_15
    new-instance v6, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;

    sget-object v10, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;->MOUSE:Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;

    invoke-direct {v6, v10, v8, v2}, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;-><init>(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;IZ)V

    invoke-virtual {v9, v6}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/m;->keyEventReceived(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;)V

    :cond_16
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_17
    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->g:I

    goto/16 :goto_0

    :cond_18
    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->m:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    if-nez v2, :cond_19

    goto/16 :goto_0

    :cond_19
    check-cast v1, Lcom/zjx/jyandroid/base/InputEvents/MouseMoveEvent;

    iget v2, v1, Lcom/zjx/jyandroid/base/InputEvents/MouseMoveEvent;->x:I

    mul-int/2addr v2, v2

    iget v1, v1, Lcom/zjx/jyandroid/base/InputEvents/MouseMoveEvent;->y:I

    mul-int/2addr v1, v1

    add-int/2addr v2, v1

    int-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x403e000000000000L    # 30.0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->F()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xc8

    invoke-virtual {p0, v1, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->w(II)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;

    move-result-object v1

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    new-instance v3, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$h;

    invoke-direct {v3, p0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$h;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_1a
    monitor-enter p0

    :try_start_6
    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->m:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    if-nez v2, :cond_1b

    monitor-exit p0

    goto/16 :goto_0

    :catchall_1
    move-exception p1

    goto/16 :goto_7

    :cond_1b
    instance-of v2, v2, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/m;

    if-nez v2, :cond_1c

    monitor-exit p0

    goto/16 :goto_0

    :cond_1c
    iget-boolean v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->s:Z

    if-eqz v2, :cond_1d

    monitor-exit p0

    goto/16 :goto_0

    :cond_1d
    check-cast v1, Lcom/zjx/jyandroid/base/InputEvents/KeyboardEvent;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-boolean v2, v1, Lcom/zjx/jyandroid/base/InputEvents/KeyboardEvent;->down:Z

    if-eqz v2, :cond_20

    iget v2, v1, Lcom/zjx/jyandroid/base/InputEvents/KeyboardEvent;->usage:I

    if-eq v2, v6, :cond_1e

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_1e

    const/16 v4, 0x16

    if-eq v2, v4, :cond_1e

    if-ne v2, v7, :cond_20

    :cond_1e
    const-class v2, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;

    invoke-virtual {p0, v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->G(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1f

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->o:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/a;

    if-nez v2, :cond_1f

    new-instance v2, Lcom/zjx/jyandroid/base/Components/Alert;

    iget-object v4, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    sget v5, Lcom/zjx/jyandroid/R$string;->keymap_editor_select_type_title:I

    invoke-static {v5}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/zjx/jyandroid/R$string;->keymap_editor_select_type_content:I

    invoke-static {v6}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v5, v6}, Lcom/zjx/jyandroid/base/Components/Alert;-><init>(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;

    sget v5, Lcom/zjx/jyandroid/R$string;->keymap_editor_select_type_btn_joystick:I

    invoke-static {v5}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;->DEFAULT:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    new-instance v7, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$e;

    invoke-direct {v7, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$e;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;)V

    invoke-direct {v4, v5, v6, v7}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;)V

    invoke-virtual {v2, v4}, Lcom/zjx/jyandroid/base/Components/Alert;->addAction(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V

    new-instance v4, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;

    sget v5, Lcom/zjx/jyandroid/R$string;->keymap_editor_select_type_btn_press:I

    invoke-static {v5}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;->CANCEL:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    new-instance v7, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$f;

    invoke-direct {v7, p0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$f;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;Lcom/zjx/jyandroid/base/InputEvents/KeyboardEvent;)V

    invoke-direct {v4, v5, v6, v7}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;)V

    invoke-virtual {v2, v4}, Lcom/zjx/jyandroid/base/Components/Alert;->addAction(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V

    iput-boolean v3, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->s:Z

    iget-object v3, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    new-instance v4, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$g;

    invoke-direct {v4, p0, v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$g;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;Lcom/zjx/jyandroid/base/Components/Alert;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_7
    .catch Lcom/zjx/jyandroid/base/Exceptions/JumpOutOfIfDummyException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0

    :cond_1f
    :try_start_9
    new-instance v2, Lcom/zjx/jyandroid/base/Exceptions/JumpOutOfIfDummyException;

    invoke-direct {v2}, Lcom/zjx/jyandroid/base/Exceptions/JumpOutOfIfDummyException;-><init>()V

    throw v2
    :try_end_9
    .catch Lcom/zjx/jyandroid/base/Exceptions/JumpOutOfIfDummyException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catch_2
    :cond_20
    :try_start_a
    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->m:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    check-cast v2, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/m;

    new-instance v3, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;

    sget-object v4, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;->KEYBOARD:Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;

    iget v5, v1, Lcom/zjx/jyandroid/base/InputEvents/KeyboardEvent;->usage:I

    iget-boolean v1, v1, Lcom/zjx/jyandroid/base/InputEvents/KeyboardEvent;->down:Z

    invoke-direct {v3, v4, v5, v1}, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;-><init>(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent$KeyEventSource;IZ)V

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/m;->keyEventReceived(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;)V

    monitor-exit p0

    goto/16 :goto_0

    :goto_7
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw p1

    :cond_21
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-nez p1, :cond_22

    move v2, v3

    :cond_22
    return v2
.end method

.method public i(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$b;

    invoke-direct {v0, p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$b;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->addOnTouchHandler(Lcom/zjx/jyandroid/base/Interfaces/MView$OnTouchHandler;)V

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->j(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$c;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$c;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;)V

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->addOnTouchHandler(Lcom/zjx/jyandroid/base/Interfaces/MView$OnTouchHandler;)V

    return-void
.end method

.method public final j(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V
    .locals 1

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$d;

    invoke-direct {v0, p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$d;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    iput-object v0, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->deleteButtonClickedCallback:Lcom/zjx/jyandroid/base/Interfaces/ObjectRunnable;

    return-void
.end method

.method public k(II)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->t(II)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->i(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    return-object p1
.end method

.method public l(II)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->v(II)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->i(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    return-object p1
.end method

.method public m(II)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->w(II)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->i(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    return-object p1
.end method

.method public n(II)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->x(II)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->i(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    return-object p1
.end method

.method public o(II)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->y(II)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->i(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    return-object p1
.end method

.method public p(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, ". Error: "

    const-string v1, "\u6620\u5c04\u56fe\u9519\u8bef\u3002componentInfo: "

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->m:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setSelected(Z)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->m:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    :cond_0
    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->q()V

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v2, "version"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_2

    new-instance v2, Lcom/zjx/jyandroid/base/util/a;

    sget v3, Lcom/zjx/jyandroid/R$string;->keymap_editor_text2:I

    invoke-static {v3}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/zjx/jyandroid/base/util/ToastView$a;->d:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {v2, v3, v4}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {v2}, Lcom/zjx/jyandroid/base/util/a;->a()V

    goto :goto_0

    :cond_2
    new-instance v3, Lio/github/g00fy2/versioncompare/Version;

    const-string v4, "0.0.1"

    invoke-direct {v3, v4}, Lio/github/g00fy2/versioncompare/Version;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lio/github/g00fy2/versioncompare/Version;->isLowerThan(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v2, Lcom/zjx/jyandroid/base/util/a;

    sget v3, Lcom/zjx/jyandroid/R$string;->keymap_editor_text3:I

    invoke-static {v3}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/zjx/jyandroid/base/util/ToastView$a;->d:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {v2, v3, v4}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {v2}, Lcom/zjx/jyandroid/base/util/a;->a()V

    goto :goto_0

    :cond_3
    new-instance v3, Lio/github/g00fy2/versioncompare/Version;

    invoke-direct {v3, v4}, Lio/github/g00fy2/versioncompare/Version;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lio/github/g00fy2/versioncompare/Version;->isHigherThan(Ljava/lang/String;)Z

    :goto_0
    const-string v2, "name"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->i:Ljava/lang/String;

    const-string v2, "components"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/AbstractList;

    if-nez p1, :cond_4

    return-void

    :cond_4
    invoke-virtual {p1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    :try_start_0
    const-string v3, "type"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    sget-object v4, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->NORMAL_TOUCH_POINT:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x1

    if-ne v3, v4, :cond_6

    new-instance v3, Lr/X;

    invoke-direct {v3}, Lr/X;-><init>()V

    invoke-virtual {v3, v2}, Lr/X;->e(Ljava/util/Map;)V

    new-instance v4, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;

    iget-object v6, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lr/X;->a()Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;->setKeyCodeArray(Ljava/util/LinkedList;)V

    invoke-virtual {v3}, Lr/X;->b()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    iput-boolean v5, v4, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;->disableKeysChange:Z

    invoke-virtual {v3}, Lr/X;->H()Lr/X$a;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->setType(Lr/X$a;)V

    invoke-virtual {v3}, Lr/X;->u()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->setClickDuration(I)V

    invoke-virtual {v3}, Lr/X;->v()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->setClickInterval(I)V

    invoke-virtual {v3}, Lr/X;->z()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->setLongPressTriggerThreshold(I)V

    invoke-virtual {v3}, Lr/X;->Q()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->setResetView(Z)V

    invoke-virtual {v3}, Lr/X;->F()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->setResetViewLatency(I)V

    invoke-virtual {v3}, Lr/X;->P()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->setReactivateJoystick(Z)V

    invoke-virtual {v3}, Lr/X;->E()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->setReactivateJoystickLatency(I)V

    invoke-virtual {v3}, Lr/X;->R()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->setSwitchMouseLock(Z)V

    invoke-virtual {v3}, Lr/X;->B()Lr/H$a;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->setMouseDisplayMode(Lr/H$a;)V

    invoke-virtual {v3}, Lr/X;->C()Landroid/graphics/Point;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->setMouseDisplayPosition(Landroid/graphics/Point;)V

    invoke-virtual {v3}, Lr/X;->M()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->setLinkMouseMove(Z)V

    invoke-virtual {v3}, Lr/X;->y()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->setLinkMouseMoveSpeed(I)V

    invoke-virtual {v3}, Lr/X;->N()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->setLinkMouseMoveResetOnEdge(Z)V

    invoke-virtual {v3}, Lr/X;->A()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->setMouseDisplayLatency(I)V

    invoke-virtual {v3}, Lr/X;->G()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->setTriggerLatency(I)V

    invoke-virtual {v3}, Lr/X;->L()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->setConditionalCrazyTap(Z)V

    invoke-virtual {v3}, Lr/X;->w()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->setCrazyTapWeapons(Ljava/util/List;)V

    invoke-virtual {v3}, Lr/X;->O()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;->setPerformAimingRecognition(Z)V

    invoke-virtual {v3}, Lr/X;->D()Lr/H$b;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->setMouseDisplayTriggerType(Lr/H$b;)V

    invoke-virtual {p0, v4}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->i(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    goto/16 :goto_1

    :catch_0
    move-exception v3

    goto/16 :goto_2

    :catch_1
    move-exception v3

    goto/16 :goto_3

    :catch_2
    move-exception v3

    goto/16 :goto_4

    :cond_6
    sget-object v4, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->SWIPE_TOUCH_POINT:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_7

    new-instance v3, Lr/L0;

    invoke-direct {v3}, Lr/L0;-><init>()V

    invoke-virtual {v3, v2}, Lr/L0;->e(Ljava/util/Map;)V

    new-instance v4, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;

    iget-object v6, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;-><init>(Landroid/content/Context;)V

    iput-boolean v5, v4, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;->disableKeysChange:Z

    invoke-virtual {v3}, Lr/L0;->b()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v3}, Lr/L0;->a()Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;->setKeyCodeArray(Ljava/util/LinkedList;)V

    invoke-virtual {v3}, Lr/L0;->n()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->setTriggerLatency(I)V

    invoke-virtual {v3}, Lr/L0;->l()Landroid/graphics/Point;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->setEndPoint(Landroid/graphics/Point;)V

    invoke-virtual {v3}, Lr/L0;->p()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->setMouseModeHorizontalSwipe(Z)V

    invoke-virtual {v3}, Lr/L0;->m()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->setSwipeDuration(I)V

    invoke-virtual {v3}, Lr/L0;->o()Lr/L0$a;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;->setType(Lr/L0$a;)V

    invoke-virtual {p0, v4}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->i(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    goto/16 :goto_1

    :cond_7
    sget-object v4, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->JOYSTICK:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_8

    new-instance v3, Lr/q;

    invoke-direct {v3}, Lr/q;-><init>()V

    invoke-virtual {v3, v2}, Lr/q;->e(Ljava/util/Map;)V

    new-instance v4, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;

    iget-object v5, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lr/q;->b()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->setFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v3}, Lr/q;->v()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->setSwitchRadiusKeyCode(I)V

    invoke-virtual {v3}, Lr/q;->w()Lr/q$a;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->setSwitchRadiusMode(Lr/q$a;)V

    invoke-virtual {v3}, Lr/q;->x()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->setSwitchRadiusRatio(I)V

    invoke-virtual {v3}, Lr/q;->B()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->setZeroRadiusRatio(I)V

    invoke-virtual {v3}, Lr/q;->r()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->setDelayResponseTime(I)V

    invoke-virtual {v3}, Lr/q;->z()Lr/q$b;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->setTriggerMode(Lr/q$b;)V

    invoke-virtual {v3}, Lr/q;->y()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->setTotalMoveStep(I)V

    invoke-virtual {p0, v4}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->i(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    goto/16 :goto_1

    :cond_8
    sget-object v4, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->FPS_VIEW:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_9

    new-instance v3, Lr/w0;

    invoke-direct {v3}, Lr/w0;-><init>()V

    invoke-virtual {v3, v2}, Lr/w0;->e(Ljava/util/Map;)V

    new-instance v4, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;

    iget-object v5, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3}, Lr/w0;->O()Z

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v3}, Lr/w0;->b()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->setFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v3}, Lr/w0;->H()Ljava/util/LinkedList;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Ln/a;

    invoke-direct {v6}, Ln/a;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->setSwitchMouseLockKeyCodes([I)V

    invoke-virtual {v3}, Lr/w0;->J()Ljava/util/LinkedList;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Ln/b;

    invoke-direct {v6}, Ln/b;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->setSwitchViewSpeedKeyCodes([I)V

    invoke-virtual {v3}, Lr/w0;->F()Lr/H$a;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->setMouseDisplayMode(Lr/H$a;)V

    invoke-virtual {v3}, Lr/w0;->y()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->setHorizontalSensitivity(I)V

    invoke-virtual {v3}, Lr/w0;->M()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->setVerticalSensitivity(I)V

    invoke-virtual {v3}, Lr/w0;->I()Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$f;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->setSwitchSensitivityMode(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w$f;)V

    invoke-virtual {v3}, Lr/w0;->z()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->setHorizontalSensitivityAfterSwitch(I)V

    invoke-virtual {v3}, Lr/w0;->N()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->setVerticalSensitivityAfterSwitch(I)V

    invoke-virtual {v3}, Lr/w0;->L()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->setTouchUpDelay(I)V

    invoke-virtual {v3}, Lr/w0;->K()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->setTouchDownDelay(I)V

    invoke-virtual {v3}, Lr/w0;->Q()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->setMouseAccelerationEnable(Z)V

    invoke-virtual {v3}, Lr/w0;->P()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->setEdgeReleaseOnly(Z)V

    invoke-virtual {v3}, Lr/w0;->x()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->setAutoReleaseInterval(I)V

    invoke-virtual {v3}, Lr/w0;->D()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->setMouseAccelerationValue(I)V

    invoke-virtual {v3}, Lr/w0;->C()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->setMouseAccelerationCoefficient(I)V

    invoke-virtual {v3}, Lr/w0;->A()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->setMaxAcceleration(I)V

    invoke-virtual {v3}, Lr/w0;->B()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->setMinAcceleration(I)V

    invoke-virtual {v3}, Lr/w0;->G()Landroid/graphics/Point;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/s;->setMouseDisplayPosition(Landroid/graphics/Point;)V

    invoke-virtual {p0, v4}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->i(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    goto/16 :goto_1

    :cond_9
    sget-object v4, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->MOUSE_SCROLL:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_a

    new-instance v3, Lr/F0;

    invoke-direct {v3}, Lr/F0;-><init>()V

    invoke-virtual {v3, v2}, Lr/F0;->e(Ljava/util/Map;)V

    new-instance v4, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;

    iget-object v5, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lr/F0;->b()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v3}, Lr/F0;->o()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->setResetOnEdge(Z)V

    invoke-virtual {v3}, Lr/F0;->m()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->setSensitivity(I)V

    invoke-virtual {v3}, Lr/F0;->p()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->setScrollFromLastPosition(Z)V

    invoke-virtual {v3}, Lr/F0;->l()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->setAutoReleaseInterval(I)V

    invoke-virtual {v3}, Lr/F0;->n()Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->setInvertYAxis(Z)V

    invoke-virtual {p0, v4}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->i(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    goto/16 :goto_1

    :cond_a
    sget-object v4, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->MACRO:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_c

    new-instance v3, Lr/x;

    invoke-direct {v3}, Lr/x;-><init>()V

    invoke-virtual {v3, v2}, Lr/x;->e(Ljava/util/Map;)V

    new-instance v4, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;

    iget-object v5, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lr/x;->g()Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->setOperations(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;)V

    invoke-virtual {v3}, Lr/x;->b()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    iget-object v5, v3, Lr/x;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Ln/c;

    invoke-direct {v6}, Ln/c;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->setTriggerKeyCodes([I)V

    iget-object v5, v3, Lr/x;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Ln/d;

    invoke-direct {v6}, Ln/d;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->setTerminateKeyCodes([I)V

    iget-object v5, v3, Lr/x;->e:Lr/x$b;

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->setTriggerMode(Lr/x$b;)V

    iget-object v3, v3, Lr/x;->b:Ljava/lang/String;

    if-eqz v3, :cond_b

    invoke-virtual {v4, v3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->setName(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p0, v4}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->i(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    goto/16 :goto_1

    :cond_c
    sget-object v4, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->SWITCH_FLOATING_BALL_DISPLAY:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_d

    new-instance v3, Lr/M0;

    invoke-direct {v3}, Lr/M0;-><init>()V

    invoke-virtual {v3, v2}, Lr/M0;->e(Ljava/util/Map;)V

    new-instance v4, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/B;

    iget-object v5, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/B;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lr/M0;->b()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v3}, Lr/M0;->a()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;->setKeyCodeArray(Ljava/util/LinkedList;)V

    invoke-virtual {p0, v4}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->i(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    goto/16 :goto_1

    :cond_d
    sget-object v4, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->SWITCH_CONTROL_PANEL_DISPLAY:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_e

    new-instance v3, Lf/n;

    invoke-direct {v3}, Lf/n;-><init>()V

    invoke-virtual {v3, v2}, Lf/n;->e(Ljava/util/Map;)V

    new-instance v4, Li/d;

    iget-object v5, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Li/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lf/n;->b()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v3}, Lf/n;->a()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;->setKeyCodeArray(Ljava/util/LinkedList;)V

    invoke-virtual {p0, v4}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->i(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    goto/16 :goto_1

    :cond_e
    sget-object v4, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->ADJUST_RECOIL_VALUE:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_f

    new-instance v3, Lf/b;

    invoke-direct {v3}, Lf/b;-><init>()V

    invoke-virtual {v3, v2}, Lf/b;->e(Ljava/util/Map;)V

    new-instance v4, Li/a;

    iget-object v5, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Li/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lf/b;->b()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v3}, Lf/b;->a()Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;->setKeyCodeArray(Ljava/util/LinkedList;)V

    invoke-virtual {v3}, Lf/b;->h()I

    move-result v3

    invoke-virtual {v4, v3}, Li/a;->setValue(I)V

    invoke-virtual {p0, v4}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->i(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    goto/16 :goto_1

    :cond_f
    sget-object v4, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->NORMAL_TOUCH_POINT_SC:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_10

    new-instance v3, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/v;

    iget-object v4, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/v;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/v;->loadFromMap(Ljava/util/Map;)V

    invoke-virtual {p0, v3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->i(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    goto/16 :goto_1

    :cond_10
    sget-object v4, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->MACRO_SC:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_11

    new-instance v3, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;

    iget-object v4, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->loadFromMap(Ljava/util/Map;)V

    invoke-virtual {p0, v3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->i(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    goto/16 :goto_1

    :cond_11
    sget-object v4, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->JOYSTICK_SC:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_12

    new-instance v3, Lr/r;

    invoke-direct {v3}, Lr/r;-><init>()V

    invoke-virtual {v3, v2}, Lr/q;->e(Ljava/util/Map;)V

    new-instance v4, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/l;

    iget-object v5, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/l;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lr/q;->b()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->setFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v3}, Lr/q;->v()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->setSwitchRadiusKeyCode(I)V

    invoke-virtual {v3}, Lr/q;->w()Lr/q$a;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->setSwitchRadiusMode(Lr/q$a;)V

    invoke-virtual {v3}, Lr/q;->x()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->setSwitchRadiusRatio(I)V

    invoke-virtual {v3}, Lr/q;->B()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->setZeroRadiusRatio(I)V

    invoke-virtual {v3}, Lr/q;->r()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->setDelayResponseTime(I)V

    invoke-virtual {v3}, Lr/q;->y()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->setTotalMoveStep(I)V

    invoke-virtual {p0, v4}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->i(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    goto/16 :goto_1

    :cond_12
    sget-object v4, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->MACRO_TERMINATE_SC:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_13

    new-instance v3, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/r;

    iget-object v4, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/r;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/r;->loadFromMap(Ljava/util/Map;)V

    invoke-virtual {p0, v3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->i(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    goto/16 :goto_1

    :cond_13
    sget-object v4, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->BIND_HORIZONTAL_RECOIL_CONTROL:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_14

    new-instance v3, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/h;

    iget-object v4, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/h;->loadFromMap(Ljava/util/Map;)V

    invoke-virtual {p0, v3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->i(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    goto/16 :goto_1

    :cond_14
    sget-object v4, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->BIND_HORIZONTAL_RECOIL_CONTROL_SC:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_15

    new-instance v3, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/i;

    iget-object v4, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/i;->loadFromMap(Ljava/util/Map;)V

    invoke-virtual {p0, v3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->i(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    goto/16 :goto_1

    :cond_15
    sget-object v4, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->PUBG_LONG_PRESS_CROUCH:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_16

    new-instance v3, Li/c;

    iget-object v4, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Li/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Li/c;->loadFromMap(Ljava/util/Map;)V

    invoke-virtual {p0, v3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->i(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    goto/16 :goto_1

    :cond_16
    sget-object v4, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->CANCEL_HOUYAO:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_17

    new-instance v3, Li/b;

    iget-object v4, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Li/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Li/b;->loadFromMap(Ljava/util/Map;)V

    invoke-virtual {p0, v3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->i(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    goto/16 :goto_1

    :cond_17
    sget-object v4, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->GENERAL_RC_SWITCH_CONFIG_SC:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_18

    new-instance v3, Lcom/zjx/jyandroid/Extensions/GeneralRC/KeymapComponents/UploadKeymapComponentGeneralRCSwitchConfig;

    iget-object v4, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/zjx/jyandroid/Extensions/GeneralRC/KeymapComponents/UploadKeymapComponentGeneralRCSwitchConfig;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/zjx/jyandroid/Extensions/GeneralRC/KeymapComponents/UploadKeymapComponentGeneralRCSwitchConfig;->loadFromMap(Ljava/util/Map;)V

    invoke-virtual {p0, v3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->i(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    goto/16 :goto_1

    :cond_18
    sget-object v4, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->DNF_CAST_SKILL:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_5

    new-instance v3, Lcom/zjx/jyandroid/Extensions/dnf/keymapcomponent/UploadKeymapComponentDnfMoveFingerCastSkill;

    iget-object v4, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/zjx/jyandroid/Extensions/dnf/keymapcomponent/UploadKeymapComponentDnfMoveFingerCastSkill;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/zjx/jyandroid/Extensions/dnf/keymapcomponent/UploadKeymapComponentDnfMoveFingerCastSkill;->loadFromMap(Ljava/util/Map;)V

    invoke-virtual {p0, v3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->i(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ly/c;->b(Ljava/lang/String;)V

    new-instance v2, Lcom/zjx/jyandroid/base/util/a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/zjx/jyandroid/R$string;->keymap_editor_error_with_info:I

    invoke-static {v5}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {v2, v3, v4}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {v2}, Lcom/zjx/jyandroid/base/util/a;->a()V

    goto/16 :goto_1

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ly/c;->b(Ljava/lang/String;)V

    new-instance v2, Lcom/zjx/jyandroid/base/util/a;

    sget v3, Lcom/zjx/jyandroid/R$string;->keymap_editor_error_version_too_low:I

    invoke-static {v3}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {v2, v3, v4}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {v2}, Lcom/zjx/jyandroid/base/util/a;->a()V

    goto/16 :goto_1

    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ly/c;->b(Ljava/lang/String;)V

    new-instance v2, Lcom/zjx/jyandroid/base/util/a;

    sget v3, Lcom/zjx/jyandroid/R$string;->keymap_editor_error_keymap_broken:I

    invoke-static {v3}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {v2, v3, v4}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {v2}, Lcom/zjx/jyandroid/base/util/a;->a()V

    goto/16 :goto_1

    :cond_19
    return-void
.end method

.method public q()V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->removeViews(II)V

    return-void
.end method

.method public r(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V
    .locals 4

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->m:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->R(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    :cond_0
    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->getComponentViews()[Landroid/view/View;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public s(Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;II)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;
    .locals 4

    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x32

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    sget-object v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$s;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    move-object p1, v1

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/e;->getDefaultSize()Landroid/util/Size;

    move-result-object v0

    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/i;

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/i;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/e;->getDefaultSize()Landroid/util/Size;

    move-result-object v0

    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/r;

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/r;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->getDefaultSize()Landroid/util/Size;

    move-result-object v0

    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/l;

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/l;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;->getDefaultSize()Landroid/util/Size;

    move-result-object v0

    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/e;->getDefaultSize()Landroid/util/Size;

    move-result-object v0

    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/v;

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/v;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_5
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->getDefaultSize()Landroid/util/Size;

    move-result-object v0

    new-instance p1, Li/d;

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Li/d;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_6
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->getDefaultSize()Landroid/util/Size;

    move-result-object v0

    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/B;

    iget-object v2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/B;-><init>(Landroid/content/Context;)V

    :goto_0
    if-eqz p1, :cond_0

    new-instance v1, Landroid/graphics/Point;

    int-to-float p2, p2

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr p2, v2

    float-to-int p2, p2

    int-to-float p3, p3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr p3, v2

    float-to-int p3, p3

    invoke-direct {v1, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    new-instance p2, Landroid/graphics/Rect;

    iget p3, v1, Landroid/graphics/Point;->x:I

    iget v2, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    add-int/2addr v3, p3

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    add-int/2addr v1, v0

    invoke-direct {p2, p3, v2, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    return-object p1

    :cond_0
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public t(II)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;
    .locals 4

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->getDefaultSize()Landroid/util/Size;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    int-to-float p1, p1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr p1, v2

    float-to-int p1, p1

    int-to-float p2, p2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr p2, v2

    float-to-int p2, p2

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    new-instance p1, Landroid/graphics/Rect;

    iget p2, v1, Landroid/graphics/Point;->x:I

    iget v2, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    add-int/2addr v3, p2

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    add-int/2addr v1, v0

    invoke-direct {p1, p2, v2, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget p2, p1, Landroid/graphics/Rect;->left:I

    const/4 v0, 0x0

    if-gez p2, :cond_0

    neg-int p2, p2

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_0
    iget p2, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-le p2, v1, :cond_1

    iget p2, p1, Landroid/graphics/Rect;->right:I

    neg-int p2, p2

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr p2, v1

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Rect;->offset(II)V

    :cond_1
    :goto_0
    iget p2, p1, Landroid/graphics/Rect;->top:I

    if-gez p2, :cond_2

    neg-int p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    :cond_2
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-le p2, v1, :cond_3

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    neg-int p2, p2

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr p2, v1

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Rect;->offset(II)V

    :cond_3
    :goto_1
    new-instance p2, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/k;->setFrame(Landroid/graphics/Rect;)V

    return-object p2
.end method

.method public u(II)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;
    .locals 4

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->getDefaultSize()Landroid/util/Size;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    int-to-float p1, p1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr p1, v2

    float-to-int p1, p1

    int-to-float p2, p2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr p2, v2

    float-to-int p2, p2

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    new-instance p1, Landroid/graphics/Rect;

    iget p2, v1, Landroid/graphics/Point;->x:I

    iget v2, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    add-int/2addr v3, p2

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    add-int/2addr v1, v0

    invoke-direct {p1, p2, v2, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget p2, p1, Landroid/graphics/Rect;->left:I

    const/4 v0, 0x0

    if-gez p2, :cond_0

    neg-int p2, p2

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_0
    iget p2, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-le p2, v1, :cond_1

    iget p2, p1, Landroid/graphics/Rect;->right:I

    neg-int p2, p2

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr p2, v1

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Rect;->offset(II)V

    :cond_1
    :goto_0
    iget p2, p1, Landroid/graphics/Rect;->top:I

    if-gez p2, :cond_2

    neg-int p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    :cond_2
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-le p2, v1, :cond_3

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    neg-int p2, p2

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr p2, v1

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Rect;->offset(II)V

    :cond_3
    :goto_1
    new-instance p2, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    return-object p2
.end method

.method public v(II)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;
    .locals 4

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->getDefaultSize()Landroid/util/Size;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    int-to-float p1, p1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr p1, v2

    float-to-int p1, p1

    int-to-float p2, p2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr p2, v2

    float-to-int p2, p2

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    new-instance p1, Landroid/graphics/Rect;

    iget p2, v1, Landroid/graphics/Point;->x:I

    iget v2, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    add-int/2addr v3, p2

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    add-int/2addr v1, v0

    invoke-direct {p1, p2, v2, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget p2, p1, Landroid/graphics/Rect;->left:I

    const/4 v0, 0x0

    if-gez p2, :cond_0

    neg-int p2, p2

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_0
    iget p2, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-le p2, v1, :cond_1

    iget p2, p1, Landroid/graphics/Rect;->right:I

    neg-int p2, p2

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr p2, v1

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Rect;->offset(II)V

    :cond_1
    :goto_0
    iget p2, p1, Landroid/graphics/Rect;->top:I

    if-gez p2, :cond_2

    neg-int p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    :cond_2
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-le p2, v1, :cond_3

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    neg-int p2, p2

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr p2, v1

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Rect;->offset(II)V

    :cond_3
    :goto_1
    new-instance p2, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    return-object p2
.end method

.method public w(II)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;
    .locals 4

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->getDefaultSize()Landroid/util/Size;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    int-to-float p1, p1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr p1, v2

    float-to-int p1, p1

    int-to-float p2, p2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr p2, v2

    float-to-int p2, p2

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    new-instance p1, Landroid/graphics/Rect;

    iget p2, v1, Landroid/graphics/Point;->x:I

    iget v2, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    add-int/2addr v3, p2

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    add-int/2addr v1, v0

    invoke-direct {p1, p2, v2, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget p2, p1, Landroid/graphics/Rect;->left:I

    const/4 v0, 0x0

    if-gez p2, :cond_0

    neg-int p2, p2

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_0
    iget p2, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-le p2, v1, :cond_1

    iget p2, p1, Landroid/graphics/Rect;->right:I

    neg-int p2, p2

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr p2, v1

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Rect;->offset(II)V

    :cond_1
    :goto_0
    iget p2, p1, Landroid/graphics/Rect;->top:I

    if-gez p2, :cond_2

    neg-int p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    :cond_2
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-le p2, v1, :cond_3

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    neg-int p2, p2

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr p2, v1

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Rect;->offset(II)V

    :cond_3
    :goto_1
    new-instance p2, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/w;->setFrame(Landroid/graphics/Rect;)V

    return-object p2
.end method

.method public x(II)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;
    .locals 4

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;->getDefaultSize()Landroid/util/Size;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    int-to-float p1, p1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr p1, v2

    float-to-int p1, p1

    int-to-float p2, p2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr p2, v2

    float-to-int p2, p2

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    new-instance p1, Landroid/graphics/Rect;

    iget p2, v1, Landroid/graphics/Point;->x:I

    iget v2, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    add-int/2addr v3, p2

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    add-int/2addr v1, v0

    invoke-direct {p1, p2, v2, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget p2, p1, Landroid/graphics/Rect;->left:I

    const/4 v0, 0x0

    if-gez p2, :cond_0

    neg-int p2, p2

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_0
    iget p2, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-le p2, v1, :cond_1

    iget p2, p1, Landroid/graphics/Rect;->right:I

    neg-int p2, p2

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr p2, v1

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Rect;->offset(II)V

    :cond_1
    :goto_0
    iget p2, p1, Landroid/graphics/Rect;->top:I

    if-gez p2, :cond_2

    neg-int p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    :cond_2
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-le p2, v1, :cond_3

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    neg-int p2, p2

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr p2, v1

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Rect;->offset(II)V

    :cond_3
    :goto_1
    new-instance p2, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/y;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    return-object p2
.end method

.method public y(II)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;
    .locals 4

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->getDefaultSize()Landroid/util/Size;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    int-to-float p1, p1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr p1, v2

    float-to-int p1, p1

    int-to-float p2, p2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr p2, v2

    float-to-int p2, p2

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    new-instance p1, Landroid/graphics/Rect;

    iget p2, v1, Landroid/graphics/Point;->x:I

    iget v2, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    add-int/2addr v3, p2

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    add-int/2addr v1, v0

    invoke-direct {p1, p2, v2, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget p2, p1, Landroid/graphics/Rect;->left:I

    const/4 v0, 0x0

    if-gez p2, :cond_0

    neg-int p2, p2

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_0
    iget p2, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-le p2, v1, :cond_1

    iget p2, p1, Landroid/graphics/Rect;->right:I

    neg-int p2, p2

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr p2, v1

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Rect;->offset(II)V

    :cond_1
    :goto_0
    iget p2, p1, Landroid/graphics/Rect;->top:I

    if-gez p2, :cond_2

    neg-int p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    :cond_2
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-le p2, v1, :cond_3

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    neg-int p2, p2

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr p2, v1

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Rect;->offset(II)V

    :cond_3
    :goto_1
    new-instance p2, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->k:Lcom/zjx/jyandroid/ForegroundService/UI/ComponentsHolderView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    return-object p2
.end method

.method public z()Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->p:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;

    return-object v0
.end method
