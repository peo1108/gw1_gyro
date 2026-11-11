.class public Lcom/zjx/jyandroid/MainApp/AddGameActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/MainApp/AddGameActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/Set;

.field public final synthetic b:Lcom/zjx/jyandroid/MainApp/AddGameActivity;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/MainApp/AddGameActivity;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/AddGameActivity$b;->b:Lcom/zjx/jyandroid/MainApp/AddGameActivity;

    iput-object p2, p0, Lcom/zjx/jyandroid/MainApp/AddGameActivity$b;->a:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    new-instance v0, Lcom/zjx/jyandroid/MainApp/AddGameActivity$d;

    iget-object v1, p0, Lcom/zjx/jyandroid/MainApp/AddGameActivity$b;->b:Lcom/zjx/jyandroid/MainApp/AddGameActivity;

    invoke-static {v1}, Lcom/zjx/jyandroid/MainApp/AddGameActivity;->c(Lcom/zjx/jyandroid/MainApp/AddGameActivity;)Lcom/evrencoskun/tableview/TableView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/MainApp/AddGameActivity$d;-><init>(Lcom/zjx/jyandroid/MainApp/AddGameActivity;I)V

    iget-object v1, p0, Lcom/zjx/jyandroid/MainApp/AddGameActivity$b;->b:Lcom/zjx/jyandroid/MainApp/AddGameActivity;

    invoke-static {v1}, Lcom/zjx/jyandroid/MainApp/AddGameActivity;->c(Lcom/zjx/jyandroid/MainApp/AddGameActivity;)Lcom/evrencoskun/tableview/TableView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/evrencoskun/tableview/TableView;->setAdapter(Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;)V

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_0

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v6, v6, 0x81

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/zjx/jyandroid/MainApp/AddGameActivity$c;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/zjx/jyandroid/MainApp/AddGameActivity$c;-><init>(Lcom/zjx/jyandroid/MainApp/AddGameActivity$a;)V

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v7, Lcom/zjx/jyandroid/MainApp/AddGameActivity$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v7, Lcom/zjx/jyandroid/MainApp/AddGameActivity$c;->b:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/zjx/jyandroid/MainApp/AddGameActivity$b;->a:Ljava/util/Set;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    iput-boolean v4, v7, Lcom/zjx/jyandroid/MainApp/AddGameActivity$c;->d:Z

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, v7, Lcom/zjx/jyandroid/MainApp/AddGameActivity$c;->d:Z

    :goto_1
    iput-object v5, v7, Lcom/zjx/jyandroid/MainApp/AddGameActivity$c;->c:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/zjx/jyandroid/MainApp/AddGameActivity$b$a;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/MainApp/AddGameActivity$b$a;-><init>(Lcom/zjx/jyandroid/MainApp/AddGameActivity$b;)V

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0, v3}, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->setCellItems(Ljava/util/List;)V

    return-void
.end method
