.class public Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;
.super Ljava/lang/Object;
.source "MediaControllerCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransportControls"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 138
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fastForward(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 156
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v1}, Landroid/media/session/MediaController$TransportControls;->fastForward()V

    .line 157
    return-void
.end method

.method public static pause(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v1}, Landroid/media/session/MediaController$TransportControls;->pause()V

    .line 145
    return-void
.end method

.method public static play(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 140
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v1}, Landroid/media/session/MediaController$TransportControls;->play()V

    .line 141
    return-void
.end method

.method public static playFromMediaId(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 176
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    check-cast v3, Landroid/media/session/MediaController$TransportControls;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/media/session/MediaController$TransportControls;->playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 177
    return-void
.end method

.method public static playFromSearch(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 180
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    check-cast v3, Landroid/media/session/MediaController$TransportControls;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/media/session/MediaController$TransportControls;->playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 181
    return-void
.end method

.method public static rewind(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 160
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v1}, Landroid/media/session/MediaController$TransportControls;->rewind()V

    .line 161
    return-void
.end method

.method public static seekTo(Ljava/lang/Object;J)V
    .locals 6

    .prologue
    .line 152
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    check-cast v3, Landroid/media/session/MediaController$TransportControls;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/media/session/MediaController$TransportControls;->seekTo(J)V

    .line 153
    return-void
.end method

.method public static sendCustomAction(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 188
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    check-cast v3, Landroid/media/session/MediaController$TransportControls;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 189
    return-void
.end method

.method public static setRating(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 172
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    check-cast v2, Landroid/media/session/MediaController$TransportControls;

    move-object v3, v1

    check-cast v3, Landroid/media/Rating;

    invoke-virtual {v2, v3}, Landroid/media/session/MediaController$TransportControls;->setRating(Landroid/media/Rating;)V

    .line 173
    return-void
.end method

.method public static skipToNext(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 164
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v1}, Landroid/media/session/MediaController$TransportControls;->skipToNext()V

    .line 165
    return-void
.end method

.method public static skipToPrevious(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 168
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v1}, Landroid/media/session/MediaController$TransportControls;->skipToPrevious()V

    .line 169
    return-void
.end method

.method public static skipToQueueItem(Ljava/lang/Object;J)V
    .locals 6

    .prologue
    .line 184
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    check-cast v3, Landroid/media/session/MediaController$TransportControls;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/media/session/MediaController$TransportControls;->skipToQueueItem(J)V

    .line 185
    return-void
.end method

.method public static stop(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 148
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v1}, Landroid/media/session/MediaController$TransportControls;->stop()V

    .line 149
    return-void
.end method
