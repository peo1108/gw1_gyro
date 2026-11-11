.class public final Lcom/zjx/gw2lic/Gw2BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Gw2BootReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 12
    const-string v0, ";\u00a9P\u00d3a\u0012\u008c{\u00abA\u00e8l\u0018\u0097~\u00dcI\u00e3m\u001e\u00b0e\u00faj\u00dd\u00ab3\u009a\t\u00fep\u00c1\u00bf3\u0091\u0005"

    invoke-static/range {v0 .. v0}, Lcom/zjx/buildtier/Sx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 13
    invoke-static {p1}, Lcom/zjx/gw2lic/Gw2CheckReceiver;->schedule(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
