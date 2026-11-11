.class public LV5/l;
.super LV5/a;
.source "SourceFile"


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LV5/a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LV5/l;->a:Z

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    iget-boolean v0, p0, LV5/l;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, LK6/m;->getInstance()LK6/m;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LK6/m;->setGyroSwipeOverride(Z)V

    iput-boolean v1, p0, LV5/l;->a:Z

    :cond_0
    return-void
.end method

.method public d(II)V
    .locals 2

    invoke-static {}, LK6/m;->getInstance()LK6/m;

    move-result-object v0

    iget-boolean v1, p0, LV5/l;->a:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LK6/m;->setGyroSwipeOverride(Z)V

    iput-boolean v1, p0, LV5/l;->a:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LK6/m;->setGyroSwipeOverride(Z)V

    iput-boolean v1, p0, LV5/l;->a:Z

    :goto_0
    return-void
.end method
