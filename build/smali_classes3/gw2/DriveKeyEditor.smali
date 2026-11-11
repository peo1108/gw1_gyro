.class public Lgw2/DriveKeyEditor;
.super Ljava/lang/Object;
.source "DriveKeyEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static sEditor:LJ6/b;

.field static sLabels:[Ljava/lang/String;

.field static sLsLabels:[Ljava/lang/String;

.field static sPage:Lc6/a;

.field static sPoints:[LK6/j$b;

.field static sSlotBase:I


# instance fields
.field final which:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "W"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "S"

    aput-object v2, v0, v1

    sput-object v0, Lgw2/DriveKeyEditor;->sLabels:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "L-Shift"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Space"

    aput-object v2, v0, v1

    sput-object v0, Lgw2/DriveKeyEditor;->sLsLabels:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lgw2/DriveKeyEditor;->which:I

    return-void
.end method

.method static close()V
    .locals 3

    sget-object v0, Lgw2/DriveKeyEditor;->sPage:Lc6/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc6/a;->u()V

    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lgw2/DriveKeyEditor;->sPage:Lc6/a;

    sput-object v1, Lgw2/DriveKeyEditor;->sPoints:[LK6/j$b;

    sget-object v0, Lgw2/DriveKeyEditor;->sEditor:LJ6/b;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    iget-object v2, v0, LJ6/b;->w6:LJ6/a;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v2, v0, LJ6/b;->v6:Lcom/zjx/jyandroid/module/keymapeditor/newcomponentselectionmodule/NewComponentSelectionPanelView;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v2, v0, Lp7/a;->X:Lp7/a$d;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v2, v0, LJ6/b;->u6:Lcom/zjx/jyandroid/module/keymapeditor/KeymapUploadPanelView;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    const/4 v1, 0x0

    sput-object v1, Lgw2/DriveKeyEditor;->sEditor:LJ6/b;

    return-void
.end method

.method static doReset()V
    .locals 8

    sget-object v0, Lgw2/DriveKeyEditor;->sPoints:[LK6/j$b;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    sget v7, Lgw2/DriveKeyEditor;->sSlotBase:I

    add-int/2addr v7, v2

    invoke-static {v1, v7}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->defPointX(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v1, v7}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->defPointY(Landroid/content/Context;I)I

    move-result v5

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v3}, LK6/j$b;->getDefaultSize()Landroid/util/Size;

    move-result-object v4

    invoke-static {v6, v4}, Lg7/d;->k(Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Lr7/f;->setFrame(Landroid/graphics/Rect;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static doSave()V
    .locals 7

    sget-object v0, Lgw2/DriveKeyEditor;->sPoints:[LK6/j$b;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lr7/a;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    sget v6, Lgw2/DriveKeyEditor;->sSlotBase:I

    add-int/2addr v6, v2

    invoke-static {v6, v4, v5}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->setPoint(III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->savePoints(Landroid/content/Context;)V

    :cond_1
    invoke-static {}, Lgw2/DriveKeyEditor;->close()V

    return-void
.end method

.method public static open(Lp7/a;)V
    .locals 10

    sget-object v0, Lgw2/DriveKeyEditor;->sPage:Lc6/a;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lgw2/DriveKeyEditor;->sEditor:LJ6/b;

    const/4 v0, 0x0

    sput v0, Lgw2/DriveKeyEditor;->sSlotBase:I

    instance-of v0, p0, LJ6/b;

    if-eqz v0, :cond_1

    check-cast p0, LJ6/b;

    sput-object p0, Lgw2/DriveKeyEditor;->sEditor:LJ6/b;

    invoke-virtual {p0}, LJ6/b;->R()V

    :cond_1
    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->init(Landroid/content/Context;)V

    sget-object v1, LB6/b;->f:LB6/b;

    new-instance v2, Lc6/a;

    invoke-direct {v2, v0, v1}, Lc6/a;-><init>(Landroid/content/Context;Lg7/b;)V

    sput-object v2, Lgw2/DriveKeyEditor;->sPage:Lc6/a;

    invoke-virtual {v2}, Lc6/a;->m()V

    const/4 v3, 0x4

    new-array v3, v3, [LK6/j$b;

    sput-object v3, Lgw2/DriveKeyEditor;->sPoints:[LK6/j$b;

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x4

    if-ge v4, v5, :cond_2

    new-instance v5, LK6/j$b;

    invoke-direct {v5, v0}, LK6/j$b;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->startPointX(Landroid/content/Context;I)I

    move-result v8

    invoke-static {v0, v4}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->startPointY(Landroid/content/Context;I)I

    move-result v9

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v5}, LK6/j$b;->getDefaultSize()Landroid/util/Size;

    move-result-object v6

    invoke-static {v7, v6}, Lg7/d;->k(Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Lr7/f;->setFrame(Landroid/graphics/Rect;)V

    sget-object v6, Lgw2/DriveKeyEditor;->sLabels:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Lr7/k;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v5}, Lp7/a;->a(Lr7/a;)V

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, v2, Lc6/a;->m6:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationPositionEditorPanel;

    iget-object v1, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationPositionEditorPanel;->h7:Landroid/view/View;

    new-instance v3, Lgw2/DriveKeyEditor;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lgw2/DriveKeyEditor;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationPositionEditorPanel;->e7:Landroid/view/View;

    new-instance v3, Lgw2/DriveKeyEditor;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lgw2/DriveKeyEditor;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationPositionEditorPanel;->g7:Landroid/view/View;

    new-instance v1, Lgw2/DriveKeyEditor;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Lgw2/DriveKeyEditor;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static openLsSp(Lp7/a;)V
    .locals 11

    sget-object v0, Lgw2/DriveKeyEditor;->sPage:Lc6/a;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lgw2/DriveKeyEditor;->sEditor:LJ6/b;

    const/4 v0, 0x4

    sput v0, Lgw2/DriveKeyEditor;->sSlotBase:I

    instance-of v0, p0, LJ6/b;

    if-eqz v0, :cond_1

    check-cast p0, LJ6/b;

    sput-object p0, Lgw2/DriveKeyEditor;->sEditor:LJ6/b;

    invoke-virtual {p0}, LJ6/b;->R()V

    :cond_1
    invoke-static {}, Lcom/zjx/jyandroid/App;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->init(Landroid/content/Context;)V

    sget-object v1, LB6/b;->f:LB6/b;

    new-instance v2, Lc6/a;

    invoke-direct {v2, v0, v1}, Lc6/a;-><init>(Landroid/content/Context;Lg7/b;)V

    sput-object v2, Lgw2/DriveKeyEditor;->sPage:Lc6/a;

    invoke-virtual {v2}, Lc6/a;->m()V

    const/4 v3, 0x2

    new-array v3, v3, [LK6/j$b;

    sput-object v3, Lgw2/DriveKeyEditor;->sPoints:[LK6/j$b;

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    new-instance v5, LK6/j$b;

    invoke-direct {v5, v0}, LK6/j$b;-><init>(Landroid/content/Context;)V

    add-int/lit8 v10, v4, 0x4

    invoke-static {v0, v10}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->startPointX(Landroid/content/Context;I)I

    move-result v8

    invoke-static {v0, v10}, Lcom/zjx/gw2lic/Gw2DriveKeyMap;->startPointY(Landroid/content/Context;I)I

    move-result v9

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v5}, LK6/j$b;->getDefaultSize()Landroid/util/Size;

    move-result-object v6

    invoke-static {v7, v6}, Lg7/d;->k(Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Lr7/f;->setFrame(Landroid/graphics/Rect;)V

    sget-object v6, Lgw2/DriveKeyEditor;->sLsLabels:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Lr7/k;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v5}, Lp7/a;->a(Lr7/a;)V

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, v2, Lc6/a;->m6:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationPositionEditorPanel;

    iget-object v1, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationPositionEditorPanel;->h7:Landroid/view/View;

    new-instance v3, Lgw2/DriveKeyEditor;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lgw2/DriveKeyEditor;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationPositionEditorPanel;->e7:Landroid/view/View;

    new-instance v3, Lgw2/DriveKeyEditor;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lgw2/DriveKeyEditor;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/ComponentSettingsViews/Macro/MacroOperationPositionEditorPanel;->g7:Landroid/view/View;

    new-instance v1, Lgw2/DriveKeyEditor;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Lgw2/DriveKeyEditor;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lgw2/DriveKeyEditor;->which:I

    if-nez v0, :cond_0

    invoke-static {}, Lgw2/DriveKeyEditor;->doSave()V

    return-void

    :cond_0
    const/4 p1, 0x2

    if-ne v0, p1, :cond_1

    invoke-static {}, Lgw2/DriveKeyEditor;->doReset()V

    return-void

    :cond_1
    invoke-static {}, Lgw2/DriveKeyEditor;->close()V

    return-void
.end method
