.class public Lcom/zjx/jyandroid/EventConstants$Type;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/EventConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Type"
.end annotation


# static fields
.field public static final EV_ABS:I = 0x3

.field public static final EV_KEY:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/zjx/jyandroid/EventConstants;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/EventConstants;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/EventConstants$Type;->this$0:Lcom/zjx/jyandroid/EventConstants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
