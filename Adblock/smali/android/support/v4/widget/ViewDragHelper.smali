.class public Landroid/support/v4/widget/ViewDragHelper;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/ViewDragHelper$Callback;
    }
.end annotation


# static fields
.field private static final BASE_SETTLE_DURATION:I = 0x100

.field public static final DIRECTION_ALL:I = 0x3

.field public static final DIRECTION_HORIZONTAL:I = 0x1

.field public static final DIRECTION_VERTICAL:I = 0x2

.field public static final EDGE_ALL:I = 0xf

.field public static final EDGE_BOTTOM:I = 0x8

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field private static final EDGE_SIZE:I = 0x14

.field public static final EDGE_TOP:I = 0x4

.field public static final INVALID_POINTER:I = -0x1

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewDragHelper"

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private final mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

.field private mCapturedView:Landroid/view/View;

.field private mDragState:I

.field private mEdgeDragsInProgress:[I

.field private mEdgeDragsLocked:[I

.field private mEdgeSize:I

.field private mInitialEdgesTouched:[I

.field private mInitialMotionX:[F

.field private mInitialMotionY:[F

.field private mLastMotionX:[F

.field private mLastMotionY:[F

.field private mMaxVelocity:F

.field private mMinVelocity:F

.field private final mParentView:Landroid/view/ViewGroup;

.field private mPointersDown:I

.field private mReleaseInProgress:Z

.field private mScroller:Landroid/support/v4/widget/ScrollerCompat;

.field private final mSetIdleRunnable:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTrackingEdges:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 327
    new-instance v0, Landroid/support/v4/widget/ViewDragHelper$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/widget/ViewDragHelper$1;-><init>()V

    sput-object v0, Landroid/support/v4/widget/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)V
    .locals 11

    .prologue
    .line 376
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 116
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    .line 335
    move-object v6, v0

    new-instance v7, Landroid/support/v4/widget/ViewDragHelper$2;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Landroid/support/v4/widget/ViewDragHelper$2;-><init>(Landroid/support/v4/widget/ViewDragHelper;)V

    iput-object v7, v6, Landroid/support/v4/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    .line 377
    move-object v6, v2

    if-nez v6, :cond_0

    .line 378
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "Parent view may not be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 380
    :cond_0
    move-object v6, v3

    if-nez v6, :cond_1

    .line 381
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "Callback may not be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 384
    :cond_1
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    .line 385
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 387
    move-object v6, v1

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    move-object v4, v6

    .line 388
    move-object v6, v1

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    move v5, v6

    .line 389
    move-object v6, v0

    const/high16 v7, 0x41a00000    # 20.0f

    move v8, v5

    mul-float/2addr v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/support/v4/widget/ViewDragHelper;->mEdgeSize:I

    .line 391
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    iput v7, v6, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    .line 392
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v7

    int-to-float v7, v7

    iput v7, v6, Landroid/support/v4/widget/ViewDragHelper;->mMaxVelocity:F

    .line 393
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v7

    int-to-float v7, v7

    iput v7, v6, Landroid/support/v4/widget/ViewDragHelper;->mMinVelocity:F

    .line 394
    move-object v6, v0

    move-object v7, v1

    sget-object v8, Landroid/support/v4/widget/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v7, v8}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v7

    iput-object v7, v6, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    .line 395
    return-void
.end method

.method private checkNewEdgeDrag(FFII)Z
    .locals 13

    .prologue
    .line 1269
    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v7, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    move v5, v7

    .line 1270
    move v7, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    move v6, v7

    .line 1272
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    move v8, v3

    aget v7, v7, v8

    move v8, v4

    and-int/2addr v7, v8

    move v8, v4

    if-ne v7, v8, :cond_0

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    move v8, v4

    and-int/2addr v7, v8

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    move v8, v3

    aget v7, v7, v8

    move v8, v4

    and-int/2addr v7, v8

    move v8, v4

    if-eq v7, v8, :cond_0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    move v8, v3

    aget v7, v7, v8

    move v8, v4

    and-int/2addr v7, v8

    move v8, v4

    if-eq v7, v8, :cond_0

    move v7, v5

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_1

    move v7, v6

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_1

    .line 1276
    :cond_0
    const/4 v7, 0x0

    move v0, v7

    .line 1282
    :goto_0
    return v0

    .line 1278
    :cond_1
    move v7, v5

    move v8, v6

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onEdgeLock(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1279
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    move v8, v3

    move-object v11, v7

    move v12, v8

    move-object v7, v11

    move v8, v12

    move-object v9, v11

    move v10, v12

    aget v9, v9, v10

    move v10, v4

    or-int/2addr v9, v10

    aput v9, v7, v8

    .line 1280
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 1282
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    move v8, v3

    aget v7, v7, v8

    move v8, v4

    and-int/2addr v7, v8

    if-nez v7, :cond_3

    move v7, v5

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    const/4 v7, 0x1

    :goto_1
    move v0, v7

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private checkTouchSlop(Landroid/view/View;FF)Z
    .locals 9

    .prologue
    .line 1296
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, v1

    if-nez v6, :cond_0

    .line 1297
    const/4 v6, 0x0

    move v0, v6

    .line 1309
    :goto_0
    return v0

    .line 1299
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v6

    if-lez v6, :cond_1

    const/4 v6, 0x1

    :goto_1
    move v4, v6

    .line 1300
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v6

    if-lez v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    move v5, v6

    .line 1302
    move v6, v4

    if-eqz v6, :cond_4

    move v6, v5

    if-eqz v6, :cond_4

    .line 1303
    move v6, v2

    move v7, v2

    mul-float/2addr v6, v7

    move v7, v3

    move v8, v3

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    mul-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    const/4 v6, 0x1

    :goto_3
    move v0, v6

    goto :goto_0

    .line 1299
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 1300
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 1303
    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    .line 1304
    :cond_4
    move v6, v4

    if-eqz v6, :cond_6

    .line 1305
    move v6, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    const/4 v6, 0x1

    :goto_4
    move v0, v6

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    goto :goto_4

    .line 1306
    :cond_6
    move v6, v5

    if-eqz v6, :cond_8

    .line 1307
    move v6, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_7

    const/4 v6, 0x1

    :goto_5
    move v0, v6

    goto :goto_0

    :cond_7
    const/4 v6, 0x0

    goto :goto_5

    .line 1309
    :cond_8
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method

.method private clampMag(FFF)F
    .locals 7

    .prologue
    .line 677
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move v4, v5

    .line 678
    move v5, v4

    move v6, v2

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    const/4 v5, 0x0

    move v0, v5

    .line 680
    :goto_0
    return v0

    .line 679
    :cond_0
    move v5, v4

    move v6, v3

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    move v5, v1

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    move v5, v3

    :goto_1
    move v0, v5

    goto :goto_0

    :cond_1
    move v5, v3

    neg-float v5, v5

    goto :goto_1

    .line 680
    :cond_2
    move v5, v1

    move v0, v5

    goto :goto_0
.end method

.method private clampMag(III)I
    .locals 7

    .prologue
    .line 660
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    move v4, v5

    .line 661
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_0

    const/4 v5, 0x0

    move v0, v5

    .line 663
    :goto_0
    return v0

    .line 662
    :cond_0
    move v5, v4

    move v6, v3

    if-le v5, v6, :cond_2

    move v5, v1

    if-lez v5, :cond_1

    move v5, v3

    :goto_1
    move v0, v5

    goto :goto_0

    :cond_1
    move v5, v3

    neg-int v5, v5

    goto :goto_1

    .line 663
    :cond_2
    move v5, v1

    move v0, v5

    goto :goto_0
.end method

.method private clearMotionHistory()V
    .locals 3

    .prologue
    .line 780
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    if-nez v1, :cond_0

    .line 791
    :goto_0
    return-void

    .line 783
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 784
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 785
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 786
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 787
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 788
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 789
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 790
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v4/widget/ViewDragHelper;->mPointersDown:I

    .line 791
    goto :goto_0
.end method

.method private clearMotionHistory(I)V
    .locals 7

    .prologue
    .line 794
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v2, :cond_0

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->isPointerDown(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 805
    :cond_0
    :goto_0
    return-void

    .line 797
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    move v3, v1

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 798
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    move v3, v1

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 799
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    move v3, v1

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 800
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    move v3, v1

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 801
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    move v3, v1

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 802
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    move v3, v1

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 803
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    move v3, v1

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 804
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Landroid/support/v4/widget/ViewDragHelper;->mPointersDown:I

    const/4 v4, 0x1

    move v5, v1

    shl-int/2addr v4, v5

    const/4 v5, -0x1

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    iput v3, v2, Landroid/support/v4/widget/ViewDragHelper;->mPointersDown:I

    .line 805
    goto :goto_0
.end method

.method private computeAxisDuration(III)I
    .locals 14

    .prologue
    .line 628
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move v10, v1

    if-nez v10, :cond_0

    .line 629
    const/4 v10, 0x0

    move v0, v10

    .line 646
    :goto_0
    return v0

    .line 632
    :cond_0
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getWidth()I

    move-result v10

    move v4, v10

    .line 633
    move v10, v4

    const/4 v11, 0x2

    div-int/lit8 v10, v10, 0x2

    move v5, v10

    .line 634
    const/high16 v10, 0x3f800000    # 1.0f

    move v11, v1

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-float v11, v11

    move v12, v4

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    move v6, v10

    .line 635
    move v10, v5

    int-to-float v10, v10

    move v11, v5

    int-to-float v11, v11

    move-object v12, v0

    move v13, v6

    .line 636
    invoke-direct {v12, v13}, Landroid/support/v4/widget/ViewDragHelper;->distanceInfluenceForSnapDuration(F)F

    move-result v12

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    move v7, v10

    .line 639
    move v10, v2

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    move v2, v10

    .line 640
    move v10, v2

    if-lez v10, :cond_1

    .line 641
    const/4 v10, 0x4

    const/high16 v11, 0x447a0000    # 1000.0f

    move v12, v7

    move v13, v2

    int-to-float v13, v13

    div-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    mul-int/2addr v10, v11

    move v8, v10

    .line 646
    :goto_1
    move v10, v8

    const/16 v11, 0x258

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    move v0, v10

    goto :goto_0

    .line 643
    :cond_1
    move v10, v1

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-float v10, v10

    move v11, v3

    int-to-float v11, v11

    div-float/2addr v10, v11

    move v9, v10

    .line 644
    move v10, v9

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v10, v11

    const/high16 v11, 0x43800000    # 256.0f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    move v8, v10

    goto :goto_1
.end method

.method private computeSettleDuration(Landroid/view/View;IIII)I
    .locals 22

    .prologue
    .line 607
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v17, v1

    move/from16 v18, v5

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mMinVelocity:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mMaxVelocity:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-direct/range {v17 .. v20}, Landroid/support/v4/widget/ViewDragHelper;->clampMag(III)I

    move-result v17

    move/from16 v5, v17

    .line 608
    move-object/from16 v17, v1

    move/from16 v18, v6

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mMinVelocity:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mMaxVelocity:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-direct/range {v17 .. v20}, Landroid/support/v4/widget/ViewDragHelper;->clampMag(III)I

    move-result v17

    move/from16 v6, v17

    .line 609
    move/from16 v17, v3

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v7, v17

    .line 610
    move/from16 v17, v4

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v8, v17

    .line 611
    move/from16 v17, v5

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v9, v17

    .line 612
    move/from16 v17, v6

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v10, v17

    .line 613
    move/from16 v17, v9

    move/from16 v18, v10

    add-int v17, v17, v18

    move/from16 v11, v17

    .line 614
    move/from16 v17, v7

    move/from16 v18, v8

    add-int v17, v17, v18

    move/from16 v12, v17

    .line 616
    move/from16 v17, v5

    if-eqz v17, :cond_0

    move/from16 v17, v9

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v18, v11

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    :goto_0
    move/from16 v13, v17

    .line 618
    move/from16 v17, v6

    if-eqz v17, :cond_1

    move/from16 v17, v10

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v18, v11

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    :goto_1
    move/from16 v14, v17

    .line 621
    move-object/from16 v17, v1

    move/from16 v18, v3

    move/from16 v19, v5

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    invoke-virtual/range {v20 .. v21}, Landroid/support/v4/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v20

    invoke-direct/range {v17 .. v20}, Landroid/support/v4/widget/ViewDragHelper;->computeAxisDuration(III)I

    move-result v17

    move/from16 v15, v17

    .line 622
    move-object/from16 v17, v1

    move/from16 v18, v4

    move/from16 v19, v6

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    invoke-virtual/range {v20 .. v21}, Landroid/support/v4/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v20

    invoke-direct/range {v17 .. v20}, Landroid/support/v4/widget/ViewDragHelper;->computeAxisDuration(III)I

    move-result v17

    move/from16 v16, v17

    .line 624
    move/from16 v17, v15

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v18, v13

    mul-float v17, v17, v18

    move/from16 v18, v16

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v14

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v1, v17

    return v1

    .line 616
    :cond_0
    move/from16 v17, v7

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v18, v12

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    goto :goto_0

    .line 618
    :cond_1
    move/from16 v17, v8

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v18, v12

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    goto :goto_1
.end method

.method public static create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;
    .locals 8

    .prologue
    .line 363
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v2

    invoke-static {v4, v5}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v4

    move-object v3, v4

    .line 364
    move-object v4, v3

    move-object v5, v3

    iget v5, v5, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    move v7, v1

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    .line 365
    move-object v4, v3

    move-object v0, v4

    return-object v0
.end method

.method public static create(Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;
    .locals 8

    .prologue
    .line 350
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/support/v4/widget/ViewDragHelper;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v4/widget/ViewDragHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)V

    move-object v0, v2

    return-object v0
.end method

.method private dispatchViewReleased(FF)V
    .locals 7

    .prologue
    .line 769
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v4/widget/ViewDragHelper;->mReleaseInProgress:Z

    .line 770
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move v5, v1

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    .line 771
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v4/widget/ViewDragHelper;->mReleaseInProgress:Z

    .line 773
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 775
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/ViewDragHelper;->setDragState(I)V

    .line 777
    :cond_0
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 6

    .prologue
    .line 684
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    move v1, v2

    .line 685
    move v2, v1

    float-to-double v2, v2

    const-wide v4, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v2, v4

    double-to-float v2, v2

    move v1, v2

    .line 686
    move v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    move v0, v2

    return v0
.end method

.method private dragTo(IIII)V
    .locals 17

    .prologue
    .line 1417
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v11, v1

    move v5, v11

    .line 1418
    move v11, v2

    move v6, v11

    .line 1419
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    move v7, v11

    .line 1420
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    move v8, v11

    .line 1421
    move v11, v3

    if-eqz v11, :cond_0

    .line 1422
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move v13, v1

    move v14, v3

    invoke-virtual {v11, v12, v13, v14}, Landroid/support/v4/widget/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result v11

    move v5, v11

    .line 1423
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move v12, v5

    move v13, v7

    sub-int/2addr v12, v13

    invoke-static {v11, v12}, Landroid/support/v4/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 1425
    :cond_0
    move v11, v4

    if-eqz v11, :cond_1

    .line 1426
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move v13, v2

    move v14, v4

    invoke-virtual {v11, v12, v13, v14}, Landroid/support/v4/widget/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result v11

    move v6, v11

    .line 1427
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move v12, v6

    move v13, v8

    sub-int/2addr v12, v13

    invoke-static {v11, v12}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1430
    :cond_1
    move v11, v3

    if-nez v11, :cond_2

    move v11, v4

    if-eqz v11, :cond_3

    .line 1431
    :cond_2
    move v11, v5

    move v12, v7

    sub-int/2addr v11, v12

    move v9, v11

    .line 1432
    move v11, v6

    move v12, v8

    sub-int/2addr v11, v12

    move v10, v11

    .line 1433
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move v13, v5

    move v14, v6

    move v15, v9

    move/from16 v16, v10

    invoke-virtual/range {v11 .. v16}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 1436
    :cond_3
    return-void
.end method

.method private ensureMotionHistorySizeForId(I)V
    .locals 14

    .prologue
    .line 808
    move-object v0, p0

    move v1, p1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v9, :cond_0

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    array-length v9, v9

    move v10, v1

    if-gt v9, v10, :cond_2

    .line 809
    :cond_0
    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    new-array v9, v9, [F

    move-object v2, v9

    .line 810
    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    new-array v9, v9, [F

    move-object v3, v9

    .line 811
    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    new-array v9, v9, [F

    move-object v4, v9

    .line 812
    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    new-array v9, v9, [F

    move-object v5, v9

    .line 813
    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    new-array v9, v9, [I

    move-object v6, v9

    .line 814
    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    new-array v9, v9, [I

    move-object v7, v9

    .line 815
    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    new-array v9, v9, [I

    move-object v8, v9

    .line 817
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v9, :cond_1

    .line 818
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    const/4 v10, 0x0

    move-object v11, v2

    const/4 v12, 0x0

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    array-length v13, v13

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 819
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    const/4 v10, 0x0

    move-object v11, v3

    const/4 v12, 0x0

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    array-length v13, v13

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 820
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    const/4 v10, 0x0

    move-object v11, v4

    const/4 v12, 0x0

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    array-length v13, v13

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 821
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    const/4 v10, 0x0

    move-object v11, v5

    const/4 v12, 0x0

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    array-length v13, v13

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 822
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    const/4 v10, 0x0

    move-object v11, v6

    const/4 v12, 0x0

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    array-length v13, v13

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 823
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    const/4 v10, 0x0

    move-object v11, v7

    const/4 v12, 0x0

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    array-length v13, v13

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 824
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    const/4 v10, 0x0

    move-object v11, v8

    const/4 v12, 0x0

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    array-length v13, v13

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 827
    :cond_1
    move-object v9, v0

    move-object v10, v2

    iput-object v10, v9, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    .line 828
    move-object v9, v0

    move-object v10, v3

    iput-object v10, v9, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    .line 829
    move-object v9, v0

    move-object v10, v4

    iput-object v10, v9, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    .line 830
    move-object v9, v0

    move-object v10, v5

    iput-object v10, v9, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    .line 831
    move-object v9, v0

    move-object v10, v6

    iput-object v10, v9, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    .line 832
    move-object v9, v0

    move-object v10, v7

    iput-object v10, v9, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    .line 833
    move-object v9, v0

    move-object v10, v8

    iput-object v10, v9, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    .line 835
    :cond_2
    return-void
.end method

.method private forceSettleCapturedViewAt(IIII)Z
    .locals 16

    .prologue
    .line 587
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    move v5, v10

    .line 588
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    move v6, v10

    .line 589
    move v10, v1

    move v11, v5

    sub-int/2addr v10, v11

    move v7, v10

    .line 590
    move v10, v2

    move v11, v6

    sub-int/2addr v10, v11

    move v8, v10

    .line 592
    move v10, v7

    if-nez v10, :cond_0

    move v10, v8

    if-nez v10, :cond_0

    .line 594
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v10}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 595
    move-object v10, v0

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v4/widget/ViewDragHelper;->setDragState(I)V

    .line 596
    const/4 v10, 0x0

    move v0, v10

    .line 603
    :goto_0
    return v0

    .line 599
    :cond_0
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move v12, v7

    move v13, v8

    move v14, v3

    move v15, v4

    invoke-direct/range {v10 .. v15}, Landroid/support/v4/widget/ViewDragHelper;->computeSettleDuration(Landroid/view/View;IIII)I

    move-result v10

    move v9, v10

    .line 600
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    move v11, v5

    move v12, v6

    move v13, v7

    move v14, v8

    move v15, v9

    invoke-virtual/range {v10 .. v15}, Landroid/support/v4/widget/ScrollerCompat;->startScroll(IIIII)V

    .line 602
    move-object v10, v0

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/support/v4/widget/ViewDragHelper;->setDragState(I)V

    .line 603
    const/4 v10, 0x1

    move v0, v10

    goto :goto_0
.end method

.method private getEdgesTouched(II)I
    .locals 7

    .prologue
    .line 1491
    move-object v0, p0

    move v1, p1

    move v2, p2

    const/4 v4, 0x0

    move v3, v4

    .line 1493
    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLeft()I

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/widget/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_0

    move v4, v3

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 1494
    :cond_0
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/widget/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_1

    move v4, v3

    const/4 v5, 0x4

    or-int/lit8 v4, v4, 0x4

    move v3, v4

    .line 1495
    :cond_1
    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getRight()I

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/widget/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_2

    move v4, v3

    const/4 v5, 0x2

    or-int/lit8 v4, v4, 0x2

    move v3, v4

    .line 1496
    :cond_2
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getBottom()I

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/widget/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_3

    move v4, v3

    const/16 v5, 0x8

    or-int/lit8 v4, v4, 0x8

    move v3, v4

    .line 1498
    :cond_3
    move v4, v3

    move v0, v4

    return v0
.end method

.method private isValidPointerForActionMove(I)Z
    .locals 6

    .prologue
    .line 1502
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->isPointerDown(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1503
    const-string v2, "ViewDragHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring pointerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " because ACTION_DOWN was not received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "for this pointer before ACTION_MOVE. It likely happened because "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ViewDragHelper did not receive all the events in the event stream."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1506
    const/4 v2, 0x0

    move v0, v2

    .line 1508
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method private releaseViewForPointerUp()V
    .locals 7

    .prologue
    .line 1406
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/widget/ViewDragHelper;->mMaxVelocity:F

    invoke-virtual {v3, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1407
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    .line 1408
    invoke-static {v4, v5}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v4

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/widget/ViewDragHelper;->mMinVelocity:F

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/widget/ViewDragHelper;->mMaxVelocity:F

    .line 1407
    invoke-direct {v3, v4, v5, v6}, Landroid/support/v4/widget/ViewDragHelper;->clampMag(FFF)F

    move-result v3

    move v1, v3

    .line 1410
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    .line 1411
    invoke-static {v4, v5}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v4

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/widget/ViewDragHelper;->mMinVelocity:F

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/widget/ViewDragHelper;->mMaxVelocity:F

    .line 1410
    invoke-direct {v3, v4, v5, v6}, Landroid/support/v4/widget/ViewDragHelper;->clampMag(FFF)F

    move-result v3

    move v2, v3

    .line 1413
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v4/widget/ViewDragHelper;->dispatchViewReleased(FF)V

    .line 1414
    return-void
.end method

.method private reportNewEdgeDrags(FFI)V
    .locals 12

    .prologue
    .line 1248
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    const/4 v5, 0x0

    move v4, v5

    .line 1249
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    const/4 v9, 0x1

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/support/v4/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1250
    move v5, v4

    const/4 v6, 0x1

    or-int/lit8 v5, v5, 0x1

    move v4, v5

    .line 1252
    :cond_0
    move-object v5, v0

    move v6, v2

    move v7, v1

    move v8, v3

    const/4 v9, 0x4

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/support/v4/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1253
    move v5, v4

    const/4 v6, 0x4

    or-int/lit8 v5, v5, 0x4

    move v4, v5

    .line 1255
    :cond_1
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    const/4 v9, 0x2

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/support/v4/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1256
    move v5, v4

    const/4 v6, 0x2

    or-int/lit8 v5, v5, 0x2

    move v4, v5

    .line 1258
    :cond_2
    move-object v5, v0

    move v6, v2

    move v7, v1

    move v8, v3

    const/16 v9, 0x8

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/support/v4/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1259
    move v5, v4

    const/16 v6, 0x8

    or-int/lit8 v5, v5, 0x8

    move v4, v5

    .line 1262
    :cond_3
    move v5, v4

    if-eqz v5, :cond_4

    .line 1263
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    move v6, v3

    move-object v10, v5

    move v11, v6

    move-object v5, v10

    move v6, v11

    move-object v7, v10

    move v8, v11

    aget v7, v7, v8

    move v8, v4

    or-int/2addr v7, v8

    aput v7, v5, v6

    .line 1264
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    move v6, v4

    move v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onEdgeDragStarted(II)V

    .line 1266
    :cond_4
    return-void
.end method

.method private saveInitialMotion(FFI)V
    .locals 13

    .prologue
    .line 838
    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object v4, v0

    move v5, v3

    invoke-direct {v4, v5}, Landroid/support/v4/widget/ViewDragHelper;->ensureMotionHistorySizeForId(I)V

    .line 839
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    move v7, v3

    move v8, v1

    move-object v10, v6

    move v11, v7

    move v12, v8

    move v6, v12

    move-object v7, v10

    move v8, v11

    move v9, v12

    aput v9, v7, v8

    aput v6, v4, v5

    .line 840
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    move v7, v3

    move v8, v2

    move-object v10, v6

    move v11, v7

    move v12, v8

    move v6, v12

    move-object v7, v10

    move v8, v11

    move v9, v12

    aput v9, v7, v8

    aput v6, v4, v5

    .line 841
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    move v5, v3

    move-object v6, v0

    move v7, v1

    float-to-int v7, v7

    move v8, v2

    float-to-int v8, v8

    invoke-direct {v6, v7, v8}, Landroid/support/v4/widget/ViewDragHelper;->getEdgesTouched(II)I

    move-result v6

    aput v6, v4, v5

    .line 842
    move-object v4, v0

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    iget v5, v5, Landroid/support/v4/widget/ViewDragHelper;->mPointersDown:I

    const/4 v6, 0x1

    move v7, v3

    shl-int/2addr v6, v7

    or-int/2addr v5, v6

    iput v5, v4, Landroid/support/v4/widget/ViewDragHelper;->mPointersDown:I

    .line 843
    return-void
.end method

.method private saveLastMotion(Landroid/view/MotionEvent;)V
    .locals 10

    .prologue
    .line 846
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    move v2, v7

    .line 847
    const/4 v7, 0x0

    move v3, v7

    :goto_0
    move v7, v3

    move v8, v2

    if-ge v7, v8, :cond_1

    .line 848
    move-object v7, v1

    move v8, v3

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    move v4, v7

    .line 850
    move-object v7, v0

    move v8, v4

    invoke-direct {v7, v8}, Landroid/support/v4/widget/ViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 847
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 853
    :cond_0
    move-object v7, v1

    move v8, v3

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    move v5, v7

    .line 854
    move-object v7, v1

    move v8, v3

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    move v6, v7

    .line 855
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    move v8, v4

    move v9, v5

    aput v9, v7, v8

    .line 856
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    move v8, v4

    move v9, v6

    aput v9, v7, v8

    goto :goto_1

    .line 858
    :cond_1
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 12

    .prologue
    .line 515
    move-object v0, p0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 516
    move-object v5, v0

    iget v5, v5, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 517
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v5}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v5

    move v1, v5

    .line 518
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v5}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v5

    move v2, v5

    .line 519
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v5}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 520
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v5}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v5

    move v3, v5

    .line 521
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v5}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v5

    move v4, v5

    .line 522
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move v7, v3

    move v8, v4

    move v9, v3

    move v10, v1

    sub-int/2addr v9, v10

    move v10, v4

    move v11, v2

    sub-int/2addr v10, v11

    invoke-virtual/range {v5 .. v10}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 524
    :cond_0
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/ViewDragHelper;->setDragState(I)V

    .line 525
    return-void
.end method

.method protected canScroll(Landroid/view/View;ZIIII)Z
    .locals 21

    .prologue
    .line 923
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v13, v1

    instance-of v13, v13, Landroid/view/ViewGroup;

    if-eqz v13, :cond_1

    .line 924
    move-object v13, v1

    check-cast v13, Landroid/view/ViewGroup;

    move-object v7, v13

    .line 925
    move-object v13, v1

    invoke-virtual {v13}, Landroid/view/View;->getScrollX()I

    move-result v13

    move v8, v13

    .line 926
    move-object v13, v1

    invoke-virtual {v13}, Landroid/view/View;->getScrollY()I

    move-result v13

    move v9, v13

    .line 927
    move-object v13, v7

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    move v10, v13

    .line 929
    move v13, v10

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    move v11, v13

    :goto_0
    move v13, v11

    if-ltz v13, :cond_1

    .line 932
    move-object v13, v7

    move v14, v11

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    move-object v12, v13

    .line 933
    move v13, v5

    move v14, v8

    add-int/2addr v13, v14

    move-object v14, v12

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v14

    if-lt v13, v14, :cond_0

    move v13, v5

    move v14, v8

    add-int/2addr v13, v14

    move-object v14, v12

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v14

    if-ge v13, v14, :cond_0

    move v13, v6

    move v14, v9

    add-int/2addr v13, v14

    move-object v14, v12

    .line 934
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v14

    if-lt v13, v14, :cond_0

    move v13, v6

    move v14, v9

    add-int/2addr v13, v14

    move-object v14, v12

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v14

    if-ge v13, v14, :cond_0

    move-object v13, v0

    move-object v14, v12

    const/4 v15, 0x1

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v8

    add-int v18, v18, v19

    move-object/from16 v19, v12

    .line 935
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLeft()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v19, v6

    move/from16 v20, v9

    add-int v19, v19, v20

    move-object/from16 v20, v12

    .line 936
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v19, v19, v20

    .line 935
    invoke-virtual/range {v13 .. v19}, Landroid/support/v4/widget/ViewDragHelper;->canScroll(Landroid/view/View;ZIIII)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 937
    const/4 v13, 0x1

    move v0, v13

    .line 943
    :goto_1
    return v0

    .line 929
    :cond_0
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    .line 942
    :cond_1
    move v13, v2

    if-eqz v13, :cond_3

    move-object v13, v1

    move v14, v3

    neg-int v14, v14

    invoke-static {v13, v14}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v13

    if-nez v13, :cond_2

    move-object v13, v1

    move v14, v4

    neg-int v14, v14

    .line 943
    invoke-static {v13, v14}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v13

    if-eqz v13, :cond_3

    :cond_2
    const/4 v13, 0x1

    :goto_2
    move v0, v13

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    goto :goto_2
.end method

.method public cancel()V
    .locals 3

    .prologue
    .line 501
    move-object v0, p0

    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    .line 502
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/widget/ViewDragHelper;->clearMotionHistory()V

    .line 504
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    .line 505
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 506
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 508
    :cond_0
    return-void
.end method

.method public captureChildView(Landroid/view/View;I)V
    .locals 8

    .prologue
    .line 463
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    if-eq v3, v4, :cond_0

    .line 464
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 468
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 469
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    .line 470
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewCaptured(Landroid/view/View;I)V

    .line 471
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/ViewDragHelper;->setDragState(I)V

    .line 472
    return-void
.end method

.method public checkTouchSlop(I)Z
    .locals 7

    .prologue
    .line 1327
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    array-length v4, v4

    move v2, v4

    .line 1328
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 1329
    move-object v4, v0

    move v5, v1

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/widget/ViewDragHelper;->checkTouchSlop(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1330
    const/4 v4, 0x1

    move v0, v4

    .line 1333
    :goto_1
    return v0

    .line 1328
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1333
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method public checkTouchSlop(II)Z
    .locals 10

    .prologue
    .line 1352
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v7, v0

    move v8, v2

    invoke-virtual {v7, v8}, Landroid/support/v4/widget/ViewDragHelper;->isPointerDown(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1353
    const/4 v7, 0x0

    move v0, v7

    .line 1369
    :goto_0
    return v0

    .line 1356
    :cond_0
    move v7, v1

    const/4 v8, 0x1

    and-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    const/4 v7, 0x1

    :goto_1
    move v3, v7

    .line 1357
    move v7, v1

    const/4 v8, 0x2

    and-int/lit8 v7, v7, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    const/4 v7, 0x1

    :goto_2
    move v4, v7

    .line 1359
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    move v8, v2

    aget v7, v7, v8

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    move v9, v2

    aget v8, v8, v9

    sub-float/2addr v7, v8

    move v5, v7

    .line 1360
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    move v8, v2

    aget v7, v7, v8

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    move v9, v2

    aget v8, v8, v9

    sub-float/2addr v7, v8

    move v6, v7

    .line 1362
    move v7, v3

    if-eqz v7, :cond_4

    move v7, v4

    if-eqz v7, :cond_4

    .line 1363
    move v7, v5

    move v8, v5

    mul-float/2addr v7, v8

    move v8, v6

    move v9, v6

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    mul-int/2addr v8, v9

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    const/4 v7, 0x1

    :goto_3
    move v0, v7

    goto :goto_0

    .line 1356
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 1357
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 1363
    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    .line 1364
    :cond_4
    move v7, v3

    if-eqz v7, :cond_6

    .line 1365
    move v7, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_5

    const/4 v7, 0x1

    :goto_4
    move v0, v7

    goto :goto_0

    :cond_5
    const/4 v7, 0x0

    goto :goto_4

    .line 1366
    :cond_6
    move v7, v4

    if-eqz v7, :cond_8

    .line 1367
    move v7, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_7

    const/4 v7, 0x1

    :goto_5
    move v0, v7

    goto :goto_0

    :cond_7
    const/4 v7, 0x0

    goto :goto_5

    .line 1369
    :cond_8
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0
.end method

.method public continueSettling(Z)Z
    .locals 13

    .prologue
    .line 725
    move-object v0, p0

    move v1, p1

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 726
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v7}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v7

    move v2, v7

    .line 727
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v7}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v7

    move v3, v7

    .line 728
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v7}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v7

    move v4, v7

    .line 729
    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 730
    move v7, v4

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    move v6, v7

    .line 732
    move v7, v5

    if-eqz v7, :cond_0

    .line 733
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move v8, v5

    invoke-static {v7, v8}, Landroid/support/v4/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 735
    :cond_0
    move v7, v6

    if-eqz v7, :cond_1

    .line 736
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move v8, v6

    invoke-static {v7, v8}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 739
    :cond_1
    move v7, v5

    if-nez v7, :cond_2

    move v7, v6

    if-eqz v7, :cond_3

    .line 740
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move v9, v3

    move v10, v4

    move v11, v5

    move v12, v6

    invoke-virtual/range {v7 .. v12}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 743
    :cond_3
    move v7, v2

    if-eqz v7, :cond_4

    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v8}, Landroid/support/v4/widget/ScrollerCompat;->getFinalX()I

    move-result v8

    if-ne v7, v8, :cond_4

    move v7, v4

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v8}, Landroid/support/v4/widget/ScrollerCompat;->getFinalY()I

    move-result v8

    if-ne v7, v8, :cond_4

    .line 746
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v7}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 747
    const/4 v7, 0x0

    move v2, v7

    .line 750
    :cond_4
    move v7, v2

    if-nez v7, :cond_5

    .line 751
    move v7, v1

    if-eqz v7, :cond_6

    .line 752
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    move-result v7

    .line 759
    :cond_5
    :goto_0
    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_7

    const/4 v7, 0x1

    :goto_1
    move v0, v7

    return v0

    .line 754
    :cond_6
    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/v4/widget/ViewDragHelper;->setDragState(I)V

    goto :goto_0

    .line 759
    :cond_7
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public findTopChildUnder(II)Landroid/view/View;
    .locals 9

    .prologue
    .line 1479
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v3, v6

    .line 1480
    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v4, v6

    :goto_0
    move v6, v4

    if-ltz v6, :cond_1

    .line 1481
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/support/v4/widget/ViewDragHelper$Callback;->getOrderedChildIndex(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    .line 1482
    move v6, v1

    move-object v7, v5

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    if-lt v6, v7, :cond_0

    move v6, v1

    move-object v7, v5

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    if-ge v6, v7, :cond_0

    move v6, v2

    move-object v7, v5

    .line 1483
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    if-lt v6, v7, :cond_0

    move v6, v2

    move-object v7, v5

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 1484
    move-object v6, v5

    move-object v0, v6

    .line 1487
    :goto_1
    return-object v0

    .line 1480
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1487
    :cond_1
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method

.method public flingCapturedView(IIII)V
    .locals 15

    .prologue
    .line 700
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v4/widget/ViewDragHelper;->mReleaseInProgress:Z

    if-nez v5, :cond_0

    .line 701
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v14, v5

    move-object v5, v14

    move-object v6, v14

    const-string v7, "Cannot flingCapturedView outside of a call to Callback#onViewReleased"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 705
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    .line 706
    invoke-static {v8, v9}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v8

    float-to-int v8, v8

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    .line 707
    invoke-static {v9, v10}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v9

    float-to-int v9, v9

    move v10, v1

    move v11, v3

    move v12, v2

    move v13, v4

    .line 705
    invoke-virtual/range {v5 .. v13}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIII)V

    .line 710
    move-object v5, v0

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/ViewDragHelper;->setDragState(I)V

    .line 711
    return-void
.end method

.method public getActivePointerId()I
    .locals 2

    .prologue
    .line 486
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    move v0, v1

    return v0
.end method

.method public getCapturedView()Landroid/view/View;
    .locals 2

    .prologue
    .line 478
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object v0, v1

    return-object v0
.end method

.method public getEdgeSize()I
    .locals 2

    .prologue
    .line 451
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/ViewDragHelper;->mEdgeSize:I

    move v0, v1

    return v0
.end method

.method public getMinVelocity()F
    .locals 2

    .prologue
    .line 415
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/ViewDragHelper;->mMinVelocity:F

    move v0, v1

    return v0
.end method

.method public getTouchSlop()I
    .locals 2

    .prologue
    .line 493
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    move v0, v1

    return v0
.end method

.method public getViewDragState()I
    .locals 2

    .prologue
    .line 424
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    move v0, v1

    return v0
.end method

.method public isCapturedViewUnder(II)Z
    .locals 7

    .prologue
    .line 1448
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move v5, v1

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public isEdgeTouched(I)Z
    .locals 7

    .prologue
    .line 1382
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    array-length v4, v4

    move v2, v4

    .line 1383
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 1384
    move-object v4, v0

    move v5, v1

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/widget/ViewDragHelper;->isEdgeTouched(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1385
    const/4 v4, 0x1

    move v0, v4

    .line 1388
    :goto_1
    return v0

    .line 1383
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1388
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method public isEdgeTouched(II)Z
    .locals 5

    .prologue
    .line 1402
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/ViewDragHelper;->isPointerDown(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    move v4, v2

    aget v3, v3, v4

    move v4, v1

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isPointerDown(I)Z
    .locals 5

    .prologue
    .line 874
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/widget/ViewDragHelper;->mPointersDown:I

    const/4 v3, 0x1

    move v4, v1

    shl-int/2addr v3, v4

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isViewUnder(Landroid/view/View;II)Z
    .locals 6

    .prologue
    .line 1461
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v1

    if-nez v4, :cond_0

    .line 1462
    const/4 v4, 0x0

    move v0, v4

    .line 1467
    :goto_0
    return v0

    .line 1464
    :cond_0
    move v4, v2

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    if-lt v4, v5, :cond_1

    move v4, v2

    move-object v5, v1

    .line 1465
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    if-ge v4, v5, :cond_1

    move v4, v3

    move-object v5, v1

    .line 1466
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    if-lt v4, v5, :cond_1

    move v4, v3

    move-object v5, v1

    .line 1467
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ge v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)V
    .locals 17

    .prologue
    .line 1090
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v12, v1

    invoke-static {v12}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v12

    move v2, v12

    .line 1091
    move-object v12, v1

    invoke-static {v12}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v12

    move v3, v12

    .line 1093
    move v12, v2

    if-nez v12, :cond_0

    .line 1096
    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 1099
    :cond_0
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v12, :cond_1

    .line 1100
    move-object v12, v0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v13

    iput-object v13, v12, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1102
    :cond_1
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v13, v1

    invoke-virtual {v12, v13}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1104
    move v12, v2

    packed-switch v12, :pswitch_data_0

    .line 1245
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 1106
    :pswitch_1
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    move v4, v12

    .line 1107
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    move v5, v12

    .line 1108
    move-object v12, v1

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    move v6, v12

    .line 1109
    move-object v12, v0

    move v13, v4

    float-to-int v13, v13

    move v14, v5

    float-to-int v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v12

    move-object v7, v12

    .line 1111
    move-object v12, v0

    move v13, v4

    move v14, v5

    move v15, v6

    invoke-direct {v12, v13, v14, v15}, Landroid/support/v4/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1116
    move-object v12, v0

    move-object v13, v7

    move v14, v6

    invoke-virtual {v12, v13, v14}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v12

    .line 1118
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    move v13, v6

    aget v12, v12, v13

    move v8, v12

    .line 1119
    move v12, v8

    move-object v13, v0

    iget v13, v13, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_2

    .line 1120
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    move v13, v8

    move-object v14, v0

    iget v14, v14, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v13, v14

    move v14, v6

    invoke-virtual {v12, v13, v14}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_0

    .line 1126
    :pswitch_2
    move-object v12, v1

    move v13, v3

    invoke-virtual {v12, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    move v4, v12

    .line 1127
    move-object v12, v1

    move v13, v3

    invoke-virtual {v12, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    move v5, v12

    .line 1128
    move-object v12, v1

    move v13, v3

    invoke-virtual {v12, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    move v6, v12

    .line 1130
    move-object v12, v0

    move v13, v5

    move v14, v6

    move v15, v4

    invoke-direct {v12, v13, v14, v15}, Landroid/support/v4/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1133
    move-object v12, v0

    iget v12, v12, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    if-nez v12, :cond_4

    .line 1136
    move-object v12, v0

    move v13, v5

    float-to-int v13, v13

    move v14, v6

    float-to-int v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v12

    move-object v7, v12

    .line 1137
    move-object v12, v0

    move-object v13, v7

    move v14, v4

    invoke-virtual {v12, v13, v14}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v12

    .line 1139
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    move v13, v4

    aget v12, v12, v13

    move v8, v12

    .line 1140
    move v12, v8

    move-object v13, v0

    iget v13, v13, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_3

    .line 1141
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    move v13, v8

    move-object v14, v0

    iget v14, v14, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v13, v14

    move v14, v4

    invoke-virtual {v12, v13, v14}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    .line 1143
    :cond_3
    goto/16 :goto_0

    :cond_4
    move-object v12, v0

    move v13, v5

    float-to-int v13, v13

    move v14, v6

    float-to-int v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/support/v4/widget/ViewDragHelper;->isCapturedViewUnder(II)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1148
    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move v14, v4

    invoke-virtual {v12, v13, v14}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v12

    goto/16 :goto_0

    .line 1154
    :pswitch_3
    move-object v12, v0

    iget v12, v12, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    .line 1156
    move-object v12, v0

    move-object v13, v0

    iget v13, v13, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    invoke-direct {v12, v13}, Landroid/support/v4/widget/ViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v12

    if-nez v12, :cond_5

    goto/16 :goto_0

    .line 1158
    :cond_5
    move-object v12, v1

    move-object v13, v0

    iget v13, v13, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    invoke-virtual {v12, v13}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    move v4, v12

    .line 1159
    move-object v12, v1

    move v13, v4

    invoke-virtual {v12, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    move v5, v12

    .line 1160
    move-object v12, v1

    move v13, v4

    invoke-virtual {v12, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    move v6, v12

    .line 1161
    move v12, v5

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F

    move-object v14, v0

    iget v14, v14, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    aget v13, v13, v14

    sub-float/2addr v12, v13

    float-to-int v12, v12

    move v7, v12

    .line 1162
    move v12, v6

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F

    move-object v14, v0

    iget v14, v14, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    aget v13, v13, v14

    sub-float/2addr v12, v13

    float-to-int v12, v12

    move v8, v12

    .line 1164
    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    move v14, v7

    add-int/2addr v13, v14

    move-object v14, v0

    iget-object v14, v14, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v14

    move v15, v8

    add-int/2addr v14, v15

    move v15, v7

    move/from16 v16, v8

    invoke-direct/range {v12 .. v16}, Landroid/support/v4/widget/ViewDragHelper;->dragTo(IIII)V

    .line 1166
    move-object v12, v0

    move-object v13, v1

    invoke-direct {v12, v13}, Landroid/support/v4/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    .line 1167
    goto/16 :goto_0

    .line 1169
    :cond_6
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v12

    move v4, v12

    .line 1170
    const/4 v12, 0x0

    move v5, v12

    :goto_1
    move v12, v5

    move v13, v4

    if-ge v12, v13, :cond_9

    .line 1171
    move-object v12, v1

    move v13, v5

    invoke-virtual {v12, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    move v6, v12

    .line 1174
    move-object v12, v0

    move v13, v6

    invoke-direct {v12, v13}, Landroid/support/v4/widget/ViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v12

    if-nez v12, :cond_8

    .line 1170
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1176
    :cond_8
    move-object v12, v1

    move v13, v5

    invoke-virtual {v12, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    move v7, v12

    .line 1177
    move-object v12, v1

    move v13, v5

    invoke-virtual {v12, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    move v8, v12

    .line 1178
    move v12, v7

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    move v14, v6

    aget v13, v13, v14

    sub-float/2addr v12, v13

    move v9, v12

    .line 1179
    move v12, v8

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    move v14, v6

    aget v13, v13, v14

    sub-float/2addr v12, v13

    move v10, v12

    .line 1181
    move-object v12, v0

    move v13, v9

    move v14, v10

    move v15, v6

    invoke-direct {v12, v13, v14, v15}, Landroid/support/v4/widget/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    .line 1182
    move-object v12, v0

    iget v12, v12, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_a

    .line 1193
    :cond_9
    :goto_2
    move-object v12, v0

    move-object v13, v1

    invoke-direct {v12, v13}, Landroid/support/v4/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    .line 1195
    goto/16 :goto_0

    .line 1187
    :cond_a
    move-object v12, v0

    move v13, v7

    float-to-int v13, v13

    move v14, v8

    float-to-int v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v12

    move-object v11, v12

    .line 1188
    move-object v12, v0

    move-object v13, v11

    move v14, v9

    move v15, v10

    invoke-direct {v12, v13, v14, v15}, Landroid/support/v4/widget/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v12

    if-eqz v12, :cond_7

    move-object v12, v0

    move-object v13, v11

    move v14, v6

    .line 1189
    invoke-virtual {v12, v13, v14}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1190
    goto :goto_2

    .line 1199
    :pswitch_4
    move-object v12, v1

    move v13, v3

    invoke-virtual {v12, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    move v4, v12

    .line 1200
    move-object v12, v0

    iget v12, v12, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_e

    move v12, v4

    move-object v13, v0

    iget v13, v13, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    if-ne v12, v13, :cond_e

    .line 1202
    const/4 v12, -0x1

    move v5, v12

    .line 1203
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v12

    move v6, v12

    .line 1204
    const/4 v12, 0x0

    move v7, v12

    :goto_3
    move v12, v7

    move v13, v6

    if-ge v12, v13, :cond_d

    .line 1205
    move-object v12, v1

    move v13, v7

    invoke-virtual {v12, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    move v8, v12

    .line 1206
    move v12, v8

    move-object v13, v0

    iget v13, v13, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    if-ne v12, v13, :cond_c

    .line 1204
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1211
    :cond_c
    move-object v12, v1

    move v13, v7

    invoke-virtual {v12, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    move v9, v12

    .line 1212
    move-object v12, v1

    move v13, v7

    invoke-virtual {v12, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    move v10, v12

    .line 1213
    move-object v12, v0

    move v13, v9

    float-to-int v13, v13

    move v14, v10

    float-to-int v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v12, v13, :cond_b

    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move v14, v8

    .line 1214
    invoke-virtual {v12, v13, v14}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1215
    move-object v12, v0

    iget v12, v12, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    move v5, v12

    .line 1220
    :cond_d
    move v12, v5

    const/4 v13, -0x1

    if-ne v12, v13, :cond_e

    .line 1222
    move-object v12, v0

    invoke-direct {v12}, Landroid/support/v4/widget/ViewDragHelper;->releaseViewForPointerUp()V

    .line 1225
    :cond_e
    move-object v12, v0

    move v13, v4

    invoke-direct {v12, v13}, Landroid/support/v4/widget/ViewDragHelper;->clearMotionHistory(I)V

    .line 1226
    goto/16 :goto_0

    .line 1230
    :pswitch_5
    move-object v12, v0

    iget v12, v12, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_f

    .line 1231
    move-object v12, v0

    invoke-direct {v12}, Landroid/support/v4/widget/ViewDragHelper;->releaseViewForPointerUp()V

    .line 1233
    :cond_f
    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 1234
    goto/16 :goto_0

    .line 1238
    :pswitch_6
    move-object v12, v0

    iget v12, v12, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_10

    .line 1239
    move-object v12, v0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Landroid/support/v4/widget/ViewDragHelper;->dispatchViewReleased(FF)V

    .line 1241
    :cond_10
    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    goto/16 :goto_0

    .line 1104
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method setDragState(I)V
    .locals 4

    .prologue
    .line 878
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    .line 879
    move-object v2, v0

    iget v2, v2, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 880
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    .line 881
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewDragStateChanged(I)V

    .line 882
    move-object v2, v0

    iget v2, v2, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    if-nez v2, :cond_0

    .line 883
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 886
    :cond_0
    return-void
.end method

.method public setEdgeTrackingEnabled(I)V
    .locals 4

    .prologue
    .line 440
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    .line 441
    return-void
.end method

.method public setMinVelocity(F)V
    .locals 4

    .prologue
    .line 404
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/widget/ViewDragHelper;->mMinVelocity:F

    .line 405
    return-void
.end method

.method public settleCapturedViewAt(II)Z
    .locals 10

    .prologue
    .line 567
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/widget/ViewDragHelper;->mReleaseInProgress:Z

    if-nez v3, :cond_0

    .line 568
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const-string v5, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 572
    :cond_0
    move-object v3, v0

    move v4, v1

    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    .line 573
    invoke-static {v6, v7}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v6

    float-to-int v6, v6

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    .line 574
    invoke-static {v7, v8}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v7

    float-to-int v7, v7

    .line 572
    invoke-direct {v3, v4, v5, v6, v7}, Landroid/support/v4/widget/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 27

    .prologue
    .line 954
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v23, v3

    invoke-static/range {v23 .. v23}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v23

    move/from16 v4, v23

    .line 955
    move-object/from16 v23, v3

    invoke-static/range {v23 .. v23}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v23

    move/from16 v5, v23

    .line 957
    move/from16 v23, v4

    if-nez v23, :cond_0

    .line 960
    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 963
    :cond_0
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    if-nez v23, :cond_1

    .line 964
    move-object/from16 v23, v2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 966
    :cond_1
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    move-object/from16 v24, v3

    invoke-virtual/range {v23 .. v24}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 968
    move/from16 v23, v4

    packed-switch v23, :pswitch_data_0

    .line 1080
    :cond_2
    :goto_0
    :pswitch_0
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_f

    const/16 v23, 0x1

    :goto_1
    move/from16 v2, v23

    return v2

    .line 970
    :pswitch_1
    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    move/from16 v6, v23

    .line 971
    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Landroid/view/MotionEvent;->getY()F

    move-result v23

    move/from16 v7, v23

    .line 972
    move-object/from16 v23, v3

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v23

    move/from16 v8, v23

    .line 973
    move-object/from16 v23, v2

    move/from16 v24, v6

    move/from16 v25, v7

    move/from16 v26, v8

    invoke-direct/range {v23 .. v26}, Landroid/support/v4/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 975
    move-object/from16 v23, v2

    move/from16 v24, v6

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v25, v7

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v23

    move-object/from16 v9, v23

    .line 978
    move-object/from16 v23, v9

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_3

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 979
    move-object/from16 v23, v2

    move-object/from16 v24, v9

    move/from16 v25, v8

    invoke-virtual/range {v23 .. v25}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v23

    .line 982
    :cond_3
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    move-object/from16 v23, v0

    move/from16 v24, v8

    aget v23, v23, v24

    move/from16 v10, v23

    .line 983
    move/from16 v23, v10

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    move/from16 v24, v0

    and-int v23, v23, v24

    if-eqz v23, :cond_2

    .line 984
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    move-object/from16 v23, v0

    move/from16 v24, v10

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    move/from16 v25, v0

    and-int v24, v24, v25

    move/from16 v25, v8

    invoke-virtual/range {v23 .. v25}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto/16 :goto_0

    .line 990
    :pswitch_2
    move-object/from16 v23, v3

    move/from16 v24, v5

    invoke-virtual/range {v23 .. v24}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v23

    move/from16 v6, v23

    .line 991
    move-object/from16 v23, v3

    move/from16 v24, v5

    invoke-virtual/range {v23 .. v24}, Landroid/view/MotionEvent;->getX(I)F

    move-result v23

    move/from16 v7, v23

    .line 992
    move-object/from16 v23, v3

    move/from16 v24, v5

    invoke-virtual/range {v23 .. v24}, Landroid/view/MotionEvent;->getY(I)F

    move-result v23

    move/from16 v8, v23

    .line 994
    move-object/from16 v23, v2

    move/from16 v24, v7

    move/from16 v25, v8

    move/from16 v26, v6

    invoke-direct/range {v23 .. v26}, Landroid/support/v4/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 997
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    move/from16 v23, v0

    if-nez v23, :cond_5

    .line 998
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    move-object/from16 v23, v0

    move/from16 v24, v6

    aget v23, v23, v24

    move/from16 v9, v23

    .line 999
    move/from16 v23, v9

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    move/from16 v24, v0

    and-int v23, v23, v24

    if-eqz v23, :cond_4

    .line 1000
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    move-object/from16 v23, v0

    move/from16 v24, v9

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I

    move/from16 v25, v0

    and-int v24, v24, v25

    move/from16 v25, v6

    invoke-virtual/range {v23 .. v25}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    .line 1002
    :cond_4
    goto/16 :goto_0

    :cond_5
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 1004
    move-object/from16 v23, v2

    move/from16 v24, v7

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v25, v8

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v23

    move-object/from16 v9, v23

    .line 1005
    move-object/from16 v23, v9

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 1006
    move-object/from16 v23, v2

    move-object/from16 v24, v9

    move/from16 v25, v6

    invoke-virtual/range {v23 .. v25}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v23

    .line 1008
    :cond_6
    goto/16 :goto_0

    .line 1013
    :pswitch_3
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    move-object/from16 v23, v0

    if-nez v23, :cond_7

    goto/16 :goto_0

    .line 1016
    :cond_7
    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v23

    move/from16 v6, v23

    .line 1017
    const/16 v23, 0x0

    move/from16 v7, v23

    :goto_2
    move/from16 v23, v7

    move/from16 v24, v6

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_b

    .line 1018
    move-object/from16 v23, v3

    move/from16 v24, v7

    invoke-virtual/range {v23 .. v24}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v23

    move/from16 v8, v23

    .line 1021
    move-object/from16 v23, v2

    move/from16 v24, v8

    invoke-direct/range {v23 .. v24}, Landroid/support/v4/widget/ViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v23

    if-nez v23, :cond_9

    .line 1017
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1023
    :cond_9
    move-object/from16 v23, v3

    move/from16 v24, v7

    invoke-virtual/range {v23 .. v24}, Landroid/view/MotionEvent;->getX(I)F

    move-result v23

    move/from16 v9, v23

    .line 1024
    move-object/from16 v23, v3

    move/from16 v24, v7

    invoke-virtual/range {v23 .. v24}, Landroid/view/MotionEvent;->getY(I)F

    move-result v23

    move/from16 v10, v23

    .line 1025
    move/from16 v23, v9

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F

    move-object/from16 v24, v0

    move/from16 v25, v8

    aget v24, v24, v25

    sub-float v23, v23, v24

    move/from16 v11, v23

    .line 1026
    move/from16 v23, v10

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F

    move-object/from16 v24, v0

    move/from16 v25, v8

    aget v24, v24, v25

    sub-float v23, v23, v24

    move/from16 v12, v23

    .line 1028
    move-object/from16 v23, v2

    move/from16 v24, v9

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v25, v10

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v23

    move-object/from16 v13, v23

    .line 1029
    move-object/from16 v23, v13

    if-eqz v23, :cond_c

    move-object/from16 v23, v2

    move-object/from16 v24, v13

    move/from16 v25, v11

    move/from16 v26, v12

    invoke-direct/range {v23 .. v26}, Landroid/support/v4/widget/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v23

    if-eqz v23, :cond_c

    const/16 v23, 0x1

    :goto_3
    move/from16 v14, v23

    .line 1030
    move/from16 v23, v14

    if-eqz v23, :cond_d

    .line 1036
    move-object/from16 v23, v13

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLeft()I

    move-result v23

    move/from16 v15, v23

    .line 1037
    move/from16 v23, v15

    move/from16 v24, v11

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    add-int v23, v23, v24

    move/from16 v16, v23

    .line 1038
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    move-object/from16 v23, v0

    move-object/from16 v24, v13

    move/from16 v25, v16

    move/from16 v26, v11

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v23 .. v26}, Landroid/support/v4/widget/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result v23

    move/from16 v17, v23

    .line 1040
    move-object/from16 v23, v13

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    move-result v23

    move/from16 v18, v23

    .line 1041
    move/from16 v23, v18

    move/from16 v24, v12

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    add-int v23, v23, v24

    move/from16 v19, v23

    .line 1042
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    move-object/from16 v23, v0

    move-object/from16 v24, v13

    move/from16 v25, v19

    move/from16 v26, v12

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v23 .. v26}, Landroid/support/v4/widget/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result v23

    move/from16 v20, v23

    .line 1044
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    move-object/from16 v23, v0

    move-object/from16 v24, v13

    invoke-virtual/range {v23 .. v24}, Landroid/support/v4/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v23

    move/from16 v21, v23

    .line 1046
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    move-object/from16 v23, v0

    move-object/from16 v24, v13

    invoke-virtual/range {v23 .. v24}, Landroid/support/v4/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v23

    move/from16 v22, v23

    .line 1047
    move/from16 v23, v21

    if-eqz v23, :cond_a

    move/from16 v23, v21

    if-lez v23, :cond_d

    move/from16 v23, v17

    move/from16 v24, v15

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    :cond_a
    move/from16 v23, v22

    if-eqz v23, :cond_b

    move/from16 v23, v22

    if-lez v23, :cond_d

    move/from16 v23, v20

    move/from16 v24, v18

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    .line 1063
    :cond_b
    :goto_4
    move-object/from16 v23, v2

    move-object/from16 v24, v3

    invoke-direct/range {v23 .. v24}, Landroid/support/v4/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    .line 1064
    goto/16 :goto_0

    .line 1029
    :cond_c
    const/16 v23, 0x0

    goto/16 :goto_3

    .line 1053
    :cond_d
    move-object/from16 v23, v2

    move/from16 v24, v11

    move/from16 v25, v12

    move/from16 v26, v8

    invoke-direct/range {v23 .. v26}, Landroid/support/v4/widget/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    .line 1054
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    .line 1056
    goto :goto_4

    .line 1059
    :cond_e
    move/from16 v23, v14

    if-eqz v23, :cond_8

    move-object/from16 v23, v2

    move-object/from16 v24, v13

    move/from16 v25, v8

    invoke-virtual/range {v23 .. v25}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 1060
    goto :goto_4

    .line 1068
    :pswitch_4
    move-object/from16 v23, v3

    move/from16 v24, v5

    invoke-virtual/range {v23 .. v24}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v23

    move/from16 v6, v23

    .line 1069
    move-object/from16 v23, v2

    move/from16 v24, v6

    invoke-direct/range {v23 .. v24}, Landroid/support/v4/widget/ViewDragHelper;->clearMotionHistory(I)V

    .line 1070
    goto/16 :goto_0

    .line 1075
    :pswitch_5
    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    goto/16 :goto_0

    .line 1080
    :cond_f
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 968
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public smoothSlideViewTo(Landroid/view/View;II)Z
    .locals 10

    .prologue
    .line 542
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 543
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    .line 545
    move-object v5, v0

    move v6, v2

    move v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/support/v4/widget/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result v5

    move v4, v5

    .line 546
    move v5, v4

    if-nez v5, :cond_0

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I

    if-nez v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 549
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 552
    :cond_0
    move v5, v4

    move v0, v5

    return v0
.end method

.method tryCaptureViewForDrag(Landroid/view/View;I)Z
    .locals 6

    .prologue
    .line 898
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    move v4, v2

    if-ne v3, v4, :cond_0

    .line 900
    const/4 v3, 0x1

    move v0, v3

    .line 907
    :goto_0
    return v0

    .line 902
    :cond_0
    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/widget/ViewDragHelper$Callback;->tryCaptureView(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 903
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I

    .line 904
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 905
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 907
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method
