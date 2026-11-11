.class public Lcom/zjx/gw2lic/Gw2NoDevice$Toggle;
.super Ljava/lang/Object;
.source "Gw2NoDevice.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {}, Lcom/zjx/gw2lic/Gw2NoDevice;->markerFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_4

    if-eqz p2, :cond_3

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :cond_0
    :goto_0
    invoke-static {}, LR5/a;->refreshNoDevice()V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->G()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, LR5/a;->gw2hidPresent()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lj6/h$a;->p6:Lj6/h$a;

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/MainService;->T(Lj6/h$a;)V

    :cond_1
    const-string p0, "=\u00a0\u0006\u0081xJ\u00d0b\u00f8\u000f\u00e8f\u0011\u0084<\u00d8\n\u00d8J"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LR5/a;->gw2logApp(Ljava/lang/String;)V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->G()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-boolean p0, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->X:Z

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/zjx/gw2lic/desktop/DesktopMode;->gw2On()Z

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->gw2CursorVis(Z)V

    :cond_2
    :try_start_1
    invoke-static {}, Lt5/f;->u2()Lt5/f;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lt5/f;->e6(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void

    :cond_3
    :try_start_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    :goto_1
    invoke-static {}, LR5/a;->refreshNoDevice()V

    const-string p0, "=\u00a0\u0006\u0081xJ\u00d0b\u00f8\u000f\u00e8f\u0011\u0084<\u00d8\n\u00d8B7"

    invoke-static/range {p0 .. p0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LR5/a;->gw2logApp(Ljava/lang/String;)V

    :try_start_3
    invoke-static {}, Lt5/f;->u2()Lt5/f;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lt5/f;->e6(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->G()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object p0

    if-eqz p0, :cond_4

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/MainService;->t6:Lj6/h$a;

    if-eqz p1, :cond_4

    sget-object p2, Lj6/h$a;->p6:Lj6/h$a;

    if-ne p1, p2, :cond_4

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/MainService;->t()V

    :cond_4
    return-void
.end method
