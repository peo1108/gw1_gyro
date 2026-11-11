.class Lcom/zjx/gw2lic/LicenseGateActivity$3;
.super Ljava/lang/Object;
.source "LicenseGateActivity.java"

# interfaces
.implements Lcom/zjx/gw2lic/Gw2License$Cb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/gw2lic/LicenseGateActivity;->doActivate()V
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

    .line 131
    iput-object p1, p0, Lcom/zjx/gw2lic/LicenseGateActivity$3;->this$0:Lcom/zjx/gw2lic/LicenseGateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/zjx/gw2lic/LicenseGateActivity$3;->this$0:Lcom/zjx/gw2lic/LicenseGateActivity;

    invoke-virtual {v0}, Lcom/zjx/gw2lic/LicenseGateActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/zjx/gw2lic/LicenseGateActivity$3;->this$0:Lcom/zjx/gw2lic/LicenseGateActivity;

    invoke-static {v0}, Lcom/zjx/gw2lic/LicenseGateActivity;->access$100(Lcom/zjx/gw2lic/LicenseGateActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    if-eqz p1, :cond_1

    .line 136
    iget-object p1, p0, Lcom/zjx/gw2lic/LicenseGateActivity$3;->this$0:Lcom/zjx/gw2lic/LicenseGateActivity;

    invoke-static {p1}, Lcom/zjx/gw2lic/LicenseGateActivity;->access$200(Lcom/zjx/gw2lic/LicenseGateActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object p1, p0, Lcom/zjx/gw2lic/LicenseGateActivity$3;->this$0:Lcom/zjx/gw2lic/LicenseGateActivity;

    const-string p2, "\u0011*W\u00c9.\u0013\u0087\u1ef4\u00b6\u000f\u00e8a\u0096\u008d8\u009dIcj\u0016\u00f0"

    invoke-static/range {p2 .. p2}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/zjx/gw2lic/LicenseGateActivity;->access$300(Lcom/zjx/gw2lic/LicenseGateActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 139
    iget-object p1, p0, Lcom/zjx/gw2lic/LicenseGateActivity$3;->this$0:Lcom/zjx/gw2lic/LicenseGateActivity;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "\u000e\u00b5\u1e95\u00cfi[\u009c=#F\u00a6)"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/zjx/gw2lic/LicenseGateActivity;->access$300(Lcom/zjx/gw2lic/LicenseGateActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_2
    iget-object p1, p0, Lcom/zjx/gw2lic/LicenseGateActivity$3;->this$0:Lcom/zjx/gw2lic/LicenseGateActivity;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\u0016\u1e10]\u009b."

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p3, :cond_3

    const-string p3, "1\u00af\u00c0\u00cfi[\u0090\u00b4\u00a1\u000f\u018d\u1ec2\u0018\u008b"

    invoke-static/range {p3 .. p3}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_3
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/zjx/gw2lic/LicenseGateActivity;->access$300(Lcom/zjx/gw2lic/LicenseGateActivity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
