.class Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;
.super Ljava/lang/Object;
.source "MediaControllerCompat.java"

# interfaces
.implements Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaControllerImplBase"
.end annotation


# instance fields
.field private mBinder:Landroid/support/v4/media/session/IMediaSession;

.field private mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field private mTransportControls:Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 4

    .prologue
    .line 1154
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1155
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 1156
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getToken()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v3}, Landroid/support/v4/media/session/IMediaSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/session/IMediaSession;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    .line 1157
    return-void
.end method


# virtual methods
.method public addQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
    .locals 9

    .prologue
    .line 1245
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v4}, Landroid/support/v4/media/session/IMediaSession;->getFlags()J

    move-result-wide v4

    move-wide v2, v4

    .line 1246
    move-wide v4, v2

    const-wide/16 v6, 0x4

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 1247
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "This session doesn\'t support queue management operations"

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1251
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 1252
    const-string v4, "MediaControllerCompat"

    const-string v5, "Dead object in addQueueItem."

    move-object v6, v2

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    .line 1254
    :goto_0
    return-void

    .line 1250
    :cond_0
    move-object v4, v0

    :try_start_1
    iget-object v4, v4, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    move-object v5, v1

    invoke-interface {v4, v5}, Landroid/support/v4/media/session/IMediaSession;->addQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1253
    goto :goto_0
.end method

