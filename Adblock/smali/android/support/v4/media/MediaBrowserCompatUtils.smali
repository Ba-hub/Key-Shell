.class public Landroid/support/v4/media/MediaBrowserCompatUtils;
.super Ljava/lang/Object;
.source "MediaBrowserCompatUtils.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 6

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    if-ne v2, v3, :cond_0

    .line 31
    const/4 v2, 0x1

    move v0, v2

    .line 42
    :goto_0
    return v0

    .line 32
    :cond_0
    move-object v2, v0

    if-nez v2, :cond_2

    .line 33
    move-object v2, v1

    const-string v3, "android.media.browse.extra.PAGE"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    move-object v2, v1

    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    const/4 v4, -0x1

    .line 34
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 35
    :cond_2
    move-object v2, v1

    if-nez v2, :cond_4

    .line 36
    move-object v2, v0

    const-string v3, "android.media.browse.extra.PAGE"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    move-object v2, v0

    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    const/4 v4, -0x1

    .line 37
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    :goto_2
    move v0, v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 39
    :cond_4
    move-object v2, v0

    const-string v3, "android.media.browse.extra.PAGE"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object v3, v1

    const-string v4, "android.media.browse.extra.PAGE"

    const/4 v5, -0x1

    .line 40
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_5

    move-object v2, v0

    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    const/4 v4, -0x1

    .line 41
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object v3, v1

    const-string v4, "android.media.browse.extra.PAGE_SIZE"

    const/4 v5, -0x1

    .line 42
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    :goto_3
    move v0, v2

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_3
.end method

.method public static hasDuplicatedItems(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 13

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, p1

    move-object v10, v0

    if-nez v10, :cond_2

    const/4 v10, -0x1

    :goto_0
    move v2, v10

    .line 48
    move-object v10, v1

    if-nez v10, :cond_3

    const/4 v10, -0x1

    :goto_1
    move v3, v10

    .line 49
    move-object v10, v0

    if-nez v10, :cond_4

    const/4 v10, -0x1

    .line 50
    :goto_2
    move v4, v10

    .line 51
    move-object v10, v1

    if-nez v10, :cond_5

    const/4 v10, -0x1

    .line 52
    :goto_3
    move v5, v10

    .line 55
    move v10, v2

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    move v10, v4

    const/4 v11, -0x1

    if-ne v10, v11, :cond_6

    .line 56
    :cond_0
    const/4 v10, 0x0

    move v6, v10

    .line 57
    const v10, 0x7fffffff

    move v8, v10

    .line 63
    :goto_4
    move v10, v3

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1

    move v10, v5

    const/4 v11, -0x1

    if-ne v10, v11, :cond_7

    .line 64
    :cond_1
    const/4 v10, 0x0

    move v7, v10

    .line 65
    const v10, 0x7fffffff

    move v9, v10

    .line 71
    :goto_5
    move v10, v6

    move v11, v7

    if-gt v10, v11, :cond_8

    move v10, v7

    move v11, v8

    if-gt v10, v11, :cond_8

    .line 72
    const/4 v10, 0x1

    move v0, v10

    .line 76
    :goto_6
    return v0

    .line 47
    :cond_2
    move-object v10, v0

    const-string v11, "android.media.browse.extra.PAGE"

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    goto :goto_0

    .line 48
    :cond_3
    move-object v10, v1

    const-string v11, "android.media.browse.extra.PAGE"

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    goto :goto_1

    .line 49
    :cond_4
    move-object v10, v0

    const-string v11, "android.media.browse.extra.PAGE_SIZE"

    const/4 v12, -0x1

    .line 50
    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    goto :goto_2

    .line 51
    :cond_5
    move-object v10, v1

    const-string v11, "android.media.browse.extra.PAGE_SIZE"

    const/4 v12, -0x1

    .line 52
    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    goto :goto_3

    .line 59
    :cond_6
    move v10, v4

    move v11, v2

    mul-int/2addr v10, v11

    move v6, v10

    .line 60
    move v10, v6

    move v11, v4

    add-int/2addr v10, v11

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v8, v10

    goto :goto_4

    .line 67
    :cond_7
    move v10, v5

    move v11, v3

    mul-int/2addr v10, v11

    move v7, v10

    .line 68
    move v10, v7

    move v11, v5

    add-int/2addr v10, v11

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v9, v10

    goto :goto_5

    .line 73
    :cond_8
    move v10, v6

    move v11, v9

    if-gt v10, v11, :cond_9

    move v10, v9

    move v11, v8

    if-gt v10, v11, :cond_9

    .line 74
    const/4 v10, 0x1

    move v0, v10

    goto :goto_6

    .line 76
    :cond_9
    const/4 v10, 0x0

    move v0, v10

    goto :goto_6
.end method
