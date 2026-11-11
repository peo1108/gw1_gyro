.class public Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zjx/jyandroid/ForegroundService/KeymapManager$SearchAndGetConfigContentByCharacteristicCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e;

.field public final synthetic b:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e;)V
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

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;

    iput-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$b;->a:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(Lcom/zjx/jyandroid/base/MError;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance p2, Lcom/zjx/jyandroid/base/util/a;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "\u65e0\u6cd5\u83b7\u53d6\u5b8f\u5217\u8868\u3002\u9519\u8bef: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lcom/zjx/jyandroid/base/util/ToastView$a;->c:Lcom/zjx/jyandroid/base/util/ToastView$a;

    invoke-direct {p2, p1, p3}, Lcom/zjx/jyandroid/base/util/a;-><init>(Ljava/lang/String;Lcom/zjx/jyandroid/base/util/ToastView$a;)V

    invoke-virtual {p2}, Lcom/zjx/jyandroid/base/util/a;->a()V

    return-void

    :cond_0
    const-string p1, "\u6682\u65e0\u5b98\u65b9\u6620\u5c04\uff0c\u656c\u8bf7\u671f\u5f85"

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;

    iget-object p2, p2, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;->d:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    const-class p3, Ljava/util/HashMap;

    invoke-virtual {p2, p4, p3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    const-string p3, "presetRecognitionMapList"

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_2

    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;

    iget-object p2, p2, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;->d:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;

    iget-object p1, p1, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;->d:Landroid/widget/TextView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$d;

    iget-object v1, p0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$b;->b:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$d;-><init>(Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView;Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$a;)V

    const-string v1, "name"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$d;->a:Ljava/lang/String;

    const-string v1, "shareCode"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iput-object p3, v0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$d;->b:Ljava/lang/String;

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$b;->a:Lcom/zjx/jyandroid/Extensions/pubg/PresetRecognitionMapListView$e;

    invoke-virtual {p2, p1}, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->setCellItems(Ljava/util/List;)V

    :goto_1
    return-void
.end method
