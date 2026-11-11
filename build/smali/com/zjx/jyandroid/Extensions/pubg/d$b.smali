.class public Lcom/zjx/jyandroid/Extensions/pubg/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/d;->X(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/zjx/jyandroid/Extensions/pubg/d;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/d;Z)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/d;

    iput-boolean p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$b;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$b;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->e(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel;

    move-result-object v0

    const v1, -0x993e74

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->e(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel;

    move-result-object v0

    sget v1, Lcom/zjx/jyandroid/R$color;->jy_blue_1:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/PubgFloatingPanel;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method
