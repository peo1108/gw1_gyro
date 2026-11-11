.class public Lcom/zjx/jyandroid/MainApp/AddGameActivity$d$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/MainApp/AddGameActivity$d$b;->b(Lcom/zjx/jyandroid/MainApp/AddGameActivity$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/MainApp/AddGameActivity$c;

.field public final synthetic b:Lcom/zjx/jyandroid/MainApp/AddGameActivity$d$b;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/MainApp/AddGameActivity$d$b;Lcom/zjx/jyandroid/MainApp/AddGameActivity$c;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/AddGameActivity$d$b$a;->b:Lcom/zjx/jyandroid/MainApp/AddGameActivity$d$b;

    iput-object p2, p0, Lcom/zjx/jyandroid/MainApp/AddGameActivity$d$b$a;->a:Lcom/zjx/jyandroid/MainApp/AddGameActivity$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/zjx/jyandroid/R$string;->preferences_main_application:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/zjx/jyandroid/R$string;->settings_key_add_app_list:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/MainApp/AddGameActivity$d$b$a;->b:Lcom/zjx/jyandroid/MainApp/AddGameActivity$d$b;

    iget-boolean v2, v1, Lcom/zjx/jyandroid/MainApp/AddGameActivity$d$b;->f:Z

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/zjx/jyandroid/MainApp/AddGameActivity$d$b;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/zjx/jyandroid/MainApp/AddGameActivity$d$b;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v1, p0, Lcom/zjx/jyandroid/MainApp/AddGameActivity$d$b$a;->b:Lcom/zjx/jyandroid/MainApp/AddGameActivity$d$b;

    iget-boolean v2, v1, Lcom/zjx/jyandroid/MainApp/AddGameActivity$d$b;->f:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/zjx/jyandroid/MainApp/AddGameActivity$d$b;->a(Lcom/zjx/jyandroid/MainApp/AddGameActivity$d$b;Z)V

    iget-object v1, p0, Lcom/zjx/jyandroid/MainApp/AddGameActivity$d$b$a;->a:Lcom/zjx/jyandroid/MainApp/AddGameActivity$c;

    iput-boolean v2, v1, Lcom/zjx/jyandroid/MainApp/AddGameActivity$c;->d:Z

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/zjx/jyandroid/R$string;->settings_key_add_app_list:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/zjx/jyandroid/R$string;->settings_key_add_app_list:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
