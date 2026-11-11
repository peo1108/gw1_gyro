.class public Lcom/zjx/jyandroid/MainApp/SettingsPageView$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/MainApp/SettingsPageView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/MainApp/SettingsPageView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/MainApp/SettingsPageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView$l;->a:Lcom/zjx/jyandroid/MainApp/SettingsPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView$l;->a:Lcom/zjx/jyandroid/MainApp/SettingsPageView;

    iget-object p1, p1, Lcom/zjx/jyandroid/MainApp/SettingsPageView;->c:Landroid/app/Activity;

    invoke-static {p1}, Lcom/zjx/jyandroid/App;->loadManageADBActivity(Landroid/app/Activity;)V

    return-void
.end method
