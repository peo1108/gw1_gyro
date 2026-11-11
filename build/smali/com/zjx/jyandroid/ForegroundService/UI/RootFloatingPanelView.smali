.class public Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView;
.super Lcom/zjx/jyandroid/base/BaseFloatingView;
.source "SourceFile"


# instance fields
.field public a:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object p1

    invoke-virtual {p1}, Ll/b;->w()V

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/zjx/jyandroid/App;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.zx.yxt"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/zjx/jyandroid/base/util/a;

    const-string v1, "\u542f\u52a8\u5931\u8d25"

    sget-object v2, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/util/a;->a()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to launch app: com.zjx.jyandroid. . error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ly/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 0

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object p1

    invoke-virtual {p1}, Ll/b;->w()V

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object p1

    invoke-virtual {p1}, Ll/b;->n()V

    return-void
.end method

.method public e(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object p1

    invoke-virtual {p1}, Ll/b;->w()V

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object p1

    invoke-virtual {p1}, Ll/b;->p()V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->J()Lcom/zjx/jyandroid/ForegroundService/KeymapManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zjx/jyandroid/ForegroundService/KeymapManager;->k()Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;

    move-result-object p1

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object v0

    iget-object v0, v0, Ll/b;->i:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;

    invoke-virtual {v0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/b;->P(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;)V

    return-void
.end method

.method public getComponentsParentView()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public settingsViewClicked(Landroid/view/View;)V
    .locals 0

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object p1

    invoke-virtual {p1}, Ll/b;->o()V

    return-void
.end method

.method public viewDidLoad()V
    .locals 2

    sget v0, Lcom/zjx/jyandroid/R$id;->buttonsLinearLayout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView;->a:Landroid/widget/LinearLayout;

    sget v0, Lcom/zjx/jyandroid/R$id;->selectKeymapLayout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView$a;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView$a;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget v0, Lcom/zjx/jyandroid/R$id;->uploadKeymapLayout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView$b;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView$b;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget v0, Lcom/zjx/jyandroid/R$id;->settingsLayout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView$c;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView$c;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget v0, Lcom/zjx/jyandroid/R$id;->returnLayout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView$d;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView$d;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget v0, Lcom/zjx/jyandroid/R$id;->hidePanelImageView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView$e;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView$e;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->sharedInstance()Lcom/zjx/jyandroid/Extensions/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zjx/jyandroid/Extensions/ExtensionManager;->onFloatingPanelDisplay(Lcom/zjx/jyandroid/ForegroundService/UI/RootFloatingPanelView;)V

    return-void
.end method
