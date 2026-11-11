.class public Lcom/zjx/jyandroid/Extensions/pubg/d$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapListCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/d;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/Extensions/pubg/d;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$d;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/util/LinkedList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zjx/jyandroid/base/MError;",
            "Ljava/util/LinkedList<",
            "Lcom/zjx/jyandroid/ForegroundService/KeymapManager$KeymapInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$d;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->z(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    move-result-object p1

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$c;->k()Z

    move-result p2

    invoke-static {p2}, Lcom/zjx/jyandroid/Extensions/pubg/d;->A(Z)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/zjx/jyandroid/Extensions/pubg/d$d$a;

    const-string v0, "\u81ea\u52a8\u521b\u5efa\u538b\u67aa\u6570\u636e\u5931\u8d25\uff0c\u9700\u624b\u52a8\u521b\u5efa\u540e\u91cd\u65b0\u5f00\u542f\u667a\u80fd\u8bc6\u522b"

    invoke-direct {p3, p0, v0}, Lcom/zjx/jyandroid/Extensions/pubg/d$d$a;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/d$d;Ljava/lang/String;)V

    const-string v0, "com.zjx.pubg.rcConfig"

    invoke-virtual {p1, p2, v0, p3}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->g(Ljava/lang/String;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;)V

    return-void

    :cond_0
    new-instance p1, Lcom/zjx/jyandroid/Extensions/pubg/d$d$b;

    invoke-direct {p1, p0, p3}, Lcom/zjx/jyandroid/Extensions/pubg/d$d$b;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/d$d;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
