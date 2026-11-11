.class public Ll/b$d;
.super Lcom/zjx/jyandroid/base/TouchParsers/OnNoMoveClickEventParser;
.source "SourceFile"


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

    iput-object p1, p0, Ll/b$d;->a:Ll/b;

    invoke-direct {p0}, Lcom/zjx/jyandroid/base/TouchParsers/OnNoMoveClickEventParser;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    iget-object p1, p0, Ll/b$d;->a:Ll/b;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ll/b;->g(Z)V

    return-void
.end method
