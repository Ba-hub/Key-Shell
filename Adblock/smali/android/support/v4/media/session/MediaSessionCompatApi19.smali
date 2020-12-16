.class Landroid/support/v4/media/session/MediaSessionCompatApi19;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi19.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompatApi19$Callback;,
        Landroid/support/v4/media/session/MediaSessionCompatApi19$OnMetadataUpdateListener;
    }
.end annotation


# static fields
.field private static final ACTION_SET_RATING:J = 0x80L

.field private static final METADATA_KEY_RATING:Ljava/lang/String; = "android.media.metadata.RATING"

.field private static final METADATA_KEY_USER_RATING:Ljava/lang/String; = "android.media.metadata.USER_RATING"

.field private static final METADATA_KEY_YEAR:Ljava/lang/String; = "android.media.metadata.YEAR"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 105
    return-void
.end method

.method static addNewMetadata(Landroid/os/Bundle;Landroid/media/RemoteControlClient$MetadataEditor;)V
    .locals 6

    .prologue
    .line 72
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    if-nez v2, :cond_0

    .line 87
    :goto_0
    return-void

    .line 75
    :cond_0
    move-object v2, v0

    const-string v3, "android.media.metadata.YEAR"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    move-object v2, v1

    const/16 v3, 0x8

    move-object v4, v0

    const-string v5, "android.media.metadata.YEAR"

    .line 77
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 76
    invoke-virtual {v2, v3, v4, v5}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v2

    .line 79
    :cond_1
    move-object v2, v0

    const-string v3, "android.media.metadata.RATING"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 80
    move-object v2, v1

    const/16 v3, 0x65

    move-object v4, v0

    const-string v5, "android.media.metadata.RATING"

    .line 81
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .line 80
    invoke-virtual {v2, v3, v4}, Landroid/media/RemoteControlClient$MetadataEditor;->putObject(ILjava/lang/Object;)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v2

    .line 83
    :cond_2
    move-object v2, v0

    const-string v3, "android.media.metadata.USER_RATING"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 84
    move-object v2, v1

    const v3, 0x10000001

    move-object v4, v0

    const-string v5, "android.media.metadata.USER_RATING"

    .line 85
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .line 84
    invoke-virtual {v2, v3, v4}, Landroid/media/RemoteControlClient$MetadataEditor;->putObject(ILjava/lang/Object;)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v2

    .line 87
    :cond_3
    goto :goto_0
.end method

.method public static createMetadataUpdateListener(Landroid/support/v4/media/session/MediaSessionCompatApi19$Callback;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 43
    move-object v0, p0

    new-instance v1, Landroid/support/v4/media/session/MediaSessionCompatApi19$OnMetadataUpdateListener;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi19$OnMetadataUpdateListener;-><init>(Landroid/support/v4/media/session/MediaSessionCompatApi19$Callback;)V

    move-object v0, v1

    return-object v0
.end method

.method static getRccTransportControlFlagsFromActions(J)I
    .locals 7

    .prologue
    .line 63
    move-wide v0, p0

    move-wide v3, v0

    .line 64
    invoke-static {v3, v4}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->getRccTransportControlFlagsFromActions(J)I

    move-result v3

    move v2, v3

    .line 65
    move-wide v3, v0

    const-wide/16 v5, 0x80

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 66
    move v3, v2

    const/16 v4, 0x200

    or-int/lit16 v3, v3, 0x200

    move v2, v3

    .line 68
    :cond_0
    move v3, v2

    move v0, v3

    return v0
.end method

.method public static setMetadata(Ljava/lang/Object;Landroid/os/Bundle;J)V
    .locals 9

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, v0

    check-cast v5, Landroid/media/RemoteControlClient;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v5

    move-object v4, v5

    .line 49
    move-object v5, v1

    move-object v6, v4

    invoke-static {v5, v6}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->buildOldMetadata(Landroid/os/Bundle;Landroid/media/RemoteControlClient$MetadataEditor;)V

    .line 50
    move-object v5, v1

    move-object v6, v4

    invoke-static {v5, v6}, Landroid/support/v4/media/session/MediaSessionCompatApi19;->addNewMetadata(Landroid/os/Bundle;Landroid/media/RemoteControlClient$MetadataEditor;)V

    .line 51
    move-wide v5, v2

    const-wide/16 v7, 0x80

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 52
    move-object v5, v4

    const v6, 0x10000001

    invoke-virtual {v5, v6}, Landroid/media/RemoteControlClient$MetadataEditor;->addEditableKey(I)V

    .line 54
    :cond_0
    move-object v5, v4

    invoke-virtual {v5}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    .line 55
    return-void
.end method

.method public static setOnMetadataUpdateListener(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    check-cast v2, Landroid/media/RemoteControlClient;

    move-object v3, v1

    check-cast v3, Landroid/media/RemoteControlClient$OnMetadataUpdateListener;

    invoke-virtual {v2, v3}, Landroid/media/RemoteControlClient;->setMetadataUpdateListener(Landroid/media/RemoteControlClient$OnMetadataUpdateListener;)V

    .line 60
    return-void
.end method

.method public static setTransportControlFlags(Ljava/lang/Object;J)V
    .locals 6

    .prologue
    .line 38
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    check-cast v3, Landroid/media/RemoteControlClient;

    move-wide v4, v1

    .line 39
    invoke-static {v4, v5}, Landroid/support/v4/media/session/MediaSessionCompatApi19;->getRccTransportControlFlagsFromActions(J)I

    move-result v4

    .line 38
    invoke-virtual {v3, v4}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    .line 40
    return-void
.end method
