.class public final synthetic Lr/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/c$a;


# instance fields
.field public final synthetic a:Lr/q;

.field public final synthetic b:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lr/q;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr/p;->a:Lr/q;

    iput-object p2, p0, Lr/p;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr/p;->a:Lr/q;

    iget-object v1, p0, Lr/p;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Lr/q;->n(Lr/q;Ljava/util/Map;)V

    return-void
.end method
