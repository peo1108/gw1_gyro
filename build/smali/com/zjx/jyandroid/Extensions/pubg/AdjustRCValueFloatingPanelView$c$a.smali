.class public Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

.field public final synthetic b:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$c;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$c;Lcom/zjx/jyandroid/Extensions/pubg/g$f;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$c$a;->b:Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$c;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$c$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$c$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->n:Lcom/zjx/jyandroid/Extensions/pubg/g$d;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/g$d;->b()V

    :try_start_0
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/AdjustRCValueFloatingPanelView$c$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/g$f;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/g$f;->n:Lcom/zjx/jyandroid/Extensions/pubg/g$d;

    invoke-virtual {p1}, Lcom/zjx/jyandroid/Extensions/pubg/g$d;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to write file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ly/c;->b(Ljava/lang/String;)V

    new-instance p1, Lcom/zjx/jyandroid/base/util/a;

    sget v0, Lcom/zjx/jyandroid/R$string;->write_file_failed:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p1, v0, v1}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p1}, Lcom/zjx/jyandroid/base/util/a;->a()V

    :goto_0
    return-void
.end method
