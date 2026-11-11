.class public Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$x;
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

.field public final synthetic b:Lcom/zjx/jyandroid/Extensions/pubg/d;

.field public final synthetic c:Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;Lcom/zjx/jyandroid/Extensions/pubg/f;Lcom/zjx/jyandroid/Extensions/pubg/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$x;->c:Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$x;->a:Lcom/zjx/jyandroid/Extensions/pubg/f;

    iput-object p3, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$x;->b:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$x;->a:Lcom/zjx/jyandroid/Extensions/pubg/f;

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/Extensions/pubg/f;->Y(Z)V

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$x;->b:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->N()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PUBGExtensionSettingsView$x;->b:Lcom/zjx/jyandroid/Extensions/pubg/d;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/zjx/jyandroid/Extensions/pubg/d;->Z(Z)V

    :cond_0
    return-void
.end method
