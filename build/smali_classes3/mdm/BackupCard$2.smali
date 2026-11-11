.class Lmdm/BackupCard$2;
.super Ljava/lang/Object;
.source "BackupCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/BackupCard;->wire(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmdm/BackupCard;


# direct methods
.method constructor <init>(Lmdm/BackupCard;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lmdm/BackupCard$2;->this$0:Lmdm/BackupCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 34
    invoke-static {}, Lmdm/ConfigBackup;->importLatestAndRestart()V

    return-void
.end method
