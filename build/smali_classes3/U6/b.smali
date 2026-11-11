.class public interface abstract LU6/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LU6/b$a;
    }
.end annotation


# virtual methods
.method public abstract b(Lr7/a;Lp7/a;)V
    .param p1    # Lr7/a;
        .annotation build Li/P;
        .end annotation
    .end param
    .param p2    # Lp7/a;
        .annotation build Li/P;
        .end annotation
    .end param
.end method

.method public abstract c()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LU6/b$a;",
            ">;"
        }
    .end annotation
.end method

.method public abstract f(Ljava/util/Map;Lp7/a;)Lr7/a;
    .param p1    # Ljava/util/Map;
        .annotation build Li/P;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lp7/a;",
            ")",
            "Lr7/a;"
        }
    .end annotation

    .annotation build Ldd/m;
    .end annotation
.end method
