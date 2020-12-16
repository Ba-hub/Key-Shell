.class Landroid/support/v4/net/ConnectivityManagerCompatHoneycombMR2;
.super Ljava/lang/Object;
.source "ConnectivityManagerCompatHoneycombMR2.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xd
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xd
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    move-object v1, v3

    .line 43
    move-object v3, v1

    if-nez v3, :cond_0

    .line 45
    const/4 v3, 0x1

    move v0, v3

    .line 63
    :goto_0
    return v0

    .line 48
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    move v2, v3

    .line 49
    move v3, v2

    packed-switch v3, :pswitch_data_0

    .line 63
    :pswitch_0
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 56
    :pswitch_1
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 60
    :pswitch_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
