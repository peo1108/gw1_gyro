.class public final synthetic Lr/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/d$a;


# instance fields
.field public final synthetic a:Lr/C;

.field public final synthetic b:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lr/C;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr/B;->a:Lr/C;

    iput-object p2, p0, Lr/B;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr/B;->a:Lr/C;

    iget-object v1, p0, Lr/B;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Lr/C;->d(Lr/C;Ljava/util/Map;)V

    return-void
.end method
