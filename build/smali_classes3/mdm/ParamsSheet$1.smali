.class Lmdm/ParamsSheet$1;
.super Landroid/widget/FrameLayout;
.source "ParamsSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/ParamsSheet;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmdm/ParamsSheet;


# direct methods
.method constructor <init>(Lmdm/ParamsSheet;Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lmdm/ParamsSheet$1;->this$0:Lmdm/ParamsSheet;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    .line 134
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_14

    .line 135
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_13

    iget-object p1, p0, Lmdm/ParamsSheet$1;->this$0:Lmdm/ParamsSheet;

    invoke-virtual {p1}, Lmdm/ParamsSheet;->requestClose()V

    .line 136
    :cond_13
    return v0

    .line 138
    :cond_14
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
