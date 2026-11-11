.class public Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$d;->a:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$d;->a:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    iget-boolean v0, p1, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->B:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->B:Z

    invoke-static {p1}, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->a(Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;)V

    return-void
.end method
