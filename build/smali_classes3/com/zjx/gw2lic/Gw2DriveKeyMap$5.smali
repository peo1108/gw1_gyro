.class Lcom/zjx/gw2lic/Gw2DriveKeyMap$5;
.super Ljava/lang/Object;
.source "Gw2DriveKeyMap.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/gw2lic/Gw2DriveKeyMap;->showFallback(Landroid/content/Context;Landroid/view/WindowManager;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$markerSize:I

.field final synthetic val$marks:[Landroid/widget/TextView;

.field final synthetic val$scr:Landroid/graphics/Point;

.field final synthetic val$wm:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Landroid/content/Context;[Landroid/widget/TextView;ILandroid/graphics/Point;Landroid/view/WindowManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 406
    iput-object p1, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$5;->val$ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$5;->val$marks:[Landroid/widget/TextView;

    iput p3, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$5;->val$markerSize:I

    iput-object p4, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$5;->val$scr:Landroid/graphics/Point;

    iput-object p5, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$5;->val$wm:Landroid/view/WindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 409
    :try_start_0
    iget-object p1, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$5;->val$ctx:Landroid/content/Context;

    iget-object v0, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$5;->val$marks:[Landroid/widget/TextView;

    iget v1, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$5;->val$markerSize:I

    iget-object v2, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$5;->val$scr:Landroid/graphics/Point;

    invoke-static {p1, v0, v1, v2}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->access$1100(Landroid/content/Context;[Landroid/widget/TextView;ILandroid/graphics/Point;)V

    .line 410
    iget-object p1, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$5;->val$ctx:Landroid/content/Context;

    invoke-static {}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u014a$\u0014\u00cd\u01be\u000e\u00c8#\u1e09\u000f\u00e8{\u009b\u00c3 \u00d5\u00c7\u00fa"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "\u0011\u00a2M\u0081~\u0014\u009b<\u00b6F\u00f3g\u0005\u00c3#\u00dc\\\u00f2`"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 411
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 412
    const-string v0, "\u001d\u00b0\u0006\u00e5|\u0012\u009e0\u0089J\u00e5"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ")\u00a6B\u00c4.\u001d\u0089<\u00aeJ\u00f8"

    invoke-static/range {v1 .. v1}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 413
    :goto_1
    iget-object p1, p0, Lcom/zjx/gw2lic/Gw2DriveKeyMap$5;->val$wm:Landroid/view/WindowManager;

    invoke-static {p1}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->access$700(Landroid/view/WindowManager;)V

    return-void
.end method
