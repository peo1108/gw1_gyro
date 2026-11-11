.class public final Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$b;
.super Lcom/zjx/gw2lic/devicehid/Gw2RawListener;


# instance fields
.field public final a:Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;

.field public final b:Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;


# direct methods
.method public constructor <init>(Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$b;->b:Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;

    iput-object p2, p0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$b;->a:Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;

    invoke-direct {p0}, Lcom/zjx/gw2lic/devicehid/Gw2RawListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$b;->a:Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;

    iget-object v1, v0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->a:Ljava/lang/String;

    :try_start_0
    invoke-static {v1}, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->stopGrabbingEventsFromDeviceNative(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->e:Z

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->f:Lv5/b;

    iput-object v2, v0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->g:Lv5/c;

    return-void
.end method

.method public onEvents([Lcom/zjx/gw2lic/devicehid/Gw2RawEvent;)V
    .locals 9

    array-length v0, p1

    new-array v1, v0, [Lcom/zjx/jyandroid/ADB/app_process/d;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    new-instance v4, Lcom/zjx/jyandroid/ADB/app_process/d;

    invoke-direct {v4}, Lcom/zjx/jyandroid/ADB/app_process/d;-><init>()V

    iget v5, v3, Lcom/zjx/gw2lic/devicehid/Gw2RawEvent;->d:I

    iput v5, v4, Lcom/zjx/jyandroid/ADB/app_process/d;->d:I

    iget v5, v3, Lcom/zjx/gw2lic/devicehid/Gw2RawEvent;->e:I

    iput v5, v4, Lcom/zjx/jyandroid/ADB/app_process/d;->e:I

    iget v5, v3, Lcom/zjx/gw2lic/devicehid/Gw2RawEvent;->f:I

    iput v5, v4, Lcom/zjx/jyandroid/ADB/app_process/d;->f:I

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$b;->b:Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;

    iget-object v3, p0, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$b;->a:Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;

    :try_start_0
    iget-boolean v4, v2, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->e:Z

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->f:Lv5/b;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v1}, Lv5/b;->a([Lcom/zjx/jyandroid/ADB/app_process/d;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :try_start_1
    iget-boolean v2, v2, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber;->f:Z

    if-eqz v2, :cond_2

    iget-object v2, v3, Lcom/zjx/gw2lic/devicehid/Gw2InputGrabber$g;->g:Lv5/c;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Lv5/c;->a([Lcom/zjx/jyandroid/ADB/app_process/d;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    return-void
.end method
