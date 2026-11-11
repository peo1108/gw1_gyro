.class public Lcom/zjx/jyandroid/MainApp/MainActivity$a$b;
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

.field public final synthetic b:Lcom/zjx/jyandroid/MainApp/MainActivity$a;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/MainApp/MainActivity$a;Lcom/zjx/jyandroid/base/Components/Alert;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainActivity$a$b;->b:Lcom/zjx/jyandroid/MainApp/MainActivity$a;

    iput-object p2, p0, Lcom/zjx/jyandroid/MainApp/MainActivity$a$b;->a:Lcom/zjx/jyandroid/base/Components/Alert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionTriggered(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V
    .locals 3

    invoke-static {}, Lcom/zjx/jyandroid/MainApp/MainActivity;->d()Ljava/util/LinkedList;

    move-result-object p1

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainActivity$a$b;->a:Lcom/zjx/jyandroid/base/Components/Alert;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainActivity$a$b;->b:Lcom/zjx/jyandroid/MainApp/MainActivity$a;

    iget-object v0, v0, Lcom/zjx/jyandroid/MainApp/MainActivity$a;->a:Lcom/zjx/jyandroid/MainApp/MainActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/zjx/jyandroid/MainApp/MainActivity$a$b$a;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/MainApp/MainActivity$a$b$a;-><init>(Lcom/zjx/jyandroid/MainApp/MainActivity$a$b;)V

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
