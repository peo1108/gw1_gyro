.class public abstract Lq/c;
.super Lq/a;
.source "SourceFile"


# instance fields
.field public b:Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lq/a;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0x64

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lq/c;->b:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public i()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lq/c;->b:Landroid/graphics/Point;

    return-object v0
.end method

.method public j(Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lq/c;->b:Landroid/graphics/Point;

    return-void
.end method
