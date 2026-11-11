.class public Lmdm/BackupCard;
.super Landroid/widget/LinearLayout;
.source "BackupCard.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 1

    .line 22
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 23
    invoke-virtual {p0, p0}, Lmdm/BackupCard;->wire(Landroid/view/View;)V

    .line 24
    return-void
.end method

.method wire(Landroid/view/View;)V
    .registers 4

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 28
    const-string v1, "export"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 29
    new-instance v0, Lmdm/BackupCard$1;

    invoke-direct {v0, p0}, Lmdm/BackupCard$1;-><init>(Lmdm/BackupCard;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_25

    .line 32
    :cond_15
    const-string v1, "import"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 33
    new-instance v0, Lmdm/BackupCard$2;

    invoke-direct {v0, p0}, Lmdm/BackupCard$2;-><init>(Lmdm/BackupCard;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    :cond_25
    :goto_25
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3c

    .line 38
    check-cast p1, Landroid/view/ViewGroup;

    .line 39
    const/4 v0, 0x0

    :goto_2c
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3c

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmdm/BackupCard;->wire(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 41
    :cond_3c
    return-void
.end method
