.class final Landroid/support/v4/media/session/PlaybackStateCompatApi21$CustomAction;
.super Ljava/lang/Object;
.source "PlaybackStateCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/PlaybackStateCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CustomAction"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAction(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/media/session/PlaybackState$CustomAction;

    invoke-virtual {v1}, Landroid/media/session/PlaybackState$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getExtras(Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/media/session/PlaybackState$CustomAction;

    invoke-virtual {v1}, Landroid/media/session/PlaybackState$CustomAction;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getIcon(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/media/session/PlaybackState$CustomAction;

    invoke-virtual {v1}, Landroid/media/session/PlaybackState$CustomAction;->getIcon()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 87
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/media/session/PlaybackState$CustomAction;

    invoke-virtual {v1}, Landroid/media/session/PlaybackState$CustomAction;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/Bundle;)Ljava/lang/Object;
    .locals 11

    .prologue
    .line 99
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    new-instance v5, Landroid/media/session/PlaybackState$CustomAction$Builder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v1

    move v9, v2

    invoke-direct {v6, v7, v8, v9}, Landroid/media/session/PlaybackState$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v4, v5

    .line 101
    move-object v5, v4

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/media/session/PlaybackState$CustomAction$Builder;->setExtras(Landroid/os/Bundle;)Landroid/media/session/PlaybackState$CustomAction$Builder;

    move-result-object v5

    .line 102
    move-object v5, v4

    invoke-virtual {v5}, Landroid/media/session/PlaybackState$CustomAction$Builder;->build()Landroid/media/session/PlaybackState$CustomAction;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method
