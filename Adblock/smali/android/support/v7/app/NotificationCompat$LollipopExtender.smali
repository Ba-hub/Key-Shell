.class Landroid/support/v7/app/NotificationCompat$LollipopExtender;
.super Landroid/support/v4/app/NotificationCompat$BuilderExtender;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LollipopExtender"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 497
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/app/NotificationCompat$BuilderExtender;-><init>()V

    .line 498
    return-void
.end method


# virtual methods
.method public build(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/app/Notification;
    .locals 7

    .prologue
    .line 503
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v2

    move-object v6, v1

    invoke-static {v5, v6}, Landroid/support/v7/app/NotificationCompat;->access$600(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/widget/RemoteViews;

    move-result-object v5

    move-object v3, v5

    .line 504
    move-object v5, v2

    invoke-interface {v5}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->build()Landroid/app/Notification;

    move-result-object v5

    move-object v4, v5

    .line 507
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 508
    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 510
    :cond_0
    move-object v5, v4

    move-object v6, v1

    invoke-static {v5, v6}, Landroid/support/v7/app/NotificationCompat;->access$700(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 511
    move-object v5, v4

    move-object v6, v1

    invoke-static {v5, v6}, Landroid/support/v7/app/NotificationCompat;->access$800(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 512
    move-object v5, v4

    move-object v0, v5

    return-object v0
.end method
