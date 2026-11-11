.class Lcom/zjx/gw2lic/UsbGrant$4;
.super Ljava/lang/Object;
.source "UsbGrant.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/gw2lic/UsbGrant;->watchLoop(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$svc:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 342
    iput-object p1, p0, Lcom/zjx/gw2lic/UsbGrant$4;->val$svc:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/zjx/gw2lic/UsbGrant$4;->val$svc:Ljava/lang/Object;

    invoke-static {v0}, Lcom/zjx/gw2lic/UsbGrant;->access$400(Ljava/lang/Object;)V

    return-void
.end method
