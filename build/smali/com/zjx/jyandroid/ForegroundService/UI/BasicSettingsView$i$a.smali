.class public Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/base/Interfaces/InputEventProcessable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Lcom/zjx/jyandroid/base/InputEvents/MouseButtonEventConverter;

.field public final synthetic b:Lcom/zjx/jyandroid/base/Components/Alert;

.field public final synthetic c:Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i;Lcom/zjx/jyandroid/base/Components/Alert;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i$a;->c:Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i;

    iput-object p2, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i$a;->b:Lcom/zjx/jyandroid/base/Components/Alert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i$a$b;

    invoke-direct {p1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i$a$b;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i$a;)V

    iput-object p1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i$a;->a:Lcom/zjx/jyandroid/base/InputEvents/MouseButtonEventConverter;

    return-void
.end method

.method public static synthetic a(Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i$a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i$a;->b()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i$a;->c:Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i;

    iget-object v0, v0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i;->b:Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView;

    new-instance v1, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i$a$a;

    invoke-direct {v1, p0}, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i$a$a;-><init>(Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public eventOccurred(Ljava/util/LinkedList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/zjx/jyandroid/base/InputEvents/InputEvent;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;->getType()Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    move-result-object v1

    sget-object v2, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->KeyboardEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    if-ne v1, v2, :cond_1

    check-cast v0, Lcom/zjx/jyandroid/base/InputEvents/KeyboardEvent;

    iget-boolean v1, v0, Lcom/zjx/jyandroid/base/InputEvents/KeyboardEvent;->down:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i$a;->c:Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i;

    iget-object v1, v1, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i;->a:Ly/d;

    iget v0, v0, Lcom/zjx/jyandroid/base/InputEvents/KeyboardEvent;->usage:I

    invoke-virtual {v1, v0}, Ly/d;->y(I)V

    invoke-static {}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->y()Lcom/zjx/jyandroid/ForegroundService/UI/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zjx/jyandroid/ForegroundService/UI/a;->p()V

    invoke-virtual {p0}, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i$a;->b()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/InputEvents/InputEvent;->getType()Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    move-result-object v1

    sget-object v2, Lcom/zjx/jyandroid/base/InputEvents/InputEventType;->MouseButtonEvent:Lcom/zjx/jyandroid/base/InputEvents/InputEventType;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/zjx/jyandroid/ForegroundService/UI/BasicSettingsView$i$a;->a:Lcom/zjx/jyandroid/base/InputEvents/MouseButtonEventConverter;

    check-cast v0, Lcom/zjx/jyandroid/base/InputEvents/MouseButtonEvent;

    invoke-virtual {v0}, Lcom/zjx/jyandroid/base/InputEvents/MouseButtonEvent;->getButtonMask()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/zjx/jyandroid/base/InputEvents/MouseButtonEventConverter;->mouseButtonMaskChanged(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
