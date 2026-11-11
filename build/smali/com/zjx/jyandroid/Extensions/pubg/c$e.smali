.class public Lcom/zjx/jyandroid/Extensions/pubg/c$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/pubg/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public a:Lcom/zjx/jyandroid/Extensions/pubg/c$b;

.field public b:Z

.field public c:Lcom/zjx/jyandroid/Extensions/pubg/c$i;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/zjx/jyandroid/Extensions/pubg/c$b;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$b;

    iput-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/c$e;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/c$e;->b:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/zjx/jyandroid/Extensions/pubg/c$i;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/c$e;->c:Lcom/zjx/jyandroid/Extensions/pubg/c$i;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/pubg/c$i;->a()Lcom/zjx/jyandroid/Extensions/pubg/c$i;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public b()Lcom/zjx/jyandroid/Extensions/pubg/c$b;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/c$e;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$b;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/c$e;->b:Z

    return v0
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/c$e;->b:Z

    return-void
.end method

.method public e(Lcom/zjx/jyandroid/Extensions/pubg/c$i;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/c$e;->c:Lcom/zjx/jyandroid/Extensions/pubg/c$i;

    return-void
.end method

.method public f(Lcom/zjx/jyandroid/Extensions/pubg/c$b;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/c$e;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$b;

    return-void
.end method
