.class Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/MaterialProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Ring"
.end annotation


# instance fields
.field private mAlpha:I

.field private mArrow:Landroid/graphics/Path;

.field private mArrowHeight:I

.field private final mArrowPaint:Landroid/graphics/Paint;

.field private mArrowScale:F

.field private mArrowWidth:I

.field private mBackgroundColor:I

.field private final mCallback:Landroid/graphics/drawable/Drawable$Callback;

.field private final mCirclePaint:Landroid/graphics/Paint;

.field private mColorIndex:I

.field private mColors:[I

.field private mCurrentColor:I

.field private mEndTrim:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mRingCenterRadius:D

.field private mRotation:F

.field private mShowArrow:Z

.field private mStartTrim:F

.field private mStartingEndTrim:F

.field private mStartingRotation:F

.field private mStartingStartTrim:F

.field private mStrokeInset:F

.field private mStrokeWidth:F

.field private final mTempBounds:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 7

    .prologue
    .line 498
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 467
    move-object v2, v0

    new-instance v3, Landroid/graphics/RectF;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, v2, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mTempBounds:Landroid/graphics/RectF;

    .line 468
    move-object v2, v0

    new-instance v3, Landroid/graphics/Paint;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v2, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    .line 469
    move-object v2, v0

    new-instance v3, Landroid/graphics/Paint;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v2, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    .line 473
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartTrim:F

    .line 474
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mEndTrim:F

    .line 475
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRotation:F

    .line 476
    move-object v2, v0

    const/high16 v3, 0x40a00000    # 5.0f

    iput v3, v2, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    .line 477
    move-object v2, v0

    const/high16 v3, 0x40200000    # 2.5f

    iput v3, v2, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeInset:F

    .line 494
    move-object v2, v0

    new-instance v3, Landroid/graphics/Paint;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v2, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    .line 499
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 501
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 502
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 503
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 505
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 506
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 507
    return-void
.end method

.method private drawTriangle(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V
    .locals 13

    .prologue
    .line 550
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mShowArrow:Z

    if-eqz v8, :cond_0

    .line 551
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    if-nez v8, :cond_1

    .line 552
    move-object v8, v0

    new-instance v9, Landroid/graphics/Path;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    iput-object v9, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    .line 553
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    sget-object v9, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v8, v9}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 560
    :goto_0
    move-object v8, v0

    iget v8, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeInset:F

    float-to-int v8, v8

    const/4 v9, 0x2

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v8, v9

    move v5, v8

    .line 561
    move-object v8, v0

    iget-wide v8, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    move-object v10, v4

    invoke-virtual {v10}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v10

    float-to-double v10, v10

    add-double/2addr v8, v10

    double-to-float v8, v8

    move v6, v8

    .line 562
    move-object v8, v0

    iget-wide v8, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    move-object v10, v4

    invoke-virtual {v10}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v10

    float-to-double v10, v10

    add-double/2addr v8, v10

    double-to-float v8, v8

    move v7, v8

    .line 568
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 569
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v9, v9

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v9, v10

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 570
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v9, v9

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowHeight:I

    int-to-float v10, v10

    move-object v11, v0

    iget v11, v11, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 572
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    move v9, v6

    move v10, v5

    sub-float/2addr v9, v10

    move v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->offset(FF)V

    .line 573
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    .line 575
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mCurrentColor:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 576
    move-object v8, v1

    move v9, v2

    move v10, v3

    add-float/2addr v9, v10

    const/high16 v10, 0x40a00000    # 5.0f

    sub-float/2addr v9, v10

    move-object v10, v4

    invoke-virtual {v10}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v10

    move-object v11, v4

    .line 577
    invoke-virtual {v11}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v11

    .line 576
    invoke-virtual {v8, v9, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 578
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 580
    :cond_0
    return-void

    .line 555
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    goto/16 :goto_0
.end method

.method private getNextColorIndex()I
    .locals 3

    .prologue
    .line 621
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mColorIndex:I

    const/4 v2, 0x1

    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mColors:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method private invalidateSelf()V
    .locals 3

    .prologue
    .line 788
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 789
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 13

    .prologue
    .line 528
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mTempBounds:Landroid/graphics/RectF;

    move-object v3, v7

    .line 529
    move-object v7, v3

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 530
    move-object v7, v3

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeInset:F

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeInset:F

    invoke-virtual {v7, v8, v9}, Landroid/graphics/RectF;->inset(FF)V

    .line 532
    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartTrim:F

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRotation:F

    add-float/2addr v7, v8

    const/high16 v8, 0x43b40000    # 360.0f

    mul-float/2addr v7, v8

    move v4, v7

    .line 533
    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mEndTrim:F

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRotation:F

    add-float/2addr v7, v8

    const/high16 v8, 0x43b40000    # 360.0f

    mul-float/2addr v7, v8

    move v5, v7

    .line 534
    move v7, v5

    move v8, v4

    sub-float/2addr v7, v8

    move v6, v7

    .line 536
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mCurrentColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 537
    move-object v7, v1

    move-object v8, v3

    move v9, v4

    move v10, v6

    const/4 v11, 0x0

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 539
    move-object v7, v0

    move-object v8, v1

    move v9, v4

    move v10, v6

    move-object v11, v2

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->drawTriangle(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V

    .line 541
    move-object v7, v0

    iget v7, v7, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mAlpha:I

    const/16 v8, 0xff

    if-ge v7, v8, :cond_0

    .line 542
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mBackgroundColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 543
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    const/16 v8, 0xff

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mAlpha:I

    rsub-int v8, v9, 0xff

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 544
    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v8}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v8

    move-object v9, v2

    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v9

    move-object v10, v2

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    const/4 v11, 0x2

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 547
    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 2

    .prologue
    .line 648
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mAlpha:I

    move v0, v1

    return v0
.end method

.method public getCenterRadius()D
    .locals 3

    .prologue
    .line 735
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    move-wide v0, v1

    return-wide v0
.end method

.method public getEndTrim()F
    .locals 2

    .prologue
    .line 696
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mEndTrim:F

    move v0, v1

    return v0
.end method

.method public getInsets()F
    .locals 2

    .prologue
    .line 723
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeInset:F

    move v0, v1

    return v0
.end method

.method public getNextColor()I
    .locals 3

    .prologue
    .line 617
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mColors:[I

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getNextColorIndex()I

    move-result v2

    aget v1, v1, v2

    move v0, v1

    return v0
.end method

.method public getRotation()F
    .locals 2

    .prologue
    .line 707
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRotation:F

    move v0, v1

    return v0
.end method

.method public getStartTrim()F
    .locals 2

    .prologue
    .line 673
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartTrim:F

    move v0, v1

    return v0
.end method

.method public getStartingColor()I
    .locals 3

    .prologue
    .line 685
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mColors:[I

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mColorIndex:I

    aget v1, v1, v2

    move v0, v1

    return v0
.end method

.method public getStartingEndTrim()F
    .locals 2

    .prologue
    .line 681
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    move v0, v1

    return v0
.end method

.method public getStartingRotation()F
    .locals 2

    .prologue
    .line 762
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingRotation:F

    move v0, v1

    return v0
.end method

.method public getStartingStartTrim()F
    .locals 2

    .prologue
    .line 677
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    move v0, v1

    return v0
.end method

.method public getStrokeWidth()F
    .locals 2

    .prologue
    .line 662
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    move v0, v1

    return v0
.end method

.method public goToNextColor()V
    .locals 3

    .prologue
    .line 629
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getNextColorIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 630
    return-void
.end method

.method public resetOriginals()V
    .locals 3

    .prologue
    .line 779
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    .line 780
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    .line 781
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingRotation:F

    .line 782
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 783
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 784
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setRotation(F)V

    .line 785
    return-void
.end method

.method public setAlpha(I)V
    .locals 4

    .prologue
    .line 641
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mAlpha:I

    .line 642
    return-void
.end method

.method public setArrowDimensions(FF)V
    .locals 5

    .prologue
    .line 520
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    float-to-int v4, v4

    iput v4, v3, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowWidth:I

    .line 521
    move-object v3, v0

    move v4, v2

    float-to-int v4, v4

    iput v4, v3, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowHeight:I

    .line 522
    return-void
.end method

.method public setArrowScale(F)V
    .locals 4

    .prologue
    .line 752
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowScale:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 753
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mArrowScale:F

    .line 754
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 756
    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 4

    .prologue
    .line 510
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mBackgroundColor:I

    .line 511
    return-void
.end method

.method public setCenterRadius(D)V
    .locals 6

    .prologue
    .line 731
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    .line 732
    return-void
.end method

.method public setColor(I)V
    .locals 4

    .prologue
    .line 601
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mCurrentColor:I

    .line 602
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4

    .prologue
    .line 633
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-result-object v2

    .line 634
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 635
    return-void
.end method

.method public setColorIndex(I)V
    .locals 5

    .prologue
    .line 609
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mColorIndex:I

    .line 610
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mColors:[I

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mColorIndex:I

    aget v3, v3, v4

    iput v3, v2, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mCurrentColor:I

    .line 611
    return-void
.end method

.method public setColors([I)V
    .locals 4
    .param p1    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 588
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mColors:[I

    .line 590
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 591
    return-void
.end method

.method public setEndTrim(F)V
    .locals 4

    .prologue
    .line 690
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mEndTrim:F

    .line 691
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 692
    return-void
.end method

.method public setInsets(II)V
    .locals 9

    .prologue
    .line 711
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v1

    move v6, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    move v3, v5

    .line 713
    move-object v5, v0

    iget-wide v5, v5, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    const-wide/16 v7, 0x0

    cmpg-double v5, v5, v7

    if-lez v5, :cond_0

    move v5, v3

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 714
    :cond_0
    move-object v5, v0

    iget v5, v5, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-float v5, v5

    move v4, v5

    .line 718
    :goto_0
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeInset:F

    .line 719
    return-void

    .line 716
    :cond_1
    move v5, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    float-to-double v5, v5

    move-object v7, v0

    iget-wide v7, v7, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    sub-double/2addr v5, v7

    double-to-float v5, v5

    move v4, v5

    goto :goto_0
.end method

.method public setRotation(F)V
    .locals 4

    .prologue
    .line 701
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRotation:F

    .line 702
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 703
    return-void
.end method

.method public setShowArrow(Z)V
    .locals 4

    .prologue
    .line 742
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mShowArrow:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 743
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mShowArrow:Z

    .line 744
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 746
    :cond_0
    return-void
.end method

.method public setStartTrim(F)V
    .locals 4

    .prologue
    .line 667
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartTrim:F

    .line 668
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 669
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 4

    .prologue
    .line 655
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    .line 656
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 657
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->invalidateSelf()V

    .line 658
    return-void
.end method

.method public storeOriginals()V
    .locals 3

    .prologue
    .line 770
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartTrim:F

    iput v2, v1, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    .line 771
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mEndTrim:F

    iput v2, v1, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    .line 772
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mRotation:F

    iput v2, v1, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->mStartingRotation:F

    .line 773
    return-void
.end method
