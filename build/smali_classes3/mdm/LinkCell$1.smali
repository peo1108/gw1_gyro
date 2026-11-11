.class Lmdm/LinkCell$1;
.super Ljava/lang/Object;
.source "LinkCell.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/LinkCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmdm/LinkCell;


# direct methods
.method constructor <init>(Lmdm/LinkCell;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lmdm/LinkCell$1;->this$0:Lmdm/LinkCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 20
    iget-object p1, p0, Lmdm/LinkCell$1;->this$0:Lmdm/LinkCell;

    invoke-virtual {p1}, Lmdm/LinkCell;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_26

    .line 23
    :cond_9
    :try_start_9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 24
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 25
    iget-object p1, p0, Lmdm/LinkCell$1;->this$0:Lmdm/LinkCell;

    invoke-virtual {p1}, Lmdm/LinkCell;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_26

    :catchall_26
    :goto_26
    return-void
.end method
