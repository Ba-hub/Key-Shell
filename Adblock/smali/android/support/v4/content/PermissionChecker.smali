.class public final Landroid/support/v4/content/PermissionChecker;
.super Ljava/lang/Object;
.source "PermissionChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/PermissionChecker$PermissionResult;
    }
.end annotation


# static fields
.field public static final PERMISSION_DENIED:I = -0x1

.field public static final PERMISSION_DENIED_APP_OP:I = -0x2

.field public static final PERMISSION_GRANTED:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method public static checkCallingOrSelfPermission(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 160
    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-ne v3, v4, :cond_0

    move-object v3, v0

    .line 161
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v2, v3

    .line 162
    move-object v3, v0

    move-object v4, v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 163
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move-object v7, v2

    .line 162
    invoke-static {v3, v4, v5, v6, v7}, Landroid/support/v4/content/PermissionChecker;->checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    move v0, v3

    return v0

    .line 161
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static checkCallingPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 142
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 143
    const/4 v3, -0x1

    move v0, v3

    .line 145
    :goto_0
    return v0

    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 146
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move-object v7, v2

    .line 145
    invoke-static {v3, v4, v5, v6, v7}, Landroid/support/v4/content/PermissionChecker;->checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I
    .locals 11
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 89
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move v10, v3

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 90
    const/4 v7, -0x1

    move v0, v7

    .line 111
    :goto_0
    return v0

    .line 93
    :cond_0
    move-object v7, v1

    invoke-static {v7}, Landroid/support/v4/app/AppOpsManagerCompat;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 94
    move-object v7, v5

    if-nez v7, :cond_1

    .line 95
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 98
    :cond_1
    move-object v7, v4

    if-nez v7, :cond_4

    .line 99
    move-object v7, v0

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    move v8, v3

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 100
    move-object v7, v6

    if-eqz v7, :cond_2

    move-object v7, v6

    array-length v7, v7

    if-gtz v7, :cond_3

    .line 101
    :cond_2
    const/4 v7, -0x1

    move v0, v7

    goto :goto_0

    .line 103
    :cond_3
    move-object v7, v6

    const/4 v8, 0x0

    aget-object v7, v7, v8

    move-object v4, v7

    .line 106
    :cond_4
    move-object v7, v0

    move-object v8, v5

    move-object v9, v4

    invoke-static {v7, v8, v9}, Landroid/support/v4/app/AppOpsManagerCompat;->noteProxyOp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_5

    .line 108
    const/4 v7, -0x2

    move v0, v7

    goto :goto_0

    .line 111
    :cond_5
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0
.end method

.method public static checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 125
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 126
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 125
    invoke-static {v2, v3, v4, v5, v6}, Landroid/support/v4/content/PermissionChecker;->checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    move v0, v2

    return v0
.end method
