.class Lmdm/RcParamsView$5;
.super Ljava/lang/Object;
.source "RcParamsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/RcParamsView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmdm/RcParamsView;


# direct methods
.method constructor <init>(Lmdm/RcParamsView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 247
    iput-object p1, p0, Lmdm/RcParamsView$5;->this$0:Lmdm/RcParamsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 248
    iget-object p1, p0, Lmdm/RcParamsView$5;->this$0:Lmdm/RcParamsView;

    invoke-static {p1}, Lmdm/RcParamsView;->access$700(Lmdm/RcParamsView;)V

    return-void
.end method
