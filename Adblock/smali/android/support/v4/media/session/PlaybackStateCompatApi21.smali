.class Landroid/support/v4/media/session/PlaybackStateCompatApi21;
.super Ljava/lang/Object;
.source "PlaybackStateCompatApi21.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/PlaybackStateCompatApi21$CustomAction;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method public static getActions(Ljava/lang/Object;)J
    .locals 3

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/media/session/PlaybackState;

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public static getActiveQueueItemId(Ljava/lang/Object;)J
    .locals 3

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/media/session/PlaybackState;

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getActiveQueueItemId()J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public static getBufferedPosition(Ljava/lang/Object;)J
    .locals 3

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/media/session/PlaybackState;

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getBufferedPosition()J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public static getCustomActions(Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/media/session/PlaybackState;

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getCustomActions()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getErrorMessage(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/media/session/PlaybackState;

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getErrorMessage()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getLastPositionUpdateTime(Ljava/lang/Object;)J
    .locals 3

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/media/session/PlaybackState;

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public static getPlaybackSpeed(Ljava/lang/Object;)F
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/media/session/PlaybackState;

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getPosition(Ljava/lang/Object;)J
    .locals 3

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/media/session/PlaybackState;

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public static getState(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/media/session/PlaybackState;

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static newInstance(IJJFJLjava/lang/CharSequence;JLjava/util/List;J)Ljava/lang/Object;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJFJ",
            "Ljava/lang/CharSequence;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;J)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 69
    move/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-wide/from16 v9, p9

    move-object/from16 v11, p11

    move-wide/from16 v12, p12

    new-instance v17, Landroid/media/session/PlaybackState$Builder;

    move-object/from16 v24, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v24

    invoke-direct/range {v18 .. v18}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    move-object/from16 v14, v17

    .line 70
    move-object/from16 v17, v14

    move/from16 v18, v0

    move-wide/from16 v19, v1

    move/from16 v21, v5

    move-wide/from16 v22, v9

    invoke-virtual/range {v17 .. v23}, Landroid/media/session/PlaybackState$Builder;->setState(IJFJ)Landroid/media/session/PlaybackState$Builder;

    move-result-object v17

    .line 71
    move-object/from16 v17, v14

    move-wide/from16 v18, v3

    invoke-virtual/range {v17 .. v19}, Landroid/media/session/PlaybackState$Builder;->setBufferedPosition(J)Landroid/media/session/PlaybackState$Builder;

    move-result-object v17

    .line 72
    move-object/from16 v17, v14

    move-wide/from16 v18, v6

    invoke-virtual/range {v17 .. v19}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    move-result-object v17

    .line 73
    move-object/from16 v17, v14

    move-object/from16 v18, v8

    invoke-virtual/range {v17 .. v18}, Landroid/media/session/PlaybackState$Builder;->setErrorMessage(Ljava/lang/CharSequence;)Landroid/media/session/PlaybackState$Builder;

    move-result-object v17

    .line 74
    move-object/from16 v17, v11

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move-object/from16 v15, v17

    :goto_0
    move-object/from16 v17, v15

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v17, v15

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v16, v17

    .line 75
    move-object/from16 v17, v14

    move-object/from16 v18, v16

    check-cast v18, Landroid/media/session/PlaybackState$CustomAction;

    invoke-virtual/range {v17 .. v18}, Landroid/media/session/PlaybackState$Builder;->addCustomAction(Landroid/media/session/PlaybackState$CustomAction;)Landroid/media/session/PlaybackState$Builder;

    move-result-object v17

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    move-object/from16 v17, v14

    move-wide/from16 v18, v12

    invoke-virtual/range {v17 .. v19}, Landroid/media/session/PlaybackState$Builder;->setActiveQueueItemId(J)Landroid/media/session/PlaybackState$Builder;

    move-result-object v17

    .line 78
    move-object/from16 v17, v14

    invoke-virtual/range {v17 .. v17}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v17

    move-object/from16 v0, v17

    return-object v0
.end method
