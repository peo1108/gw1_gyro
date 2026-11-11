.class public Lcom/zjx/jyandroid/Extensions/pubg/e$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/e;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/Extensions/pubg/e;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$j;->a:Lcom/zjx/jyandroid/Extensions/pubg/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public switchStateChanged(Landroid/widget/CompoundButton;Z)Z
    .locals 1

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$j;->a:Lcom/zjx/jyandroid/Extensions/pubg/e;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/e;->a:Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/Extensions/pubg/f;->N(Z)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$j;->a:Lcom/zjx/jyandroid/Extensions/pubg/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/Extensions/pubg/e;->u(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$j;->a:Lcom/zjx/jyandroid/Extensions/pubg/e;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/Extensions/pubg/e;->u(I)V

    :goto_0
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$j;->a:Lcom/zjx/jyandroid/Extensions/pubg/e;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/Extensions/pubg/e;->b(Lcom/zjx/jyandroid/Extensions/pubg/e;Z)Z

    return p2
.end method
