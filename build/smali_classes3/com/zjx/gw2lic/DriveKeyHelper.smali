.class public Lcom/zjx/gw2lic/DriveKeyHelper;
.super Ljava/lang/Object;
.source "DriveKeyHelper.java"


# direct methods
.method public static setup(Landroid/view/View;)V
    .locals 8

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ">\u00b5]\u00d7k0\u008d,\u0091X\u00fdy%\u00949\u00c9I\u00ff"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3\u00a3"

    invoke-static/range {v4 .. v4}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    check-cast v3, Landroid/widget/CompoundButton;

    const-string v4, ">\u00b5]\u00d7k0\u008d,\u008fN\u00ecJ\u0013\u008f<"

    invoke-static/range {v4 .. v4}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "3\u00a3"

    invoke-static/range {v5 .. v5}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v5, Lcom/zjx/gw2lic/DriveKeyHelper$2;

    invoke-direct {v5, v0, v4}, Lcom/zjx/gw2lic/DriveKeyHelper$2;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v3, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const-string v5, "=\u00b0\u0006\u00fej\t\u0081#\u00a7D\u00f9pD"

    invoke-static/range {v5 .. v5}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, ")\u00b0U\u00d1K\u0015\u00897\u00aeJ\u00f8"

    invoke-static/range {v6 .. v6}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, LD6/c;->swapEnabled:Z

    invoke-virtual {v3, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_2
    const-string v3, ">\u00b5]\u00d7k0\u008d,\u008fN\u00ecK\u0003\u0097$\u00d2D"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3\u00a3"

    invoke-static/range {v4 .. v4}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v4, Lcom/zjx/gw2lic/DriveKeyHelper$1;

    invoke-direct {v4, v0, p0}, Lcom/zjx/gw2lic/DriveKeyHelper$1;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const-string v3, ">\u00b5]\u00d7k0\u008d,\u008fN\u00ecJ\u0013\u008f<"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3\u00a3"

    invoke-static/range {v4 .. v4}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_7

    const-string v3, "=\u00b0\u0006\u00feb\u0008\u009b%\u009d\\\u00eb`\u0002\u00808"

    invoke-static/range {v3 .. v3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_7

    check-cast v4, Landroid/widget/CompoundButton;

    invoke-static {v0}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->isLsSp(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const-string v5, "=\u00b0\u0006\u00feb\u0008\u009b%\u009dJ\u00f8`\u0002\u00bc\"\u00d2]"

    invoke-static/range {v5 .. v5}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_7

    new-instance v6, Lcom/zjx/gw2lic/DriveKeyHelper$LsSpToggle;

    invoke-direct {v6, v0, v5}, Lcom/zjx/gw2lic/DriveKeyHelper$LsSpToggle;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v4, v6}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget-boolean v4, LD6/c;->swapEnabled:Z

    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    const/4 v4, 0x0

    goto :goto_0

    :cond_4
    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    const-string v6, "=\u00b0\u0006\u00feb\u0008\u009b%\u009dJ\u00f8`\u0002\u00bc2\u00c8^\u00e3k\u001f"

    invoke-static/range {v6 .. v6}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_5

    new-instance v7, Lcom/zjx/gw2lic/DriveKeyHelper$LsSpEdit;

    invoke-direct {v7, v0, p0}, Lcom/zjx/gw2lic/DriveKeyHelper$LsSpEdit;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    const-string v6, "=\u00b0\u0006\u00feb\u0008\u009b%\u009d[\u00f3n\u0011\u008f5\u00e2X\u00f8s"

    invoke-static/range {v6 .. v6}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_7

    sget-boolean v4, LD6/c;->swapEnabled:Z

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    goto :goto_1

    :cond_6
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    return-void
.end method
