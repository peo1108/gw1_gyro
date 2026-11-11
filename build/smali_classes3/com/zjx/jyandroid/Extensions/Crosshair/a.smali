.class public Lcom/zjx/jyandroid/Extensions/Crosshair/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/String; = "enabled"

.field public static final d:Ljava/lang/String; = "size"

.field public static final e:Ljava/lang/String; = "type"

.field public static final f:Ljava/lang/String; = "customized_style"

.field public static final g:Ljava/lang/String; = "hide_when_aiming"

.field public static final h:Ljava/lang/String; = "horizontal_offset"

.field public static final i:Ljava/lang/String; = "vertical_offset"

.field public static final j:Ljava/lang/String; = "color"


# instance fields
.field public a:Landroid/content/SharedPreferences;

.field public b:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u0019\u00b5[\u00d2}\u0013\u0089<\u00b0z\u00efl\u0004\u00b05\u00c9^\u00fej\u0016\u00ad"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/a;->b:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "9\u00a8X\u00ce|"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, -0x1000000

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public b()I
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "2\u00a8F\u00c8t\u0014\u0086!\u00a3C\u00c3f\u0010\u0085#\u00d8^"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/a;->a:Landroid/content/SharedPreferences;

    const-string v1, ")\u00aeN\u00c4"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public d()Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin$c;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin$c;->values()[Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin$c;

    move-result-object v1

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/a;->a:Landroid/content/SharedPreferences;

    const-string v3, ".\u00beD\u00c4"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aget-object v0, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-static {}, Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin$c;->values()[Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin$c;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public e()I
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/a;->a:Landroid/content/SharedPreferences;

    const-string v1, ",\u00a2F\u00d5g\u0018\u00899\u009d@\u00fao\u0005\u0086$"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "9\u00b2G\u00d5a\u0016\u0081/\u00a7K\u00c3z\u0002\u009a<\u00d8"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "?\u00a9U\u00c3b\u001e\u008c"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "2\u00aeP\u00c4Q\u000c\u00800\u00acp\u00fd`\u001b\u008a>\u00da"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public i(I)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/a;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "9\u00a8X\u00ce|"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/a;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public j(Z)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/a;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "9\u00b2G\u00d5a\u0016\u0081/\u00a7K\u00c3z\u0002\u009a<\u00d8"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/a;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public k(Z)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/a;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "?\u00a9U\u00c3b\u001e\u008c"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/a;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public l(Z)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/a;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "2\u00aeP\u00c4Q\u000c\u00800\u00acp\u00fd`\u001b\u008a>\u00da"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/a;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public m(I)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/a;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "2\u00a8F\u00c8t\u0014\u0086!\u00a3C\u00c3f\u0010\u0085#\u00d8^"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/a;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public n(I)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/a;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, ")\u00aeN\u00c4"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/a;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public o(Lcom/zjx/jyandroid/Extensions/Crosshair/CrosshairPlugin$c;)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/a;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, ".\u00beD\u00c4"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/a;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public p(I)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/a;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, ",\u00a2F\u00d5g\u0018\u00899\u009d@\u00fao\u0005\u0086$"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/Crosshair/a;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
