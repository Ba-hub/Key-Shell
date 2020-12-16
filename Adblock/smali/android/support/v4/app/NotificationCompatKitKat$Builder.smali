.class public Landroid/support/v4/app/NotificationCompatKitKat$Builder;
.super Ljava/lang/Object;
.source "NotificationCompatKitKat.java"

# interfaces
.implements Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;
.implements Landroid/support/v4/app/NotificationBuilderWithActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompatKitKat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private b:Landroid/app/Notification$Builder;

.field private mActionExtrasList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mBigContentView:Landroid/widget/RemoteViews;

.field private mContentView:Landroid/widget/RemoteViews;

.field private mExtras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZZILjava/lang/CharSequence;ZLjava/util/ArrayList;Landroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Notification;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Landroid/widget/RemoteViews;",
            "I",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "Landroid/graphics/Bitmap;",
            "IIZZZI",
            "Ljava/lang/CharSequence;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Landroid/widget/RemoteViews;",
            "Landroid/widget/RemoteViews;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
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

    move/from16 v16, p14

    move/from16 v17, p15

    move/from16 v18, p16

    move-object/from16 v19, p17

    move/from16 v20, p18

    move-object/from16 v21, p19

    move-object/from16 v22, p20

    move-object/from16 v23, p21

    move/from16 v24, p22

    move-object/from16 v25, p23

    move-object/from16 v26, p24

    move-object/from16 v27, p25

    move-object/from16 v28, v2

    invoke-direct/range {v28 .. v28}, Ljava/lang/Object;-><init>()V

    .line 39
    move-object/from16 v28, v2

    new-instance v29, Ljava/util/ArrayList;

    move-object/from16 v33, v29

    move-object/from16 v29, v33

    move-object/from16 v30, v33

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->mActionExtrasList:Ljava/util/List;

    .line 51
    move-object/from16 v28, v2

    new-instance v29, Landroid/app/Notification$Builder;

    move-object/from16 v33, v29

    move-object/from16 v29, v33

    move-object/from16 v30, v33

    move-object/from16 v31, v3

    invoke-direct/range {v30 .. v31}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v30, v4

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/app/Notification;->when:J

    move-wide/from16 v30, v0

    .line 52
    invoke-virtual/range {v29 .. v31}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v29

    move/from16 v30, v16

    .line 53
    invoke-virtual/range {v29 .. v30}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v29

    move-object/from16 v30, v4

    move-object/from16 v0, v30

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v30, v0

    move-object/from16 v31, v4

    move-object/from16 v0, v31

    iget v0, v0, Landroid/app/Notification;->iconLevel:I

    move/from16 v31, v0

    .line 54
    invoke-virtual/range {v29 .. v31}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v29

    move-object/from16 v30, v4

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v30, v0

    .line 55
    invoke-virtual/range {v29 .. v30}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v29

    move-object/from16 v30, v4

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v30, v0

    move-object/from16 v31, v8

    .line 56
    invoke-virtual/range {v29 .. v31}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v29

    move-object/from16 v30, v4

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object/from16 v30, v0

    move-object/from16 v31, v4

    move-object/from16 v0, v31

    iget v0, v0, Landroid/app/Notification;->audioStreamType:I

    move/from16 v31, v0

    .line 57
    invoke-virtual/range {v29 .. v31}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    move-result-object v29

    move-object/from16 v30, v4

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/app/Notification;->vibrate:[J

    move-object/from16 v30, v0

    .line 58
    invoke-virtual/range {v29 .. v30}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v29

    move-object/from16 v30, v4

    move-object/from16 v0, v30

    iget v0, v0, Landroid/app/Notification;->ledARGB:I

    move/from16 v30, v0

    move-object/from16 v31, v4

    move-object/from16 v0, v31

    iget v0, v0, Landroid/app/Notification;->ledOnMS:I

    move/from16 v31, v0

    move-object/from16 v32, v4

    move-object/from16 v0, v32

    iget v0, v0, Landroid/app/Notification;->ledOffMS:I

    move/from16 v32, v0

    .line 59
    invoke-virtual/range {v29 .. v32}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v29

    move-object/from16 v30, v4

    move-object/from16 v0, v30

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v30, v0

    const/16 v31, 0x2

    and-int/lit8 v30, v30, 0x2

    if-eqz v30, :cond_5

    const/16 v30, 0x1

    .line 60
    :goto_0
    invoke-virtual/range {v29 .. v30}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v29

    move-object/from16 v30, v4

    move-object/from16 v0, v30

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v30, v0

    const/16 v31, 0x8

    and-int/lit8 v30, v30, 0x8

    if-eqz v30, :cond_6

    const/16 v30, 0x1

    .line 61
    :goto_1
    invoke-virtual/range {v29 .. v30}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v29

    move-object/from16 v30, v4

    move-object/from16 v0, v30

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v30, v0

    const/16 v31, 0x10

    and-int/lit8 v30, v30, 0x10

    if-eqz v30, :cond_7

    const/16 v30, 0x1

    .line 62
    :goto_2
    invoke-virtual/range {v29 .. v30}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v29

    move-object/from16 v30, v4

    move-object/from16 v0, v30

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v30, v0

    .line 63
    invoke-virtual/range {v29 .. v30}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v29

    move-object/from16 v30, v5

    .line 64
    invoke-virtual/range {v29 .. v30}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v29

    move-object/from16 v30, v6

    .line 65
    invoke-virtual/range {v29 .. v30}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v29

    move-object/from16 v30, v19

    .line 66
    invoke-virtual/range {v29 .. v30}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v29

    move-object/from16 v30, v7

    .line 67
    invoke-virtual/range {v29 .. v30}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v29

    move-object/from16 v30, v10

    .line 68
    invoke-virtual/range {v29 .. v30}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v29

    move-object/from16 v30, v4

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    move-object/from16 v30, v0

    .line 69
    invoke-virtual/range {v29 .. v30}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v29

    move-object/from16 v30, v11

    move-object/from16 v31, v4

    move-object/from16 v0, v31

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v31, v0

    const/16 v32, 0x80

    move/from16 v0, v31

    and-int/lit16 v0, v0, 0x80

    move/from16 v31, v0

    if-eqz v31, :cond_8

    const/16 v31, 0x1

    .line 70
    :goto_3
    invoke-virtual/range {v29 .. v31}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v29

    move-object/from16 v30, v12

    .line 72
    invoke-virtual/range {v29 .. v30}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v29

    move/from16 v30, v9

    .line 73
    invoke-virtual/range {v29 .. v30}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v29

    move/from16 v30, v17

    .line 74
    invoke-virtual/range {v29 .. v30}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v29

    move/from16 v30, v18

    .line 75
    invoke-virtual/range {v29 .. v30}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v29

    move/from16 v30, v13

    move/from16 v31, v14

    move/from16 v32, v15

    .line 76
    invoke-virtual/range {v29 .. v32}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->b:Landroid/app/Notification$Builder;

    .line 77
    move-object/from16 v28, v2

    new-instance v29, Landroid/os/Bundle;

    move-object/from16 v33, v29

    move-object/from16 v29, v33

    move-object/from16 v30, v33

    invoke-direct/range {v30 .. v30}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->mExtras:Landroid/os/Bundle;

    .line 78
    move-object/from16 v28, v22

    if-eqz v28, :cond_0

    .line 79
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->mExtras:Landroid/os/Bundle;

    move-object/from16 v28, v0

    move-object/from16 v29, v22

    invoke-virtual/range {v28 .. v29}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 81
    :cond_0
    move-object/from16 v28, v21

    if-eqz v28, :cond_1

    move-object/from16 v28, v21

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_1

    .line 82
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->mExtras:Landroid/os/Bundle;

    move-object/from16 v28, v0

    const-string v29, "android.people"

    move-object/from16 v30, v21

    move-object/from16 v31, v21

    .line 83
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v30

    check-cast v30, [Ljava/lang/String;

    .line 82
    invoke-virtual/range {v28 .. v30}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 85
    :cond_1
    move/from16 v28, v20

    if-eqz v28, :cond_2

    .line 86
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->mExtras:Landroid/os/Bundle;

    move-object/from16 v28, v0

    const-string v29, "android.support.localOnly"

    const/16 v30, 0x1

    invoke-virtual/range {v28 .. v30}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 88
    :cond_2
    move-object/from16 v28, v23

    if-eqz v28, :cond_3

    .line 89
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->mExtras:Landroid/os/Bundle;

    move-object/from16 v28, v0

    const-string v29, "android.support.groupKey"

    move-object/from16 v30, v23

    invoke-virtual/range {v28 .. v30}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    move/from16 v28, v24

    if-eqz v28, :cond_9

    .line 91
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->mExtras:Landroid/os/Bundle;

    move-object/from16 v28, v0

    const-string v29, "android.support.isGroupSummary"

    const/16 v30, 0x1

    invoke-virtual/range {v28 .. v30}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 96
    :cond_3
    :goto_4
    move-object/from16 v28, v25

    if-eqz v28, :cond_4

    .line 97
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->mExtras:Landroid/os/Bundle;

    move-object/from16 v28, v0

    const-string v29, "android.support.sortKey"

    move-object/from16 v30, v25

    invoke-virtual/range {v28 .. v30}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_4
    move-object/from16 v28, v2

    move-object/from16 v29, v26

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->mContentView:Landroid/widget/RemoteViews;

    .line 100
    move-object/from16 v28, v2

    move-object/from16 v29, v27

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    .line 101
    return-void

    .line 59
    :cond_5
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 60
    :cond_6
    const/16 v30, 0x0

    goto/16 :goto_1

    .line 61
    :cond_7
    const/16 v30, 0x0

    goto/16 :goto_2

    .line 69
    :cond_8
    const/16 v31, 0x0

    goto/16 :goto_3

    .line 93
    :cond_9
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->mExtras:Landroid/os/Bundle;

    move-object/from16 v28, v0

    const-string v29, "android.support.useSideChannel"

    const/16 v30, 0x1

    invoke-virtual/range {v28 .. v30}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_4
.end method


# virtual methods
.method public addAction(Landroid/support/v4/app/NotificationCompatBase$Action;)V
    .locals 5

    .prologue
    .line 105
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->mActionExtrasList:Ljava/util/List;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->b:Landroid/app/Notification$Builder;

    move-object v4, v1

    invoke-static {v3, v4}, Landroid/support/v4/app/NotificationCompatJellybean;->writeActionAndGetExtras(Landroid/app/Notification$Builder;Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 106
    return-void
.end method

.method public build()Landroid/app/Notification;
    .locals 6

    .prologue
    .line 115
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->mActionExtrasList:Ljava/util/List;

    invoke-static {v3}, Landroid/support/v4/app/NotificationCompatJellybean;->buildActionExtrasMap(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v3

    move-object v1, v3

    .line 117
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 119
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->mExtras:Landroid/os/Bundle;

    const-string v4, "android.support.actionExtras"

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 122
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->b:Landroid/app/Notification$Builder;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 123
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    move-object v2, v3

    .line 124
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_1

    .line 125
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->mContentView:Landroid/widget/RemoteViews;

    iput-object v4, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 127
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_2

    .line 128
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    iput-object v4, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 130
    :cond_2
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public getBuilder()Landroid/app/Notification$Builder;
    .locals 2

    .prologue
    .line 110
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->b:Landroid/app/Notification$Builder;

    move-object v0, v1

    return-object v0
.end method
