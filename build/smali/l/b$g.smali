.class public Ll/b$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll/b;->g(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/base/util/ToastView;

.field public final synthetic b:Ll/b;


# direct methods
.method public constructor <init>(Ll/b;Lcom/zjx/jyandroid/base/util/ToastView;)V
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

    iput-object p1, p0, Ll/b$g;->b:Ll/b;

    iput-object p2, p0, Ll/b$g;->a:Lcom/zjx/jyandroid/base/util/ToastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ll/b$g;->b:Ll/b;

    iget-object v1, p0, Ll/b$g;->a:Lcom/zjx/jyandroid/base/util/ToastView;

    invoke-static {v0, v1}, Ll/b;->a(Ll/b;Lcom/zjx/jyandroid/base/BaseFloatingView;)V

    iget-object v0, p0, Ll/b$g;->b:Ll/b;

    iget-object v1, v0, Ll/b;->g:Lcom/zjx/jyandroid/base/util/ToastView;

    iget-object v2, p0, Ll/b$g;->a:Lcom/zjx/jyandroid/base/util/ToastView;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Ll/b;->g:Lcom/zjx/jyandroid/base/util/ToastView;

    :cond_0
    return-void
.end method
