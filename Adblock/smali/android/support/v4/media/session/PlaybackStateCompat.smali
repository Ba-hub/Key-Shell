.class public final Landroid/support/v4/media/session/PlaybackStateCompat;
.super Ljava/lang/Object;
.source "PlaybackStateCompat.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/PlaybackStateCompat$Builder;,
        Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;,
        Landroid/support/v4/media/session/PlaybackStateCompat$RepeatMode;,
        Landroid/support/v4/media/session/PlaybackStateCompat$ErrorCode;,
        Landroid/support/v4/media/session/PlaybackStateCompat$State;,
        Landroid/support/v4/media/session/PlaybackStateCompat$MediaKeyAction;,
        Landroid/support/v4/media/session/PlaybackStateCompat$Actions;
    }
.end annotation


# static fields
.field public static final ACTION_FAST_FORWARD:J = 0x40L

.field public static final ACTION_PAUSE:J = 0x2L

.field public static final ACTION_PLAY:J = 0x4L

.field public static final ACTION_PLAY_FROM_MEDIA_ID:J = 0x400L

.field public static final ACTION_PLAY_FROM_SEARCH:J = 0x800L

.field public static final ACTION_PLAY_FROM_URI:J = 0x2000L

.field public static final ACTION_PLAY_PAUSE:J = 0x200L

.field public static final ACTION_PREPARE:J = 0x4000L

.field public static final ACTION_PREPARE_FROM_MEDIA_ID:J = 0x8000L

.field public static final ACTION_PREPARE_FROM_SEARCH:J = 0x10000L

.field public static final ACTION_PREPARE_FROM_URI:J = 0x20000L

.field public static final ACTION_REWIND:J = 0x8L

.field public static final ACTION_SEEK_TO:J = 0x100L

.field public static final ACTION_SET_RATING:J = 0x80L

.field public static final ACTION_SET_REPEAT_MODE:J = 0x40000L

.field public static final ACTION_SET_SHUFFLE_MODE_ENABLED:J = 0x80000L

.field public static final ACTION_SKIP_TO_NEXT:J = 0x20L

.field public static final ACTION_SKIP_TO_PREVIOUS:J = 0x10L

.field public static final ACTION_SKIP_TO_QUEUE_ITEM:J = 0x1000L

.field public static final ACTION_STOP:J = 0x1L

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/media/session/PlaybackStateCompat;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_CODE_ACTION_ABORTED:I = 0xa

.field public static final ERROR_CODE_APP_ERROR:I = 0x1

.field public static final ERROR_CODE_AUTHENTICATION_EXPIRED:I = 0x3

.field public static final ERROR_CODE_CONCURRENT_STREAM_LIMIT:I = 0x5

.field public static final ERROR_CODE_CONTENT_ALREADY_PLAYING:I = 0x8

.field public static final ERROR_CODE_END_OF_QUEUE:I = 0xb

.field public static final ERROR_CODE_NOT_AVAILABLE_IN_REGION:I = 0x7

.field public static final ERROR_CODE_NOT_SUPPORTED:I = 0x2

.field public static final ERROR_CODE_PARENTAL_CONTROL_RESTRICTED:I = 0x6

.field public static final ERROR_CODE_PREMIUM_ACCOUNT_REQUIRED:I = 0x4

.field public static final ERROR_CODE_SKIP_LIMIT_REACHED:I = 0x9

.field public static final ERROR_CODE_UNKNOWN_ERROR:I = 0x0

.field private static final KEYCODE_MEDIA_PAUSE:I = 0x7f

.field private static final KEYCODE_MEDIA_PLAY:I = 0x7e

.field public static final PLAYBACK_POSITION_UNKNOWN:J = -0x1L

.field public static final REPEAT_MODE_ALL:I = 0x2

.field public static final REPEAT_MODE_NONE:I = 0x0

.field public static final REPEAT_MODE_ONE:I = 0x1

.field public static final STATE_BUFFERING:I = 0x6

.field public static final STATE_CONNECTING:I = 0x8

.field public static final STATE_ERROR:I = 0x7

.field public static final STATE_FAST_FORWARDING:I = 0x4

.field public static final STATE_NONE:I = 0x0

.field public static final STATE_PAUSED:I = 0x2

.field public static final STATE_PLAYING:I = 0x3

.field public static final STATE_REWINDING:I = 0x5

