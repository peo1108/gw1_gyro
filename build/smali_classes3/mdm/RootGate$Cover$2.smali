.class Lmdm/RootGate$Cover$2;
.super Ljava/lang/Object;
.source "RootGate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/RootGate$Cover;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmdm/RootGate$Cover;


# direct methods
.method constructor <init>(Lmdm/RootGate$Cover;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lmdm/RootGate$Cover$2;->this$0:Lmdm/RootGate$Cover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 187
    invoke-static {}, Lmdm/RootGate;->access$000()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-static {}, Lmdm/RootGate;->access$500()V

    .line 188
    :cond_9
    return-void
.end method
