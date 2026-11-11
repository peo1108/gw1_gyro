.class final Lcom/tencent/bugly/proguard/as$2;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/as;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/tencent/bugly/proguard/as$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/tencent/bugly/proguard/as$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/as$b;-><init>(B)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/bugly/proguard/as$c;

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/as$c;-><init>(B)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/bugly/proguard/as$d;

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/as$d;-><init>(B)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/bugly/proguard/as$e;

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/as$e;-><init>(B)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/bugly/proguard/as$h;

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/as$h;-><init>(B)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/bugly/proguard/as$i;

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/as$i;-><init>(B)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/bugly/proguard/as$f;

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/as$f;-><init>(B)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/bugly/proguard/as$g;

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/as$g;-><init>(B)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
