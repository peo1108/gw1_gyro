.class Lcom/zjx/jyandroid/ADB/ADBPairFloatingView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView$3;->this$0:Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView$3;->this$0:Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->isOnlyConnectionMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->setEnterOnlyConnectionMode(Z)V

    return-void
.end method
