.class public abstract LU6/a;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LU6/a$a;
    }
.end annotation


# instance fields
.field public X:Ljava/lang/String;

.field public Y:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "com.zjx.unnamedplugin"

    iput-object v0, p0, LU6/a;->X:Ljava/lang/String;

    const-string v0, "Unnamed plugin"

    iput-object v0, p0, LU6/a;->Y:Ljava/lang/String;

    return-void
.end method

.method public static synthetic i(LU6/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LU6/a;->X:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic j(LU6/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LU6/a;->Y:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public k()Landroid/os/IBinder;
    .locals 1
    .annotation build Li/P;
    .end annotation

    new-instance v0, LU6/a$a;

    invoke-direct {v0, p0}, LU6/a$a;-><init>(LU6/a;)V

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Li/P;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iput-object p1, p0, LU6/a;->X:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Plugin id cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Li/P;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iput-object p1, p0, LU6/a;->Y:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Plugin name cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Li/S;
    .end annotation

    invoke-virtual {p0}, LU6/a;->k()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method
