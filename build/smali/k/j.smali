.class public abstract Lk/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lk/j;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public abstract b(Ljava/lang/Object;)I
.end method

.method public c(Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iput-object p1, p0, Lk/j;->a:Landroid/graphics/Bitmap;

    return-void
.end method
