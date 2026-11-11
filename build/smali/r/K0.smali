.class public final synthetic Lr/K0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/c$a;


# instance fields
.field public final synthetic a:Lr/L0;

.field public final synthetic b:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lr/L0;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr/K0;->a:Lr/L0;

    iput-object p2, p0, Lr/K0;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr/K0;->a:Lr/L0;

    iget-object v1, p0, Lr/K0;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Lr/L0;->h(Lr/L0;Ljava/util/Map;)V

    return-void
.end method
