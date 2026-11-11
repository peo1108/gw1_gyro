.class public Lcom/zjx/jyandroid/base/util/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:Lcom/zjx/jyandroid/base/util/ToastView$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const-wide/16 v0, 0x7d0

    .line 1
    sget-object v2, Lcom/zjx/jyandroid/base/util/ToastView$a;->a:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;JLcom/zjx/jyandroid/base/util/ToastView$a;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLcom/zjx/jyandroid/base/util/ToastView$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/zjx/jyandroid/base/util/a;->a:Ljava/lang/String;

    .line 5
    iput-wide p2, p0, Lcom/zjx/jyandroid/base/util/a;->b:J

    .line 6
    iput-object p4, p0, Lcom/zjx/jyandroid/base/util/a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V
    .locals 2

    const-wide/16 v0, 0x7d0

    .line 2
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;JLcom/zjx/jyandroid/base/util/ToastView$a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/base/util/a;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/zjx/jyandroid/base/util/a;->b:J

    iget-object v4, p0, Lcom/zjx/jyandroid/base/util/a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-virtual {v0, v1, v2, v3, v4}, Ll/b;->v(Ljava/lang/String;JLcom/zjx/jyandroid/base/util/ToastView$a;)V

    return-void
.end method
