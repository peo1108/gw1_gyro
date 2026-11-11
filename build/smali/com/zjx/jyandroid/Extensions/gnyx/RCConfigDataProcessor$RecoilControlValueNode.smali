.class public Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlValueNode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecoilControlValueNode"
.end annotation


# instance fields
.field public next:Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlValueNode;

.field public timeMillisecond:J

.field public value:D


# direct methods
.method public constructor <init>(ID)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlValueNode;->timeMillisecond:J

    iput-wide p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/RCConfigDataProcessor$RecoilControlValueNode;->value:D

    return-void
.end method
