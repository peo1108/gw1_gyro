.class public Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln/e;

.field public final synthetic b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;Ln/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$a;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$a;->a:Ln/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$a;->a:Ln/e;

    check-cast v0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$e;

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$a;->b:Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;

    iget-object v2, v1, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;->c:Ljava/util/LinkedList;

    invoke-interface {v0, v1, v2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n$e;->a(Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/n;Ljava/util/LinkedList;)V

    return-void
.end method
