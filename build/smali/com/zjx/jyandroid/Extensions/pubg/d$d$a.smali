.class public Lcom/zjx/jyandroid/Extensions/pubg/d$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/d$d;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/util/LinkedList;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/zjx/jyandroid/Extensions/pubg/d$d;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/d$d;Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$d$a;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$d;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$d$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance p2, Lcom/zjx/jyandroid/base/util/a;

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$d$a;->a:Ljava/lang/String;

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p2, v0, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p2}, Lcom/zjx/jyandroid/base/util/a;->a()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error while creating default RC config: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ly/c;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$d$a;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$d;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$d;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->z(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    move-result-object p1

    const-string v0, "com.zjx.pubg.rcConfig"

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->y(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$d$a;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$d;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$d;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->z(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    move-result-object p1

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/d$d$a$a;

    invoke-direct {v0, p0, p2}, Lcom/zjx/jyandroid/Extensions/pubg/d$d$a$a;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/d$d$a;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->r(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapCompletionHandler;)V

    return-void
.end method
