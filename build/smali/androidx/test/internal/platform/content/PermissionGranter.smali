.class public interface abstract Landroidx/test/internal/platform/content/PermissionGranter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public varargs abstract addPermissions([Ljava/lang/String;)V
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "permissions"
        }
    .end annotation
.end method

.method public abstract requestPermissions()V
.end method
