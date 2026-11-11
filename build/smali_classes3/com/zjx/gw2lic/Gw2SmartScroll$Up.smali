.class public Lcom/zjx/gw2lic/Gw2SmartScroll$Up;
.super Ljava/lang/Object;
.source "Gw2SmartScroll.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final X:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zjx/gw2lic/Gw2SmartScroll$Up;->X:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    invoke-static {}, LR5/c;->l()LR5/c;

    move-result-object v0

    iget-object v0, v0, LR5/c;->k6:LE6/a;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/zjx/gw2lic/Gw2SmartScroll$Up;->X:I

    invoke-virtual {v0, v1}, LE6/a;->t(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    return-void
.end method
