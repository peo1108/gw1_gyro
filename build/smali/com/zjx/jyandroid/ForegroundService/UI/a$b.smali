.class public Lcom/zjx/jyandroid/ForegroundService/UI/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/a;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/ForegroundService/UI/a;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a$b;->a:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a$b;->a:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-static {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->c(Lcom/zjx/jyandroid/ForegroundService/UI/a;)Ll/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ll/b;->s(Lcom/zjx/jyandroid/base/BaseFloatingView;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a$b;->a:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-static {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->c(Lcom/zjx/jyandroid/ForegroundService/UI/a;)Ll/b;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a$b;->a:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-static {v1}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->a(Lcom/zjx/jyandroid/ForegroundService/UI/a;)Lcom/zjx/jyandroid/ForegroundService/UI/VirtualMouseView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ll/b;->q(Lcom/zjx/jyandroid/base/BaseFloatingView;)V

    return-void
.end method
