.class public Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager$ActivityInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActivityInfo"
.end annotation


# instance fields
.field final name:Ljava/lang/String;

.field final pid:I

.field final synthetic this$0:Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager;

.field final uid:I


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager$ActivityInfo;->this$0:Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager$ActivityInfo;->name:Ljava/lang/String;

    iput p3, p0, Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager$ActivityInfo;->pid:I

    iput p4, p0, Lcom/zjx/jyandroid/ForegroundService/ForegroundProcessManager$ActivityInfo;->uid:I

    return-void
.end method
