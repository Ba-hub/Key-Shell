.class Landroid/support/v4/net/ConnectivityManagerCompatJellyBean;
.super Ljava/lang/Object;
.source "ConnectivityManagerCompatJellyBean.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x10
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v1

    move v0, v1

    return v0
.end method
