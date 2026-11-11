.class public final synthetic Lr/C0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/c$a;


# instance fields
.field public final synthetic a:Lr/F0;

.field public final synthetic b:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lr/F0;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr/C0;->a:Lr/F0;

    iput-object p2, p0, Lr/C0;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr/C0;->a:Lr/F0;

    iget-object v1, p0, Lr/C0;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Lr/F0;->i(Lr/F0;Ljava/util/Map;)V

    return-void
.end method
