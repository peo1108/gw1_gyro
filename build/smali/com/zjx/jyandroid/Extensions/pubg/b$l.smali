.class public Lcom/zjx/jyandroid/Extensions/pubg/b$l;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/Extensions/pubg/b$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/pubg/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "l"
.end annotation


# instance fields
.field public a:Lk/k;

.field public b:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

.field public c:Z

.field public d:I

.field public final synthetic e:Lcom/zjx/jyandroid/Extensions/pubg/b;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$l;->e:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Lk/k;

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/b;->c()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/zjx/jyandroid/Extensions/pubg/b;->q:I

    invoke-direct {v0, v1, v2}, Lk/k;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$l;->a:Lk/k;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$l;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$l;->c:Z

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$l;->d:I

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/b;->E:Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/f;->q()Lcom/zjx/jyandroid/Extensions/pubg/f$a;

    move-result-object p1

    sget-object v1, Lcom/zjx/jyandroid/Extensions/pubg/b$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xfa

    iput p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$l;->d:I

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$l;->d:I

    goto :goto_0

    :cond_2
    const/16 p1, 0x4b0

    iput p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$l;->d:I

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/zjx/jyandroid/Extensions/pubg/c$k;Lcom/zjx/jyandroid/Extensions/pubg/b$k;)V
    .locals 0

    sget-object p1, Lcom/zjx/jyandroid/Extensions/pubg/c$g;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    if-eqz p2, :cond_0

    iget-object p1, p2, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    :cond_0
    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$l;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    if-eq p2, p1, :cond_2

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$l;->e:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-static {p2}, Lcom/zjx/jyandroid/Extensions/pubg/b;->b(Lcom/zjx/jyandroid/Extensions/pubg/b;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$l;->e:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-static {p2}, Lcom/zjx/jyandroid/Extensions/pubg/b;->a(Lcom/zjx/jyandroid/Extensions/pubg/b;)Lcom/zjx/jyandroid/Extensions/pubg/b$i;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/zjx/jyandroid/Extensions/pubg/b$i;->c(Lcom/zjx/jyandroid/Extensions/pubg/c$g;)V

    :cond_1
    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$l;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    :cond_2
    return-void
.end method

.method public b(Lq/h$b;)V
    .locals 4

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$l;->e:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/b;->J:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v2, Lq/h$b;->a:Lq/h$b;

    const/4 v3, 0x1

    if-ne p1, v2, :cond_1

    iget-boolean p1, v1, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->g:Z

    xor-int/2addr p1, v3

    iput-boolean p1, v1, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->g:Z

    goto :goto_0

    :cond_1
    sget-object v2, Lq/h$b;->c:Lq/h$b;

    if-ne p1, v2, :cond_2

    iput-boolean v3, v1, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->g:Z

    goto :goto_0

    :cond_2
    sget-object v2, Lq/h$b;->b:Lq/h$b;

    if-ne p1, v2, :cond_3

    const/4 p1, 0x0

    iput-boolean p1, v1, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->g:Z

    :cond_3
    :goto_0
    iget-boolean p1, v1, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->g:Z

    if-eqz p1, :cond_4

    iget-object p1, v1, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    sget-object v2, Lcom/zjx/jyandroid/Extensions/pubg/c$g;->f:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    if-ne p1, v2, :cond_5

    sget-object p1, Lcom/zjx/jyandroid/Extensions/pubg/c$g;->h:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    iput-object p1, v1, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    goto :goto_1

    :cond_4
    iget-object p1, v1, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    sget-object v2, Lcom/zjx/jyandroid/Extensions/pubg/c$g;->h:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    if-ne p1, v2, :cond_5

    sget-object p1, Lcom/zjx/jyandroid/Extensions/pubg/c$g;->f:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    iput-object p1, v1, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$l;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    if-eq p1, v2, :cond_7

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/b;->b(Lcom/zjx/jyandroid/Extensions/pubg/b;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$l;->e:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/b;->a(Lcom/zjx/jyandroid/Extensions/pubg/b;)Lcom/zjx/jyandroid/Extensions/pubg/b$i;

    move-result-object p1

    iget-object v0, v1, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    invoke-interface {p1, v0}, Lcom/zjx/jyandroid/Extensions/pubg/b$i;->c(Lcom/zjx/jyandroid/Extensions/pubg/c$g;)V

    :cond_6
    iget-object p1, v1, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$l;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    :cond_7
    return-void
.end method

.method public c(Ljava/util/LinkedList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/zjx/jyandroid/base/InputEvents/InputEvent;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$l;->e:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/b;->f:Landroid/graphics/Rect;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/b;->a(Lcom/zjx/jyandroid/Extensions/pubg/b;)Lcom/zjx/jyandroid/Extensions/pubg/b$i;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;->getType()Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    move-result-object v1

    sget-object v3, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->TouchEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    if-ne v1, v3, :cond_1

    check-cast v0, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;

    iget-object v1, v0, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->touchType:Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    sget-object v3, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;->down:Lcom/zjx/jyandroid/base/InputEvents/TouchEvent$Type;

    if-ne v1, v3, :cond_2

    new-instance v1, Lcom/zjx/jyandroid/base/FloatPoint;

    iget v3, v0, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->x:F

    iget v4, v0, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->y:F

    invoke-direct {v1, v3, v4}, Lcom/zjx/jyandroid/base/FloatPoint;-><init>(FF)V

    iget-object v3, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$l;->e:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v3, v3, Lcom/zjx/jyandroid/Extensions/pubg/b;->k:Landroid/graphics/Rect;

    invoke-static {v3, v1}, Lcom/zjx/jyandroid/base/util/b;->E(Landroid/graphics/Rect;Lcom/zjx/jyandroid/base/FloatPoint;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$l;->c:Z

    :cond_2
    iget-boolean v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$l;->c:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/zjx/jyandroid/base/FloatPoint;

    iget v3, v0, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->x:F

    iget v0, v0, Lcom/zjx/jyandroid/base/InputEvents/TouchEvent;->y:F

    invoke-direct {v1, v3, v0}, Lcom/zjx/jyandroid/base/FloatPoint;-><init>(FF)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$l;->e:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/b;->l:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lcom/zjx/jyandroid/base/util/b;->E(Landroid/graphics/Rect;Lcom/zjx/jyandroid/base/FloatPoint;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lq/h$b;->b:Lq/h$b;

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/Extensions/pubg/b$l;->b(Lq/h$b;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$l;->e:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/b;->m:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lcom/zjx/jyandroid/base/util/b;->E(Landroid/graphics/Rect;Lcom/zjx/jyandroid/base/FloatPoint;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lq/h$b;->c:Lq/h$b;

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/Extensions/pubg/b$l;->b(Lq/h$b;)V

    goto :goto_0

    :cond_4
    :goto_1
    return v2
.end method

.method public run()V
    .locals 3

    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_8

    :try_start_0
    iget v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$l;->d:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$l;->e:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/b;->J:Lcom/zjx/jyandroid/Extensions/pubg/b$k;

    iget-object v2, v0, Lcom/zjx/jyandroid/Extensions/pubg/b;->e:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/b;->a(Lcom/zjx/jyandroid/Extensions/pubg/b;)Lcom/zjx/jyandroid/Extensions/pubg/b$i;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$l;->e:Lcom/zjx/jyandroid/Extensions/pubg/b;

    iget-object v2, v0, Lcom/zjx/jyandroid/Extensions/pubg/b;->a:Lcom/zjx/jyandroid/ScreenCaptureManager;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/b;->e:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Lcom/zjx/jyandroid/ScreenCaptureManager;->getScreenshot(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$l;->a:Lk/k;

    invoke-virtual {v2, v0}, Lk/j;->c(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$l;->a:Lk/k;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lk/k;->b(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/zjx/jyandroid/Extensions/pubg/c$g;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :pswitch_0
    iget-boolean v0, v1, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->g:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/zjx/jyandroid/Extensions/pubg/c$g;->k:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/zjx/jyandroid/Extensions/pubg/c$g;->j:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    goto :goto_1

    :pswitch_1
    iget-boolean v0, v1, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->g:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/zjx/jyandroid/Extensions/pubg/c$g;->i:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/zjx/jyandroid/Extensions/pubg/c$g;->g:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    goto :goto_1

    :pswitch_2
    iget-boolean v0, v1, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->g:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/zjx/jyandroid/Extensions/pubg/c$g;->h:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/zjx/jyandroid/Extensions/pubg/c$g;->f:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    goto :goto_1

    :pswitch_3
    sget-object v0, Lcom/zjx/jyandroid/Extensions/pubg/c$g;->e:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    goto :goto_1

    :pswitch_4
    sget-object v0, Lcom/zjx/jyandroid/Extensions/pubg/c$g;->d:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    goto :goto_1

    :pswitch_5
    sget-object v0, Lcom/zjx/jyandroid/Extensions/pubg/c$g;->c:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    goto :goto_1

    :pswitch_6
    sget-object v0, Lcom/zjx/jyandroid/Extensions/pubg/c$g;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    :goto_1
    iget-object v2, v1, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    if-eq v0, v2, :cond_6

    iput-object v0, v1, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    :cond_6
    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$l;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$l;->e:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-static {v1}, Lcom/zjx/jyandroid/Extensions/pubg/b;->b(Lcom/zjx/jyandroid/Extensions/pubg/b;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$l;->e:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-static {v1}, Lcom/zjx/jyandroid/Extensions/pubg/b;->a(Lcom/zjx/jyandroid/Extensions/pubg/b;)Lcom/zjx/jyandroid/Extensions/pubg/b$i;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/zjx/jyandroid/Extensions/pubg/b$i;->c(Lcom/zjx/jyandroid/Extensions/pubg/c$g;)V

    :cond_7
    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$l;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$g;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly/c;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    :cond_8
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$l;->a:Lk/k;

    invoke-virtual {v0}, Lk/k;->e()V

    const-string v0, "weapon tracker exit"

    invoke-static {v0}, Ly/c;->a(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
