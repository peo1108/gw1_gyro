.class public LK6/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final owner:LK6/m;


# direct methods
.method public constructor <init>(LK6/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK6/q;->owner:LK6/m;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, LK6/q;->owner:LK6/m;

    iget-boolean v1, v0, LK6/m;->serverRunning:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, LK6/m;->connectedClient:Landroid/net/LocalSocket;

    if-eqz v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/zjx/jyandroid/base/util/a;

    const-string v4, "7\u0098S\u00d8|\u0014\u00b76\u00adA\u00f2l\u0015\u0097\u000f\u00dbK\u00feh"

    invoke-static/range {v4 .. v4}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "\u0019\u00a8A\u00cdj[\u0086:\u00b6\u000f\u00fff\u0018\u008d5\u00de^\u00b7p\u001e\u00fe,\u00c1W\u00fd\u00d3L\u00a9*\u00d6A\u00fe\u009fG\u00b7)\u00cbx\u00e3\u00d5\u0003\u00a8]\u00c0x"

    invoke-static/range {v2 .. v2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/zjx/buildtier/L;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/zjx/jyandroid/base/util/ToastView$a;->d:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {v1, v2, v3}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {v1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    return-void
.end method
