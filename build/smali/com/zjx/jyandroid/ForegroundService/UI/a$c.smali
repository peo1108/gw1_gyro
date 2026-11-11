.class public Lcom/zjx/jyandroid/ForegroundService/UI/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/a;->movedRelativeRaw(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lcom/zjx/jyandroid/ForegroundService/UI/a;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/a;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a$c;->c:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a$c;->a:I

    iput p3, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a$c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a$c;->c:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-static {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->a(Lcom/zjx/jyandroid/ForegroundService/UI/a;)Lcom/zjx/jyandroid/ForegroundService/UI/VirtualMouseView;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a$c;->c:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-static {v1}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->b(Lcom/zjx/jyandroid/ForegroundService/UI/a;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/base/BaseFloatingView;->updateWindowParams(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a$c;->c:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    iget-object v1, v0, Lcom/zjx/jyandroid/ForegroundService/UI/a;->x:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    iget v4, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a$c;->a:I

    add-int/2addr v3, v4

    aput v3, v1, v2

    const/4 v3, 0x1

    aget v4, v1, v3

    iget v5, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a$c;->b:I

    add-int/2addr v4, v5

    aput v4, v1, v3

    invoke-static {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->d(Lcom/zjx/jyandroid/ForegroundService/UI/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a$c;->c:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-static {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->f(Lcom/zjx/jyandroid/ForegroundService/UI/a;)Lcom/zjx/jyandroid/TouchManager;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a$c;->c:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-static {v1}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->e(Lcom/zjx/jyandroid/ForegroundService/UI/a;)I

    move-result v1

    iget-object v4, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a$c;->c:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    iget-object v4, v4, Lcom/zjx/jyandroid/ForegroundService/UI/a;->x:[I

    aget v2, v4, v2

    add-int/lit8 v2, v2, -0x3

    int-to-float v2, v2

    aget v3, v4, v3

    add-int/lit8 v3, v3, -0x4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/zjx/jyandroid/TouchManager;->m(IFF)V

    :cond_0
    return-void
.end method
