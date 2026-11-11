.class public Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/base/Components/Alert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;,
        Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;
    }
.end annotation


# instance fields
.field private handler:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;

.field private style:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;->handler:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;

    iput-object p2, p0, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;->style:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    return-void
.end method

.method public static synthetic access$200(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;->style:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$Style;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;->title:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public trigger()V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;->handler:Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/zjx/jyandroid/base/Components/Alert$AlertAction$ActionHandler;->actionTriggered(Lcom/zjx/jyandroid/base/Components/Alert$AlertAction;)V

    :cond_0
    return-void
.end method
