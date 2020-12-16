.class public Landroid/support/v7/app/NotificationCompat$DecoratedMediaCustomViewStyle;
.super Landroid/support/v7/app/NotificationCompat$MediaStyle;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecoratedMediaCustomViewStyle"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 710
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/app/NotificationCompat$MediaStyle;-><init>()V

    .line 711
    return-void
.end method
