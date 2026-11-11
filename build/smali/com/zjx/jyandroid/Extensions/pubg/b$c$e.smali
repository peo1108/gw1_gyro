.class public Lcom/zjx/jyandroid/Extensions/pubg/b$c$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/b$c;->eventOccurred(Ljava/util/LinkedList;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/LinkedList;

.field public final synthetic b:Lcom/zjx/jyandroid/Extensions/pubg/b$c;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/b$c;Ljava/util/LinkedList;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c$e;->b:Lcom/zjx/jyandroid/Extensions/pubg/b$c;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c$e;->a:Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c$e;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;->getType()Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    move-result-object v2

    sget-object v3, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->MouseButtonEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    if-ne v2, v3, :cond_0

    check-cast v1, Lcom/zjx/jyandroid/base/InputEvents/MouseButtonEvent;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/base/InputEvents/MouseButtonEvent;->getButtonMask()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v1}, Lcom/zjx/jyandroid/base/InputEvents/MouseButtonEvent;->getButtonMask()I

    move-result v1

    and-int/2addr v1, v4

    if-eqz v1, :cond_2

    move v3, v4

    :cond_2
    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c$e;->b:Lcom/zjx/jyandroid/Extensions/pubg/b$c;

    invoke-static {v1}, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->d(Lcom/zjx/jyandroid/Extensions/pubg/b$c;)Z

    move-result v1

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c$e;->b:Lcom/zjx/jyandroid/Extensions/pubg/b$c;

    invoke-static {v1, v2}, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->e(Lcom/zjx/jyandroid/Extensions/pubg/b$c;Z)Z

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c$e;->b:Lcom/zjx/jyandroid/Extensions/pubg/b$c;

    iget-object v4, v1, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->j:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v4, v4, Lcom/zjx/jyandroid/Extensions/pubg/b;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$a;

    sget-object v5, Lcom/zjx/jyandroid/Extensions/pubg/c$a;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$a;

    if-ne v4, v5, :cond_3

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->h(Z)V

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    const/16 v2, 0x352

    invoke-virtual {v1, v2}, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->j(I)V

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c$e;->b:Lcom/zjx/jyandroid/Extensions/pubg/b$c;

    invoke-static {v1}, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->f(Lcom/zjx/jyandroid/Extensions/pubg/b$c;)Z

    move-result v1

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c$e;->b:Lcom/zjx/jyandroid/Extensions/pubg/b$c;

    invoke-static {v1, v3}, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->g(Lcom/zjx/jyandroid/Extensions/pubg/b$c;Z)Z

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c$e;->b:Lcom/zjx/jyandroid/Extensions/pubg/b$c;

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->j:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v2, v2, Lcom/zjx/jyandroid/Extensions/pubg/b;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$a;

    sget-object v4, Lcom/zjx/jyandroid/Extensions/pubg/c$a;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$a;

    if-eq v2, v4, :cond_0

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->i:Landroid/os/Handler;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->g:Ljava/lang/Runnable;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c$e;->b:Lcom/zjx/jyandroid/Extensions/pubg/b$c;

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->i:Landroid/os/Handler;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->g:Ljava/lang/Runnable;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_5
    return-void
.end method
