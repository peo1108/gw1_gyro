.class public Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/TemplateMatchRecognizer$MatchIndexAndConfidence;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/TemplateMatchRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MatchIndexAndConfidence"
.end annotation


# instance fields
.field public final confidence:D

.field public final index:I

.field final synthetic this$0:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/TemplateMatchRecognizer;


# direct methods
.method public constructor <init>(Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/TemplateMatchRecognizer;ID)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/TemplateMatchRecognizer$MatchIndexAndConfidence;->this$0:Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/TemplateMatchRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/TemplateMatchRecognizer$MatchIndexAndConfidence;->index:I

    iput-wide p3, p0, Lcom/zjx/jyandroid/Extensions/gnyx/Recognizers/TemplateMatchRecognizer$MatchIndexAndConfidence;->confidence:D

    return-void
.end method
