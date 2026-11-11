.class public Lcom/zjx/jyandroid/Extensions/pubg/d$d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/d$d;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Ljava/util/LinkedList;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/zjx/jyandroid/Extensions/pubg/d$d;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/d$d;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$d$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$d;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$d$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$d$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$d;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/d$d;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$d$b;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->c(Lcom/zjx/jyandroid/Extensions/pubg/d;Ljava/lang/String;)V

    return-void
.end method
