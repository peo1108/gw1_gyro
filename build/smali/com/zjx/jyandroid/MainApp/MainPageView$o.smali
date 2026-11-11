.class public Lcom/zjx/jyandroid/MainApp/MainPageView$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/MainApp/MainPageView;->refreshList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/Set;

.field public final synthetic b:Landroid/content/pm/PackageManager;

.field public final synthetic c:Lcom/zjx/jyandroid/MainApp/MainPageView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/MainApp/MainPageView;Ljava/util/Set;Landroid/content/pm/PackageManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$o;->c:Lcom/zjx/jyandroid/MainApp/MainPageView;

    iput-object p2, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$o;->a:Ljava/util/Set;

    iput-object p3, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$o;->b:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    new-instance v0, Lcom/zjx/jyandroid/MainApp/MainPageView$r;

    iget-object v1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$o;->c:Lcom/zjx/jyandroid/MainApp/MainPageView;

    invoke-static {v1}, Lcom/zjx/jyandroid/MainApp/MainPageView;->c(Lcom/zjx/jyandroid/MainApp/MainPageView;)Lcom/evrencoskun/tableview/TableView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/MainApp/MainPageView$r;-><init>(Lcom/zjx/jyandroid/MainApp/MainPageView;I)V

    iget-object v1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$o;->c:Lcom/zjx/jyandroid/MainApp/MainPageView;

    invoke-static {v1}, Lcom/zjx/jyandroid/MainApp/MainPageView;->c(Lcom/zjx/jyandroid/MainApp/MainPageView;)Lcom/evrencoskun/tableview/TableView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/evrencoskun/tableview/TableView;->setAdapter(Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$o;->a:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/zjx/jyandroid/MainApp/MainPageView$q;

    iget-object v6, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$o;->c:Lcom/zjx/jyandroid/MainApp/MainPageView;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/zjx/jyandroid/MainApp/MainPageView$q;-><init>(Lcom/zjx/jyandroid/MainApp/MainPageView;Lcom/zjx/jyandroid/MainApp/MainPageView$h;)V

    iget-object v6, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$o;->b:Landroid/content/pm/PackageManager;

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v5, Lcom/zjx/jyandroid/MainApp/MainPageView$q;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$o;->b:Landroid/content/pm/PackageManager;

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v5, Lcom/zjx/jyandroid/MainApp/MainPageView$q;->d:Landroid/graphics/drawable/Drawable;

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v6, v5, Lcom/zjx/jyandroid/MainApp/MainPageView$q;->b:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v3, v5, Lcom/zjx/jyandroid/MainApp/MainPageView$q;->c:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/zjx/jyandroid/MainApp/MainPageView$o$a;

    invoke-direct {v2, p0}, Lcom/zjx/jyandroid/MainApp/MainPageView$o$a;-><init>(Lcom/zjx/jyandroid/MainApp/MainPageView$o;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0, v1}, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->setCellItems(Ljava/util/List;)V

    return-void
.end method
