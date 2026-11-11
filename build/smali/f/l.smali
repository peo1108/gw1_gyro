.class public final synthetic Lf/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/d$a;


# instance fields
.field public final synthetic a:Lf/m;

.field public final synthetic b:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lf/m;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/l;->a:Lf/m;

    iput-object p2, p0, Lf/l;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lf/l;->a:Lf/m;

    iget-object v1, p0, Lf/l;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Lf/m;->c(Lf/m;Ljava/util/Map;)V

    return-void
.end method
