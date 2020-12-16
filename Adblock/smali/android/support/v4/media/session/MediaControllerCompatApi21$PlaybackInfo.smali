.class public Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;
.super Ljava/lang/Object;
.source "MediaControllerCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaybackInfo"
.end annotation


# static fields
.field private static final FLAG_SCO:I = 0x4

.field private static final STREAM_BLUETOOTH_SCO:I = 0x6

.field private static final STREAM_SYSTEM_ENFORCED:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 192
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudioAttributes(Ljava/lang/Object;)Landroid/media/AudioAttributes;
    .locals 2

    .prologue
    .line 198
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/media/session/MediaController$PlaybackInfo;

    invoke-virtual {v1}, Landroid/media/session/MediaController$PlaybackInfo;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getCurrentVolume(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 215
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/media/session/MediaController$PlaybackInfo;

    invoke-virtual {v1}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getLegacyAudioStream(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 202
    move-object v0, p0

    move-object v2, v0

    invoke-static {v2}, Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;->getAudioAttributes(Ljava/lang/Object;)Landroid/media/AudioAttributes;

    move-result-object v2

    move-object v1, v2

    .line 203
    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public static getMaxVolume(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 211
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/media/session/MediaController$PlaybackInfo;

    invoke-virtual {v1}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getPlaybackType(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 194
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/media/session/MediaController$PlaybackInfo;

    invoke-virtual {v1}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getVolumeControl(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 207
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/media/session/MediaController$PlaybackInfo;

    invoke-virtual {v1}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControl()I

    move-result v1

    move v0, v1

    return v0
.end method

.method private static toLegacyStreamType(Landroid/media/AudioAttributes;)I
    .locals 3

    .prologue
    .line 226
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v1

    const/4 v2, 0x1

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 228
    const/4 v1, 0x7

    move v0, v1

    .line 259
    :goto_0
    return v0

    .line 230
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v1

    const/4 v2, 0x4

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 231
    const/4 v1, 0x6

    move v0, v1

    goto :goto_0

    .line 235
    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 259
    const/4 v1, 0x3

    move v0, v1

    goto :goto_0

    .line 240
    :pswitch_0
    const/4 v1, 0x3

    move v0, v1

    goto :goto_0

    .line 242
    :pswitch_1
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 244
    :pswitch_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 246
    :pswitch_3
    const/16 v1, 0x8

    move v0, v1

    goto :goto_0

    .line 248
    :pswitch_4
    const/4 v1, 0x4

    move v0, v1

    goto :goto_0

    .line 250
    :pswitch_5
    const/4 v1, 0x2

    move v0, v1

    goto :goto_0

    .line 256
    :pswitch_6
    const/4 v1, 0x5

    move v0, v1

    goto :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
