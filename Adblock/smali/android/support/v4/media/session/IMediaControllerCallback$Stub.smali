.class public abstract Landroid/support/v4/media/session/IMediaControllerCallback$Stub;
.super Landroid/os/Binder;
.source "IMediaControllerCallback.java"

# interfaces
.implements Landroid/support/v4/media/session/IMediaControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/IMediaControllerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.support.v4.media.session.IMediaControllerCallback"

.field static final TRANSACTION_onEvent:I = 0x1

.field static final TRANSACTION_onExtrasChanged:I = 0x7

.field static final TRANSACTION_onMetadataChanged:I = 0x4

.field static final TRANSACTION_onPlaybackStateChanged:I = 0x3

.field static final TRANSACTION_onQueueChanged:I = 0x5

.field static final TRANSACTION_onQueueTitleChanged:I = 0x6

.field static final TRANSACTION_onRepeatModeChanged:I = 0x9

.field static final TRANSACTION_onSessionDestroyed:I = 0x2

.field static final TRANSACTION_onShuffleModeChanged:I = 0xa

.field static final TRANSACTION_onVolumeInfoChanged:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 20
    move-object v1, v0

    move-object v2, v0

    const-string v3, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/session/IMediaControllerCallback;
    .locals 6

    .prologue
    .line 28
    move-object v0, p0

    move-object v2, v0

    if-nez v2, :cond_0

    .line 29
    const/4 v2, 0x0

    move-object v0, v2

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    move-object v2, v0

    const-string v3, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    move-object v1, v2

    .line 32
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v4/media/session/IMediaControllerCallback;

    if-eqz v2, :cond_1

    .line 33
    move-object v2, v1

    check-cast v2, Landroid/support/v4/media/session/IMediaControllerCallback;

    move-object v0, v2

    goto :goto_0

    .line 35
    :cond_1
    new-instance v2, Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move v7, v1

    sparse-switch v7, :sswitch_data_0

    .line 161
    move-object v7, v0

    move v8, v1

    move-object v9, v2

    move-object v10, v3

    move v11, v4

    invoke-super {v7, v8, v9, v10, v11}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    move v0, v7

    :goto_0
    return v0

    .line 47
    :sswitch_0
    move-object v7, v3

    const-string v8, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 52
    :sswitch_1
    move-object v7, v2

    const-string v8, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 56
    const/4 v7, 0x0

    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eq v7, v8, :cond_0

    .line 57
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v8, v2

    invoke-interface {v7, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    move-object v6, v7

    .line 62
    :goto_1
    move-object v7, v0

    move-object v8, v5

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 63
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 60
    :cond_0
    const/4 v7, 0x0

    move-object v6, v7

    goto :goto_1

    .line 67
    :sswitch_2
    move-object v7, v2

    const-string v8, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onSessionDestroyed()V

    .line 69
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 73
    :sswitch_3
    move-object v7, v2

    const-string v8, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    const/4 v7, 0x0

    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eq v7, v8, :cond_1

    .line 76
    sget-object v7, Landroid/support/v4/media/session/PlaybackStateCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v8, v2

    invoke-interface {v7, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/media/session/PlaybackStateCompat;

    move-object v5, v7

    .line 81
    :goto_2
    move-object v7, v0

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 82
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 79
    :cond_1
    const/4 v7, 0x0

    move-object v5, v7

    goto :goto_2

    .line 86
    :sswitch_4
    move-object v7, v2

    const-string v8, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    const/4 v7, 0x0

    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eq v7, v8, :cond_2

    .line 89
    sget-object v7, Landroid/support/v4/media/MediaMetadataCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v8, v2

    invoke-interface {v7, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/media/MediaMetadataCompat;

    move-object v5, v7

    .line 94
    :goto_3
    move-object v7, v0

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 95
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 92
    :cond_2
    const/4 v7, 0x0

    move-object v5, v7

    goto :goto_3

    .line 99
    :sswitch_5
    move-object v7, v2

    const-string v8, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    move-object v7, v2

    sget-object v8, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v7

    move-object v5, v7

    .line 102
    move-object v7, v0

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onQueueChanged(Ljava/util/List;)V

    .line 103
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 107
    :sswitch_6
    move-object v7, v2

    const-string v8, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    const/4 v7, 0x0

    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eq v7, v8, :cond_3

    .line 110
    sget-object v7, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object v8, v2

    invoke-interface {v7, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    move-object v5, v7

    .line 115
    :goto_4
    move-object v7, v0

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onQueueTitleChanged(Ljava/lang/CharSequence;)V

    .line 116
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 113
    :cond_3
    const/4 v7, 0x0

    move-object v5, v7

    goto :goto_4

    .line 120
    :sswitch_7
    move-object v7, v2

    const-string v8, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    const/4 v7, 0x0

    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eq v7, v8, :cond_4

    .line 123
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v8, v2

    invoke-interface {v7, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    move-object v5, v7

    .line 128
    :goto_5
    move-object v7, v0

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onExtrasChanged(Landroid/os/Bundle;)V

    .line 129
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 126
    :cond_4
    const/4 v7, 0x0

    move-object v5, v7

    goto :goto_5

    .line 133
    :sswitch_8
    move-object v7, v2

    const-string v8, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    const/4 v7, 0x0

    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eq v7, v8, :cond_5

    .line 136
    sget-object v7, Landroid/support/v4/media/session/ParcelableVolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v8, v2

    invoke-interface {v7, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    move-object v5, v7

    .line 141
    :goto_6
    move-object v7, v0

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    .line 142
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 139
    :cond_5
    const/4 v7, 0x0

    move-object v5, v7

    goto :goto_6

    .line 146
    :sswitch_9
    move-object v7, v2

    const-string v8, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move v5, v7

    .line 149
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onRepeatModeChanged(I)V

    .line 150
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 154
    :sswitch_a
    move-object v7, v2

    const-string v8, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    const/4 v7, 0x0

    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eq v7, v8, :cond_6

    const/4 v7, 0x1

    :goto_7
    move v5, v7

    .line 157
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onShuffleModeChanged(Z)V

    .line 158
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 156
    :cond_6
    const/4 v7, 0x0

    goto :goto_7

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
