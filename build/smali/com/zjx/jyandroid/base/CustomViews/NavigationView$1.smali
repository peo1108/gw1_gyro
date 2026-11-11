.class Lcom/zjx/jyandroid/base/CustomViews/NavigationView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->setBackButton(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/base/CustomViews/NavigationView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/base/CustomViews/NavigationView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/base/CustomViews/NavigationView$1;->this$0:Lcom/zjx/jyandroid/base/CustomViews/NavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/zjx/jyandroid/base/CustomViews/NavigationView$1;->this$0:Lcom/zjx/jyandroid/base/CustomViews/NavigationView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/base/CustomViews/NavigationView;->popView(Z)V

    return-void
.end method
