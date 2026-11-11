.class public Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup$OnPositionChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/Extensions/pubg/f;

.field public final synthetic b:Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;Lcom/zjx/jyandroid/Extensions/pubg/f;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$u;->b:Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$u;->a:Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositionChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$u;->a:Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/Extensions/pubg/f;->E(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$u;->b:Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->b(Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;Z)Z

    return-void
.end method
