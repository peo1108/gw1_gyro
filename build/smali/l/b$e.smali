.class public Ll/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll/b;->v(Ljava/lang/String;JLcom/zjx/jyandroid/base/util/ToastView$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ll/b;


# direct methods
.method public constructor <init>(Ll/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Ll/b$e;->a:Ll/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ll/b$e;->a:Ll/b;

    iget-object v0, v0, Ll/b;->g:Lcom/zjx/jyandroid/base/util/ToastView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/BaseFloatingView;->removeAllOnTouchHandler()V

    iget-object v0, p0, Ll/b$e;->a:Ll/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ll/b;->g(Z)V

    :cond_0
    return-void
.end method
