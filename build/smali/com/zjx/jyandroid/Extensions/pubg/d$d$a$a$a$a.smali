.class public Lcom/zjx/jyandroid/Extensions/pubg/d$d$a$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/d$d$a$a$a;->requestCompleted(Lcom/zjx/jyandroid/base/MError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/Extensions/pubg/d$d$a$a$a;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/d$d$a$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$d$a$a$a$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/d$d$a$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$d$a$a$a$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/d$d$a$a$a;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/d$d$a$a$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/d$d$a$a;

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/d$d$a$a;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$d$a;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/pubg/d$d$a;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$d;

    iget-object v1, v1, Lcom/zjx/jyandroid/Extensions/pubg/d$d;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/d$d$a$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->c(Lcom/zjx/jyandroid/Extensions/pubg/d;Ljava/lang/String;)V

    return-void
.end method
