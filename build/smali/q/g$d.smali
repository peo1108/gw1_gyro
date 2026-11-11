.class public Lq/g$d;
.super Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic g:Lq/g;


# direct methods
.method public constructor <init>(Lq/g;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lq/g$d;->g:Lq/g;

    .line 2
    invoke-direct {p0, p2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->textView:Landroid/widget/TextView;

    iget-object v0, p1, Lq/a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->getOperations()Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%d"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iput-boolean v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->disableDeleteButton:Z

    return-void
.end method

.method public constructor <init>(Lq/g;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lq/g$d;->g:Lq/g;

    .line 6
    invoke-direct {p0, p2, p3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    iget-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->textView:Landroid/widget/TextView;

    iget-object p3, p1, Lq/a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;

    invoke-virtual {p3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->getOperations()Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/AbstractList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 p3, 0x1

    add-int/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iput-boolean p3, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->disableDeleteButton:Z

    return-void
.end method

.method public constructor <init>(Lq/g;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 9
    iput-object p1, p0, Lq/g$d;->g:Lq/g;

    .line 10
    invoke-direct {p0, p2, p3, p4}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    iget-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->textView:Landroid/widget/TextView;

    iget-object p3, p1, Lq/a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;

    invoke-virtual {p3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->getOperations()Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/AbstractList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 p3, 0x1

    add-int/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p4, "%d"

    invoke-static {p4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iput-boolean p3, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->disableDeleteButton:Z

    return-void
.end method

.method public constructor <init>(Lq/g;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 13
    iput-object p1, p0, Lq/g$d;->g:Lq/g;

    .line 14
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/z;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 15
    iget-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->textView:Landroid/widget/TextView;

    iget-object p3, p1, Lq/a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;

    invoke-virtual {p3}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->getOperations()Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/AbstractList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 p3, 0x1

    add-int/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p4, "%d"

    invoke-static {p4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iput-boolean p3, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->disableDeleteButton:Z

    return-void
.end method
