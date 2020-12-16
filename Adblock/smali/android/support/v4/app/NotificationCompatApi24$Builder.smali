.class public Landroid/support/v4/app/NotificationCompatApi24$Builder;
.super Ljava/lang/Object;
.source "NotificationCompatApi24.java"

# interfaces
.implements Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;
.implements Landroid/support/v4/app/NotificationBuilderWithActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompatApi24;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private b:Landroid/app/Notification$Builder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZZILjava/lang/CharSequence;ZLjava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;IILandroid/app/Notification;Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/CharSequence;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 42
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
            "[",
            "Ljava/lang/CharSequence;",
            "Landroid/widget/RemoteViews;",
            "Landroid/widget/RemoteViews;",
            "Landroid/widget/RemoteViews;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
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

    move-object/from16 v33, p31

    move-object/from16 v36, v2

    invoke-direct/range {v36 .. v36}, Ljava/lang/Object;-><init>()V

    .line 66
    move-object/from16 v36, v2

    new-instance v37, Landroid/app/Notification$Builder;

    move-object/from16 v41, v37

    move-object/from16 v37, v41

    move-object/from16 v38, v41

    move-object/from16 v39, v3

    invoke-direct/range {v38 .. v39}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v38, v4

    move-object/from16 v0, v38

    iget-wide v0, v0, Landroid/app/Notification;->when:J

    move-wide/from16 v38, v0

    .line 67
    invoke-virtual/range {v37 .. v39}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v37

    move/from16 v38, v16

    .line 68
    invoke-virtual/range {v37 .. v38}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v37

    move-object/from16 v38, v4

    move-object/from16 v0, v38

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v38, v0

    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget v0, v0, Landroid/app/Notification;->iconLevel:I

    move/from16 v39, v0

    .line 69
    invoke-virtual/range {v37 .. v39}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v37

    move-object/from16 v38, v4

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v38, v0

    .line 70
    invoke-virtual/range {v37 .. v38}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v37

    move-object/from16 v38, v4

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v38, v0

    move-object/from16 v39, v8

    .line 71
    invoke-virtual/range {v37 .. v39}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v37

    move-object/from16 v38, v4

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object/from16 v38, v0

    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget v0, v0, Landroid/app/Notification;->audioStreamType:I

    move/from16 v39, v0

    .line 72
    invoke-virtual/range {v37 .. v39}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    move-result-object v37

    move-object/from16 v38, v4

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/app/Notification;->vibrate:[J

    move-object/from16 v38, v0

    .line 73
    invoke-virtual/range {v37 .. v38}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v37

    move-object/from16 v38, v4

    move-object/from16 v0, v38

    iget v0, v0, Landroid/app/Notification;->ledARGB:I

    move/from16 v38, v0

    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget v0, v0, Landroid/app/Notification;->ledOnMS:I

    move/from16 v39, v0

    move-object/from16 v40, v4

    move-object/from16 v0, v40

    iget v0, v0, Landroid/app/Notification;->ledOffMS:I

    move/from16 v40, v0

    .line 74
    invoke-virtual/range {v37 .. v40}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v37

    move-object/from16 v38, v4

    move-object/from16 v0, v38

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v38, v0

    const/16 v39, 0x2

    and-int/lit8 v38, v38, 0x2

    if-eqz v38, :cond_3

    const/16 v38, 0x1

    .line 75
    :goto_0
    invoke-virtual/range {v37 .. v38}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v37

    move-object/from16 v38, v4

    move-object/from16 v0, v38

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v38, v0

    const/16 v39, 0x8

    and-int/lit8 v38, v38, 0x8

    if-eqz v38, :cond_4

    const/16 v38, 0x1

    .line 76
    :goto_1
    invoke-virtual/range {v37 .. v38}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v37

    move-object/from16 v38, v4

    move-object/from16 v0, v38

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v38, v0

    const/16 v39, 0x10

    and-int/lit8 v38, v38, 0x10

    if-eqz v38, :cond_5

    const/16 v38, 0x1

    .line 77
    :goto_2
    invoke-virtual/range {v37 .. v38}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v37

    move-object/from16 v38, v4

    move-object/from16 v0, v38

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v38, v0

    .line 78
    invoke-virtual/range {v37 .. v38}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v37

    move-object/from16 v38, v5

    .line 79
    invoke-virtual/range {v37 .. v38}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v37

    move-object/from16 v38, v6

    .line 80
    invoke-virtual/range {v37 .. v38}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v37

    move-object/from16 v38, v19

    .line 81
    invoke-virtual/range {v37 .. v38}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v37

    move-object/from16 v38, v7

    .line 82
    invoke-virtual/range {v37 .. v38}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v37

    move-object/from16 v38, v10

    .line 83
    invoke-virtual/range {v37 .. v38}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v37

    move-object/from16 v38, v4

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    move-object/from16 v38, v0

    .line 84
    invoke-virtual/range {v37 .. v38}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v37

    move-object/from16 v38, v11

    move-object/from16 v39, v4

    move-object/from16 v0, v39

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v39, v0

    const/16 v40, 0x80

    move/from16 v0, v39

    and-int/lit16 v0, v0, 0x80

    move/from16 v39, v0

    if-eqz v39, :cond_6

    const/16 v39, 0x1

    .line 85
    :goto_3
    invoke-virtual/range {v37 .. v39}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v37

    move-object/from16 v38, v12

    .line 87
    invoke-virtual/range {v37 .. v38}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v37

    move/from16 v38, v9

    .line 88
    invoke-virtual/range {v37 .. v38}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v37

    move/from16 v38, v17

    .line 89
    invoke-virtual/range {v37 .. v38}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v37

    move/from16 v38, v18

    .line 90
    invoke-virtual/range {v37 .. v38}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v37

    move/from16 v38, v13

    move/from16 v39, v14

    move/from16 v40, v15

    .line 91
    invoke-virtual/range {v37 .. v40}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v37

    move/from16 v38, v20

    .line 92
    invoke-virtual/range {v37 .. v38}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v37

    move-object/from16 v38, v23

    .line 93
    invoke-virtual/range {v37 .. v38}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v37

    move-object/from16 v38, v27

    .line 94
    invoke-virtual/range {v37 .. v38}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v37

    move/from16 v38, v28

    .line 95
    invoke-virtual/range {v37 .. v38}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v37

    move-object/from16 v38, v29

    .line 96
    invoke-virtual/range {v37 .. v38}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v37

    move-object/from16 v38, v21

    .line 97
    invoke-virtual/range {v37 .. v38}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v37

    move/from16 v38, v24

    .line 98
    invoke-virtual/range {v37 .. v38}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v37

    move/from16 v38, v25

    .line 99
    invoke-virtual/range {v37 .. v38}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v37

    move-object/from16 v38, v26

    .line 100
    invoke-virtual/range {v37 .. v38}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v37

    move-object/from16 v38, v30

    .line 101
    invoke-virtual/range {v37 .. v38}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    iput-object v0, v1, Landroid/support/v4/app/NotificationCompatApi24$Builder;->b:Landroid/app/Notification$Builder;

    .line 102
    move-object/from16 v36, v31

    if-eqz v36, :cond_0

    .line 103
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompatApi24$Builder;->b:Landroid/app/Notification$Builder;

    move-object/from16 v36, v0

    move-object/from16 v37, v31

    invoke-virtual/range {v36 .. v37}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v36

    .line 105
    :cond_0
    move-object/from16 v36, v32

    if-eqz v36, :cond_1

    .line 106
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompatApi24$Builder;->b:Landroid/app/Notification$Builder;

    move-object/from16 v36, v0

    move-object/from16 v37, v32

    invoke-virtual/range {v36 .. v37}, Landroid/app/Notification$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v36

    .line 108
    :cond_1
    move-object/from16 v36, v33

    if-eqz v36, :cond_2

    .line 109
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompatApi24$Builder;->b:Landroid/app/Notification$Builder;

    move-object/from16 v36, v0

    move-object/from16 v37, v33

    invoke-virtual/range {v36 .. v37}, Landroid/app/Notification$Builder;->setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v36

    .line 111
    :cond_2
    move-object/from16 v36, v22

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v36

    move-object/from16 v34, v36

    :goto_4
    move-object/from16 v36, v34

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_7

    move-object/from16 v36, v34

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/String;

    move-object/from16 v35, v36

    .line 112
    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/support/v4/app/NotificationCompatApi24$Builder;->b:Landroid/app/Notification$Builder;

    move-object/from16 v36, v0

    move-object/from16 v37, v35

    invoke-virtual/range {v36 .. v37}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v36

    .line 113
    goto :goto_4

    .line 74
    :cond_3
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 75
    :cond_4
    const/16 v38, 0x0

    goto/16 :goto_1

    .line 76
    :cond_5
    const/16 v38, 0x0

    goto/16 :goto_2

    .line 84
    :cond_6
    const/16 v39, 0x0

    goto/16 :goto_3

    .line 114
    :cond_7
    return-void
.end method


# virtual methods
.method public addAction(Landroid/support/v4/app/NotificationCompatBase$Action;)V
    .locals 13

    .prologue
    .line 118
    move-object v0, p0

    move-object v1, p1

    new-instance v7, Landroid/app/Notification$Action$Builder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v1

    .line 119
    invoke-virtual {v9}, Landroid/support/v4/app/NotificationCompatBase$Action;->getIcon()I

    move-result v9

    move-object v10, v1

    invoke-virtual {v10}, Landroid/support/v4/app/NotificationCompatBase$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v11}, Landroid/support/v4/app/NotificationCompatBase$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v11

    invoke-direct {v8, v9, v10, v11}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    move-object v2, v7

    .line 120
    move-object v7, v1

    invoke-virtual {v7}, Landroid/support/v4/app/NotificationCompatBase$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 121
    move-object v7, v1

    .line 122
    invoke-virtual {v7}, Landroid/support/v4/app/NotificationCompatBase$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    move-result-object v7

    .line 121
    invoke-static {v7}, Landroid/support/v4/app/RemoteInputCompatApi20;->fromCompat([Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)[Landroid/app/RemoteInput;

    move-result-object v7

    move-object v3, v7

    move-object v7, v3

    array-length v7, v7

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_0

    move-object v7, v3

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 123
    move-object v7, v2

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    move-result-object v7

    .line 121
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 127
    :cond_0
    move-object v7, v1

    invoke-virtual {v7}, Landroid/support/v4/app/NotificationCompatBase$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 128
    new-instance v7, Landroid/os/Bundle;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v1

    invoke-virtual {v9}, Landroid/support/v4/app/NotificationCompatBase$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v3, v7

    .line 132
    :goto_1
    move-object v7, v3

    const-string v8, "android.support.allowGeneratedReplies"

    move-object v9, v1

    .line 133
    invoke-virtual {v9}, Landroid/support/v4/app/NotificationCompatBase$Action;->getAllowGeneratedReplies()Z

    move-result v9

    .line 132
    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 134
    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    move-result-object v7

    .line 135
    move-object v7, v2

    move-object v8, v1

    invoke-virtual {v8}, Landroid/support/v4/app/NotificationCompatBase$Action;->getAllowGeneratedReplies()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    move-result-object v7

    .line 136
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/NotificationCompatApi24$Builder;->b:Landroid/app/Notification$Builder;

    move-object v8, v2

    invoke-virtual {v8}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 137
    return-void

    .line 130
    :cond_1
    new-instance v7, Landroid/os/Bundle;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    move-object v3, v7

    goto :goto_1
.end method

.method public build()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 146
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/NotificationCompatApi24$Builder;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getBuilder()Landroid/app/Notification$Builder;
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/NotificationCompatApi24$Builder;->b:Landroid/app/Notification$Builder;

    move-object v0, v1

    return-object v0
.end method
