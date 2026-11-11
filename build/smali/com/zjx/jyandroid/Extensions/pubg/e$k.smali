.class public Lcom/zjx/jyandroid/Extensions/pubg/e$k;
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public switchStateChanged(Landroid/widget/CompoundButton;Z)Z
    .locals 0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/e;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/e;->a:Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/Extensions/pubg/f;->Q(Z)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/e$k;->a:Lcom/zjx/jyandroid/Extensions/pubg/e;

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/Extensions/pubg/e;->v(Z)V

    return p2
.end method
