.class public abstract Lcom/zjx/gw2lic/devicehid/Gw2RawListener;
.super Ljava/lang/Object;
.source "XSourceRawEventListener"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onError(I)V
.end method

.method public abstract onEvents([Lcom/zjx/gw2lic/devicehid/Gw2RawEvent;)V
.end method

.method public onRawEventsOccurred([I)V
    .locals 4

    array-length v0, p1

    div-int/lit8 v0, v0, 0x3

    new-array v0, v0, [Lcom/zjx/gw2lic/devicehid/Gw2RawEvent;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    div-int/lit8 v2, v1, 0x3

    new-instance v3, Lcom/zjx/gw2lic/devicehid/Gw2RawEvent;

    invoke-direct {v3}, Lcom/zjx/gw2lic/devicehid/Gw2RawEvent;-><init>()V

    aput-object v3, v0, v2

    aget v2, p1, v1

    iput v2, v3, Lcom/zjx/gw2lic/devicehid/Gw2RawEvent;->d:I

    add-int/lit8 v2, v1, 0x1

    aget v2, p1, v2

    iput v2, v3, Lcom/zjx/gw2lic/devicehid/Gw2RawEvent;->e:I

    add-int/lit8 v2, v1, 0x2

    aget v2, p1, v2

    iput v2, v3, Lcom/zjx/gw2lic/devicehid/Gw2RawEvent;->f:I

    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/zjx/gw2lic/devicehid/Gw2RawListener;->onEvents([Lcom/zjx/gw2lic/devicehid/Gw2RawEvent;)V

    return-void
.end method
