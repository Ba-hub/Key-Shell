.class Landroid/support/v4/media/session/MediaSessionCompatApi21$QueueItem;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QueueItem"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 239
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createItem(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 242
    move-object v0, p0

    move-wide v1, p1

    new-instance v3, Landroid/media/session/MediaSession$QueueItem;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    check-cast v5, Landroid/media/MediaDescription;

    move-wide v6, v1

    invoke-direct {v4, v5, v6, v7}, Landroid/media/session/MediaSession$QueueItem;-><init>(Landroid/media/MediaDescription;J)V

    move-object v0, v3

    return-object v0
.end method

.method public static getDescription(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 246
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/media/session/MediaSession$QueueItem;

    invoke-virtual {v1}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getQueueId(Ljava/lang/Object;)J
    .locals 3

    .prologue
    .line 250
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/media/session/MediaSession$QueueItem;

    invoke-virtual {v1}, Landroid/media/session/MediaSession$QueueItem;->getQueueId()J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method
