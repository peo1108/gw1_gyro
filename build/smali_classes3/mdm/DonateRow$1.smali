.class Lmdm/DonateRow$1;
.super Ljava/lang/Object;
.source "DonateRow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/DonateRow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmdm/DonateRow;


# direct methods
.method constructor <init>(Lmdm/DonateRow;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lmdm/DonateRow$1;->this$0:Lmdm/DonateRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 39
    iget-object p1, p0, Lmdm/DonateRow$1;->this$0:Lmdm/DonateRow;

    invoke-virtual {p1}, Lmdm/DonateRow;->show()V

    return-void
.end method
