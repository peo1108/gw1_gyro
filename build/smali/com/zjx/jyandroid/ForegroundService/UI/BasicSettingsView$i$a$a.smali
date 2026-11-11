.class public Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i$a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i$a;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i$a$a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/zjx/jyandroid/base/util/b$b;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i$a$a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i$a;

    iget-object v1, v1, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i$a;->c:Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i;

    iget-object v1, v1, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i;->a:Ly/d;

    invoke-virtual {v1}, Ly/d;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i$a$a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i$a;

    iget-object v1, v1, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i$a;->b:Lcom/zjx/jyandroid/base/Components/Alert;

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/base/Components/Alert;->setContentText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i$a$a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i$a;

    iget-object v1, v1, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i$a;->c:Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i;

    iget-object v1, v1, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i;->b:Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;

    iget-object v1, v1, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;->h:Lcom/zjx/jyandroid/base/Components/BindKeyRow;

    iget-object v1, v1, Lcom/zjx/jyandroid/base/Components/BindKeyRow;->keyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
