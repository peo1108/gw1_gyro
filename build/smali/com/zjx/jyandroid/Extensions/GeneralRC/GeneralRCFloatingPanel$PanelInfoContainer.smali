.class public Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel$PanelInfoContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PanelInfoContainer"
.end annotation


# instance fields
.field final gesture:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

.field name:Ljava/lang/String;

.field final value:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel$PanelInfoContainer;->value:I

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel$PanelInfoContainer;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCFloatingPanel$PanelInfoContainer;->gesture:Lcom/zjx/jyandroid/Extensions/GeneralRC/GeneralRCData$Gesture;

    return-void
.end method
