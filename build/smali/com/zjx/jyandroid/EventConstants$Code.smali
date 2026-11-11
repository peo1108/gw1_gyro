.class public Lcom/zjx/jyandroid/EventConstants$Code;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/EventConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Code"
.end annotation


# static fields
.field public static final ABS_MT_POSITION_X:I = 0x35

.field public static final ABS_MT_POSITION_Y:I = 0x36

.field public static final ABS_MT_SLOT:I = 0x2f

.field public static final ABS_MT_TRACKING_ID:I = 0x39

.field public static final BTN_TOUCH:I = 0x14a


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

    iput-object p1, p0, Lcom/zjx/jyandroid/EventConstants$Code;->this$0:Lcom/zjx/jyandroid/EventConstants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
