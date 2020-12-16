.class public final Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
.super Ljava/lang/Object;
.source "PlaybackStateCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/PlaybackStateCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mActions:J

.field private mActiveItemId:J

.field private mBufferedPosition:J

.field private final mCustomActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorCode:I

.field private mErrorMessage:Ljava/lang/CharSequence;

.field private mExtras:Landroid/os/Bundle;

.field private mPosition:J

.field private mRate:F

.field private mState:I

.field private mUpdateTime:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 1029
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1013
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mCustomActions:Ljava/util/List;

    .line 1023
    move-object v1, v0

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mActiveItemId:J

    .line 1030
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 6

    .prologue
    .line 1038
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1013
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mCustomActions:Ljava/util/List;

    .line 1023
    move-object v2, v0

    const-wide/16 v3, -0x1

    iput-wide v3, v2, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mActiveItemId:J

    .line 1039
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    iput v3, v2, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mState:I

    .line 1040
    move-object v2, v0

    move-object v3, v1

    iget-wide v3, v3, Landroid/support/v4/media/session/PlaybackStateCompat;->mPosition:J

    iput-wide v3, v2, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mPosition:J

    .line 1041
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/v4/media/session/PlaybackStateCompat;->mSpeed:F

    iput v3, v2, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mRate:F

    .line 1042
    move-object v2, v0

    move-object v3, v1

    iget-wide v3, v3, Landroid/support/v4/media/session/PlaybackStateCompat;->mUpdateTime:J

    iput-wide v3, v2, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mUpdateTime:J

    .line 1043
    move-object v2, v0

    move-object v3, v1

    iget-wide v3, v3, Landroid/support/v4/media/session/PlaybackStateCompat;->mBufferedPosition:J

    iput-wide v3, v2, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mBufferedPosition:J

    .line 1044
    move-object v2, v0

    move-object v3, v1

    iget-wide v3, v3, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    iput-wide v3, v2, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mActions:J

    .line 1045
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorCode:I

    iput v3, v2, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mErrorCode:I

    .line 1046
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorMessage:Ljava/lang/CharSequence;

    iput-object v3, v2, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mErrorMessage:Ljava/lang/CharSequence;

    .line 1047
    move-object v2, v1

    iget-object v2, v2, Landroid/support/v4/media/session/PlaybackStateCompat;->mCustomActions:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 1048
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mCustomActions:Ljava/util/List;

    move-object v3, v1

    iget-object v3, v3, Landroid/support/v4/media/session/PlaybackStateCompat;->mCustomActions:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v2

    .line 1050
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iget-wide v3, v3, Landroid/support/v4/media/session/PlaybackStateCompat;->mActiveItemId:J

    iput-wide v3, v2, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mActiveItemId:J

    .line 1051
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroid/support/v4/media/session/PlaybackStateCompat;->mExtras:Landroid/os/Bundle;

    iput-object v3, v2, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 1052
    return-void
.end method


# virtual methods
.method public addCustomAction(Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 6

    .prologue
    .line 1213
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    .line 1214
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "You may not add a null CustomAction to PlaybackStateCompat."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1217
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mCustomActions:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 1218
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public addCustomAction(Ljava/lang/String;Ljava/lang/String;I)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 12

    .prologue
    .line 1198
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    new-instance v5, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/Bundle;)V

    invoke-virtual {v4, v5}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->addCustomAction(Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public build()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 22

    .prologue
    .line 1274
    move-object/from16 v2, p0

    new-instance v3, Landroid/support/v4/media/session/PlaybackStateCompat;

    move-object/from16 v21, v3

    move-object/from16 v3, v21

    move-object/from16 v4, v21

    move-object v5, v2

    iget v5, v5, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mState:I

    move-object v6, v2

    iget-wide v6, v6, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mPosition:J

    move-object v8, v2

    iget-wide v8, v8, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mBufferedPosition:J

    move-object v10, v2

    iget v10, v10, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mRate:F

    move-object v11, v2

    iget-wide v11, v11, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mActions:J

    move-object v13, v2

    iget v13, v13, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mErrorCode:I

    move-object v14, v2

    iget-object v14, v14, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mErrorMessage:Ljava/lang/CharSequence;

    move-object v15, v2

    iget-wide v15, v15, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mUpdateTime:J

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mCustomActions:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mActiveItemId:J

    move-wide/from16 v18, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mExtras:Landroid/os/Bundle;

    move-object/from16 v20, v0

    invoke-direct/range {v4 .. v20}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(IJJFJILjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V

    move-object v2, v3

    return-object v2
.end method

.method public setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 6

    .prologue
    .line 1173
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mActions:J

    .line 1174
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setActiveQueueItemId(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 6

    .prologue
    .line 1229
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mActiveItemId:J

    .line 1230
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setBufferedPosition(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 6

    .prologue
    .line 1140
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mBufferedPosition:J

    .line 1141
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setErrorMessage(ILjava/lang/CharSequence;)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 5

    .prologue
    .line 1254
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mErrorCode:I

    .line 1255
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mErrorMessage:Ljava/lang/CharSequence;

    .line 1256
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setErrorMessage(Ljava/lang/CharSequence;)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 4

    .prologue
    .line 1241
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mErrorMessage:Ljava/lang/CharSequence;

    .line 1242
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 4

    .prologue
    .line 1266
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 1267
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 12

    .prologue
    .line 1086
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move/from16 v4, p4

    move-object v5, v0

    move v6, v1

    move-wide v7, v2

    move v9, v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-virtual/range {v5 .. v11}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public setState(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 10

    .prologue
    .line 1125
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move-wide v5, p5

    move-object v7, v0

    move v8, v1

    iput v8, v7, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mState:I

    .line 1126
    move-object v7, v0

    move-wide v8, v2

    iput-wide v8, v7, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mPosition:J

    .line 1127
    move-object v7, v0

    move-wide v8, v5

    iput-wide v8, v7, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mUpdateTime:J

    .line 1128
    move-object v7, v0

    move v8, v4

    iput v8, v7, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mRate:F

    .line 1129
    move-object v7, v0

    move-object v0, v7

    return-object v0
.end method
