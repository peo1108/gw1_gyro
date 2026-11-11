.class public Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ly/d;

.field public final synthetic b:Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;Ly/d;)V
    .locals 0
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

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$j;->b:Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$j;->a:Ly/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$j;->a:Ly/d;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Ly/d;->y(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$j;->b:Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;

    invoke-static {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;->b(Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;)V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->y()Lcom/zjx/jyandroid/ForegroundService/UI/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->p()V

    return-void
.end method
