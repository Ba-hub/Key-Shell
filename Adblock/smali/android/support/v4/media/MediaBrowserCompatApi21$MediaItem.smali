.class Landroid/support/v4/media/MediaBrowserCompatApi21$MediaItem;
.super Ljava/lang/Object;
.source "MediaBrowserCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaItem"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 143
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDescription(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/media/browse/MediaBrowser$MediaItem;

    invoke-virtual {v1}, Landroid/media/browse/MediaBrowser$MediaItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getFlags(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 146
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/media/browse/MediaBrowser$MediaItem;

    invoke-virtual {v1}, Landroid/media/browse/MediaBrowser$MediaItem;->getFlags()I

    move-result v1

    move v0, v1

    return v0
.end method
