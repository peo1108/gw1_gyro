.class public Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/KeymapManager$UpdateKeymapCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b$a;->a(Lcom/zjx/jyandroid/Extensions/pubg/e;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b$a;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b$a;Ljava/util/Map;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b$a$a;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b$a;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b$a$a;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(Lcom/zjx/jyandroid/base/MError;)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Lcom/zjx/jyandroid/base/util/a;

    sget v1, Lcom/zjx/jyandroid/R$string;->save_failed:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/util/a;->a()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error while updating recognition map. error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ly/c;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    sget v0, Lcom/zjx/jyandroid/R$string;->save_success:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->b:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p1, v0, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b$a$a;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b$a;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$k;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->g(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/b;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b$a$a;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b$a;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$k;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->g(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/b;

    move-result-object p1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b$a$a;->a:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/Extensions/pubg/b;->x(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b$a$a;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b$a;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$k;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->g(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/b;->u()V

    :cond_1
    invoke-static {}, Ly/d;->C()Ly/d;

    move-result-object p1

    invoke-virtual {p1}, Ly/d;->j()Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    move-result-object p1

    sget-object v0, Lcom/zjx/jyandroid/base/Definitions/WorkingMode;->ShoucuoMode:Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b$a$a;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b$a;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$k;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/d;->a:Lcom/zjx/jyandroid/Extensions/pubg/a;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b$a$a;->a:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/Extensions/pubg/a;->d(Ljava/util/Map;)V

    :cond_2
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;

    move-result-object p1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b$a$a;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b$a;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/d$k$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$k;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/d$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/EventDispatchCenter;->registerEventReceiver(Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;)V

    return-void
.end method
