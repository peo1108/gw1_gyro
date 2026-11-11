.class public LR5/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:LR5/f;


# instance fields
.field public a:Lcom/android/volley/RequestQueue;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, LR5/f;->a:Lcom/android/volley/RequestQueue;

    return-void
.end method

.method public static d()LR5/f;
    .locals 1

    sget-object v0, LR5/f;->b:LR5/f;

    if-nez v0, :cond_0

    new-instance v0, LR5/f;

    invoke-direct {v0}, LR5/f;-><init>()V

    sput-object v0, LR5/f;->b:LR5/f;

    :cond_0
    sget-object v0, LR5/f;->b:LR5/f;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/android/volley/Request;)Lcom/android/volley/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request<",
            "TT;>;)",
            "Lcom/android/volley/Request<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "http_session"

    invoke-virtual {p0, p1, v0}, LR5/f;->c(Lcom/android/volley/Request;Ljava/lang/Object;)Lcom/android/volley/Request;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/android/volley/Request;ILjava/lang/Object;)Lcom/android/volley/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request<",
            "TT;>;I",
            "Ljava/lang/Object;",
            ")",
            "Lcom/android/volley/Request<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->setShouldCache(Z)Lcom/android/volley/Request;

    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, p2, v1, v2}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    invoke-virtual {p1, p3}, Lcom/android/volley/Request;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    iget-object p2, p0, LR5/f;->a:Lcom/android/volley/RequestQueue;

    invoke-virtual {p2, p1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/android/volley/Request;Ljava/lang/Object;)Lcom/android/volley/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/android/volley/Request<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->setShouldCache(Z)Lcom/android/volley/Request;

    const/16 v0, 0x2710

    invoke-virtual {p0, p1, v0, p2}, LR5/f;->b(Lcom/android/volley/Request;ILjava/lang/Object;)Lcom/android/volley/Request;

    move-result-object p1

    return-object p1
.end method
