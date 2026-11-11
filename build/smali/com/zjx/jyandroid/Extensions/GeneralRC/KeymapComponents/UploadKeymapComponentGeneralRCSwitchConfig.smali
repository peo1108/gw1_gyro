.class public Lcom/zjx/jyandroid/Extensions/GeneralRC/KeymapComponents/UploadKeymapComponentGeneralRCSwitchConfig;
.super Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/e;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/t;


# instance fields
.field generalRCSwitchConfigPropertySC:Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentProperties/GeneralRCSwitchConfigPropertySC;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/e;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentProperties/GeneralRCSwitchConfigPropertySC;

    invoke-direct {p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentProperties/GeneralRCSwitchConfigPropertySC;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/KeymapComponents/UploadKeymapComponentGeneralRCSwitchConfig;->generalRCSwitchConfigPropertySC:Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentProperties/GeneralRCSwitchConfigPropertySC;

    const-string p1, "\u5207\u6362\u914d\u7f6e"

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setTextLabelText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->textView:Landroid/widget/TextView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x3a000000

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setSelectedBackgroundColor(I)V

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public getSwitchToIndex()I
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/KeymapComponents/UploadKeymapComponentGeneralRCSwitchConfig;->generalRCSwitchConfigPropertySC:Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentProperties/GeneralRCSwitchConfigPropertySC;

    iget v0, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentProperties/GeneralRCSwitchConfigPropertySC;->switchToIndex:I

    return v0
.end method

.method public loadFromMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/e;->loadFromMap(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/KeymapComponents/UploadKeymapComponentGeneralRCSwitchConfig;->generalRCSwitchConfigPropertySC:Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentProperties/GeneralRCSwitchConfigPropertySC;

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentProperties/GeneralRCSwitchConfigPropertySC;->loadFromMap(Ljava/util/Map;)V

    return-void
.end method

.method public setSwitchToIndex(I)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/KeymapComponents/UploadKeymapComponentGeneralRCSwitchConfig;->generalRCSwitchConfigPropertySC:Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentProperties/GeneralRCSwitchConfigPropertySC;

    iput p1, v0, Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentProperties/GeneralRCSwitchConfigPropertySC;->switchToIndex:I

    return-void
.end method

.method public toMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/GeneralRC/KeymapComponents/UploadKeymapComponentGeneralRCSwitchConfig;->generalRCSwitchConfigPropertySC:Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentProperties/GeneralRCSwitchConfigPropertySC;

    invoke-virtual {v1}, Lcom/zjx/jyandroid/Extensions/GeneralRC/ComponentProperties/GeneralRCSwitchConfigPropertySC;->toMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zjx/jyandroid/base/util/b;->M(Ljava/util/Map;Ljava/util/Map;)V

    invoke-super {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/e;->toMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zjx/jyandroid/base/util/b;->M(Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method
