.class public Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;
.super Lcom/zjx/jyandroid/base/BaseFloatingView;
.source "SourceFile"


# instance fields
.field activateButton:Landroid/view/View;

.field activateTextView:Landroid/widget/TextView;

.field clearButton:Landroid/view/View;

.field numberButton0:Landroid/view/View;

.field numberButton1:Landroid/view/View;

.field numberButton2:Landroid/view/View;

.field numberButton3:Landroid/view/View;

.field numberButton4:Landroid/view/View;

.field numberButton5:Landroid/view/View;

.field numberButton6:Landroid/view/View;

.field numberButton7:Landroid/view/View;

.field numberButton8:Landroid/view/View;

.field numberButton9:Landroid/view/View;

.field onlyConnectionMode:Z

.field pairingCodeTextEdit:Landroid/widget/EditText;

.field portEditText:Landroid/widget/EditText;

.field progressLoader:Landroid/widget/ProgressBar;

.field returnAppButton:Landroid/view/View;

.field showTutorialButton:Landroid/view/View;

.field tutorialView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->onlyConnectionMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->onlyConnectionMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->onlyConnectionMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zjx/jyandroid/base/BaseFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->onlyConnectionMode:Z

    return-void
.end method


# virtual methods
.method public getFocusedEditText()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->pairingCodeTextEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->pairingCodeTextEdit:Landroid/widget/EditText;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->portEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->portEditText:Landroid/widget/EditText;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPairingCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->pairingCodeTextEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPairingPort()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->portEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isOnlyConnectionMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->onlyConnectionMode:Z

    return v0
.end method

.method public onFinishInflate()V
    .locals 11

    invoke-super {p0}, Lcom/zjx/jyandroid/base/BaseFloatingView;->onFinishInflate()V

    sget v0, Lcom/zjx/jyandroid/R$id;->showTutorialButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->showTutorialButton:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->returnAppButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->returnAppButton:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->numberButton1:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->numberButton1:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->numberButton2:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->numberButton2:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->numberButton3:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->numberButton3:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->numberButton4:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->numberButton4:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->numberButton5:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->numberButton5:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->numberButton6:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->numberButton6:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->numberButton7:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->numberButton7:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->numberButton8:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->numberButton8:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->numberButton9:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->numberButton9:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->numberButton0:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->numberButton0:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->clearButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->clearButton:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->activateButton:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->activateButton:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->passcodeEditText:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->pairingCodeTextEdit:Landroid/widget/EditText;

    sget v0, Lcom/zjx/jyandroid/R$id;->portEditText:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->portEditText:Landroid/widget/EditText;

    sget v0, Lcom/zjx/jyandroid/R$id;->tutorialView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->tutorialView:Landroid/view/View;

    sget v0, Lcom/zjx/jyandroid/R$id;->progressLoader:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->progressLoader:Landroid/widget/ProgressBar;

    sget v0, Lcom/zjx/jyandroid/R$id;->activateTextView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->activateTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->numberButton0:Landroid/view/View;

    iget-object v2, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->numberButton1:Landroid/view/View;

    iget-object v3, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->numberButton2:Landroid/view/View;

    iget-object v4, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->numberButton3:Landroid/view/View;

    iget-object v5, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->numberButton4:Landroid/view/View;

    iget-object v6, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->numberButton5:Landroid/view/View;

    iget-object v7, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->numberButton6:Landroid/view/View;

    iget-object v8, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->numberButton7:Landroid/view/View;

    iget-object v9, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->numberButton8:Landroid/view/View;

    iget-object v10, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->numberButton9:Landroid/view/View;

    filled-new-array/range {v1 .. v10}, [Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    new-instance v3, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView$1;

    invoke-direct {v3, p0, v1}, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView$1;-><init>(Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->clearButton:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView$2;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView$2;-><init>(Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->showTutorialButton:Landroid/view/View;

    new-instance v1, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView$3;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView$3;-><init>(Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setEnterOnlyConnectionMode(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->pairingCodeTextEdit:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->activateTextView:Landroid/widget/TextView;

    sget v1, Lcom/zjx/jyandroid/R$string;->connect:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->pairingCodeTextEdit:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->activateTextView:Landroid/widget/TextView;

    sget v1, Lcom/zjx/jyandroid/R$string;->activate:I

    invoke-static {v1}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iput-boolean p1, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->onlyConnectionMode:Z

    return-void
.end method

.method public setProgressLoaderHidden(Z)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->progressLoader:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->activateTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->progressLoader:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/zjx/jyandroid/ADB/ADBPairFloatingView;->activateTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
