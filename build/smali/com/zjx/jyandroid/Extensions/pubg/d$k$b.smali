.class public Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapListCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/d$k;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/zjx/jyandroid/Extensions/pubg/d$k;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/d$k;Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$k;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/util/LinkedList;Ljava/lang/String;)V
    .locals 0
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

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$k;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->h(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/e;->g()V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$k;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->h(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/e;->s()V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$k;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->h(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/e;

    move-result-object p1

    new-instance p2, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$a;

    invoke-direct {p2, p0}, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$a;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;)V

    iput-object p2, p1, Lcom/zjx/jyandroid/Extensions/pubg/e;->f:Lcom/zjx/jyandroid/Extensions/pubg/e$p;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$k;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->z(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    move-result-object p1

    new-instance p2, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b;

    invoke-direct {p2, p0, p3}, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;Ljava/lang/String;)V

    invoke-virtual {p1, p3, p2}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->r(Ljava/lang/String;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapCompletionHandler;)V

    :goto_0
    return-void
.end method