.field public static final STATE_SKIPPING_TO_NEXT:I = 0xa

.field public static final STATE_SKIPPING_TO_PREVIOUS:I = 0x9

.field public static final STATE_SKIPPING_TO_QUEUE_ITEM:I = 0xb

.field public static final STATE_STOPPED:I = 0x1


# instance fields
.field final mActions:J

.field final mActiveItemId:J

.field final mBufferedPosition:J

.field mCustomActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;",
            ">;"
        }
    .end annotation
.end field

.field final mErrorCode:I

.field final mErrorMessage:Ljava/lang/CharSequence;

.field final mExtras:Landroid/os/Bundle;

.field final mPosition:J

.field final mSpeed:F

.field final mState:I

.field private mStateObj:Ljava/lang/Object;

.field final mUpdateTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 779
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$1;-><init>()V

    sput-object v0, Landroid/support/v4/media/session/PlaybackStateCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJJFJILjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJFJI",
            "Ljava/lang/CharSequence;",
            "J",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;",
            ">;J",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 489
    move-object/from16 v3, p0

    move/from16 v4, p1

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    move/from16 v9, p6

    move-wide/from16 v10, p7

    move/from16 v12, p9

    move-object/from16 v13, p10

    move-wide/from16 v14, p11

    move-object/from16 v16, p13

    move-wide/from16 v17, p14

    move-object/from16 v19, p16

    move-object/from16 v20, v3

    invoke-direct/range {v20 .. v20}, Ljava/lang/Object;-><init>()V

    .line 490
    move-object/from16 v20, v3

    move/from16 v21, v4

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    .line 491
    move-object/from16 v20, v3

    move-wide/from16 v21, v5

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Landroid/support/v4/media/session/PlaybackStateCompat;->mPosition:J

    .line 492
    move-object/from16 v20, v3

    move-wide/from16 v21, v7

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Landroid/support/v4/media/session/PlaybackStateCompat;->mBufferedPosition:J

    .line 493
    move-object/from16 v20, v3

    move/from16 v21, v9

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->mSpeed:F

    .line 494
    move-object/from16 v20, v3

    move-wide/from16 v21, v10

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    .line 495
    move-object/from16 v20, v3

    move/from16 v21, v12

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorCode:I

    .line 496
    move-object/from16 v20, v3

    move-object/from16 v21, v13

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorMessage:Ljava/lang/CharSequence;

    .line 497
    move-object/from16 v20, v3

    move-wide/from16 v21, v14

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Landroid/support/v4/media/session/PlaybackStateCompat;->mUpdateTime:J

    .line 498
    move-object/from16 v20, v3

    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v24, v21

    move-object/from16 v21, v24

    move-object/from16 v22, v24

    move-object/from16 v23, v16

    invoke-direct/range {v22 .. v23}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->mCustomActions:Ljava/util/List;

    .line 499
    move-object/from16 v20, v3

    move-wide/from16 v21, v17

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Landroid/support/v4/media/session/PlaybackStateCompat;->mActiveItemId:J

    .line 500
    move-object/from16 v20, v3

    move-object/from16 v21, v19

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->mExtras:Landroid/os/Bundle;

    .line 501
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .prologue
    .line 503
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 504
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    .line 505
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/support/v4/media/session/PlaybackStateCompat;->mPosition:J

    .line 506
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    iput v3, v2, Landroid/support/v4/media/session/PlaybackStateCompat;->mSpeed:F

    .line 507
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/support/v4/media/session/PlaybackStateCompat;->mUpdateTime:J

    .line 508
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/support/v4/media/session/PlaybackStateCompat;->mBufferedPosition:J

    .line 509
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    .line 510
    move-object v2, v0

    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object v4, v1

    invoke-interface {v3, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iput-object v3, v2, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorMessage:Ljava/lang/CharSequence;

    .line 511
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/media/session/PlaybackStateCompat;->mCustomActions:Ljava/util/List;

    .line 512
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/support/v4/media/session/PlaybackStateCompat;->mActiveItemId:J

    .line 513
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/media/session/PlaybackStateCompat;->mExtras:Landroid/os/Bundle;

    .line 515
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorCode:I

    .line 516
    return-void
.end method

.method public static fromPlaybackState(Ljava/lang/Object;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 24

    .prologue
    .line 716
    move-object/from16 v0, p0

    move-object v5, v0

    if-eqz v5, :cond_0

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_1

    .line 717
    :cond_0
    const/4 v5, 0x0

    move-object v0, v5

    .line 744
    :goto_0
    return-object v0

    .line 720
    :cond_1
    move-object v5, v0

    invoke-static {v5}, Landroid/support/v4/media/session/PlaybackStateCompatApi21;->getCustomActions(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object v1, v5

    .line 721
    const/4 v5, 0x0

    move-object v2, v5

    .line 722
    move-object v5, v1

    if-eqz v5, :cond_2

    .line 723
    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v23, v5

    move-object/from16 v5, v23

    move-object/from16 v6, v23

    move-object v7, v1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v5

    .line 724
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_1
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 725
    move-object v5, v2

    move-object v6, v4

    invoke-static {v6}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->fromCustomAction(Ljava/lang/Object;)Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 726
    goto :goto_1

    .line 728
    :cond_2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x16

    if-lt v5, v6, :cond_3

    move-object v5, v0

    .line 729
    invoke-static {v5}, Landroid/support/v4/media/session/PlaybackStateCompatApi22;->getExtras(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v5

    :goto_2
    move-object v3, v5

    .line 731
    new-instance v5, Landroid/support/v4/media/session/PlaybackStateCompat;

    move-object/from16 v23, v5

    move-object/from16 v5, v23

    move-object/from16 v6, v23

    move-object v7, v0

    .line 732
    invoke-static {v7}, Landroid/support/v4/media/session/PlaybackStateCompatApi21;->getState(Ljava/lang/Object;)I

    move-result v7

    move-object v8, v0

    .line 733
    invoke-static {v8}, Landroid/support/v4/media/session/PlaybackStateCompatApi21;->getPosition(Ljava/lang/Object;)J

    move-result-wide v8

    move-object v10, v0

    .line 734
    invoke-static {v10}, Landroid/support/v4/media/session/PlaybackStateCompatApi21;->getBufferedPosition(Ljava/lang/Object;)J

    move-result-wide v10

    move-object v12, v0

    .line 735
    invoke-static {v12}, Landroid/support/v4/media/session/PlaybackStateCompatApi21;->getPlaybackSpeed(Ljava/lang/Object;)F

    move-result v12

    move-object v13, v0

    .line 736
    invoke-static {v13}, Landroid/support/v4/media/session/PlaybackStateCompatApi21;->getActions(Ljava/lang/Object;)J

    move-result-wide v13

    const/4 v15, 0x0

    move-object/from16 v16, v0

    .line 738
    invoke-static/range {v16 .. v16}, Landroid/support/v4/media/session/PlaybackStateCompatApi21;->getErrorMessage(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v16

    move-object/from16 v17, v0

    .line 739
    invoke-static/range {v17 .. v17}, Landroid/support/v4/media/session/PlaybackStateCompatApi21;->getLastPositionUpdateTime(Ljava/lang/Object;)J

    move-result-wide v17

    move-object/from16 v19, v2

    move-object/from16 v20, v0

    .line 741
    invoke-static/range {v20 .. v20}, Landroid/support/v4/media/session/PlaybackStateCompatApi21;->getActiveQueueItemId(Ljava/lang/Object;)J

    move-result-wide v20

    move-object/from16 v22, v3

    invoke-direct/range {v6 .. v22}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(IJJFJILjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V

    move-object v4, v5

    .line 743
    move-object v5, v4

    move-object v6, v0

    iput-object v6, v5, Landroid/support/v4/media/session/PlaybackStateCompat;->mStateObj:Ljava/lang/Object;

    .line 744
    move-object v5, v4

    move-object v0, v5

    goto/16 :goto_0

    .line 729
    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public static toKeyCode(J)I
    .locals 6

    .prologue
    .line 452
    move-wide v0, p0

    move-wide v2, v0

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 453
    const/16 v2, 0x7e

    move v0, v2

    .line 469
    :goto_0
    return v0

    .line 454
    :cond_0
    move-wide v2, v0

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 455
    const/16 v2, 0x7f

    move v0, v2

    goto :goto_0

    .line 456
    :cond_1
    move-wide v2, v0

    const-wide/16 v4, 0x20

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 457
    const/16 v2, 0x57

    move v0, v2

    goto :goto_0

    .line 458
    :cond_2
    move-wide v2, v0

    const-wide/16 v4, 0x10

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 459
    const/16 v2, 0x58

    move v0, v2

    goto :goto_0

    .line 460
    :cond_3
    move-wide v2, v0

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 461
    const/16 v2, 0x56

    move v0, v2

    goto :goto_0

    .line 462
    :cond_4
    move-wide v2, v0

    const-wide/16 v4, 0x40

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    .line 463
    const/16 v2, 0x5a

    move v0, v2

    goto :goto_0

    .line 464
    :cond_5
    move-wide v2, v0

    const-wide/16 v4, 0x8

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    .line 465
    const/16 v2, 0x59

    move v0, v2

    goto :goto_0

    .line 466
    :cond_6
    move-wide v2, v0

    const-wide/16 v4, 0x200

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    .line 467
    const/16 v2, 0x55

    move v0, v2

    goto :goto_0

    .line 469
    :cond_7
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .prologue
    .line 537
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public getActions()J
    .locals 3

    .prologue
    .line 632
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    move-wide v0, v1

    return-wide v0
.end method

.method public getActiveQueueItemId()J
    .locals 3

    .prologue
    .line 694
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->mActiveItemId:J

    move-wide v0, v1

    return-wide v0
.end method

.method public getBufferedPosition()J
    .locals 3

    .prologue
    .line 590
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->mBufferedPosition:J

    move-wide v0, v1

    return-wide v0
.end method

.method public getCustomActions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 639
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->mCustomActions:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method public getErrorCode()I
    .locals 2

    .prologue
    .line 662
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorCode:I

    move v0, v1

    return v0
.end method

.method public getErrorMessage()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 672
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorMessage:Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 703
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->mExtras:Landroid/os/Bundle;

    move-object v0, v1

    return-object v0
.end method

.method public getLastPositionUpdateTime()J
    .locals 3

    .prologue
    .line 682
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->mUpdateTime:J

    move-wide v0, v1

    return-wide v0
.end method

.method public getPlaybackSpeed()F
    .locals 2

    .prologue
    .line 601
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->mSpeed:F

    move v0, v1

    return v0
.end method

.method public getPlaybackState()Ljava/lang/Object;
    .locals 23

    .prologue
    .line 756
    move-object/from16 v2, p0

    move-object v6, v2

    iget-object v6, v6, Landroid/support/v4/media/session/PlaybackStateCompat;->mStateObj:Ljava/lang/Object;

    if-nez v6, :cond_0

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-ge v6, v7, :cond_1

    .line 757
    :cond_0
    move-object v6, v2

    iget-object v6, v6, Landroid/support/v4/media/session/PlaybackStateCompat;->mStateObj:Ljava/lang/Object;

    move-object v2, v6

    .line 776
    :goto_0
    return-object v2

    .line 760
    :cond_1
    const/4 v6, 0x0

    move-object v3, v6

    .line 761
    move-object v6, v2

    iget-object v6, v6, Landroid/support/v4/media/session/PlaybackStateCompat;->mCustomActions:Ljava/util/List;

    if-eqz v6, :cond_2

    .line 762
    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v22, v6

    move-object/from16 v6, v22

    move-object/from16 v7, v22

    move-object v8, v2

    iget-object v8, v8, Landroid/support/v4/media/session/PlaybackStateCompat;->mCustomActions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v6

    .line 763
    move-object v6, v2

    iget-object v6, v6, Landroid/support/v4/media/session/PlaybackStateCompat;->mCustomActions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_1
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    move-object v5, v6

    .line 764
    move-object v6, v3

    move-object v7, v5

    invoke-virtual {v7}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->getCustomAction()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 765
    goto :goto_1

    .line 767
    :cond_2
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x16

    if-lt v6, v7, :cond_3

    .line 768
    move-object v6, v2

    move-object v7, v2

    iget v7, v7, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    move-object v8, v2

    iget-wide v8, v8, Landroid/support/v4/media/session/PlaybackStateCompat;->mPosition:J

    move-object v10, v2

    iget-wide v10, v10, Landroid/support/v4/media/session/PlaybackStateCompat;->mBufferedPosition:J

    move-object v12, v2

    iget v12, v12, Landroid/support/v4/media/session/PlaybackStateCompat;->mSpeed:F

    move-object v13, v2

    iget-wide v13, v13, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    move-object v15, v2

    iget-object v15, v15, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorMessage:Ljava/lang/CharSequence;

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mUpdateTime:J

    move-wide/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mActiveItemId:J

    move-wide/from16 v19, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mExtras:Landroid/os/Bundle;

    move-object/from16 v21, v0

    invoke-static/range {v7 .. v21}, Landroid/support/v4/media/session/PlaybackStateCompatApi22;->newInstance(IJJFJLjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v6, Landroid/support/v4/media/session/PlaybackStateCompat;->mStateObj:Ljava/lang/Object;

    .line 776
    :goto_2
    move-object v6, v2

    iget-object v6, v6, Landroid/support/v4/media/session/PlaybackStateCompat;->mStateObj:Ljava/lang/Object;

    move-object v2, v6

    goto :goto_0

    .line 772
    :cond_3
    move-object v6, v2

    move-object v7, v2

    iget v7, v7, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    move-object v8, v2

    iget-wide v8, v8, Landroid/support/v4/media/session/PlaybackStateCompat;->mPosition:J

    move-object v10, v2

    iget-wide v10, v10, Landroid/support/v4/media/session/PlaybackStateCompat;->mBufferedPosition:J

    move-object v12, v2

    iget v12, v12, Landroid/support/v4/media/session/PlaybackStateCompat;->mSpeed:F

    move-object v13, v2

    iget-wide v13, v13, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    move-object v15, v2

    iget-object v15, v15, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorMessage:Ljava/lang/CharSequence;

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mUpdateTime:J

    move-wide/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->mActiveItemId:J

    move-wide/from16 v19, v0

    invoke-static/range {v7 .. v20}, Landroid/support/v4/media/session/PlaybackStateCompatApi21;->newInstance(IJJFJLjava/lang/CharSequence;JLjava/util/List;J)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v6, Landroid/support/v4/media/session/PlaybackStateCompat;->mStateObj:Ljava/lang/Object;

    goto :goto_2
.end method

.method public getPosition()J
    .locals 3

    .prologue
    .line 581
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->mPosition:J

    move-wide v0, v1

    return-wide v0
.end method

.method public getState()I
    .locals 2

    .prologue
    .line 574
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    move v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 520
    move-object v0, p0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "PlaybackState {"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 521
    move-object v2, v1

    const-string v3, "state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 522
    move-object v2, v1

    const-string v3, ", position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-wide v3, v3, Landroid/support/v4/media/session/PlaybackStateCompat;->mPosition:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 523
    move-object v2, v1

    const-string v3, ", buffered position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-wide v3, v3, Landroid/support/v4/media/session/PlaybackStateCompat;->mBufferedPosition:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 524
    move-object v2, v1

    const-string v3, ", speed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/media/session/PlaybackStateCompat;->mSpeed:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 525
    move-object v2, v1

    const-string v3, ", updated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-wide v3, v3, Landroid/support/v4/media/session/PlaybackStateCompat;->mUpdateTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 526
    move-object v2, v1

    const-string v3, ", actions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-wide v3, v3, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 527
    move-object v2, v1

    const-string v3, ", error code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 528
    move-object v2, v1

    const-string v3, ", error message="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorMessage:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 529
    move-object v2, v1

    const-string v3, ", custom actions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/PlaybackStateCompat;->mCustomActions:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 530
    move-object v2, v1

    const-string v3, ", active item id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-wide v3, v3, Landroid/support/v4/media/session/PlaybackStateCompat;->mActiveItemId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 531
    move-object v2, v1

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 532
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    .line 542
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Landroid/support/v4/media/session/PlaybackStateCompat;->mPosition:J

    invoke-virtual {v3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 544
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/media/session/PlaybackStateCompat;->mSpeed:F

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 545
    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Landroid/support/v4/media/session/PlaybackStateCompat;->mUpdateTime:J

    invoke-virtual {v3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 546
    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Landroid/support/v4/media/session/PlaybackStateCompat;->mBufferedPosition:J

    invoke-virtual {v3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 547
    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    invoke-virtual {v3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 548
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorMessage:Ljava/lang/CharSequence;

    move-object v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 549
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/PlaybackStateCompat;->mCustomActions:Ljava/util/List;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 550
    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Landroid/support/v4/media/session/PlaybackStateCompat;->mActiveItemId:J

    invoke-virtual {v3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 551
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/session/PlaybackStateCompat;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 553
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorCode:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 554
    return-void
.end method
