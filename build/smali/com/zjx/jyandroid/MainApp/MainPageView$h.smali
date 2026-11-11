.class public Lcom/zjx/jyandroid/MainApp/MainPageView$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/MainApp/MainPageView;->hardwareConnected(Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

.field public final synthetic b:Lcom/zjx/jyandroid/MainApp/MainPageView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/MainApp/MainPageView;Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$h;->b:Lcom/zjx/jyandroid/MainApp/MainPageView;

    iput-object p2, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$h;->a:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$h;->b:Lcom/zjx/jyandroid/MainApp/MainPageView;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/zjx/jyandroid/MainApp/MainPageView$h;->a:Lcom/zjx/jyandroid/Hardware/Hardware$DeviceType;

    invoke-static {v0, v1, v2}, Lcom/zjx/jyandroid/MainApp/MainPageView;->a(Lcom/zjx/jyandroid/MainApp/MainPageView;ZLcom/zjx/jyandroid/Hardware/Hardware$DeviceType;)V

    return-void
.end method
