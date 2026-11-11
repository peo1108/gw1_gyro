.class Lmdm/ParamsSheet$2;
.super Ljava/lang/Object;
.source "ParamsSheet.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
.method constructor <init>(Lmdm/ParamsSheet;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lmdm/ParamsSheet$2;->this$0:Lmdm/ParamsSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 134
    const/4 p1, 0x4

    if-ne p2, p1, :cond_10

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_10

    .line 135
    iget-object p1, p0, Lmdm/ParamsSheet$2;->this$0:Lmdm/ParamsSheet;

    invoke-virtual {p1}, Lmdm/ParamsSheet;->requestClose()V

    .line 136
    return p2

    .line 138
    :cond_10
    const/4 p1, 0x0

    return p1
.end method
