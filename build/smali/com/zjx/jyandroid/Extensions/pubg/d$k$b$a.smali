.class public Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/Extensions/pubg/e$p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/util/LinkedList;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/zjx/jyandroid/Extensions/pubg/e;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zjx/jyandroid/Extensions/pubg/e;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$k;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->z(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->d()V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$k;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->h(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/e;->y()V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$k;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->i(Lcom/zjx/jyandroid/Extensions/pubg/d;Lcom/zjx/jyandroid/Extensions/pubg/e;)Lcom/zjx/jyandroid/Extensions/pubg/e;

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$k;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->z(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    move-result-object p1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;->a:Ljava/lang/String;

    new-instance v1, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$a$a;

    invoke-direct {v1, p0, p2}, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$a$a;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$a;Ljava/util/Map;)V

    invoke-virtual {p1, p2, v0, v1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->e(Ljava/util/Map;Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$CreateKeymapCompletionHandler;)V

    return-void
.end method

.method public b(Lcom/zjx/jyandroid/Extensions/pubg/e;)V
    .locals 1

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$k;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->g(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/b;->u()V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$k;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->h(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/e;->y()V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$k;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->i(Lcom/zjx/jyandroid/Extensions/pubg/d;Lcom/zjx/jyandroid/Extensions/pubg/e;)Lcom/zjx/jyandroid/Extensions/pubg/e;

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    move-result-object p1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$k;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/d$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->registerEventReceiver(Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;)V

    return-void
.end method
