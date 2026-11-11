.class Lcom/zjx/gw2lic/GyroInjector$1;
.super Ljava/lang/Object;
.source "GyroInjector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/gw2lic/GyroInjector;->detectModule(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$is:Ljava/io/InputStream;

.field final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/lang/StringBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 227
    iput-object p1, p0, Lcom/zjx/gw2lic/GyroInjector$1;->val$is:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/zjx/gw2lic/GyroInjector$1;->val$sb:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/16 v0, 0x100

    .line 230
    :try_start_0
    new-array v0, v0, [B

    .line 232
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/zjx/gw2lic/GyroInjector$1;->val$is:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_1

    .line 233
    iget-object v2, p0, Lcom/zjx/gw2lic/GyroInjector$1;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/16 v3, 0x400

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/zjx/gw2lic/GyroInjector$1;->val$sb:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 237
    :catchall_0
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/zjx/gw2lic/GyroInjector$1;->val$is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-void
.end method
