.class public Ll/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll/c;->activatedKeymapHasChanged(Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ll/c$d;

.field public final synthetic b:Lr/y;

.field public final synthetic c:Ll/c;


# direct methods
.method public constructor <init>(Ll/c;Ll/c$d;Lr/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ll/c$b;->c:Ll/c;

    iput-object p2, p0, Ll/c$b;->a:Ll/c$d;

    iput-object p3, p0, Ll/c$b;->b:Lr/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ll/c$b;->c:Ll/c;

    iget-object v0, v0, Ll/c;->a:Ll/c$e;

    iget-object v1, p0, Ll/c$b;->a:Ll/c$d;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Ll/c$b;->a:Ll/c$d;

    iget-object v1, p0, Ll/c$b;->b:Lr/y;

    invoke-virtual {v1}, Lr/y;->b()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/g;->setFrame(Landroid/graphics/Rect;)V

    iget-object v0, p0, Ll/c$b;->b:Lr/y;

    iget-object v0, v0, Lr/y;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget v0, Lcom/zjx/jyandroid/R$string;->touch_input_event_manager_text2:I

    invoke-static {v0}, Lcom/zjx/jyandroid/base/util/b;->v(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Ll/c$b;->a:Ll/c$d;

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setTextLabelText(Ljava/lang/String;)V

    return-void
.end method
