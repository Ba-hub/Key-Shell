.class public Landroid/support/v4/app/NotificationCompatApi21$Builder;
.super Ljava/lang/Object;
.source "NotificationCompatApi21.java"

# interfaces
.implements Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;
.implements Landroid/support/v4/app/NotificationBuilderWithActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private b:Landroid/app/Notification$Builder;

.field private mBigContentView:Landroid/widget/RemoteViews;

.field private mContentView:Landroid/widget/RemoteViews;

.field private mExtras:Landroid/os/Bundle;

.field private mHeadsUpContentView:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZZILjava/lang/CharSequence;ZLjava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;IILandroid/app/Notification;Ljava/lang/String;ZLjava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 41
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
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "II",
            "Landroid/app/Notification;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Landroid/widget/RemoteViews;",
            "Landroid/widget/RemoteViews;",
            "Landroid/widget/RemoteViews;",
            ")V"
        }
    .end annotation

    .prologue
    .line 76
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

    move/from16 v25, p23

    move-object/from16 v26, p24

    move-object/from16 v27, p25

    move/from16 v28, p26

    move-object/from16 v29, p27

    move-object/from16 v30, p28

    move-object/from16 v31, p29

    move-object/from16 v32, p30

    move-object/from16 v35, v2

    invoke-direct/range {v35 .. v35}, Ljava/lang/Object;-><init>()V

    .line 77
    move-object/from16 v35, v2

    new-instance v36, Landroid/app/Notification$Builder;

    move-object/from16 v40, v36

    move-object/from16 v36, v40

    move-object/from16 v37, v40

    move-object/from16 v38, v3

    invoke-direct/range {v37 .. v38}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v37, v4

    move-object/from16 v0, v37

    iget-wide v0, v0, Landroid/app/Notification;->when:J

    move-wide/from16 v37, v0

    .line 78
    invoke-virtual/range {v36 .. v38}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v36

    move/from16 v37, v16

    .line 79
    invoke-virtual/range {v36 .. v37}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v36

    move-object/from16 v37, v4

    move-object/from16 v0, v37

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v37, v0

    move-object/from16 v38, v4

    move-object/from16 v0, v38

    iget v0, v0, Landroid/app/Notification;->iconLevel:I

    move/from16 v38, v0

    .line 80
    invoke-virtual/range {v36 .. v38}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v36

    move-object/from16 v37, v4

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v37, v0

    .line 81
    invoke-virtual/range {v36 .. v37}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v36

    move-object/from16 v37, v4

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v37, v0

    move-object/from16 v38, v8

    .line 82
    invoke-virtual/range {v36 .. v38}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v36

    move-object/from16 v37, v4

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object/from16 v37, v0

    move-object/from16 v38, v4

    move-object/from16 v0, v38

    iget v0, v0, Landroid/app/Notification;->audioStreamType:I

    move/from16 v38, v0

    .line 83
    invoke-virtual/range {v36 .. v38}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    move-result-object v36

    move-object/from16 v37, v4

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/app/Notification;->vibrate:[J

    move-object/from16 v37, v0

    .line 84
    invoke-virtual/range {v36 .. v37}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v36

    move-object/from16 v37, v4

    move-object/from16 v0, v37

    iget v0, v0, Landroid/app/Notification;->ledARGB:I

    move/from16 v37, v0

    move-object/from16 v38, v4

    move-object/from16 v0, v38

    iget v0, v0, Landroid/app/Notification;->ledOnMS:I

    move/from16 v38, v0

    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget v0, v0, Landroid/app/Notification;->ledOffMS:I

    move/from16 v39, v0

    .line 85
    invoke-virtual/range {v36 .. v39}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v36

    move-object/from16 v37, v4

    move-object/from16 v0, v37

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v37, v0

    const/16 v38, 0x2

    and-int/lit8 v37, v37, 0x2

    if-eqz v37, :cond_1

    const/16 v37, 0x1

    .line 86
    :goto_0
    invoke-virtual/range {v36 .. v37}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v36

    move-object/from16 v37, v4

    move-object/from16 v0, v37

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v37, v0

    const/16 v38, 0x8

    and-int/lit8 v37, v37, 0x8

    if-eqz v37, :cond_2

    const/16 v37, 0x1

    .line 87
    :goto_1
    invoke-virtual/range {v36 .. v37}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v36

    move-object/from16 v37, v4

    move-object/from16 v0, v37

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v37, v0

    const/16 v38, 0x10

    and-int/lit8 v37, v37, 0x10

    if-eqz v37, :cond_3

    const/16 v37, 0x1

    .line 88
    :goto_2
    invoke-virtual/range {v36 .. v37}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v36

    move-object/from16 v37, v4

    move-object/from16 v0, v37

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v37, v0

    .line 89
    invoke-virtual/range {v36 .. v37}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v36

    move-object/from16 v37, v5

    .line 90
    invoke-virtual/range {v36 .. v37}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v36

    move-object/from16 v37, v6

    .line 91
    invoke-virtual/range {v36 .. v37}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v36

    move-object/from16 v37, v19

    .line 92
    invoke-virtual/range {v36 .. v37}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v36

    move-object/from16 v37, v7

    .line 93
    invoke-virtual/range {v36 .. v37}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v36

    move-object/from16 v37, v10

    .line 94
    invoke-virtual/range {v36 .. v37}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v36

    move-object/from16 v37, v4

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    move-object/from16 v37, v0

    .line 95
    invoke-virtual/range {v36 .. v37}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v36

    move-object/from16 v37, v11

    move-object/from16 v38, v4

    move-object/from16 v0, v38

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v38, v0

    const/16 v39, 0x80

    move/from16 v0, v38

    and-int/lit16 v0, v0, 0x80

    move/from16 v38, v0

    if-eqz v38, :cond_4

    const/16 v38, 0x1

    .line 96
    :goto_3
    invoke-virtual/range {v36 .. v38}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v36

    move-object/from16 v37, v12

    .line 98
    invoke-virtual/range {v36 .. v37}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v36

    move/from16 v37, v9

    .line 99
    invoke-virtual/range {v36 .. v37}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v36

    move/from16 v37, v17

    .line 100
    invoke-virtual/range {v36 .. v37}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v36

    move/from16 v37, v18

    .line 101
    invoke-virtual/range {v36 .. v37}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v36

    move/from16 v37, v13

    move/from16 v38, v14

    move/from16 v39, v15

    .line 102
    invoke-virtual/range {v36 .. v39}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v36

    move/from16 v37, v20

    .line 103
    invoke-virtual/range {v36 .. v37}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v36

    move-object/from16 v37, v27

    .line 104
    invoke-virtual/range {v36 .. v37}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v36

    move/from16 v37, v28

    .line 105
    invoke-virtual/range {v36 .. v37}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v36

    move-object/from16 v37, v29

    .line 106
    invoke-virtual/range {v36 .. v37}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v36

    move-object/from16 v37, v21

    .line 107
    invoke-virtual/range {v36 .. v37}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v36

    move/from16 v37, v24

    .line 108
    invoke-virtual/range {v36 .. v37}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v36

    move/from16 v37, v25

    .line 109
    invoke-virtual/range {v36 .. v37}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v36

    move-object/from16 v37, v26

    .line 110
    invoke-virtual/range {v36 .. v37}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    iput-object v0, v1, Landroid/support/v4/app/NotificationCompatApi21$Builder;->b:Landroid/app/Notification$Builder;

    .line 111
    move-object/from16 v35, v2

    new-instance v36, Landroid/os/Bundle;

    move-object/from16 v40, v36

    move-object/from16 v36, v40

    move-object/from16 v37, v40

    invoke-direct/range {v37 .. v37}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    iput-object v0, v1, Landroid/support/v4/app/NotificationCompatApi21$Builder;->mExtras:Landroid/os/Bundle;

    .line 112
    move-object/from16 v35, v23

    if-eqz v35, :cond_0

    .line 113
    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompatApi21$Builder;->mExtras:Landroid/os/Bundle;

    move-object/from16 v35, v0

    move-object/from16 v36, v23

    invoke-virtual/range {v35 .. v36}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 115
    :cond_0
    move-object/from16 v35, v22

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v35

    move-object/from16 v33, v35

    :goto_4
    move-object/from16 v35, v33

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_5

    move-object/from16 v35, v33

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    move-object/from16 v34, v35

    .line 116
    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompatApi21$Builder;->b:Landroid/app/Notification$Builder;

    move-object/from16 v35, v0

    move-object/from16 v36, v34

    invoke-virtual/range {v35 .. v36}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v35

    .line 117
    goto :goto_4

    .line 85
    :cond_1
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 86
    :cond_2
    const/16 v37, 0x0

    goto/16 :goto_1

    .line 87
    :cond_3
    const/16 v37, 0x0

    goto/16 :goto_2

    .line 95
    :cond_4
    const/16 v38, 0x0

    goto/16 :goto_3

    .line 118
    :cond_5
    move-object/from16 v35, v2

    move-object/from16 v36, v30

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    iput-object v0, v1, Landroid/support/v4/app/NotificationCompatApi21$Builder;->mContentView:Landroid/widget/RemoteViews;

    .line 119
    move-object/from16 v35, v2

    move-object/from16 v36, v31

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    iput-object v0, v1, Landroid/support/v4/app/NotificationCompatApi21$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    .line 120
    move-object/from16 v35, v2

    move-object/from16 v36, v32

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    iput-object v0, v1, Landroid/support/v4/app/NotificationCompatApi21$Builder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    .line 121
    return-void
.end method


# virtual methods
.method public addAction(Landroid/support/v4/app/NotificationCompatBase$Action;)V
    .locals 4

    .prologue
    .line 125
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompatApi21$Builder;->b:Landroid/app/Notification$Builder;

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/app/NotificationCompatApi20;->addAction(Landroid/app/Notification$Builder;Landroid/support/v4/app/NotificationCompatBase$Action;)V

    .line 126
    return-void
.end method

.method public build()Landroid/app/Notification;
    .locals 4

    .prologue
    .line 135
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompatApi21$Builder;->b:Landroid/app/Notification$Builder;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompatApi21$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 136
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompatApi21$Builder;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    move-object v1, v2

    .line 137
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompatApi21$Builder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_0

    .line 138
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompatApi21$Builder;->mContentView:Landroid/widget/RemoteViews;

    iput-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 140
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompatApi21$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_1

    .line 141
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompatApi21$Builder;->mBigContentView:Landroid/widget/RemoteViews;

    iput-object v3, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 143
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/NotificationCompatApi21$Builder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_2

    .line 144
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/NotificationCompatApi21$Builder;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    iput-object v3, v2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 146
    :cond_2
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public getBuilder()Landroid/app/Notification$Builder;
    .locals 2

    .prologue
    .line 130
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/NotificationCompatApi21$Builder;->b:Landroid/app/Notification$Builder;

    move-object v0, v1

    return-object v0
.end method
