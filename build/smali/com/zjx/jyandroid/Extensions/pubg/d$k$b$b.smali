.class public Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/KeymapManager$GetKeymapCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/util/LinkedList;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(Lcom/zjx/jyandroid/base/MError;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance p2, Lcom/zjx/jyandroid/base/util/a;

    sget v0, Lcom/zjx/jyandroid/R$string;->pubg_extension_text8:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p2, v0, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p2}, Lcom/zjx/jyandroid/base/util/a;->a()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error while pulling recognition map. error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ly/c;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$k;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->h(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/e;->g()V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$k;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->h(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/e;

    move-result-object p1

    iget-object p2, p2, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;->content:Ljava/util/Map;

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/Extensions/pubg/e;->h(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$k;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->h(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/e;

    move-result-object p1

    new-instance p2, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b$a;

    invoke-direct {p2, p0}, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b$a;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b;)V

    iput-object p2, p1, Lcom/zjx/jyandroid/Extensions/pubg/e;->f:Lcom/zjx/jyandroid/Extensions/pubg/e$p;

    return-void
.end method
