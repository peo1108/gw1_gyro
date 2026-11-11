.class Lmdm/RcPanel$1;
.super Ljava/lang/Object;
.source "RcPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/RcPanel;->bind(Landroid/view/View;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$panel:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lmdm/RcPanel$1;->val$panel:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 29
    iget-object v0, p0, Lmdm/RcPanel$1;->val$panel:Landroid/view/View;

    invoke-static {v0}, Lmdm/RcPanel;->hideExtras(Landroid/view/View;)V

    return-void
.end method
