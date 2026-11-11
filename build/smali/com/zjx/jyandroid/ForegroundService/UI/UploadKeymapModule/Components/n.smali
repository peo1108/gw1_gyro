.class public Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;
.super Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;,
        Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$e;,
        Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$d;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;

.field public c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ln/e;",
            ">;"
        }
    .end annotation
.end field

.field public f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public k:Lr/x$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;-><init>(Landroid/content/Context;)V

    .line 2
    sget p1, Lcom/zjx/jyandroid/R$string;->keymap_component_text4:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->a:Ljava/lang/String;

    .line 3
    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;

    invoke-direct {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;

    .line 4
    iput-object p0, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;

    .line 5
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->textView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->textView:Landroid/widget/TextView;

    const/high16 v0, 0x41200000    # 10.0f

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    const p1, -0x50ad22

    .line 7
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setSelectedBackgroundColor(I)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBackgroundColor(I)V

    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setDisablePositioningLine(Z)V

    .line 10
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->c:Ljava/util/LinkedList;

    .line 11
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->d:Ljava/util/LinkedList;

    .line 12
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->e:Ljava/util/Set;

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->f:I

    .line 14
    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->g:I

    .line 15
    iput v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->h:I

    .line 16
    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->i:I

    .line 17
    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->j:I

    .line 18
    sget-object p1, Lr/x$b;->a:Lr/x$b;

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->k:Lr/x$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    sget p1, Lcom/zjx/jyandroid/R$string;->keymap_component_text4:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->a:Ljava/lang/String;

    .line 21
    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;

    invoke-direct {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;

    .line 22
    iput-object p0, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;

    .line 23
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->textView:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->textView:Landroid/widget/TextView;

    const/high16 p2, 0x41200000    # 10.0f

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    const p1, -0x50ad22

    .line 25
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setSelectedBackgroundColor(I)V

    .line 26
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBackgroundColor(I)V

    const/4 p1, 0x1

    .line 27
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setDisablePositioningLine(Z)V

    .line 28
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->c:Ljava/util/LinkedList;

    .line 29
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->d:Ljava/util/LinkedList;

    .line 30
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->e:Ljava/util/Set;

    const/4 p2, 0x0

    .line 31
    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->f:I

    .line 32
    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->g:I

    .line 33
    iput v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->h:I

    .line 34
    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->i:I

    .line 35
    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->j:I

    .line 36
    sget-object p1, Lr/x$b;->a:Lr/x$b;

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->k:Lr/x$b;

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/zjx/jyandroid/R$color;->macro_point_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setSelectedBackgroundColor(I)V

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/zjx/jyandroid/R$color;->macro_point_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBackgroundColor(I)V

    .line 39
    sget p1, Lcom/zjx/jyandroid/R$string;->macro:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setTextLabelText(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    sget p1, Lcom/zjx/jyandroid/R$string;->keymap_component_text4:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->a:Ljava/lang/String;

    .line 42
    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;

    invoke-direct {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;

    .line 43
    iput-object p0, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;

    .line 44
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->textView:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->textView:Landroid/widget/TextView;

    const/high16 p2, 0x41200000    # 10.0f

    const/4 p3, 0x2

    invoke-virtual {p1, p3, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    const p1, -0x50ad22

    .line 46
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setSelectedBackgroundColor(I)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBackgroundColor(I)V

    const/4 p1, 0x1

    .line 48
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setDisablePositioningLine(Z)V

    .line 49
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->c:Ljava/util/LinkedList;

    .line 50
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->d:Ljava/util/LinkedList;

    .line 51
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->e:Ljava/util/Set;

    const/4 p2, 0x0

    .line 52
    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->f:I

    .line 53
    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->g:I

    .line 54
    iput p3, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->h:I

    .line 55
    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->i:I

    .line 56
    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->j:I

    .line 57
    sget-object p1, Lr/x$b;->a:Lr/x$b;

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->k:Lr/x$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    sget p1, Lcom/zjx/jyandroid/R$string;->keymap_component_text4:I

    invoke-static {p1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->a:Ljava/lang/String;

    .line 60
    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;

    invoke-direct {p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;-><init>()V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;

    .line 61
    iput-object p0, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;

    .line 62
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->textView:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->textView:Landroid/widget/TextView;

    const/high16 p2, 0x41200000    # 10.0f

    const/4 p3, 0x2

    invoke-virtual {p1, p3, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    const p1, -0x50ad22

    .line 64
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setSelectedBackgroundColor(I)V

    .line 65
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBackgroundColor(I)V

    const/4 p1, 0x1

    .line 66
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setDisablePositioningLine(Z)V

    .line 67
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->c:Ljava/util/LinkedList;

    .line 68
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->d:Ljava/util/LinkedList;

    .line 69
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->e:Ljava/util/Set;

    const/4 p2, 0x0

    .line 70
    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->f:I

    .line 71
    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->g:I

    .line 72
    iput p3, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->h:I

    .line 73
    iput p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->i:I

    .line 74
    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->j:I

    .line 75
    sget-object p1, Lr/x$b;->a:Lr/x$b;

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->k:Lr/x$b;

    return-void
.end method


# virtual methods
.method public a(Ln/e;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(I)V
    .locals 4

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$e;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$a;

    invoke-direct {v3, p0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$a;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;Ln/e;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->e:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$d;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$b;

    invoke-direct {v2, p0, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$b;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;Ln/e;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method public c(I)V
    .locals 1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->b(I)V

    :cond_0
    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->d:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    invoke-virtual {p0, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->b(I)V

    :cond_1
    return-void
.end method

.method public d(Ln/e;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getOperations()Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;

    return-object v0
.end method

.method public getTerminateKeyCodes()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->d:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getTriggerKeyCodes()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->c:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getTriggerMode()Lr/x$b;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->k:Lr/x$b;

    return-object v0
.end method

.method public onKeyEvent(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;)V
    .locals 4

    iget-boolean v0, p1, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;->down:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->f:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->c:Ljava/util/LinkedList;

    iget v3, p1, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;->usage:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->c:Ljava/util/LinkedList;

    iget v3, p1, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;->usage:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->b(I)V

    :cond_2
    iget v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->f:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lt v0, v2, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->d:Ljava/util/LinkedList;

    iget v1, p1, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;->usage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->d:Ljava/util/LinkedList;

    iget p1, p1, Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;->usage:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->b(I)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/m;->downKeyCodeSet:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_6

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->setTriggerKeyChangeEnable(Z)V

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->setTerminateKeyChangeEnable(Z)V

    :cond_6
    :goto_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->a:Ljava/lang/String;

    return-void
.end method

.method public setOperations(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;)V
    .locals 1

    iput-object p0, p1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/a;

    invoke-virtual {v0, p0}, Lq/a;->h(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTerminateKeyChangeEnable(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->f:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->f:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->f:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->f:I

    :goto_0
    return-void
.end method

.method public setTerminateKeyCodes([I)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->d:Ljava/util/LinkedList;

    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTriggerKeyChangeEnable(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->f:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->f:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->f:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->f:I

    :goto_0
    return-void
.end method

.method public setTriggerKeyCodes([I)V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->c:Ljava/util/LinkedList;

    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTriggerMode(Lr/x$b;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->k:Lr/x$b;

    return-void
.end method
