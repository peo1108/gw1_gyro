.class public Lcom/zjx/jyandroid/Extensions/pubg/b$c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/b$c;->j(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zjx/jyandroid/Extensions/pubg/b$c;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/b$c;I)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c$d;->b:Lcom/zjx/jyandroid/Extensions/pubg/b$c;

    iput p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c$d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c$d;->b:Lcom/zjx/jyandroid/Extensions/pubg/b$c;

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->i:Landroid/os/Handler;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->f:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c$d;->b:Lcom/zjx/jyandroid/Extensions/pubg/b$c;

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->i:Landroid/os/Handler;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->e:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c$d;->b:Lcom/zjx/jyandroid/Extensions/pubg/b$c;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->b(Lcom/zjx/jyandroid/Extensions/pubg/b$c;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->h(Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c$d;->b:Lcom/zjx/jyandroid/Extensions/pubg/b$c;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->b(Lcom/zjx/jyandroid/Extensions/pubg/b$c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c$d;->b:Lcom/zjx/jyandroid/Extensions/pubg/b$c;

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->i:Landroid/os/Handler;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/b$c;->f:Ljava/lang/Runnable;

    iget v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$c$d;->a:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
