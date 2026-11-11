.class public final synthetic Lr/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/d$a;


# instance fields
.field public final synthetic a:Lr/e0;

.field public final synthetic b:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lr/e0;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr/c0;->a:Lr/e0;

    iput-object p2, p0, Lr/c0;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr/c0;->a:Lr/e0;

    iget-object v1, p0, Lr/c0;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Lr/e0;->c(Lr/e0;Ljava/util/Map;)V

    return-void
.end method
