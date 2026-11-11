.class Lmdm/ParamsSheet$3;
.super Ljava/lang/Object;
.source "ParamsSheet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/ParamsSheet;->header()Landroid/view/View;
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

    .line 208
    iput-object p1, p0, Lmdm/ParamsSheet$3;->this$0:Lmdm/ParamsSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 209
    iget-object p1, p0, Lmdm/ParamsSheet$3;->this$0:Lmdm/ParamsSheet;

    invoke-virtual {p1}, Lmdm/ParamsSheet;->save()V

    return-void
.end method
