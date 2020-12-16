.class Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/AutoScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClampedScroller"
.end annotation


# instance fields
.field private mDeltaTime:J

.field private mDeltaX:I

.field private mDeltaY:I

.field private mEffectiveRampDown:I

.field private mRampDownDuration:I

.field private mRampUpDuration:I

.field private mStartTime:J

.field private mStopTime:J

.field private mStopValue:F

.field private mTargetVelocityX:F

.field private mTargetVelocityY:F


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 746
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 747
    move-object v1, v0

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, v1, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    .line 748
    move-object v1, v0

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    .line 749
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    .line 750
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    .line 751
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    .line 752
    return-void
.end method

.method private getValueAt(J)F
    .locals 10

    .prologue
    .line 790
    move-object v0, p0

    move-wide v1, p1

    move-wide v5, v1

    move-object v7, v0

    iget-wide v7, v7, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    .line 791
    const/4 v5, 0x0

    move v0, v5

    .line 798
    :goto_0
    return v0

    .line 792
    :cond_0
    move-object v5, v0

    iget-wide v5, v5, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_1

    move-wide v5, v1

    move-object v7, v0

    iget-wide v7, v7, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_2

    .line 793
    :cond_1
    move-wide v5, v1

    move-object v7, v0

    iget-wide v7, v7, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    sub-long/2addr v5, v7

    move-wide v3, v5

    .line 794
    const/high16 v5, 0x3f000000    # 0.5f

    move-wide v6, v3

    long-to-float v6, v6

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mRampUpDuration:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v6, v7, v8}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v6

    mul-float/2addr v5, v6

    move v0, v5

    goto :goto_0

    .line 796
    :cond_2
    move-wide v5, v1

    move-object v7, v0

    iget-wide v7, v7, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    sub-long/2addr v5, v7

    move-wide v3, v5

    .line 797
    const/high16 v5, 0x3f800000    # 1.0f

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    sub-float/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    move-wide v7, v3

    long-to-float v7, v7

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    .line 798
    invoke-static {v7, v8, v9}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    move v0, v5

    goto :goto_0
.end method

.method private interpolateValue(F)F
    .locals 5

    .prologue
    .line 810
    move-object v0, p0

    move v1, p1

    const/high16 v2, -0x3f800000    # -4.0f

    move v3, v1

    mul-float/2addr v2, v3

    move v3, v1

    mul-float/2addr v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    move v4, v1

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    move v0, v2

    return v0
.end method


# virtual methods
.method public computeScrollDelta()V
    .locals 12

    .prologue
    .line 821
    move-object v0, p0

    move-object v7, v0

    iget-wide v7, v7, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    .line 822
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string v9, "Cannot compute scroll delta before calling start()"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 825
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v7

    move-wide v1, v7

    .line 826
    move-object v7, v0

    move-wide v8, v1

    invoke-direct {v7, v8, v9}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->getValueAt(J)F

    move-result v7

    move v3, v7

    .line 827
    move-object v7, v0

    move v8, v3

    invoke-direct {v7, v8}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->interpolateValue(F)F

    move-result v7

    move v4, v7

    .line 828
    move-wide v7, v1

    move-object v9, v0

    iget-wide v9, v9, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    sub-long/2addr v7, v9

    move-wide v5, v7

    .line 830
    move-object v7, v0

    move-wide v8, v1

    iput-wide v8, v7, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    .line 831
    move-object v7, v0

    move-wide v8, v5

    long-to-float v8, v8

    move v9, v4

    mul-float/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v7, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    .line 832
    move-object v7, v0

    move-wide v8, v5

    long-to-float v8, v8

    move v9, v4

    mul-float/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v7, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    .line 833
    return-void
.end method

.method public getDeltaX()I
    .locals 2

    .prologue
    .line 859
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    move v0, v1

    return v0
.end method

.method public getDeltaY()I
    .locals 2

    .prologue
    .line 867
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    move v0, v1

    return v0
.end method

.method public getHorizontalDirection()I
    .locals 3

    .prologue
    .line 847
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    move v0, v1

    return v0
.end method

.method public getVerticalDirection()I
    .locals 3

    .prologue
    .line 851
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    move v0, v1

    return v0
.end method

.method public isFinished()Z
    .locals 7

    .prologue
    .line 785
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 786
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    move-object v3, v0

    iget-wide v3, v3, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestStop()V
    .locals 8

    .prologue
    .line 778
    move-object v0, p0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    move-wide v1, v3

    .line 779
    move-object v3, v0

    move-wide v4, v1

    move-object v6, v0

    iget-wide v6, v6, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mRampDownDuration:I

    invoke-static {v4, v5, v6}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(III)I

    move-result v4

    iput v4, v3, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    .line 780
    move-object v3, v0

    move-object v4, v0

    move-wide v5, v1

    invoke-direct {v4, v5, v6}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->getValueAt(J)F

    move-result v4

    iput v4, v3, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    .line 781
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    .line 782
    return-void
.end method

.method public setRampDownDuration(I)V
    .locals 4

    .prologue
    .line 759
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mRampDownDuration:I

    .line 760
    return-void
.end method

.method public setRampUpDuration(I)V
    .locals 4

    .prologue
    .line 755
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mRampUpDuration:I

    .line 756
    return-void
.end method

.method public setTargetVelocity(FF)V
    .locals 5

    .prologue
    .line 842
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    .line 843
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    .line 844
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 766
    move-object v0, p0

    move-object v1, v0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    .line 767
    move-object v1, v0

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    .line 768
    move-object v1, v0

    move-object v2, v0

    iget-wide v2, v2, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    iput-wide v2, v1, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    .line 769
    move-object v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v1, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    .line 770
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    .line 771
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    .line 772
    return-void
.end method
