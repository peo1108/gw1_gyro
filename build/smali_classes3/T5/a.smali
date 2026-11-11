.class public abstract LT5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm7/d;
.implements Lm7/a;


# instance fields
.field public X:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1
    .annotation build Li/i;
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, LT5/a;->X:Z

    return-void
.end method

.method public c()V
    .locals 1
    .annotation build Li/i;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, LT5/a;->X:Z

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, LT5/a;->X:Z

    return v0
.end method
