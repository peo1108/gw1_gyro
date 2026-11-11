.class Lmdm/RootGate$Cover$1;
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

.field final synthetic val$a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lmdm/RootGate$Cover;Landroid/app/Activity;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 176
    iput-object p1, p0, Lmdm/RootGate$Cover$1;->this$0:Lmdm/RootGate$Cover;

    iput-object p2, p0, Lmdm/RootGate$Cover$1;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 178
    iget-object p1, p0, Lmdm/RootGate$Cover$1;->val$a:Landroid/app/Activity;

    invoke-static {p1}, Lmdm/RootGate;->exitApp(Landroid/app/Activity;)V

    return-void
.end method
