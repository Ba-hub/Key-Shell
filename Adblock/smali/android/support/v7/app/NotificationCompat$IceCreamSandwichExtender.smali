.class Landroid/support/v7/app/NotificationCompat$IceCreamSandwichExtender;
.super Landroid/support/v4/app/NotificationCompat$BuilderExtender;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IceCreamSandwichExtender"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 456
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/app/NotificationCompat$BuilderExtender;-><init>()V

    .line 457
    return-void
.end method


# virtual methods
.method public build(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/app/Notification;
    .locals 7

    .prologue
    .line 462
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v2

    move-object v6, v1

    invoke-static {v5, v6}, Landroid/support/v7/app/NotificationCompat;->access$300(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/widget/RemoteViews;

    move-result-object v5

    move-object v3, v5

    .line 463
    move-object v5, v2

    invoke-interface {v5}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->build()Landroid/app/Notification;

    move-result-object v5

    move-object v4, v5

    .line 466
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 467
    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 471
    :cond_0
    :goto_0
    move-object v5, v4

    move-object v0, v5

    return-object v0

    .line 468
    :cond_1
    move-object v5, v1

    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 469
    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;

    move-result-object v6

    iput-object v6, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_0
.end method
