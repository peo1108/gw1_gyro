.class public Lcom/zjx/jyandroid/Extensions/pubg/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/Extensions/pubg/f$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Landroid/content/SharedPreferences;

.field public d:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->a:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->b:I

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v1

    const-wide v2, -0x36d7dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->d:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->c:Landroid/content/SharedPreferences;

    const-wide v1, -0x4b17dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public B()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public C()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public D(I)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->d:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x3f47dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public E(I)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->d:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x3bd7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public F(I)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->d:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x4307dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public G(II)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->d:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x55b7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->d:Landroid/content/SharedPreferences$Editor;

    const-wide v0, -0x5717dacc755L

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public H(II)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->d:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x5117dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->d:Landroid/content/SharedPreferences$Editor;

    const-wide v0, -0x5207dacc755L

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public I(Lcom/zjx/jyandroid/Extensions/pubg/c$a;)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->d:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x6b47dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public J(Z)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->d:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x77f7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public K(Z)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->d:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x7b57dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public L(F)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->d:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/f;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public M(F)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->d:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/f;->m()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public N(Z)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->d:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x44e7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public O(Z)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->d:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x6e77dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public P(Z)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->d:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x38e7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public Q(Z)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->d:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x49a7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public R(Z)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->d:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x4ce7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public S(II)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->d:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x4e57dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->d:Landroid/content/SharedPreferences$Editor;

    const-wide v0, -0x4ec7dacc755L

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public T(Z)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->d:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x5de7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public U(I)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->d:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x6d37dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public V(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->d:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x5b57dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public W(Lcom/zjx/jyandroid/Extensions/pubg/f$a;)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->d:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x6177dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public X(I)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->d:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x67c7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public Y(Z)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->d:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x4bb7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public Z(Z)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->d:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x5f17dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a()Z
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->c:Landroid/content/SharedPreferences;

    const-wide v1, -0x7637dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public a0(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->d:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x6a17dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public b()Z
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->c:Landroid/content/SharedPreferences;

    const-wide v1, -0x79b7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b0(Z)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->d:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x4697dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public c()Z
    .locals 2

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/f;->p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public c0(I)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->d:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x6477dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public d()I
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->c:Landroid/content/SharedPreferences;

    const-wide v1, -0x3d67dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->a:I

    return v0
.end method

.method public f()I
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->c:Landroid/content/SharedPreferences;

    const-wide v1, -0x4127dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public g()Landroid/graphics/Point;
    .locals 8

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->j()Landroid/util/Size;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->c:Landroid/content/SharedPreferences;

    const-wide v2, -0x52f7dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->c:Landroid/content/SharedPreferences;

    const-wide v4, -0x5457dacc755L

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const/16 v7, 0x10e

    invoke-static {v7}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    sub-float/2addr v5, v7

    float-to-int v5, v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-gez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x64

    if-le v1, v4, :cond_1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x64

    :cond_1
    :goto_0
    if-gez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x64

    if-le v2, v3, :cond_3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    add-int/lit8 v3, v0, -0x64

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v3}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public h()Landroid/graphics/Point;
    .locals 7

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->j()Landroid/util/Size;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->c:Landroid/content/SharedPreferences;

    const-wide v2, -0x4f37dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->c:Landroid/content/SharedPreferences;

    const-wide v4, -0x5027dacc755L

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-gez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x64

    if-le v1, v4, :cond_1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x64

    :cond_1
    :goto_0
    if-gez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x64

    if-le v2, v3, :cond_3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    add-int/lit8 v3, v0, -0x64

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v3}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public i()Lcom/zjx/jyandroid/Extensions/pubg/c$a;
    .locals 4

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c$a;->values()[Lcom/zjx/jyandroid/Extensions/pubg/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->c:Landroid/content/SharedPreferences;

    const-wide v2, -0x6a97dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public j()F
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->c:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/f;->k()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public final k()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getActivateBundleIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide v0, -0x7367dacc755L

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x74c7dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()F
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->c:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/zjx/jyandroid/Extensions/pubg/f;->m()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public final m()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getActivateBundleIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide v0, -0x7077dacc755L

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x71e7dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Landroid/graphics/Point;
    .locals 7

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$i;->j()Landroid/util/Size;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->c:Landroid/content/SharedPreferences;

    const-wide v3, -0x4d77dacc755L

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x64

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->c:Landroid/content/SharedPreferences;

    const-wide v5, -0x4de7dacc755L

    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-interface {v3, v5, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public o()I
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->c:Landroid/content/SharedPreferences;

    const-wide v1, -0x6bf7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5a

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->c:Landroid/content/SharedPreferences;

    const-wide v1, -0x5877dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    const-wide v2, -0x59d7dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getActivateBundleIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getActivateBundleIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/c;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/d;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v1, -0x59e7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/d;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v1, -0x5b07dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public q()Lcom/zjx/jyandroid/Extensions/pubg/f$a;
    .locals 4

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/f$a;->values()[Lcom/zjx/jyandroid/Extensions/pubg/f$a;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->c:Landroid/content/SharedPreferences;

    const-wide v2, -0x6027dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public r()I
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->c:Landroid/content/SharedPreferences;

    const-wide v1, -0x6627dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->c:Landroid/content/SharedPreferences;

    const-wide v1, -0x6967dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    const-wide v2, -0x69e7dacc755L

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t()I
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->c:Landroid/content/SharedPreferences;

    const-wide v1, -0x62c7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public u()Z
    .locals 1

    # mdm-rc: accessory recognition removed (mdm_v2 has no accessory records)
    const/4 v0, 0x0

    return v0
.end method

.method public v()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public w()Z
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->c:Landroid/content/SharedPreferences;

    const-wide v1, -0x37a7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public x()Z
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->c:Landroid/content/SharedPreferences;

    const-wide v1, -0x4837dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public y()Z
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->c:Landroid/content/SharedPreferences;

    const-wide v1, -0x4c57dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public z()Z
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->c:Landroid/content/SharedPreferences;

    const-wide v1, -0x5cb7dacc755L

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$jyandroid$app;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getCameraGyroMode()I
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->c:Landroid/content/SharedPreferences;

    const-string v1, "gw2_camGyroMode"

    const/16 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCameraGyroSpeed()I
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->c:Landroid/content/SharedPreferences;

    const-string v1, "gw2_camGyroSpeed"

    const/16 v2, 0x5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getConnectionMode()I
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->c:Landroid/content/SharedPreferences;

    const-string v1, "gw2_connMode"

    const/16 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getGyroInvert()Z
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->c:Landroid/content/SharedPreferences;

    const-string v1, "gw2_gyroInvert"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getGyroOffWhenNoGun()Z
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->c:Landroid/content/SharedPreferences;

    const-string v1, "gw2_gyroOffNoGun"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getRcByGyro()Z
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->c:Landroid/content/SharedPreferences;

    const-string v1, "gw2_rcByGyro"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setRcByGyro(Z)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->d:Landroid/content/SharedPreferences$Editor;

    const-string v1, "gw2_rcByGyro"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setGyroInvert(Z)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/f;->d:Landroid/content/SharedPreferences$Editor;

    const-string v1, "gw2_gyroInvert"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
