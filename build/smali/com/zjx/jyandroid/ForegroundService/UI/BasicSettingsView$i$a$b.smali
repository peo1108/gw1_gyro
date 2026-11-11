.class public Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i$a$b;
.super Lcom/zjx/jyandroid/base/InputEvents/MouseButtonEventConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i$a;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i$a$b;->a:Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i$a;

    invoke-direct {p0}, Lcom/zjx/jyandroid/base/InputEvents/MouseButtonEventConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public keyEventOccurred(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;)V
    .locals 1

    iget-boolean v0, p1, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;->down:Z

    if-eqz v0, :cond_1

    iget p1, p1, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;->usage:I

    const v0, 0xfffe

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i$a$b;->a:Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i$a;

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i$a;->c:Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i;

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i;->a:Ly/d;

    invoke-virtual {v0, p1}, Ly/d;->y(I)V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->y()Lcom/zjx/jyandroid/ForegroundService/UI/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->p()V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i$a$b;->a:Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i$a;

    invoke-static {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i$a;->a(Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i$a;)V

    :cond_1
    return-void
.end method
