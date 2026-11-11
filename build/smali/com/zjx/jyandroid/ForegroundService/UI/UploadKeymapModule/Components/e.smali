.class public abstract Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/e;
.super Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/b;
.implements Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/d;


# instance fields
.field public scGeneralComponentProperty:Lr/z0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lr/z0;

    invoke-direct {p1}, Lr/z0;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/e;->scGeneralComponentProperty:Lr/z0;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/zjx/jyandroid/R$color;->normal_touch_point_background:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    const v0, 0x3e4ccccd    # 0.2f

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/base/util/b;->T(IF)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setSelectedBackgroundColor(I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/zjx/jyandroid/R$color;->normal_touch_point_background:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-static {p1, v0}, Lcom/zjx/jyandroid/base/util/b;->T(IF)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBackgroundColor(I)V

    const/16 p1, 0xa

    .line 5
    invoke-virtual {p0, p1, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setBorderDashWidthAndGap(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    new-instance p1, Lr/z0;

    invoke-direct {p1}, Lr/z0;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/e;->scGeneralComponentProperty:Lr/z0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 9
    new-instance p1, Lr/z0;

    invoke-direct {p1}, Lr/z0;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/e;->scGeneralComponentProperty:Lr/z0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 11
    new-instance p1, Lr/z0;

    invoke-direct {p1}, Lr/z0;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/e;->scGeneralComponentProperty:Lr/z0;

    return-void
.end method

.method public static getDefaultSize()Landroid/util/Size;
    .locals 3

    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$c;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    goto :goto_0

    :cond_0
    const/16 v0, 0x50

    :goto_0
    new-instance v1, Landroid/util/Size;

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v2

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method


# virtual methods
.method public getTriggerType()Lr/z0$a;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/e;->scGeneralComponentProperty:Lr/z0;

    iget-object v0, v0, Lr/z0;->a:Lr/z0$a;

    return-object v0
.end method

.method public isBlockTouch()Z
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/e;->scGeneralComponentProperty:Lr/z0;

    iget-boolean v0, v0, Lr/z0;->b:Z

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

    invoke-super {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;->loadFromMap(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/e;->scGeneralComponentProperty:Lr/z0;

    invoke-virtual {v0, p1}, Lr/z0;->loadFromMap(Ljava/util/Map;)V

    return-void
.end method

.method public setBlockTouch(Z)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/e;->scGeneralComponentProperty:Lr/z0;

    iput-boolean p1, v0, Lr/z0;->b:Z

    return-void
.end method

.method public setRadius(I)V
    .locals 2

    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b$i;->c(I)I

    move-result p1

    :cond_0
    invoke-super {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setRadius(I)V

    return-void
.end method

.method public setTriggerType(Lr/z0$a;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/e;->scGeneralComponentProperty:Lr/z0;

    iput-object p1, v0, Lr/z0;->a:Lr/z0$a;

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

    invoke-super {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/f;->toMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zjx/jyandroid/base/util/b;->M(Ljava/util/Map;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/e;->scGeneralComponentProperty:Lr/z0;

    invoke-virtual {v1}, Lr/z0;->toMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zjx/jyandroid/base/util/b;->M(Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method
