.class public Lj/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Interfaces/OnFrameChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lj/b;


# direct methods
.method public constructor <init>(Lj/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lj/b$a;->a:Lj/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameChanged(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    iget-object p1, p0, Lj/b$a;->a:Lj/b;

    invoke-static {p1}, Lj/b;->a(Lj/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lj/b$a;->a:Lj/b;

    invoke-virtual {p1}, Lj/b;->syncPlaces()V

    :cond_0
    return-void
.end method
