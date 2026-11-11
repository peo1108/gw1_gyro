.class Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$RCDataManageCellDataModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RCDataManageCellDataModel"
.end annotation


# instance fields
.field public configId:Ljava/lang/String;

.field public downloaded:Z

.field public isCurrentSelectedData:Z

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;


# direct methods
.method private constructor <init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$RCDataManageCellDataModel;->this$0:Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$RCDataManageCellDataModel;->downloaded:Z

    .line 3
    iput-boolean p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$RCDataManageCellDataModel;->isCurrentSelectedData:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView$RCDataManageCellDataModel;-><init>(Lcom/zjx/jyandroid/Extensions/GeneralRC/RCDataManageView;)V

    return-void
.end method
