.class Lmdm/SensConvert$1;
.super Ljava/lang/Object;
.source "SensConvert.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/SensConvert;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmdm/SensConvert;


# direct methods
.method constructor <init>(Lmdm/SensConvert;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lmdm/SensConvert$1;->this$0:Lmdm/SensConvert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 63
    iget-object p1, p0, Lmdm/SensConvert$1;->this$0:Lmdm/SensConvert;

    invoke-virtual {p1}, Lmdm/SensConvert;->convert()V

    return-void
.end method
