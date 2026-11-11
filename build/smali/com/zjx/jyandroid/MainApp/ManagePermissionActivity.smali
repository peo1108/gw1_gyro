.class public Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# instance fields
.field public a:Lcom/zjx/jyandroid/databinding/ActivityManagePermissionBinding;

.field public b:Landroid/view/View;

.field public c:Landroid/widget/Button;

.field public d:Landroid/widget/Button;

.field public e:Landroid/widget/Button;

.field public f:Landroid/widget/Button;

.field public g:Landroid/widget/Button;

.field public h:Landroid/widget/Button;

.field public i:Landroid/widget/Button;

.field public j:Landroid/widget/Button;

.field public k:Landroid/widget/Button;

.field public l:Landroid/view/View;

.field public m:Landroid/view/View;

.field public n:Landroid/view/View;

.field public o:Landroid/view/View;

.field public p:Landroid/view/View;

.field public q:Landroid/widget/LinearLayout;

.field public r:Lcom/addisonelliott/segmentedbutton/SegmentedButtonGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private refresh()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->c:Landroid/widget/Button;

    invoke-static {p0}, Lcom/zjx/jyandroid/base/util/b$f;->g(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->c(Landroid/widget/Button;Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->d:Landroid/widget/Button;

    invoke-static {p0}, Lcom/zjx/jyandroid/base/util/b$f;->f(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->c(Landroid/widget/Button;Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->f:Landroid/widget/Button;

    invoke-static {p0}, Lcom/zjx/jyandroid/base/util/b$f;->h(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->c(Landroid/widget/Button;Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->h:Landroid/widget/Button;

    invoke-static {p0}, Lcom/zjx/jyandroid/base/util/b$f;->l(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->c(Landroid/widget/Button;Z)V

    invoke-static {p0}, Lcom/zjx/jyandroid/base/util/b$f;->o(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->e:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->c(Landroid/widget/Button;Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->e:Landroid/widget/Button;

    sget v1, Lcom/zjx/jyandroid/R$string;->manage_permission_activity_go_turn_off:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->e:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->c(Landroid/widget/Button;Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->e:Landroid/widget/Button;

    sget v1, Lcom/zjx/jyandroid/R$string;->manage_permission_activity_off:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->k:Landroid/widget/Button;

    invoke-static {p0}, Lcom/zjx/jyandroid/base/util/b$f;->j(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->c(Landroid/widget/Button;Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->i:Landroid/widget/Button;

    invoke-static {p0}, Lcom/zjx/jyandroid/base/util/b$f;->b(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->c(Landroid/widget/Button;Z)V

    iget-object v0, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->j:Landroid/widget/Button;

    invoke-static {p0}, Lcom/zjx/jyandroid/base/util/b$f;->c(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->c(Landroid/widget/Button;Z)V

    return-void
.end method


# virtual methods
.method public final c(Landroid/widget/Button;Z)V
    .locals 0

    if-eqz p2, :cond_0

    sget p2, Lcom/zjx/jyandroid/R$color;->success_green:I

    invoke-static {p2}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    sget p2, Lcom/zjx/jyandroid/R$string;->manage_permission_activity_got:I

    invoke-static {p2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    sget p2, Lcom/zjx/jyandroid/R$string;->manage_permission_activity_go_get:I

    invoke-static {p2}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p2, Lcom/zjx/jyandroid/R$color;->danger_red:I

    invoke-static {p2}, Lcom/zjx/jyandroid/base/util/b;->l(I)I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/zjx/jyandroid/databinding/ActivityManagePermissionBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/zjx/jyandroid/databinding/ActivityManagePermissionBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->a:Lcom/zjx/jyandroid/databinding/ActivityManagePermissionBinding;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/databinding/ActivityManagePermissionBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    sget p1, Lcom/zjx/jyandroid/R$id;->finishButton:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->b:Landroid/view/View;

    sget p1, Lcom/zjx/jyandroid/R$id;->floatingViewPermissionButton:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->c:Landroid/widget/Button;

    sget p1, Lcom/zjx/jyandroid/R$id;->fileRWPermissionButton:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->d:Landroid/widget/Button;

    sget p1, Lcom/zjx/jyandroid/R$id;->usagePermissionButton:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->f:Landroid/widget/Button;

    sget p1, Lcom/zjx/jyandroid/R$id;->allowBackgroundPermissionButton:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->h:Landroid/widget/Button;

    sget p1, Lcom/zjx/jyandroid/R$id;->powerSaverButton:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->e:Landroid/widget/Button;

    sget p1, Lcom/zjx/jyandroid/R$id;->floatingPermissionHelpIcon:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->l:Landroid/view/View;

    sget p1, Lcom/zjx/jyandroid/R$id;->fileRWPermissionHelpIcon:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->m:Landroid/view/View;

    sget p1, Lcom/zjx/jyandroid/R$id;->usagePermissionHelpIcon:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->n:Landroid/view/View;

    sget p1, Lcom/zjx/jyandroid/R$id;->allowBackgroundPermissionHelpIcon:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->o:Landroid/view/View;

    sget p1, Lcom/zjx/jyandroid/R$id;->bluetoothConnectPermissionButton:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->i:Landroid/widget/Button;

    sget p1, Lcom/zjx/jyandroid/R$id;->bluetoothScanPermissionButton:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->j:Landroid/widget/Button;

    sget p1, Lcom/zjx/jyandroid/R$id;->locationPermissionButton:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->k:Landroid/widget/Button;

    sget p1, Lcom/zjx/jyandroid/R$id;->shoucuoPermissions:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->q:Landroid/widget/LinearLayout;

    sget p1, Lcom/zjx/jyandroid/R$id;->manageFileRWPermssionRow:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->p:Landroid/view/View;

    invoke-static {}, Ly/d;->C()Ly/d;

    move-result-object p1

    invoke-virtual {p1}, Ly/d;->j()Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    move-result-object p1

    sget-object v0, Lcom/zjx/jyandroid/base/Definitions/WorkingMode;->ShoucuoMode:Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    const/16 v1, 0x8

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->q:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-static {}, Lcom/zjx/jyandroid/base/util/b$f;->m()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->p:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->l:Landroid/view/View;

    new-instance v0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity$a;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity$a;-><init>(Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->m:Landroid/view/View;

    new-instance v0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity$f;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity$f;-><init>(Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->o:Landroid/view/View;

    new-instance v0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity$g;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity$g;-><init>(Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->n:Landroid/view/View;

    new-instance v0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity$h;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity$h;-><init>(Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->b:Landroid/view/View;

    new-instance v0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity$i;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity$i;-><init>(Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->c:Landroid/widget/Button;

    new-instance v0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity$j;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity$j;-><init>(Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->d:Landroid/widget/Button;

    new-instance v0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity$k;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity$k;-><init>(Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->h:Landroid/widget/Button;

    new-instance v0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity$l;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity$l;-><init>(Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->f:Landroid/widget/Button;

    new-instance v0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity$m;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity$m;-><init>(Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->e:Landroid/widget/Button;

    new-instance v0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity$b;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity$b;-><init>(Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->k:Landroid/widget/Button;

    new-instance v0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity$c;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity$c;-><init>(Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->i:Landroid/widget/Button;

    new-instance v0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity$d;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity$d;-><init>(Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->j:Landroid/widget/Button;

    new-instance v0, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity$e;

    invoke-direct {v0, p0}, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity$e;-><init>(Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-direct {p0}, Lcom/zjx/jyandroid/MainApp/ManagePermissionActivity;->refresh()V

    return-void
.end method
