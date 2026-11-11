.class public Lcom/zjx/jyandroid/Extensions/pubg/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/i;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

.field public final synthetic b:Lcom/zjx/jyandroid/Extensions/pubg/i;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/i;Lcom/zjx/jyandroid/Extensions/pubg/g$f;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/i$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/i;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/i$b;->a:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/i$b$a;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/Extensions/pubg/i$b$a;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/i$b;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
