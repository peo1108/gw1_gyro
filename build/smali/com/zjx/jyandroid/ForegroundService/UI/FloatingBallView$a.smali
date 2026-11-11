.class public Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView$a;
.super Lcom/zjx/jyandroid/base/TouchParsers/OnNoMoveClickEventParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView$a;->a:Lcom/zjx/jyandroid/ForegroundService/UI/FloatingBallView;

    invoke-direct {p0}, Lcom/zjx/jyandroid/base/TouchParsers/OnNoMoveClickEventParser;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-static {}, Ll/b;->t()Ll/b;

    move-result-object p1

    invoke-virtual {p1}, Ll/b;->m()V

    return-void
.end method
