.class public Lcom/zjx/jyandroid/ForegroundService/UI/a$d;
.super Lcom/zjx/jyandroid/base/InputEvents/MouseButtonEventConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/a;
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

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a$d;->a:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-direct {p0}, Lcom/zjx/jyandroid/base/InputEvents/MouseButtonEventConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public keyEventOccurred(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;)V
    .locals 3

    iget v0, p1, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;->usage:I

    const v1, 0xfffe

    if-ne v0, v1, :cond_1

    iget-boolean p1, p1, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;->down:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a$d;->a:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->n(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a$d;->a:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->o(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/a$d;->a:Lcom/zjx/jyandroid/ForegroundService/UI/a;

    iget v2, v1, Lcom/zjx/jyandroid/ForegroundService/UI/a;->t:I

    if-ne v0, v2, :cond_3

    iget-boolean p1, p1, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;->down:Z

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->C()V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->D()V

    :cond_3
    :goto_0
    return-void
.end method
