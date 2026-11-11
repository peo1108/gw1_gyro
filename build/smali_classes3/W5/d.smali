.class public abstract LW5/d;
.super LW5/c;
.source "SourceFile"


# instance fields
.field public f:Ls5/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ls5/k;->i()Ls5/k;

    move-result-object v0

    iput-object v0, p0, LW5/d;->f:Ls5/k;

    return-void
.end method
