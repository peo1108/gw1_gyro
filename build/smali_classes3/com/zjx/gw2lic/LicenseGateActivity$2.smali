.class Lcom/zjx/gw2lic/LicenseGateActivity$2;
.super Ljava/lang/Object;
.source "LicenseGateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/gw2lic/LicenseGateActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/gw2lic/LicenseGateActivity;


# direct methods
.method constructor <init>(Lcom/zjx/gw2lic/LicenseGateActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/zjx/gw2lic/LicenseGateActivity$2;->this$0:Lcom/zjx/gw2lic/LicenseGateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 97
    iget-object p1, p0, Lcom/zjx/gw2lic/LicenseGateActivity$2;->this$0:Lcom/zjx/gw2lic/LicenseGateActivity;

    invoke-static {p1}, Lcom/zjx/gw2lic/LicenseGateActivity;->access$000(Lcom/zjx/gw2lic/LicenseGateActivity;)V

    return-void
.end method
