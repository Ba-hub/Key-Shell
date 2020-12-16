.class public Landroid/support/v4/app/NotificationCompatIceCreamSandwich$Builder;
.super Ljava/lang/Object;
.source "NotificationCompatIceCreamSandwich.java"

# interfaces
.implements Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompatIceCreamSandwich;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private b:Landroid/app/Notification$Builder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZ)V
    .locals 22

    .prologue
    .line 38
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v16}, Ljava/lang/Object;-><init>()V

    .line 39
    move-object/from16 v16, v2

    new-instance v17, Landroid/app/Notification$Builder;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    move-object/from16 v19, v3

    invoke-direct/range {v18 .. v19}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/app/Notification;->when:J

    move-wide/from16 v18, v0

    .line 40
    invoke-virtual/range {v17 .. v19}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v17

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v18, v0

    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/Notification;->iconLevel:I

    move/from16 v19, v0

    .line 41
    invoke-virtual/range {v17 .. v19}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v17

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v18, v0

    .line 42
    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v17

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v19, v8

    .line 43
    invoke-virtual/range {v17 .. v19}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v17

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object/from16 v18, v0

    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/Notification;->audioStreamType:I

    move/from16 v19, v0

    .line 44
    invoke-virtual/range {v17 .. v19}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    move-result-object v17

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/Notification;->vibrate:[J

    move-object/from16 v18, v0

    .line 45
    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v17

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/Notification;->ledARGB:I

    move/from16 v18, v0

    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/Notification;->ledOnMS:I

    move/from16 v19, v0

    move-object/from16 v20, v4

    move-object/from16 v0, v20

    iget v0, v0, Landroid/app/Notification;->ledOffMS:I

    move/from16 v20, v0

    .line 46
    invoke-virtual/range {v17 .. v20}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v17

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v18, v0

    const/16 v19, 0x2

    and-int/lit8 v18, v18, 0x2

    if-eqz v18, :cond_0

    const/16 v18, 0x1

    .line 47
    :goto_0
    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v17

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v18, v0

    const/16 v19, 0x8

    and-int/lit8 v18, v18, 0x8

    if-eqz v18, :cond_1

    const/16 v18, 0x1

    .line 48
    :goto_1
    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v17

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v18, v0

    const/16 v19, 0x10

    and-int/lit8 v18, v18, 0x10

    if-eqz v18, :cond_2

    const/16 v18, 0x1

    .line 49
    :goto_2
    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v17

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v18, v0

    .line 50
    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v17

    move-object/from16 v18, v5

    .line 51
    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v17

    move-object/from16 v18, v6

    .line 52
    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v17

    move-object/from16 v18, v7

    .line 53
    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v17

    move-object/from16 v18, v10

    .line 54
    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v17

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    move-object/from16 v18, v0

    .line 55
    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v17

    move-object/from16 v18, v11

    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v19, v0

    const/16 v20, 0x80

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    if-eqz v19, :cond_3

    const/16 v19, 0x1

    .line 56
    :goto_3
    invoke-virtual/range {v17 .. v19}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v17

    move-object/from16 v18, v12

    .line 58
    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v17

    move/from16 v18, v9

    .line 59
    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v17

    move/from16 v18, v13

    move/from16 v19, v14

    move/from16 v20, v15

    .line 60
    invoke-virtual/range {v17 .. v20}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/support/v4/app/NotificationCompatIceCreamSandwich$Builder;->b:Landroid/app/Notification$Builder;

    .line 61
    return-void

    .line 46
    :cond_0
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 47
    :cond_1
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 48
    :cond_2
    const/16 v18, 0x0

    goto :goto_2

    .line 55
    :cond_3
    const/16 v19, 0x0

    goto :goto_3
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/NotificationCompatIceCreamSandwich$Builder;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getBuilder()Landroid/app/Notification$Builder;
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/NotificationCompatIceCreamSandwich$Builder;->b:Landroid/app/Notification$Builder;

    move-object v0, v1

    return-object v0
.end method
