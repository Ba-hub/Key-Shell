.class public abstract Landroid/support/v4/widget/AutoScrollHelper;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;,
        Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;
    }
.end annotation


# static fields
.field private static final DEFAULT_ACTIVATION_DELAY:I

.field private static final DEFAULT_EDGE_TYPE:I = 0x1

.field private static final DEFAULT_MAXIMUM_EDGE:F = 3.4028235E38f

.field private static final DEFAULT_MAXIMUM_VELOCITY_DIPS:I = 0x627

.field private static final DEFAULT_MINIMUM_VELOCITY_DIPS:I = 0x13b

.field private static final DEFAULT_RAMP_DOWN_DURATION:I = 0x1f4

.field private static final DEFAULT_RAMP_UP_DURATION:I = 0x1f4

.field private static final DEFAULT_RELATIVE_EDGE:F = 0.2f

.field private static final DEFAULT_RELATIVE_VELOCITY:F = 1.0f

.field public static final EDGE_TYPE_INSIDE:I = 0x0

.field public static final EDGE_TYPE_INSIDE_EXTEND:I = 0x1

.field public static final EDGE_TYPE_OUTSIDE:I = 0x2

.field private static final HORIZONTAL:I = 0x0

.field public static final NO_MAX:F = 3.4028235E38f

.field public static final NO_MIN:F = 0.0f

.field public static final RELATIVE_UNSPECIFIED:F = 0.0f

.field private static final VERTICAL:I = 0x1


# instance fields
.field private mActivationDelay:I

.field private mAlreadyDelayed:Z

.field mAnimating:Z

.field private final mEdgeInterpolator:Landroid/view/animation/Interpolator;

.field private mEdgeType:I

.field private mEnabled:Z

.field private mExclusive:Z

