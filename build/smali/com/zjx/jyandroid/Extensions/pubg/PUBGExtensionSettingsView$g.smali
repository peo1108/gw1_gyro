.class public Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$g;->b:Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$g;->a:Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$g;->a:Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/Extensions/pubg/f;->T(Z)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$g;->b:Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;->a(Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;Z)Z

    return-void
.end method
