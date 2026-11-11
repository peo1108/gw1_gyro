.class Lmdm/ParamsSheet$1;
.super Ljava/lang/Object;
.source "ParamsSheet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 129
    iput-object p1, p0, Lmdm/ParamsSheet$1;->this$0:Lmdm/ParamsSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 130
    iget-object p1, p0, Lmdm/ParamsSheet$1;->this$0:Lmdm/ParamsSheet;

    invoke-virtual {p1}, Lmdm/ParamsSheet;->requestClose()V

    return-void
.end method
