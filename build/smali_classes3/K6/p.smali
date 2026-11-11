.class public LK6/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final msg:Ljava/lang/String;

.field private final type:Lcom/zjx/jyandroid/base/util/ToastView$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK6/p;->msg:Ljava/lang/String;

    sget-object v0, Lcom/zjx/jyandroid/base/util/ToastView$a;->b:Lcom/zjx/jyandroid/base/util/ToastView$a;

    iput-object v0, p0, LK6/p;->type:Lcom/zjx/jyandroid/base/util/ToastView$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK6/p;->msg:Ljava/lang/String;

    iput-object p2, p0, LK6/p;->type:Lcom/zjx/jyandroid/base/util/ToastView$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/zjx/jyandroid/base/util/a;

    iget-object v1, p0, LK6/p;->msg:Ljava/lang/String;

    iget-object v2, p0, LK6/p;->type:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/util/a;->a()V

    return-void
.end method
