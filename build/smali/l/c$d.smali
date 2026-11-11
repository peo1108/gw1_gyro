.class public Ll/c$d;
.super Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Ll/c;


# direct methods
.method public constructor <init>(Ll/c;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Ll/c$d;->a:Ll/c;

    invoke-direct {p0, p2}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setBackgroundColor(I)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBorderWidth(I)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setUnselectedBorderColor(I)V

    const/16 p1, 0xa

    invoke-virtual {p0, p1, p1}, Lcom/zjx/jyandroid/ForegroundService/UI/UploadKeymapModule/Components/j;->setBorderDashWidthAndGap(II)V

    return-void
.end method


# virtual methods
.method public onKeyEvent(Lcom/zjx/jyandroid/base/InputEvents/KeyEvent;)V
    .locals 0

    return-void
.end method
