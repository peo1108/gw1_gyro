.class public final synthetic Lg6/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg6/c$a;


# instance fields
.field public final synthetic a:Lg6/H;

.field public final synthetic b:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lg6/H;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg6/F;->a:Lg6/H;

    iput-object p2, p0, Lg6/F;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lg6/F;->a:Lg6/H;

    iget-object v1, p0, Lg6/F;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Lg6/H;->g(Lg6/H;Ljava/util/Map;)V

    return-void
.end method
