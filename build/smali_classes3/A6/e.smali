.class public LA6/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LA6/e$a;,
        LA6/e$b;,
        LA6/e$c;,
        LA6/e$d;
    }
.end annotation


# static fields
.field public static c:LA6/e;


# instance fields
.field public a:Landroid/content/SharedPreferences;

.field public b:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/App;->V1:Landroid/content/Context;

    sget v2, Lcom/zjx/jyandroid/e$k;->Ig:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, LA6/e;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, LA6/e;->b:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static a0()LA6/e;
    .locals 1

    sget-object v0, LA6/e;->c:LA6/e;

    if-nez v0, :cond_0

    new-instance v0, LA6/e;

    invoke-direct {v0}, LA6/e;-><init>()V

    sput-object v0, LA6/e;->c:LA6/e;

    :cond_0
    sget-object v0, LA6/e;->c:LA6/e;

    return-object v0
.end method


# virtual methods
.method public A()Z
    .locals 3

    iget-object v0, p0, LA6/e;->a:Landroid/content/SharedPreferences;

    const-wide v1, -0x31591f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public B(Lt5/a;)V
    .locals 3

    iget-object v0, p0, LA6/e;->b:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x2f261f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public C(Z)V
    .locals 3

    iget-object v0, p0, LA6/e;->b:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x322c1f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public D(LA6/e$a;)V
    .locals 3

    iget-object v0, p0, LA6/e;->b:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x31441f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public E(Z)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, LA6/e;->b:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x311b1f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public F(Z)V
    .locals 3

    iget-object v0, p0, LA6/e;->b:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x30131f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public G(Z)V
    .locals 3

    iget-object v0, p0, LA6/e;->b:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x30431f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public H(Z)V
    .locals 3

    iget-object v0, p0, LA6/e;->b:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x2faa1f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public I(Z)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, LA6/e;->b:Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/zjx/jyandroid/e$k;->B1:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public J(Z)V
    .locals 3

    iget-object v0, p0, LA6/e;->b:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x32031f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public K(Lcom/zjx/jyandroid/c$a;)V
    .locals 3

    iget-object v0, p0, LA6/e;->b:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x31ec1f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public L(F)V
    .locals 3

    iget-object v0, p0, LA6/e;->b:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x31dd1f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public M(Lcom/zjx/jyandroid/ForegroundService/UI/a$f;)V
    .locals 3

    iget-object v0, p0, LA6/e;->b:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x31931f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public N(LA6/e$c;)V
    .locals 3

    iget-object v0, p0, LA6/e;->b:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x31bc1f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public O(LA6/e$b;)V
    .locals 3

    iget-object v0, p0, LA6/e;->b:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x31781f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public P(I)V
    .locals 3

    iget-object v0, p0, LA6/e;->b:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x30f41f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public Q(I)V
    .locals 3

    iget-object v0, p0, LA6/e;->b:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x30d21f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public R(I)V
    .locals 3

    iget-object v0, p0, LA6/e;->b:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x30b11f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public S(LA6/e$d;)V
    .locals 3

    iget-object v0, p0, LA6/e;->b:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x32581f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public T(I)V
    .locals 3

    iget-object v0, p0, LA6/e;->b:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x2fdf1f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public U(Z)V
    .locals 3

    iget-object v0, p0, LA6/e;->b:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x2f4e1f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public V(I)V
    .locals 3

    iget-object v0, p0, LA6/e;->b:Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/zjx/jyandroid/e$k;->v2:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public W(I)V
    .locals 3

    iget-object v0, p0, LA6/e;->b:Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/zjx/jyandroid/e$k;->w2:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public X(I)V
    .locals 3

    iget-object v0, p0, LA6/e;->b:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x305b1f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public Y(Lr6/e;)V
    .locals 3

    iget-object v0, p0, LA6/e;->b:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x30931f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public Z(Z)V
    .locals 3

    iget-object v0, p0, LA6/e;->b:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x31641f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a()Lt5/a;
    .locals 5

    invoke-static {}, Lt5/a;->values()[Lt5/a;

    move-result-object v0

    iget-object v1, p0, LA6/e;->a:Landroid/content/SharedPreferences;

    const-wide v2, -0x2f121f79daedL

    invoke-static {v2, v3}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lt5/a;->Y:Lt5/a;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aget-object v0, v0, v1

    if-ne v0, v3, :cond_0

    sget-object v0, Lt5/a;->X:Lt5/a;

    :cond_0
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, LA6/e;->a:Landroid/content/SharedPreferences;

    const-wide v1, -0x32671f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Led/a;->a:[Ljava/lang/String;

    const-wide v3, -0x32711f79daedL

    invoke-static {v3, v4, v2}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b0()V
    .locals 5

    invoke-virtual {p0}, LA6/e;->b()Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x32861f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, LA6/e;->b:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Led/a;->a:[Ljava/lang/String;

    const-wide v2, -0x329b1f79daedL

    invoke-static {v2, v3, v1}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide v3, -0x32a51f79daedL

    invoke-static {v3, v4, v1}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_0
    sget-object v1, Led/a;->a:[Ljava/lang/String;

    const-wide v2, -0x32ba1f79daedL

    invoke-static {v2, v3, v1}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LA6/e;->b:Landroid/content/SharedPreferences$Editor;

    const-wide v2, -0x32cf1f79daedL

    invoke-static {v2, v3, v1}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide v3, -0x32d91f79daedL

    invoke-static {v3, v4, v1}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, LA6/e;->b:Landroid/content/SharedPreferences$Editor;

    const-wide v2, -0x32f11f79daedL

    invoke-static {v2, v3, v1}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide v3, -0x32fb1f79daedL

    invoke-static {v3, v4, v1}, Led/b;->b(J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    return-void
.end method

.method public c()LA6/e$a;
    .locals 3

    iget-object v0, p0, LA6/e;->a:Landroid/content/SharedPreferences;

    const-wide v1, -0x312f1f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, LA6/e;->t()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, LA6/e$a;->Y:LA6/e$a;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    goto :goto_1

    :cond_0
    sget-object v2, LA6/e$a;->X:LA6/e$a;

    goto :goto_0

    :goto_1
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, LA6/e$a;->values()[LA6/e$a;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public d()Lcom/zjx/jyandroid/c$a;
    .locals 4

    sget-object v0, Lcom/zjx/jyandroid/c$a;->X:Lcom/zjx/jyandroid/c$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p0, LA6/e;->a:Landroid/content/SharedPreferences;

    const-wide v2, -0x31e71f79daedL

    invoke-static {v2, v3}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/zjx/jyandroid/c$a;->values()[Lcom/zjx/jyandroid/c$a;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public e()F
    .locals 3

    iget-object v0, p0, LA6/e;->a:Landroid/content/SharedPreferences;

    const-wide v1, -0x31d31f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    const v1, 0x3e99999a    # 0.3f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public f()Lcom/zjx/jyandroid/ForegroundService/UI/a$f;
    .locals 3

    iget-object v0, p0, LA6/e;->a:Landroid/content/SharedPreferences;

    const-wide v1, -0x31811f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/a$f;->values()[Lcom/zjx/jyandroid/ForegroundService/UI/a$f;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/zjx/jyandroid/ForegroundService/UI/a$f;->X:Lcom/zjx/jyandroid/ForegroundService/UI/a$f;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/a$f;->values()[Lcom/zjx/jyandroid/ForegroundService/UI/a$f;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public g()LA6/e$c;
    .locals 3

    iget-object v0, p0, LA6/e;->a:Landroid/content/SharedPreferences;

    const-wide v1, -0x31a51f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    sget-object v2, LA6/e$c;->X:LA6/e$c;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, LA6/e$c;->values()[LA6/e$c;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public h()LA6/e$b;
    .locals 3

    iget-object v0, p0, LA6/e;->a:Landroid/content/SharedPreferences;

    const-wide v1, -0x316f1f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, LA6/e$b;->values()[LA6/e$b;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public i()I
    .locals 3

    iget-object v0, p0, LA6/e;->a:Landroid/content/SharedPreferences;

    const-wide v1, -0x30e11f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public j()I
    .locals 3

    iget-object v0, p0, LA6/e;->a:Landroid/content/SharedPreferences;

    const-wide v1, -0x30c31f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public k()I
    .locals 3

    iget-object v0, p0, LA6/e;->a:Landroid/content/SharedPreferences;

    const-wide v1, -0x309f1f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public l()LA6/e$d;
    .locals 4

    :try_start_0
    invoke-static {}, LA6/b;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-wide v2, -0x32431f79daedL

    invoke-static {v2, v3}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    sget-object v0, LA6/e$d;->Y:LA6/e$d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    iget-object v0, p0, LA6/e;->a:Landroid/content/SharedPreferences;

    const-wide v1, -0x32491f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    sget-object v2, LA6/e$d;->X:LA6/e$d;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, LA6/e$d;->values()[LA6/e$d;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public m()I
    .locals 3

    iget-object v0, p0, LA6/e;->a:Landroid/content/SharedPreferences;

    const-wide v1, -0x2fc31f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public n()I
    .locals 3

    iget-object v0, p0, LA6/e;->a:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/zjx/jyandroid/e$k;->v2:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public o()I
    .locals 3

    iget-object v0, p0, LA6/e;->a:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/zjx/jyandroid/e$k;->w2:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public p()I
    .locals 3

    iget-object v0, p0, LA6/e;->a:Landroid/content/SharedPreferences;

    const-wide v1, -0x30711f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public q()Lr6/e;
    .locals 4

    invoke-static {}, Lr6/e;->values()[Lr6/e;

    move-result-object v0

    iget-object v1, p0, LA6/e;->a:Landroid/content/SharedPreferences;

    const-wide v2, -0x30871f79daedL

    invoke-static {v2, v3}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public r()Z
    .locals 3

    iget-object v0, p0, LA6/e;->a:Landroid/content/SharedPreferences;

    const-wide v1, -0x2f3a1f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public s()Z
    .locals 3

    iget-object v0, p0, LA6/e;->a:Landroid/content/SharedPreferences;

    const-wide v1, -0x32151f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public t()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, LA6/e;->a:Landroid/content/SharedPreferences;

    const-wide v1, -0x31071f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public u()Z
    .locals 3

    iget-object v0, p0, LA6/e;->a:Landroid/content/SharedPreferences;

    const-wide v1, -0x2ffb1f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public v()Z
    .locals 3

    iget-object v0, p0, LA6/e;->a:Landroid/content/SharedPreferences;

    const-wide v1, -0x302b1f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LR5/a;->w()LR5/a;

    move-result-object v0

    invoke-virtual {v0}, LR5/a;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public w()Z
    .locals 3

    iget-object v0, p0, LA6/e;->a:Landroid/content/SharedPreferences;

    const-wide v1, -0x2f911f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public x()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public y()Z
    .locals 3

    iget-object v0, p0, LA6/e;->a:Landroid/content/SharedPreferences;

    const-wide v1, -0x31f11f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public z()Z
    .locals 3

    iget-object v0, p0, LA6/e;->a:Landroid/content/SharedPreferences;

    const-wide v1, -0x2f631f79daedL

    invoke-static {v1, v2}, Led/a;->a(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
