.class Landroid/support/v4/app/BundleUtil;
.super Ljava/lang/Object;
.source "BundleUtil.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 8
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBundleArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;
    .locals 7

    .prologue
    .line 15
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    move-object v2, v4

    .line 16
    move-object v4, v2

    instance-of v4, v4, [Landroid/os/Bundle;

    if-nez v4, :cond_0

    move-object v4, v2

    if-nez v4, :cond_1

    .line 17
    :cond_0
    move-object v4, v2

    check-cast v4, [Landroid/os/Bundle;

    check-cast v4, [Landroid/os/Bundle;

    move-object v0, v4

    .line 22
    :goto_0
    return-object v0

    .line 19
    :cond_1
    move-object v4, v2

    move-object v5, v2

    array-length v5, v5

    const-class v6, [Landroid/os/Bundle;

    invoke-static {v4, v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/os/Bundle;

    move-object v3, v4

    .line 21
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 22
    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method
