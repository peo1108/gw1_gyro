.class public Lj/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Interfaces/OnFrameChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lj/a;


# direct methods
.method public constructor <init>(Lj/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lj/a$a;->a:Lj/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameChanged(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    iget-object p1, p0, Lj/a$a;->a:Lj/a;

    invoke-static {p1}, Lj/a;->a(Lj/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lj/a$a;->a:Lj/a;

    invoke-virtual {p1}, Lj/a;->syncPlaces()V

    :cond_0
    return-void
.end method
