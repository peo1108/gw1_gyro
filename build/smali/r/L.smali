.class public final synthetic Lr/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/c$a;


# instance fields
.field public final synthetic a:Lr/X;

.field public final synthetic b:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lr/X;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr/L;->a:Lr/X;

    iput-object p2, p0, Lr/L;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr/L;->a:Lr/X;

    iget-object v1, p0, Lr/L;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Lr/X;->g(Lr/X;Ljava/util/Map;)V

    return-void
.end method
