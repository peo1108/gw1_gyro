.class public Lcom/zjx/jyandroid/Extensions/pubg/d$k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/Extensions/pubg/e$p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/d$k;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/Extensions/pubg/d$k;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/d$k;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$k$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/d$k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/zjx/jyandroid/Extensions/pubg/e;Ljava/util/Map;)V
    .locals 0
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

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$k$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/d$k;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->g(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/b;->u()V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    move-result-object p1

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$k$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/d$k;

    iget-object p2, p2, Lcom/zjx/jyandroid/Extensions/pubg/d$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->registerEventReceiver(Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;)V

    return-void
.end method

.method public b(Lcom/zjx/jyandroid/Extensions/pubg/e;)V
    .locals 1

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$k$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/d$k;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->g(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/b;->u()V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    move-result-object p1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$k$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/d$k;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/d$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->registerEventReceiver(Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$k$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/d$k;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->h(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/e;->y()V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$k$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/d$k;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->i(Lcom/zjx/jyandroid/Extensions/pubg/d;Lcom/zjx/jyandroid/Extensions/pubg/e;)Lcom/zjx/jyandroid/Extensions/pubg/e;

    return-void
.end method
