.class public abstract Lcom/zjx/jyandroid/base/InputEvents/InputEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected type:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->UnknownEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    iput-object v0, p0, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;->type:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    return-void
.end method


# virtual methods
.method public getType()Lcom/zjx/jyandroid/base/InputEvents/InputEventType;
    .locals 1

    iget-object v0, p0, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;->type:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    return-object v0
.end method

.method public setType(Lcom/zjx/jyandroid/base/InputEvents/InputEventType;)V
    .locals 0

    iput-object p1, p0, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;->type:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    return-void
.end method
