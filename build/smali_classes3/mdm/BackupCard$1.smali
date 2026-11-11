.class Lmdm/BackupCard$1;
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

    .line 29
    iput-object p1, p0, Lmdm/BackupCard$1;->this$0:Lmdm/BackupCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 30
    invoke-static {}, Lmdm/ConfigBackup;->exportAll()Ljava/lang/String;

    return-void
.end method
