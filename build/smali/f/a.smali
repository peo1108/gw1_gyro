.class public final synthetic Lf/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/c$a;


# instance fields
.field public final synthetic a:Lf/b;

.field public final synthetic b:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lf/b;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/a;->a:Lf/b;

    iput-object p2, p0, Lf/a;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lf/a;->a:Lf/b;

    iget-object v1, p0, Lf/a;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Lf/b;->g(Lf/b;Ljava/util/Map;)V

    return-void
.end method