.method public addQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;I)V
    .locals 10

    .prologue
    .line 1259
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v5}, Landroid/support/v4/media/session/IMediaSession;->getFlags()J

    move-result-wide v5

    move-wide v3, v5

    .line 1260
    move-wide v5, v3

    const-wide/16 v7, 0x4

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 1261
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "This session doesn\'t support queue management operations"

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1265
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 1266
    const-string v5, "MediaControllerCompat"

    const-string v6, "Dead object in addQueueItemAt."

    move-object v7, v3

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    .line 1268
    :goto_0
    return-void

    .line 1264
    :cond_0
    move-object v5, v0

    :try_start_1
    iget-object v5, v5, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    move-object v6, v1

    move v7, v2

    invoke-interface {v5, v6, v7}, Landroid/support/v4/media/session/IMediaSession;->addQueueItemAt(Landroid/support/v4/media/MediaDescriptionCompat;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1267
    goto :goto_0
.end method

.method public adjustVolume(II)V
    .locals 8

    .prologue
    .line 1393
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    move v5, v1

    move v6, v2

    const/4 v7, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/support/v4/media/session/IMediaSession;->adjustVolume(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1397
    :goto_0
    return-void

    .line 1394
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 1395
    const-string v4, "MediaControllerCompat"

    const-string v5, "Dead object in adjustVolume."

    move-object v6, v3

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    goto :goto_0
.end method

.method public dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    .line 1192
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_0

    .line 1193
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "event may not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1196
    :cond_0
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    move-object v4, v1

    invoke-interface {v3, v4}, Landroid/support/v4/media/session/IMediaSession;->sendMediaButton(Landroid/view/KeyEvent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1200
    :goto_0
    const/4 v3, 0x0

    move v0, v3

    return v0

    .line 1197
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1198
    const-string v3, "MediaControllerCompat"

    const-string v4, "Dead object in dispatchMediaButtonEvent."

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 1311
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v2}, Landroid/support/v4/media/session/IMediaSession;->getExtras()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 1315
    :goto_0
    return-object v0

    .line 1312
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1313
    const-string v2, "MediaControllerCompat"

    const-string v3, "Dead object in getExtras."

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 1315
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getFlags()J
    .locals 5

    .prologue
    .line 1351
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v2}, Landroid/support/v4/media/session/IMediaSession;->getFlags()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    move-wide v0, v2

    .line 1355
    :goto_0
    return-wide v0

    .line 1352
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1353
    const-string v2, "MediaControllerCompat"

    const-string v3, "Dead object in getFlags."

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 1355
    const-wide/16 v2, 0x0

    move-wide v0, v2

    goto :goto_0
.end method

.method public getMediaController()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1421
    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public getMetadata()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 5

    .prologue
    .line 1225
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v2}, Landroid/support/v4/media/session/IMediaSession;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 1229
    :goto_0
    return-object v0

    .line 1226
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1227
    const-string v2, "MediaControllerCompat"

    const-string v3, "Dead object in getMetadata."

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 1229
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1412
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v2}, Landroid/support/v4/media/session/IMediaSession;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 1416
    :goto_0
    return-object v0

    .line 1413
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1414
    const-string v2, "MediaControllerCompat"

    const-string v3, "Dead object in getPackageName."

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 1416
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getPlaybackInfo()Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;
    .locals 11

    .prologue
    .line 1361
    move-object v0, p0

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v3}, Landroid/support/v4/media/session/IMediaSession;->getVolumeAttributes()Landroid/support/v4/media/session/ParcelableVolumeInfo;

    move-result-object v3

    move-object v1, v3

    .line 1362
    new-instance v3, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    iget v5, v5, Landroid/support/v4/media/session/ParcelableVolumeInfo;->volumeType:I

    move-object v6, v1

    iget v6, v6, Landroid/support/v4/media/session/ParcelableVolumeInfo;->audioStream:I

    move-object v7, v1

    iget v7, v7, Landroid/support/v4/media/session/ParcelableVolumeInfo;->controlType:I

    move-object v8, v1

    iget v8, v8, Landroid/support/v4/media/session/ParcelableVolumeInfo;->maxVolume:I

    move-object v9, v1

    iget v9, v9, Landroid/support/v4/media/session/ParcelableVolumeInfo;->currentVolume:I

    invoke-direct/range {v4 .. v9}, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;-><init>(IIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 1364
    move-object v3, v2

    move-object v0, v3

    .line 1368
    :goto_0
    return-object v0

    .line 1365
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1366
    const-string v3, "MediaControllerCompat"

    const-string v4, "Dead object in getPlaybackInfo."

    move-object v5, v1

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    .line 1368
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 5

    .prologue
    .line 1215
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v2}, Landroid/support/v4/media/session/IMediaSession;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 1219
    :goto_0
    return-object v0

    .line 1216
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1217
    const-string v2, "MediaControllerCompat"

    const-string v3, "Dead object in getPlaybackState."

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 1219
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getQueue()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1235
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v2}, Landroid/support/v4/media/session/IMediaSession;->getQueue()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 1239
    :goto_0
    return-object v0

    .line 1236
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1237
    const-string v2, "MediaControllerCompat"

    const-string v3, "Dead object in getQueue."

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 1239
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getQueueTitle()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 1301
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v2}, Landroid/support/v4/media/session/IMediaSession;->getQueueTitle()Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 1305
    :goto_0
    return-object v0

    .line 1302
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1303
    const-string v2, "MediaControllerCompat"

    const-string v3, "Dead object in getQueueTitle."

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 1305
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getRatingType()I
    .locals 5

    .prologue
    .line 1321
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v2}, Landroid/support/v4/media/session/IMediaSession;->getRatingType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v0, v2

    .line 1325
    :goto_0
    return v0

    .line 1322
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1323
    const-string v2, "MediaControllerCompat"

    const-string v3, "Dead object in getRatingType."

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 1325
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public getRepeatMode()I
    .locals 5

    .prologue
    .line 1331
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v2}, Landroid/support/v4/media/session/IMediaSession;->getRepeatMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v0, v2

    .line 1335
    :goto_0
    return v0

    .line 1332
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1333
    const-string v2, "MediaControllerCompat"

    const-string v3, "Dead object in getRepeatMode."

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 1335
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public getSessionActivity()Landroid/app/PendingIntent;
    .locals 5

    .prologue
    .line 1374
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v2}, Landroid/support/v4/media/session/IMediaSession;->getLaunchPendingIntent()Landroid/app/PendingIntent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 1378
    :goto_0
    return-object v0

    .line 1375
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1376
    const-string v2, "MediaControllerCompat"

    const-string v3, "Dead object in getSessionActivity."

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 1378
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;
    .locals 6

    .prologue
    .line 1205
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mTransportControls:Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    if-nez v1, :cond_0

    .line 1206
    move-object v1, v0

    new-instance v2, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-direct {v3, v4}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;-><init>(Landroid/support/v4/media/session/IMediaSession;)V

    iput-object v2, v1, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mTransportControls:Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    .line 1209
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mTransportControls:Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-object v0, v1

    return-object v0
.end method

