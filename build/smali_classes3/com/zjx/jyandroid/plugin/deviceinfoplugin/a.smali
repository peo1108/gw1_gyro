.class public Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a$b;,
        Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a$a;
    }
.end annotation


# instance fields
.field public a:Landroid/content/SharedPreferences;

.field public b:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u001e\u00a2B\u00c8m\u001e\u00a1;\u00a4@\u00cce\u0003\u00849\u00d3\u007f\u00e4a\u0003\u008d.\u00ccQ\u00fb\u0091\u000b\u00aa"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;->b:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Point;
    .locals 5

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$h;->j()Landroid/util/Size;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    iget-object v2, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;->a:Landroid/content/SharedPreferences;

    const-string v3, "*\u00a6Z\u00c4b#"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x64

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;->a:Landroid/content/SharedPreferences;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    sub-int/2addr v0, v4

    const-string v4, "*\u00a6Z\u00c4b\""

    invoke-static/range {v4 .. v4}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public b()Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a$b;
    .locals 4

    invoke-static {}, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a$b;->values()[Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;->a:Landroid/content/SharedPreferences;

    const-string v2, "(\u00a2R\u00d3k\u0008\u0080\u0007\u00a3[\u00f9"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public c(Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a$a;)Z
    .locals 3

    sget-object v0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a$a;->X:Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a$a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a$a;->Y:Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a$a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a$a;->V1:Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a$a;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;->a:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\u0005\u00aeG\u00e5g\u0008\u00989\u00a3V"

    invoke-static/range {p1 .. p1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public d()Z
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "?\u00a9U\u00c3b\u001e\u008c"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "<\u00aeL\u00f1o\u0015\u008d9"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public f(Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a$a;Z)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;->b:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\u0005\u00aeG\u00e5g\u0008\u00989\u00a3V"

    invoke-static/range {p1 .. p1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public g(Z)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "?\u00a9U\u00c3b\u001e\u008c"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public h(Z)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "<\u00aeL\u00f1o\u0015\u008d9"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public i(II)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "*\u00a6Z\u00c4b#"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;->b:Landroid/content/SharedPreferences$Editor;

    const-string v0, "*\u00a6Z\u00c4b\""

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public j(Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a$b;)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/plugin/deviceinfoplugin/a;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "(\u00a2R\u00d3k\u0008\u0080\u0007\u00a3[\u00f9"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
