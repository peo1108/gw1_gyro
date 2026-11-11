.class public Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lq/a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILq/a;)V
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;

    invoke-virtual {p2, v0}, Lq/a;->h(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;)V

    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    check-cast p2, Lq/a;

    invoke-virtual {p0, p1, p2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;->a(ILq/a;)V

    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 2
    check-cast p1, Lq/a;

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;->b(Lq/a;)Z

    move-result p1

    return p1
.end method

.method public b(Lq/a;)Z
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;->a:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;

    invoke-virtual {p1, v0}, Lq/a;->h(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;)V

    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public c(I)Lq/a;
    .locals 2

    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lq/a;->h(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;)V

    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq/a;

    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$c;->c(I)Lq/a;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 2
    move-object v0, p1

    check-cast v0, Lq/a;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lq/a;->h(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;)V

    .line 4
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
