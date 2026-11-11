.class public Lcom/zjx/jyandroid/MainApp/SettingsPageView$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/SettingsPageView$f;->a:Lcom/zjx/jyandroid/MainApp/SettingsPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {}, Ly/d;->C()Ly/d;

    move-result-object p1

    invoke-virtual {p1, p2}, Ly/d;->r(Z)V

    return-void
.end method
