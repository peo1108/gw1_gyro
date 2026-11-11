.class public Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$t;
.super Lcom/zjx/jyandroid/base/TouchParsers/OnNoMoveDoubleClickEventParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$t;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    invoke-direct {p0}, Lcom/zjx/jyandroid/base/TouchParsers/OnNoMoveDoubleClickEventParser;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleClick(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->sharedInstance()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/MainService;->getConnectedDeviceType()Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b;->y()Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    move-result-object p1

    sget-object v0, Lcom/zjx/jyandroid/base/Definitions/WorkingMode;->WangzuoMode:Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$t;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, v0, p2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->l(II)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/u;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;->disableKeysChange:Z

    iget-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$t;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    invoke-virtual {p2, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->R(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$t;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    iput-boolean v1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->d:Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$t;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    sget-object v0, Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;->MACRO_SC:Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, v0, v2, p2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->s(Lcom/zjx/jyandroid/base/Definitions/KeymapComponentType;II)Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;

    move-result-object p1

    check-cast p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/q;

    iget-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$t;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    invoke-virtual {p2, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->i(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$t;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    invoke-virtual {p2, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->R(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b$t;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    iput-boolean v1, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->d:Z

    :goto_0
    return-void
.end method
