.class Lmdm/RcParamsView$4;
.super Ljava/lang/Object;
.source "RcParamsView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmdm/RcParamsView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmdm/RcParamsView;


# direct methods
.method constructor <init>(Lmdm/RcParamsView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 212
    iput-object p1, p0, Lmdm/RcParamsView$4;->this$0:Lmdm/RcParamsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    .line 216
    iget-object v0, p0, Lmdm/RcParamsView$4;->this$0:Lmdm/RcParamsView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmdm/RcParamsView;->access$502(Lmdm/RcParamsView;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    iget-object p1, p0, Lmdm/RcParamsView$4;->this$0:Lmdm/RcParamsView;

    invoke-static {p1}, Lmdm/RcParamsView;->access$600(Lmdm/RcParamsView;)V

    .line 218
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 213
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 214
    return-void
.end method
