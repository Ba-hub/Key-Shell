.class Landroid/support/v4/media/session/PlaybackStateCompatApi22;
.super Ljava/lang/Object;
.source "PlaybackStateCompatApi22.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x16
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x16
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExtras(Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/media/session/PlaybackState;

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static newInstance(IJJFJLjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)Ljava/lang/Object;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJFJ",
            "Ljava/lang/CharSequence;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;J",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 37
    move/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-wide/from16 v9, p9

    move-object/from16 v11, p11

    move-wide/from16 v12, p12

    move-object/from16 v14, p14

    new-instance v18, Landroid/media/session/PlaybackState$Builder;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    invoke-direct/range {v19 .. v19}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    move-object/from16 v15, v18

    .line 38
    move-object/from16 v18, v15

    move/from16 v19, v0

    move-wide/from16 v20, v1

    move/from16 v22, v5

    move-wide/from16 v23, v9

    invoke-virtual/range {v18 .. v24}, Landroid/media/session/PlaybackState$Builder;->setState(IJFJ)Landroid/media/session/PlaybackState$Builder;

    move-result-object v18

    .line 39
    move-object/from16 v18, v15

    move-wide/from16 v19, v3

    invoke-virtual/range {v18 .. v20}, Landroid/media/session/PlaybackState$Builder;->setBufferedPosition(J)Landroid/media/session/PlaybackState$Builder;

    move-result-object v18

    .line 40
    move-object/from16 v18, v15

    move-wide/from16 v19, v6

    invoke-virtual/range {v18 .. v20}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    move-result-object v18

    .line 41
    move-object/from16 v18, v15

    move-object/from16 v19, v8

    invoke-virtual/range {v18 .. v19}, Landroid/media/session/PlaybackState$Builder;->setErrorMessage(Ljava/lang/CharSequence;)Landroid/media/session/PlaybackState$Builder;

    move-result-object v18

    .line 42
    move-object/from16 v18, v11

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v16, v18

    :goto_0
    move-object/from16 v18, v16

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v18, v16

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v17, v18

    .line 43
    move-object/from16 v18, v15

    move-object/from16 v19, v17

    check-cast v19, Landroid/media/session/PlaybackState$CustomAction;

    invoke-virtual/range {v18 .. v19}, Landroid/media/session/PlaybackState$Builder;->addCustomAction(Landroid/media/session/PlaybackState$CustomAction;)Landroid/media/session/PlaybackState$Builder;

    move-result-object v18

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move-object/from16 v18, v15

    move-wide/from16 v19, v12

    invoke-virtual/range {v18 .. v20}, Landroid/media/session/PlaybackState$Builder;->setActiveQueueItemId(J)Landroid/media/session/PlaybackState$Builder;

    move-result-object v18

    .line 46
    move-object/from16 v18, v15

    move-object/from16 v19, v14

    invoke-virtual/range {v18 .. v19}, Landroid/media/session/PlaybackState$Builder;->setExtras(Landroid/os/Bundle;)Landroid/media/session/PlaybackState$Builder;

    move-result-object v18

    .line 47
    move-object/from16 v18, v15

    invoke-virtual/range {v18 .. v18}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v18

    move-object/from16 v0, v18

    return-object v0
.end method
