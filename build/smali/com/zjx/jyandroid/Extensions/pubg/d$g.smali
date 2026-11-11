.class public Lcom/zjx/jyandroid/Extensions/pubg/d$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapListCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/d;->b0(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$g;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

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

    if-eqz p1, :cond_0

    new-instance p2, Lcom/zjx/jyandroid/base/util/a;

    sget p3, Lcom/zjx/jyandroid/R$string;->pubg_extension_text3:I

    invoke-static {p3}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p2, p3, v0}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p2}, Lcom/zjx/jyandroid/base/util/a;->a()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error while getting pubg recognition map list: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ly/c;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$g;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->z(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    move-result-object p1

    new-instance p2, Lcom/zjx/jyandroid/Extensions/pubg/d$g$a;

    invoke-direct {p2, p0}, Lcom/zjx/jyandroid/Extensions/pubg/d$g$a;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/d$g;)V

    invoke-virtual {p1, p3, p2}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->r(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapCompletionHandler;)V

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/zjx/jyandroid/Extensions/pubg/d$g$b;

    invoke-direct {p2, p0}, Lcom/zjx/jyandroid/Extensions/pubg/d$g$b;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/d$g;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
