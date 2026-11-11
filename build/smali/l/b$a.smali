.class public Ll/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll/b;->u()V
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

    iput-object p1, p0, Ll/b$a;->a:Ll/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ll/b$a;->a:Ll/b;

    iget-object v0, v0, Ll/b;->c:Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;->setHalfHidden(Z)V

    return-void
.end method
