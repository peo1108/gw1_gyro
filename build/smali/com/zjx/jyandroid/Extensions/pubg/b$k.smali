.class public Lcom/zjx/jyandroid/Extensions/pubg/b$k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/pubg/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "k"
.end annotation


# instance fields
.field public a:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

.field public b:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

.field public c:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

.field public d:Lcom/zjx/jyandroid/Extensions/pubg/c$c;

.field public e:Lcom/zjx/jyandroid/Extensions/pubg/c$h;

.field public f:Z

.field public g:Z

.field public final synthetic h:Lcom/zjx/jyandroid/Extensions/pubg/b;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    invoke-direct {p0, p1, v0}, Lcom/zjx/jyandroid/Extensions/pubg/b$k;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/b;Lcom/zjx/jyandroid/Extensions/pubg/c$l;)V

    return-void
.end method

.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/b;Lcom/zjx/jyandroid/Extensions/pubg/c$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->h:Lcom/zjx/jyandroid/Extensions/pubg/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object p1, Lcom/zjx/jyandroid/Extensions/pubg/c$l;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    .line 3
    sget-object p1, Lcom/zjx/jyandroid/Extensions/pubg/c$g;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->b:Lcom/zjx/jyandroid/Extensions/pubg/c$g;

    .line 4
    sget-object p1, Lcom/zjx/jyandroid/Extensions/pubg/c$d;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->c:Lcom/zjx/jyandroid/Extensions/pubg/c$d;

    .line 5
    sget-object p1, Lcom/zjx/jyandroid/Extensions/pubg/c$c;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$c;

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->d:Lcom/zjx/jyandroid/Extensions/pubg/c$c;

    .line 6
    sget-object p1, Lcom/zjx/jyandroid/Extensions/pubg/c$h;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$h;

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->e:Lcom/zjx/jyandroid/Extensions/pubg/c$h;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->f:Z

    .line 8
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->g:Z

    .line 9
    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/b$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/c$l;

    return-void
.end method
