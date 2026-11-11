.class Lcom/zjx/gw2lic/Gw2DriveKeyMap$2;
.super Ljava/lang/Object;
.source "Gw2DriveKeyMap.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/gw2lic/Gw2DriveKeyMap;->showNative(Landroid/content/Context;Landroid/view/WindowManager;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$mGetFrame:Ljava/lang/reflect/Method;

.field final synthetic val$scr:Landroid/graphics/Point;

.field final synthetic val$wm:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/reflect/Method;Landroid/graphics/Point;Landroid/view/WindowManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 295
    iput-object p1, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$2;->val$ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$2;->val$mGetFrame:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$2;->val$scr:Landroid/graphics/Point;

    iput-object p4, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$2;->val$wm:Landroid/view/WindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 298
    const-string p1, "1"

    invoke-static/range {p1 .. p1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$2;->val$ctx:Landroid/content/Context;

    const-string v1, "=\u00b0\u0006\u00fej\t\u0081#\u00a7D\u00f9pD"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    move v1, v2

    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_0

    .line 300
    iget-object v3, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$2;->val$mGetFrame:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->access$200()[Landroid/view/View;

    move-result-object v4

    aget-object v4, v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 301
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    .line 302
    invoke-static {}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->access$300()[I

    move-result-object v5

    aput v4, v5, v1

    invoke-static {}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->access$400()[I

    move-result-object v5

    aput v3, v5, v1

    .line 303
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-static/range {v6 .. v6}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 304
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-static/range {v5 .. v5}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 306
    :cond_0
    const-string p1, ")\u00a4F\u00f6"

    invoke-static/range {p1 .. p1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$2;->val$scr:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 307
    const-string p1, ")\u00a4F\u00e9"

    invoke-static/range {p1 .. p1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$2;->val$scr:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 308
    const-string p1, ")\u00a2@"

    invoke-static/range {p1 .. p1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 309
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 310
    invoke-static {v1}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->access$502(Z)Z

    .line 311
    iget-object p1, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$2;->val$ctx:Landroid/content/Context;

    invoke-static {}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->access$600()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u014a$\u0014\u00cd\u01be\u000e\u00c8#\u1e09\u000f\u00e8{\u009b\u00c3 \u00d5\u00c7\u00fa"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "\u0011\u00a2M\u0081~\u0014\u009b<\u00b6F\u00f3g\u0005\u00c3#\u00dc\\\u00f2`"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 312
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 314
    const-string v0, "\u001d\u00b0\u0006\u00e5|\u0012\u009e0\u0089J\u00e5"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ")\u00a6B\u00c4.\u001d\u0089<\u00aeJ\u00f8"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    :goto_2
    iget-object p1, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$2;->val$wm:Landroid/view/WindowManager;

    invoke-static {p1}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->access$700(Landroid/view/WindowManager;)V

    return-void
.end method
