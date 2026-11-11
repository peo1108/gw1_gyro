.class public LV6/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll7/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ll7/a$a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ll7/a$a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Lt7/a;

    invoke-direct {v1}, Lt7/a;-><init>()V

    invoke-virtual {v1, p1}, Lt7/a;->d(Ljava/util/Map;)V

    iget-object v2, v1, Lt7/a;->Z:Ljava/lang/String;

    invoke-static {}, LY6/a;->M0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, LW6/a;

    invoke-direct {v2}, LW6/a;-><init>()V

    invoke-virtual {v2, p1}, LW6/a;->d(Ljava/util/Map;)V

    new-instance p1, LX6/b;

    invoke-direct {p1}, LX6/b;-><init>()V

    new-instance v3, Landroid/graphics/Point;

    iget-object v4, v1, Lt7/a;->X:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    iget-object v5, v1, Lt7/a;->X:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, p1, LW5/c;->c:Landroid/graphics/Point;

    iget-object v3, v1, Lt7/a;->X:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, p1, LW5/c;->d:I

    iget-object v1, v1, Lt7/a;->X:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p1, LW5/c;->e:I

    iget-object v1, v2, LW6/a;->X:Lh7/b;

    invoke-virtual {v1}, Lh7/b;->n()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    new-instance v1, LX6/a;

    invoke-direct {v1}, LX6/a;-><init>()V

    iput-object p1, v1, LX6/a;->c:LX6/b;

    sget-object v4, LX6/b$a;->X:LX6/b$a;

    iput-object v4, v1, LX6/a;->d:LX6/b$a;

    new-instance v4, Ll7/a$a;

    iget-object v5, v2, LW6/a;->X:Lh7/b;

    invoke-direct {v4, v5, v1, v3}, Ll7/a$a;-><init>(Lh7/b;Lk7/a;Lj7/a;)V

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, v2, LW6/a;->Z:Lh7/b;

    invoke-virtual {v1}, Lh7/b;->n()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, LX6/a;

    invoke-direct {v1}, LX6/a;-><init>()V

    iput-object p1, v1, LX6/a;->c:LX6/b;

    sget-object v4, LX6/b$a;->Z:LX6/b$a;

    iput-object v4, v1, LX6/a;->d:LX6/b$a;

    new-instance v4, Ll7/a$a;

    iget-object v5, v2, LW6/a;->Z:Lh7/b;

    invoke-direct {v4, v5, v1, v3}, Ll7/a$a;-><init>(Lh7/b;Lk7/a;Lj7/a;)V

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, v2, LW6/a;->Y:Lh7/b;

    invoke-virtual {v1}, Lh7/b;->n()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, LX6/a;

    invoke-direct {v1}, LX6/a;-><init>()V

    iput-object p1, v1, LX6/a;->c:LX6/b;

    sget-object v4, LX6/b$a;->Y:LX6/b$a;

    iput-object v4, v1, LX6/a;->d:LX6/b$a;

    new-instance v4, Ll7/a$a;

    iget-object v5, v2, LW6/a;->Y:Lh7/b;

    invoke-direct {v4, v5, v1, v3}, Ll7/a$a;-><init>(Lh7/b;Lk7/a;Lj7/a;)V

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, v2, LW6/a;->V1:Lh7/b;

    invoke-virtual {v1}, Lh7/b;->n()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, LX6/a;

    invoke-direct {v1}, LX6/a;-><init>()V

    iput-object p1, v1, LX6/a;->c:LX6/b;

    sget-object v4, LX6/b$a;->V1:LX6/b$a;

    iput-object v4, v1, LX6/a;->d:LX6/b$a;

    new-instance v4, Ll7/a$a;

    iget-object v2, v2, LW6/a;->V1:Lh7/b;

    invoke-direct {v4, v2, v1, v3}, Ll7/a$a;-><init>(Lh7/b;Lk7/a;Lj7/a;)V

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v1, Ll7/a$a;

    new-instance v2, Lh7/b;

    const v4, 0xfffe

    const/4 v5, -0x1

    invoke-direct {v2, v4, v5}, Lh7/b;-><init>(II)V

    invoke-direct {v1, v2, p1, v3}, Ll7/a$a;-><init>(Lh7/b;Lk7/a;Lj7/a;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method
