.class public Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$e;->a:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$e;->a:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;

    iget-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->a:Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$o;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView;->o:Landroid/widget/Switch;

    invoke-interface {v1, p1, p2}, Lcom/zjx/jyandroid/Extensions/pubg/PubgMapPanelView$o;->switchStateChanged(Landroid/widget/CompoundButton;Z)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    return-void
.end method