.field private mMaximumEdges:[F

.field private mMaximumVelocity:[F

.field private mMinimumVelocity:[F

.field mNeedsCancel:Z

.field mNeedsReset:Z

.field private mRelativeEdges:[F

.field private mRelativeVelocity:[F

.field private mRunnable:Ljava/lang/Runnable;

.field final mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

.field final mTarget:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 194
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroid/support/v4/widget/AutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 11

    .prologue
    .line 209
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 137
    move-object v5, v0

    new-instance v6, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;-><init>()V

    iput-object v6, v5, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    .line 140
    move-object v5, v0

    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v6, v5, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    .line 149
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    iput-object v6, v5, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeEdges:[F

    .line 152
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_1

    iput-object v6, v5, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumEdges:[F

    .line 161
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_2

    iput-object v6, v5, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeVelocity:[F

    .line 164
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_3

    iput-object v6, v5, Landroid/support/v4/widget/AutoScrollHelper;->mMinimumVelocity:[F

    .line 167
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_4

    iput-object v6, v5, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumVelocity:[F

    .line 210
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    .line 212
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    move-object v2, v5

    .line 213
    const v5, 0x44c4e000    # 1575.0f

    move-object v6, v2

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    move v3, v5

    .line 214
    const v5, 0x439d8000    # 315.0f

    move-object v6, v2

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    move v4, v5

    .line 215
    move-object v5, v0

    move v6, v3

    int-to-float v6, v6

    move v7, v3

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/widget/AutoScrollHelper;->setMaximumVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;

    move-result-object v5

    .line 216
    move-object v5, v0

    move v6, v4

    int-to-float v6, v6

    move v7, v4

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/widget/AutoScrollHelper;->setMinimumVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;

    move-result-object v5

    .line 218
    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/AutoScrollHelper;->setEdgeType(I)Landroid/support/v4/widget/AutoScrollHelper;

    move-result-object v5

    .line 219
    move-object v5, v0

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/widget/AutoScrollHelper;->setMaximumEdges(FF)Landroid/support/v4/widget/AutoScrollHelper;

    move-result-object v5

    .line 220
    move-object v5, v0

    const v6, 0x3e4ccccd    # 0.2f

    const v7, 0x3e4ccccd    # 0.2f

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/widget/AutoScrollHelper;->setRelativeEdges(FF)Landroid/support/v4/widget/AutoScrollHelper;

    move-result-object v5

    .line 221
    move-object v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/widget/AutoScrollHelper;->setRelativeVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;

    move-result-object v5

    .line 222
    move-object v5, v0

    sget v6, Landroid/support/v4/widget/AutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/AutoScrollHelper;->setActivationDelay(I)Landroid/support/v4/widget/AutoScrollHelper;

    move-result-object v5

    .line 223
    move-object v5, v0

    const/16 v6, 0x1f4

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/AutoScrollHelper;->setRampUpDuration(I)Landroid/support/v4/widget/AutoScrollHelper;

    move-result-object v5

    .line 224
    move-object v5, v0

    const/16 v6, 0x1f4

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/AutoScrollHelper;->setRampDownDuration(I)Landroid/support/v4/widget/AutoScrollHelper;

    move-result-object v5

    .line 225
    return-void

    .line 149
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 152
    :array_1
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data

    .line 161
    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 164
    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 167
    :array_4
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data
.end method

.method private computeTargetVelocity(IFFF)F
    .locals 17

    .prologue
    .line 539
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeEdges:[F

    move v13, v1

    aget v12, v12, v13

    move v5, v12

    .line 540
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumEdges:[F

    move v13, v1

    aget v12, v12, v13

    move v6, v12

    .line 541
    move-object v12, v0

    move v13, v5

    move v14, v3

    move v15, v6

    move/from16 v16, v2

    invoke-direct/range {v12 .. v16}, Landroid/support/v4/widget/AutoScrollHelper;->getEdgeValue(FFFF)F

    move-result v12

    move v7, v12

    .line 542
    move v12, v7

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_0

    .line 544
    const/4 v12, 0x0

    move v0, v12

    .line 558
    :goto_0
    return v0

    .line 547
    :cond_0
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeVelocity:[F

    move v13, v1

    aget v12, v12, v13

    move v8, v12

    .line 548
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/AutoScrollHelper;->mMinimumVelocity:[F

    move v13, v1

    aget v12, v12, v13

    move v9, v12

    .line 549
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumVelocity:[F

    move v13, v1

    aget v12, v12, v13

    move v10, v12

    .line 550
    move v12, v8

    move v13, v4

    mul-float/2addr v12, v13

    move v11, v12

    .line 555
    move v12, v7

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_1

    .line 556
    move v12, v7

    move v13, v11

    mul-float/2addr v12, v13

    move v13, v9

    move v14, v10

    invoke-static {v12, v13, v14}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v12

    move v0, v12

    goto :goto_0

    .line 558
    :cond_1
    move v12, v7

    neg-float v12, v12

    move v13, v11

    mul-float/2addr v12, v13

    move v13, v9

    move v14, v10

    invoke-static {v12, v13, v14}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v12

    neg-float v12, v12

    move v0, v12

    goto :goto_0
.end method

.method static constrain(FFF)F
    .locals 5

    .prologue
    .line 663
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, v0

    move v4, v2

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 664
    move v3, v2

    move v0, v3

    .line 668
    :goto_0
    return v0

    .line 665
    :cond_0
    move v3, v0

    move v4, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 666
    move v3, v1

    move v0, v3

    goto :goto_0

    .line 668
    :cond_1
    move v3, v0

    move v0, v3

    goto :goto_0
.end method

.method static constrain(III)I
    .locals 5

    .prologue
    .line 653
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, v0

    move v4, v2

    if-le v3, v4, :cond_0

    .line 654
    move v3, v2

    move v0, v3

    .line 658
    :goto_0
    return v0

    .line 655
    :cond_0
    move v3, v0

    move v4, v1

    if-ge v3, v4, :cond_1

    .line 656
    move v3, v1

    move v0, v3

    goto :goto_0

    .line 658
    :cond_1
    move v3, v0

    move v0, v3

    goto :goto_0
.end method

.method private constrainEdgeValue(FF)F
    .locals 6

    .prologue
    .line 624
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v2

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 625
    const/4 v3, 0x0

    move v0, v3

    .line 649
    :goto_0
    return v0

    .line 628
    :cond_0
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeType:I

    packed-switch v3, :pswitch_data_0

    .line 649
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 631
    :pswitch_0
    move v3, v1

    move v4, v2

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 632
    move v3, v1

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    .line 634
    const/high16 v3, 0x3f800000    # 1.0f

    move v4, v1

    move v5, v2

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    move v0, v3

    goto :goto_0

    .line 635
    :cond_2
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    if-eqz v3, :cond_1

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 637
    const/high16 v3, 0x3f800000    # 1.0f

    move v0, v3

    goto :goto_0

    .line 642
    :pswitch_1
    move v3, v1

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 644
    move v3, v1

    move v4, v2

    neg-float v4, v4

    div-float/2addr v3, v4

    move v0, v3

    goto :goto_0

    .line 628
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getEdgeValue(FFFF)F
    .locals 13

    .prologue
    .line 607
    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v10, v1

    move v11, v2

    mul-float/2addr v10, v11

    const/4 v11, 0x0

    move v12, v3

    invoke-static {v10, v11, v12}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v10

    move v5, v10

    .line 608
    move-object v10, v0

    move v11, v4

    move v12, v5

    invoke-direct {v10, v11, v12}, Landroid/support/v4/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    move-result v10

    move v6, v10

    .line 609
    move-object v10, v0

    move v11, v2

    move v12, v4

    sub-float/2addr v11, v12

    move v12, v5

    invoke-direct {v10, v11, v12}, Landroid/support/v4/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    move-result v10

    move v7, v10

    .line 610
    move v10, v7

    move v11, v6

    sub-float/2addr v10, v11

    move v8, v10

    .line 612
    move v10, v8

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_0

    .line 613
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    move v11, v8

    neg-float v11, v11

    invoke-interface {v10, v11}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    neg-float v10, v10

    move v9, v10

    .line 620
    :goto_0
    move v10, v9

    const/high16 v11, -0x40800000    # -1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v10, v11, v12}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v10

    move v0, v10

    :goto_1
    return v0

    .line 614
    :cond_0
    move v10, v8

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_1

    .line 615
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    move v11, v8

    invoke-interface {v10, v11}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    move v9, v10

    goto :goto_0

    .line 617
    :cond_1
    const/4 v10, 0x0

    move v0, v10

    goto :goto_1
.end method

.method private requestStop()V
    .locals 3

    .prologue
    .line 528
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsReset:Z

    if-eqz v1, :cond_0

    .line 531
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    .line 535
    :goto_0
    return-void

    .line 533
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v1}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->requestStop()V

    goto :goto_0
.end method

.method private startAnimating()V
    .locals 6

    .prologue
    .line 504
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    .line 505
    move-object v1, v0

    new-instance v2, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;-><init>(Landroid/support/v4/widget/AutoScrollHelper;)V

    iput-object v2, v1, Landroid/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    .line 508
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    .line 509
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsReset:Z

    .line 511
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    if-nez v1, :cond_1

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/AutoScrollHelper;->mActivationDelay:I

    if-lez v1, :cond_1

    .line 512
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/widget/AutoScrollHelper;->mActivationDelay:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Landroid/support/v4/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 519
    :goto_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    .line 520
    return-void

    .line 514
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method


# virtual methods
.method public abstract canTargetScrollHorizontally(I)Z
.end method

.method public abstract canTargetScrollVertically(I)Z
.end method

.method cancelTargetTouch()V
    .locals 12

    .prologue
    .line 677
    move-object v0, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-wide v1, v4

    .line 678
    move-wide v4, v1

    move-wide v6, v1

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    move-object v3, v4

    .line 680
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 681
    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 682
    return-void
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 247
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/widget/AutoScrollHelper;->mEnabled:Z

    move v0, v1

    return v0
.end method

.method public isExclusive()Z
    .locals 2

    .prologue
    .line 276
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/widget/AutoScrollHelper;->mExclusive:Z

    move v0, v1

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    .line 456
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/widget/AutoScrollHelper;->mEnabled:Z

    if-nez v6, :cond_0

    .line 457
    const/4 v6, 0x0

    move v0, v6

    .line 485
    :goto_0
    return v0

    .line 460
    :cond_0
    move-object v6, v2

    invoke-static {v6}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v6

    move v3, v6

    .line 461
    move v6, v3

    packed-switch v6, :pswitch_data_0

    .line 485
    :cond_1
    :goto_1
    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/widget/AutoScrollHelper;->mExclusive:Z

    if-eqz v6, :cond_2

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    move v0, v6

    goto :goto_0

    .line 463
    :pswitch_0
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsCancel:Z

    .line 464
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v4/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    .line 467
    :pswitch_1
    move-object v6, v0

    const/4 v7, 0x0

    move-object v8, v2

    .line 468
    invoke-virtual {v8}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    .line 467
    invoke-direct {v6, v7, v8, v9, v10}, Landroid/support/v4/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    move-result v6

    move v4, v6

    .line 469
    move-object v6, v0

    const/4 v7, 0x1

    move-object v8, v2

    .line 470
    invoke-virtual {v8}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    .line 469
    invoke-direct {v6, v7, v8, v9, v10}, Landroid/support/v4/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    move-result v6

    move v5, v6

    .line 471
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    move v7, v4

    move v8, v5

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->setTargetVelocity(FF)V

    .line 475
    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    if-nez v6, :cond_1

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/widget/AutoScrollHelper;->shouldAnimate()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 476
    move-object v6, v0

    invoke-direct {v6}, Landroid/support/v4/widget/AutoScrollHelper;->startAnimating()V

    goto :goto_1

    .line 481
    :pswitch_2
    move-object v6, v0

    invoke-direct {v6}, Landroid/support/v4/widget/AutoScrollHelper;->requestStop()V

    goto :goto_1

    .line 485
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 461
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public abstract scrollTargetBy(II)V
.end method

.method public setActivationDelay(I)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 4

    .prologue
    .line 412
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/widget/AutoScrollHelper;->mActivationDelay:I

    .line 413
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setEdgeType(I)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 4

    .prologue
    .line 354
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeType:I

    .line 355
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setEnabled(Z)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 4

    .prologue
    .line 235
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/widget/AutoScrollHelper;->mEnabled:Z

    if-eqz v2, :cond_0

    move v2, v1

    if-nez v2, :cond_0

    .line 236
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/widget/AutoScrollHelper;->requestStop()V

    .line 239
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v4/widget/AutoScrollHelper;->mEnabled:Z

    .line 240
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setExclusive(Z)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 4

    .prologue
    .line 263
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v4/widget/AutoScrollHelper;->mExclusive:Z

    .line 264
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setMaximumEdges(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 6

    .prologue
    .line 395
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumEdges:[F

    const/4 v4, 0x0

    move v5, v1

    aput v5, v3, v4

    .line 396
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumEdges:[F

    const/4 v4, 0x1

    move v5, v2

    aput v5, v3, v4

    .line 397
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setMaximumVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 7

    .prologue
    .line 294
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumVelocity:[F

    const/4 v4, 0x0

    move v5, v1

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    aput v5, v3, v4

    .line 295
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumVelocity:[F

    const/4 v4, 0x1

    move v5, v2

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    aput v5, v3, v4

    .line 296
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setMinimumVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 7

    .prologue
    .line 312
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/AutoScrollHelper;->mMinimumVelocity:[F

    const/4 v4, 0x0

    move v5, v1

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    aput v5, v3, v4

    .line 313
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/AutoScrollHelper;->mMinimumVelocity:[F

    const/4 v4, 0x1

    move v5, v2

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    aput v5, v3, v4

    .line 314
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setRampDownDuration(I)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 4

    .prologue
    .line 442
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->setRampDownDuration(I)V

    .line 443
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setRampUpDuration(I)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 4

    .prologue
    .line 427
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->setRampUpDuration(I)V

    .line 428
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public setRelativeEdges(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 6

    .prologue
    .line 373
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeEdges:[F

    const/4 v4, 0x0

    move v5, v1

    aput v5, v3, v4

    .line 374
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeEdges:[F

    const/4 v4, 0x1

    move v5, v2

    aput v5, v3, v4

    .line 375
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setRelativeVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 7

    .prologue
    .line 333
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeVelocity:[F

    const/4 v4, 0x0

    move v5, v1

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    aput v5, v3, v4

    .line 334
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeVelocity:[F

    const/4 v4, 0x1

    move v5, v2

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    aput v5, v3, v4

    .line 335
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method shouldAnimate()Z
    .locals 6

    .prologue
    .line 492
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    move-object v1, v4

    .line 493
    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->getVerticalDirection()I

    move-result v4

    move v2, v4

    .line 494
    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->getHorizontalDirection()I

    move-result v4

    move v3, v4

    .line 496
    move v4, v2

    if-eqz v4, :cond_0

    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/AutoScrollHelper;->canTargetScrollVertically(I)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move v4, v3

    if-eqz v4, :cond_2

    move-object v4, v0

    move v5, v3

    .line 497
    invoke-virtual {v4, v5}, Landroid/support/v4/widget/AutoScrollHelper;->canTargetScrollHorizontally(I)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v4, 0x1

    :goto_0
    move v0, v4

    return v0

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method
