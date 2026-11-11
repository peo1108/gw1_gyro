.class public Lcom/zjx/jyandroid/Extensions/pubg/e$h;
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
.field public final synthetic a:Lcom/zjx/jyandroid/Extensions/pubg/d;

.field public final synthetic b:Lcom/zjx/jyandroid/Extensions/pubg/e;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/e;Lcom/zjx/jyandroid/Extensions/pubg/d;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$h;->b:Lcom/zjx/jyandroid/Extensions/pubg/e;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$h;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public switchStateChanged(Landroid/widget/CompoundButton;Z)Z
    .locals 0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$h;->b:Lcom/zjx/jyandroid/Extensions/pubg/e;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/e;->a:Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/Extensions/pubg/f;->P(Z)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$h;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->onPause()V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$h;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->onResume()V

    return p2
.end method
