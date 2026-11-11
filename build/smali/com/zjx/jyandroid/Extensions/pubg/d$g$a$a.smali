.class public Lcom/zjx/jyandroid/Extensions/pubg/d$g$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/d$g$a;->requestCompleted(Lcom/zjx/jyandroid/base/MError;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;

.field public final synthetic b:Lcom/zjx/jyandroid/Extensions/pubg/d$g$a;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/d$g$a;Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$g$a$a;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$g$a;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$g$a$a;->a:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$g$a$a;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$g$a;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/d$g$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/d$g;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/d$g;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$g$a$a;->a:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;

    iget-object v1, v1, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;->content:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/d;->f(Lcom/zjx/jyandroid/Extensions/pubg/d;Ljava/util/Map;)Ljava/util/Map;

    invoke-static {}, Ly/d;->C()Ly/d;

    move-result-object v0

    invoke-virtual {v0}, Ly/d;->j()Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    move-result-object v0

    sget-object v1, Lcom/zjx/jyandroid/base/Definitions/WorkingMode;->ShoucuoMode:Lcom/zjx/jyandroid/base/Definitions/WorkingMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$g$a$a;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$g$a;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/d$g$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/d$g;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/d$g;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/d;->a:Lcom/zjx/jyandroid/Extensions/pubg/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$g$a$a;->a:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;

    iget-object v1, v1, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;->content:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/a;->d(Ljava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$g$a$a;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$g$a;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/d$g$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/d$g;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/d$g;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->g(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/b;

    move-result-object v0

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$g$a$a;->a:Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;

    iget-object v1, v1, Lcom/zjx/jyandroid/ForegroundService/KeymapManager$Keymap;->content:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/Extensions/pubg/b;->x(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/zjx/jyandroid/Extensions/pubg/d$g$a$a;->b:Lcom/zjx/jyandroid/Extensions/pubg/d$g$a;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/d$g$a;->a:Lcom/zjx/jyandroid/Extensions/pubg/d$g;

    iget-object v0, v0, Lcom/zjx/jyandroid/Extensions/pubg/d$g;->a:Lcom/zjx/jyandroid/Extensions/pubg/d;

    invoke-static {v0}, Lcom/zjx/jyandroid/Extensions/pubg/d;->g(Lcom/zjx/jyandroid/Extensions/pubg/d;)Lcom/zjx/jyandroid/Extensions/pubg/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/Extensions/pubg/b;->u()V

    return-void
.end method
