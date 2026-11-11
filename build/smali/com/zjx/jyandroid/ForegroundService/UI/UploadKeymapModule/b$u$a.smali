.class public Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$u$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$u;->longPressed(Landroid/view/View;Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/MotionEvent;

.field public final synthetic b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$u;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$u;Landroid/view/MotionEvent;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$u$a;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$u;

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$u$a;->a:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b;->y()Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/Definitions/WorkingMode;->WangzuoMode:Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$u$a;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$u;

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$u;->c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$u$a;->a:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget-object v4, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$u$a;->a:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v4}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->o(II)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean v3, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;->disableKeysChange:Z

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$u$a;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$u;

    iget-object v1, v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$u;->c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->R(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$u$a;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$u;

    iget-object v3, v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$u;->c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    iput-boolean v2, v3, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->d:Z

    iput-object v0, v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$u;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$u$a;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$u;

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$u;->c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    sget-object v1, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->NORMAL_TOUCH_POINT_SC:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    iget-object v4, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$u$a;->a:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$u$a;->a:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v1, v4, v5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->s(Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;II)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/v;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$u$a;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$u;

    iget-object v1, v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$u;->c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->i(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    iput-boolean v3, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;->disableKeysChange:Z

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$u$a;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$u;

    iget-object v1, v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$u;->c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->R(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$u$a;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$u;

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$u;->c:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    iput-boolean v2, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->d:Z

    :goto_0
    return-void
.end method
