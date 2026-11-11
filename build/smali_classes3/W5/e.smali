.class public abstract LW5/e;
.super LW5/d;
.source "SourceFile"


# instance fields
.field public g:I

.field public h:Lcom/zjx/jyandroid/ForegroundService/MainService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LW5/d;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/MainService;->G()Lcom/zjx/jyandroid/ForegroundService/MainService;

    move-result-object v0

    iput-object v0, p0, LW5/e;->h:Lcom/zjx/jyandroid/ForegroundService/MainService;

    return-void
.end method
