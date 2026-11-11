.class Lmdm/CamNavBar$3;
.super Ljava/lang/Object;
.source "CamNavBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/CamNavBar;->addTab(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmdm/CamNavBar;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lmdm/CamNavBar;I)V
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

    .line 107
    iput-object p1, p0, Lmdm/CamNavBar$3;->this$0:Lmdm/CamNavBar;

    iput p2, p0, Lmdm/CamNavBar$3;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 109
    iget-object p1, p0, Lmdm/CamNavBar$3;->this$0:Lmdm/CamNavBar;

    iget v0, p0, Lmdm/CamNavBar$3;->val$index:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lmdm/CamNavBar;->access$100(Lmdm/CamNavBar;IZ)V

    return-void
.end method
