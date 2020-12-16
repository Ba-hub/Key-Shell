.class Landroid/support/v7/app/NotificationCompatImpl21;
.super Ljava/lang/Object;
.source "NotificationCompatImpl21.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMediaStyle(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;[ILjava/lang/Object;)V
    .locals 8

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v4, Landroid/app/Notification$MediaStyle;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-interface {v6}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/Notification$MediaStyle;-><init>(Landroid/app/Notification$Builder;)V

    move-object v3, v4

    .line 33
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 34
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/app/Notification$MediaStyle;->setShowActionsInCompactView([I)Landroid/app/Notification$MediaStyle;

    move-result-object v4

    .line 36
    :cond_0
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 37
    move-object v4, v3

    move-object v5, v2

    check-cast v5, Landroid/media/session/MediaSession$Token;

    invoke-virtual {v4, v5}, Landroid/app/Notification$MediaStyle;->setMediaSession(Landroid/media/session/MediaSession$Token;)Landroid/app/Notification$MediaStyle;

    move-result-object v4

    .line 39
    :cond_1
    return-void
.end method
