.class final Lcom/zjx/gw2lic/Gw2License$Gw2Exception;
.super Ljava/lang/Exception;
.source "Gw2License.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/gw2lic/Gw2License;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Gw2Exception"
.end annotation


# instance fields
.field final httpCode:I

.field final network:Z

.field final permanent:Z


# direct methods
.method constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0

    .line 656
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 657
    iput p2, p0, Lcom/zjx/gw2lic/Gw2License$Gw2Exception;->httpCode:I

    .line 658
    iput-boolean p3, p0, Lcom/zjx/gw2lic/Gw2License$Gw2Exception;->permanent:Z

    .line 659
    iput-boolean p4, p0, Lcom/zjx/gw2lic/Gw2License$Gw2Exception;->network:Z

    return-void
.end method
