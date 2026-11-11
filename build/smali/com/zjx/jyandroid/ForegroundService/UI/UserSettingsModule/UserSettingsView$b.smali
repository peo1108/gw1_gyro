.class public Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$b;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    new-instance v0, Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$c;

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$b;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$c;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView;I)V

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$b;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView;

    iget-object v1, v1, Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView;->b:Lcom/evrencoskun/tableview/TableView;

    invoke-virtual {v1, v0}, Lcom/evrencoskun/tableview/TableView;->setAdapter(Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$b;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView;

    iget-object v2, v1, Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView;->b:Lcom/evrencoskun/tableview/TableView;

    new-instance v3, Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$e;

    invoke-direct {v3, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$e;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView;)V

    invoke-virtual {v2, v3}, Lcom/evrencoskun/tableview/TableView;->setTableViewListener(Lcom/evrencoskun/tableview/listener/ITableViewListener;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$d;

    iget-object v4, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$b;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$d;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView;Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$a;)V

    sget v4, Lcom/zjx/jyandroid/R$string;->basic_settings_title:I

    invoke-static {v4}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$d;->a:Ljava/lang/String;

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b;->y()Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    move-result-object v4

    sget-object v6, Lcom/zjx/jyandroid/base/Definitions/WorkingMode;->WangzuoMode:Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    if-ne v4, v6, :cond_0

    sget v4, Lcom/zjx/jyandroid/R$layout;->basic_settings_view:I

    iput v4, v3, Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$d;->b:I

    goto :goto_0

    :cond_0
    sget v4, Lcom/zjx/jyandroid/R$layout;->basic_settings_view_sc:I

    iput v4, v3, Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$d;->b:I

    :goto_0
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getSettingsCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$d;

    iget-object v8, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$b;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView;

    invoke-direct {v7, v8, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$d;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView;Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$a;)V

    invoke-virtual {v2, v4}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getSettingsTitle(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$d;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->getSettingsViewResourceId(I)I

    move-result v8

    iput v8, v7, Lcom/zjx/jyandroid/ForegroundService/UI/UserSettingsModule/UserSettingsView$d;->b:I

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->setCellItems(Ljava/util/List;)V

    return-void
.end method
