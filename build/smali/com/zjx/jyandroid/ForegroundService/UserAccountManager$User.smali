.class public Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$User;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "User"
.end annotation


# instance fields
.field public expireTime:J
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final loginToken:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final nickName:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;

.field public final userName:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .param p1    # Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # J
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$User;->this$0:Lcom/zjx/jyandroid/ForegroundService/UserAccountManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$User;->nickName:Ljava/lang/String;

    iput-object p3, p0, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$User;->userName:Ljava/lang/String;

    iput-wide p4, p0, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$User;->expireTime:J

    iput-object p6, p0, Lcom/zjx/jyandroid/ForegroundService/UserAccountManager$User;->loginToken:Ljava/lang/String;

    return-void
.end method
