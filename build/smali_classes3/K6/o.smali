.class public LK6/o;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private final owner:LK6/m;


# direct methods
.method public constructor <init>(LK6/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, LK6/o;->owner:LK6/m;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LK6/o;->owner:LK6/m;

    invoke-virtual {v0}, LK6/m;->acceptLoop()V

    return-void
.end method
