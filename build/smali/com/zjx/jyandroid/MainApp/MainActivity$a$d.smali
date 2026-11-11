.class public Lcom/zjx/jyandroid/MainApp/MainActivity$a$d;
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

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainActivity$a$d;->b:Lcom/zjx/jyandroid/MainApp/MainActivity$a;

    iput-object p2, p0, Lcom/zjx/jyandroid/MainApp/MainActivity$a$d;->a:Lcom/zjx/jyandroid/base/Components/Alert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionTriggered(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V
    .locals 1

    invoke-static {}, Lcom/zjx/jyandroid/MainApp/MainActivity;->d()Ljava/util/LinkedList;

    move-result-object p1

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainActivity$a$d;->a:Lcom/zjx/jyandroid/base/Components/Alert;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