.method public isShuffleModeEnabled()Z
    .locals 5

    .prologue
    .line 1341
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v2}, Landroid/support/v4/media/session/IMediaSession;->isShuffleModeEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v0, v2

    .line 1345
    :goto_0
    return v0

    .line 1342
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1343
    const-string v2, "MediaControllerCompat"

    const-string v3, "Dead object in isShuffleModeEnabled."

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 1345
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public registerCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;Landroid/os/Handler;)V
    .locals 8

    .prologue
    .line 1161
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    if-nez v4, :cond_0

    .line 1162
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "callback may not be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1165
    :cond_0
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v4}, Landroid/support/v4/media/session/IMediaSession;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    move-object v5, v1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1166
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    move-object v5, v1

    invoke-static {v5}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->access$100(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/media/session/IMediaControllerCallback;

    invoke-interface {v4, v5}, Landroid/support/v4/media/session/IMediaSession;->registerCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V

    .line 1167
    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->access$200(Landroid/support/v4/media/session/MediaControllerCompat$Callback;Landroid/os/Handler;)V

    .line 1168
    move-object v4, v1

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->mRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1173
    :goto_0
    return-void

    .line 1169
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 1170
    const-string v4, "MediaControllerCompat"

    const-string v5, "Dead object in registerCallback."

    move-object v6, v3

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    .line 1171
    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onSessionDestroyed()V

    goto :goto_0
.end method

.method public removeQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
    .locals 9

    .prologue
    .line 1273
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v4}, Landroid/support/v4/media/session/IMediaSession;->getFlags()J

    move-result-wide v4

    move-wide v2, v4

    .line 1274
    move-wide v4, v2

    const-wide/16 v6, 0x4

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 1275
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "This session doesn\'t support queue management operations"

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1279
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 1280
    const-string v4, "MediaControllerCompat"

    const-string v5, "Dead object in removeQueueItem."

    move-object v6, v2

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    .line 1282
    :goto_0
    return-void

    .line 1278
    :cond_0
    move-object v4, v0

    :try_start_1
    iget-object v4, v4, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    move-object v5, v1

    invoke-interface {v4, v5}, Landroid/support/v4/media/session/IMediaSession;->removeQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1281
    goto :goto_0
.end method

.method public removeQueueItemAt(I)V
    .locals 9

    .prologue
    .line 1287
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v4}, Landroid/support/v4/media/session/IMediaSession;->getFlags()J

    move-result-wide v4

    move-wide v2, v4

    .line 1288
    move-wide v4, v2

    const-wide/16 v6, 0x4

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 1289
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "This session doesn\'t support queue management operations"

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1293
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 1294
    const-string v4, "MediaControllerCompat"

    const-string v5, "Dead object in removeQueueItemAt."

    move-object v6, v2

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    .line 1296
    :goto_0
    return-void

    .line 1292
    :cond_0
    move-object v4, v0

    :try_start_1
    iget-object v4, v4, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    move v5, v1

    invoke-interface {v4, v5}, Landroid/support/v4/media/session/IMediaSession;->removeQueueItemAt(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1295
    goto :goto_0
.end method

.method public sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 12

    .prologue
    .line 1402
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    move-object v6, v1

    move-object v7, v2

    new-instance v8, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v3

    invoke-direct {v9, v10}, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;-><init>(Landroid/os/ResultReceiver;)V

    invoke-interface {v5, v6, v7, v8}, Landroid/support/v4/media/session/IMediaSession;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1407
    :goto_0
    return-void

    .line 1404
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 1405
    const-string v5, "MediaControllerCompat"

    const-string v6, "Dead object in sendCommand."

    move-object v7, v4

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    goto :goto_0
.end method

.method public setVolumeTo(II)V
    .locals 8

    .prologue
    .line 1384
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    move v5, v1

    move v6, v2

    const/4 v7, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/support/v4/media/session/IMediaSession;->setVolumeTo(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1388
    :goto_0
    return-void

    .line 1385
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 1386
    const-string v4, "MediaControllerCompat"

    const-string v5, "Dead object in setVolumeTo."

    move-object v6, v3

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    goto :goto_0
.end method

.method public unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V
    .locals 7

    .prologue
    .line 1177
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_0

    .line 1178
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "callback may not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1181
    :cond_0
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    move-object v4, v1

    .line 1182
    invoke-static {v4}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->access$100(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/media/session/IMediaControllerCallback;

    .line 1181
    invoke-interface {v3, v4}, Landroid/support/v4/media/session/IMediaSession;->unregisterCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V

    .line 1183
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v3}, Landroid/support/v4/media/session/IMediaSession;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    move-object v4, v1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v3

    .line 1184
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->mRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1188
    :goto_0
    return-void

    .line 1185
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1186
    const-string v3, "MediaControllerCompat"

    const-string v4, "Dead object in unregisterCallback."

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_0
.end method
