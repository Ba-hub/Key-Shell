.class public final Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;
.super Ljava/lang/Object;
.source "MediaControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaybackInfo"
.end annotation


# static fields
.field public static final PLAYBACK_TYPE_LOCAL:I = 0x1

.field public static final PLAYBACK_TYPE_REMOTE:I = 0x2


# instance fields
.field private final mAudioStream:I

.field private final mCurrentVolume:I

.field private final mMaxVolume:I

.field private final mPlaybackType:I

.field private final mVolumeControl:I


# direct methods
.method constructor <init>(IIIII)V
    .locals 8

    .prologue
    .line 1051
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 1052
    move-object v6, v0

    move v7, v1

    iput v7, v6, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mPlaybackType:I

    .line 1053
    move-object v6, v0

    move v7, v2

    iput v7, v6, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mAudioStream:I

    .line 1054
    move-object v6, v0

    move v7, v3

    iput v7, v6, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mVolumeControl:I

    .line 1055
    move-object v6, v0

    move v7, v4

    iput v7, v6, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mMaxVolume:I

    .line 1056
    move-object v6, v0

    move v7, v5

    iput v7, v6, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mCurrentVolume:I

    .line 1057
    return-void
.end method


# virtual methods
.method public getAudioStream()I
    .locals 2

    .prologue
    .line 1081
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mAudioStream:I

    move v0, v1

    return v0
.end method

.method public getCurrentVolume()I
    .locals 2

    .prologue
    .line 1114
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mCurrentVolume:I

    move v0, v1

    return v0
.end method

.method public getMaxVolume()I
    .locals 2

    .prologue
    .line 1105
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mMaxVolume:I

    move v0, v1

    return v0
.end method

.method public getPlaybackType()I
    .locals 2

    .prologue
    .line 1069
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mPlaybackType:I

    move v0, v1

    return v0
.end method

.method public getVolumeControl()I
    .locals 2

    .prologue
    .line 1096
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mVolumeControl:I

    move v0, v1

    return v0
.end method
