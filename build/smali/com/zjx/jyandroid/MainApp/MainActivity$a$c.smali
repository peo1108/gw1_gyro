.class public Lcom/zjx/jyandroid/MainApp/MainActivity$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/MainApp/MainActivity$a;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/base/Components/Alert;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/zjx/jyandroid/MainApp/MainActivity$a;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/MainApp/MainActivity$a;Lcom/zjx/jyandroid/base/Components/Alert;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainActivity$a$c;->d:Lcom/zjx/jyandroid/MainApp/MainActivity$a;

    iput-object p2, p0, Lcom/zjx/jyandroid/MainApp/MainActivity$a$c;->a:Lcom/zjx/jyandroid/base/Components/Alert;

    iput-object p3, p0, Lcom/zjx/jyandroid/MainApp/MainActivity$a$c;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/zjx/jyandroid/MainApp/MainActivity$a$c;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionTriggered(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V
    .locals 2

    invoke-static {}, Lcom/zjx/jyandroid/MainApp/MainActivity;->d()Ljava/util/LinkedList;

    move-result-object p1

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainActivity$a$c;->a:Lcom/zjx/jyandroid/base/Components/Alert;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainActivity$a$c;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainActivity$a$c;->d:Lcom/zjx/jyandroid/MainApp/MainActivity$a;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/MainActivity$a;->a:Lcom/zjx/jyandroid/MainApp/MainActivity;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-boolean p1, p0, Lcom/zjx/jyandroid/MainApp/MainActivity$a$c;->c:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    :cond_0
    return-void
.end method
