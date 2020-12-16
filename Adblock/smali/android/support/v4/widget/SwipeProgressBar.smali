.class final Landroid/support/v4/widget/SwipeProgressBar;
.super Ljava/lang/Object;
.source "SwipeProgressBar.java"


# static fields
.field private static final ANIMATION_DURATION_MS:I = 0x7d0

.field private static final COLOR1:I = -0x4d000000

.field private static final COLOR2:I = -0x80000000

.field private static final COLOR3:I = 0x4d000000

.field private static final COLOR4:I = 0x1a000000

.field private static final FINISH_ANIMATION_DURATION_MS:I = 0x3e8

.field private static final INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private final mClipRect:Landroid/graphics/RectF;

.field private mColor1:I

.field private mColor2:I

.field private mColor3:I

.field private mColor4:I

.field private mFinishTime:J

.field private final mPaint:Landroid/graphics/Paint;

.field private mParent:Landroid/view/View;

.field private mRunning:Z

.field private mStartTime:J

.field private mTriggerPercentage:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    new-instance v0, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Landroid/support/v4/widget/SwipeProgressBar;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 70
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 54
    move-object v2, v0

    new-instance v3, Landroid/graphics/Paint;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v2, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 55
    move-object v2, v0

    new-instance v3, Landroid/graphics/RectF;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, v2, Landroid/support/v4/widget/SwipeProgressBar;->mClipRect:Landroid/graphics/RectF;

    .line 68
    move-object v2, v0

    new-instance v3, Landroid/graphics/Rect;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v2, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    .line 71
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    .line 72
    move-object v2, v0

    const/high16 v3, -0x4d000000

    iput v3, v2, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    .line 73
    move-object v2, v0

    const/high16 v3, -0x80000000

    iput v3, v2, Landroid/support/v4/widget/SwipeProgressBar;->mColor2:I

    .line 74
    move-object v2, v0

    const/high16 v3, 0x4d000000    # 1.34217728E8f

    iput v3, v2, Landroid/support/v4/widget/SwipeProgressBar;->mColor3:I

    .line 75
    move-object v2, v0

    const/high16 v3, 0x1a000000

    iput v3, v2, Landroid/support/v4/widget/SwipeProgressBar;->mColor4:I

    .line 76
    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;FFIF)V
    .locals 12

    .prologue
    .line 258
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 260
    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 261
    sget-object v7, Landroid/support/v4/widget/SwipeProgressBar;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    move v8, v5

    invoke-interface {v7, v8}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    move v6, v7

    .line 262
    move-object v7, v1

    move v8, v6

    move v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 263
    move-object v7, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v10, v2

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 264
    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 265
    return-void
.end method

.method private drawTrigger(Landroid/graphics/Canvas;II)V
    .locals 9

    .prologue
    .line 244
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    move-object v4, v1

    move v5, v2

    int-to-float v5, v5

    move v6, v3

    int-to-float v6, v6

    move v7, v2

    int-to-float v7, v7

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    mul-float/2addr v7, v8

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 246
    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;)V
    .locals 29

    .prologue
    .line 139
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->width()I

    move-result v23

    move/from16 v5, v23

    .line 140
    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v23

    move/from16 v6, v23

    .line 141
    move/from16 v23, v5

    const/16 v24, 0x2

    div-int/lit8 v23, v23, 0x2

    move/from16 v7, v23

    .line 142
    move/from16 v23, v6

    const/16 v24, 0x2

    div-int/lit8 v23, v23, 0x2

    move/from16 v8, v23

    .line 143
    const/16 v23, 0x0

    move/from16 v9, v23

    .line 144
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Canvas;->save()I

    move-result v23

    move/from16 v10, v23

    .line 145
    move-object/from16 v23, v4

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    move-result v23

    .line 147
    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    move/from16 v23, v0

    if-nez v23, :cond_0

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    move-wide/from16 v23, v0

    const-wide/16 v25, 0x0

    cmp-long v23, v23, v25

    if-lez v23, :cond_e

    .line 148
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v23

    move-wide/from16 v11, v23

    .line 149
    move-wide/from16 v23, v11

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mStartTime:J

    move-wide/from16 v25, v0

    sub-long v23, v23, v25

    const-wide/16 v25, 0x7d0

    rem-long v23, v23, v25

    move-wide/from16 v13, v23

    .line 150
    move-wide/from16 v23, v11

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mStartTime:J

    move-wide/from16 v25, v0

    sub-long v23, v23, v25

    const-wide/16 v25, 0x7d0

    div-long v23, v23, v25

    move-wide/from16 v15, v23

    .line 151
    move-wide/from16 v23, v13

    move-wide/from16 v0, v23

    long-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x41a00000    # 20.0f

    div-float v23, v23, v24

    move/from16 v17, v23

    .line 155
    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    move/from16 v23, v0

    if-nez v23, :cond_2

    .line 158
    move-wide/from16 v23, v11

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    move-wide/from16 v25, v0

    sub-long v23, v23, v25

    const-wide/16 v25, 0x3e8

    cmp-long v23, v23, v25

    if-ltz v23, :cond_1

    .line 159
    move-object/from16 v23, v3

    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    .line 241
    :goto_0
    return-void

    .line 166
    :cond_1
    move-wide/from16 v23, v11

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    move-wide/from16 v25, v0

    sub-long v23, v23, v25

    const-wide/16 v25, 0x3e8

    rem-long v23, v23, v25

    move-wide/from16 v18, v23

    .line 167
    move-wide/from16 v23, v18

    move-wide/from16 v0, v23

    long-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x41200000    # 10.0f

    div-float v23, v23, v24

    move/from16 v20, v23

    .line 168
    move/from16 v23, v20

    const/high16 v24, 0x42c80000    # 100.0f

    div-float v23, v23, v24

    move/from16 v21, v23

    .line 170
    move/from16 v23, v5

    const/16 v24, 0x2

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sget-object v24, Landroid/support/v4/widget/SwipeProgressBar;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    move/from16 v25, v21

    invoke-interface/range {v24 .. v25}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v24

    mul-float v23, v23, v24

    move/from16 v22, v23

    .line 171
    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mClipRect:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move/from16 v24, v7

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v25, v22

    sub-float v24, v24, v25

    const/16 v25, 0x0

    move/from16 v26, v7

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v27, v22

    add-float v26, v26, v27

    move/from16 v27, v6

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v23 .. v27}, Landroid/graphics/RectF;->set(FFFF)V

    .line 172
    move-object/from16 v23, v4

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mClipRect:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v23 .. v26}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    move-result v23

    .line 177
    const/16 v23, 0x1

    move/from16 v9, v23

    .line 181
    :cond_2
    move-wide/from16 v23, v15

    const-wide/16 v25, 0x0

    cmp-long v23, v23, v25

    if-nez v23, :cond_a

    .line 182
    move-object/from16 v23, v4

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 201
    :goto_1
    move/from16 v23, v17

    const/16 v24, 0x0

    cmpl-float v23, v23, v24

    if-ltz v23, :cond_3

    move/from16 v23, v17

    const/high16 v24, 0x41c80000    # 25.0f

    cmpg-float v23, v23, v24

    if-gtz v23, :cond_3

    .line 202
    move/from16 v23, v17

    const/high16 v24, 0x41c80000    # 25.0f

    add-float v23, v23, v24

    const/high16 v24, 0x40000000    # 2.0f

    mul-float v23, v23, v24

    const/high16 v24, 0x42c80000    # 100.0f

    div-float v23, v23, v24

    move/from16 v18, v23

    .line 203
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move/from16 v25, v7

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v26, v8

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    move/from16 v27, v0

    move/from16 v28, v18

    invoke-direct/range {v23 .. v28}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    .line 205
    :cond_3
    move/from16 v23, v17

    const/16 v24, 0x0

    cmpl-float v23, v23, v24

    if-ltz v23, :cond_4

    move/from16 v23, v17

    const/high16 v24, 0x42480000    # 50.0f

    cmpg-float v23, v23, v24

    if-gtz v23, :cond_4

    .line 206
    move/from16 v23, v17

    const/high16 v24, 0x40000000    # 2.0f

    mul-float v23, v23, v24

    const/high16 v24, 0x42c80000    # 100.0f

    div-float v23, v23, v24

    move/from16 v18, v23

    .line 207
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move/from16 v25, v7

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v26, v8

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor2:I

    move/from16 v27, v0

    move/from16 v28, v18

    invoke-direct/range {v23 .. v28}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    .line 209
    :cond_4
    move/from16 v23, v17

    const/high16 v24, 0x41c80000    # 25.0f

    cmpl-float v23, v23, v24

    if-ltz v23, :cond_5

    move/from16 v23, v17

    const/high16 v24, 0x42960000    # 75.0f

    cmpg-float v23, v23, v24

    if-gtz v23, :cond_5

    .line 210
    move/from16 v23, v17

    const/high16 v24, 0x41c80000    # 25.0f

    sub-float v23, v23, v24

    const/high16 v24, 0x40000000    # 2.0f

    mul-float v23, v23, v24

    const/high16 v24, 0x42c80000    # 100.0f

    div-float v23, v23, v24

    move/from16 v18, v23

    .line 211
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move/from16 v25, v7

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v26, v8

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor3:I

    move/from16 v27, v0

    move/from16 v28, v18

    invoke-direct/range {v23 .. v28}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    .line 213
    :cond_5
    move/from16 v23, v17

    const/high16 v24, 0x42480000    # 50.0f

    cmpl-float v23, v23, v24

    if-ltz v23, :cond_6

    move/from16 v23, v17

    const/high16 v24, 0x42c80000    # 100.0f

    cmpg-float v23, v23, v24

    if-gtz v23, :cond_6

    .line 214
    move/from16 v23, v17

    const/high16 v24, 0x42480000    # 50.0f

    sub-float v23, v23, v24

    const/high16 v24, 0x40000000    # 2.0f

    mul-float v23, v23, v24

    const/high16 v24, 0x42c80000    # 100.0f

    div-float v23, v23, v24

    move/from16 v18, v23

    .line 215
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move/from16 v25, v7

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v26, v8

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor4:I

    move/from16 v27, v0

    move/from16 v28, v18

    invoke-direct/range {v23 .. v28}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    .line 217
    :cond_6
    move/from16 v23, v17

    const/high16 v24, 0x42960000    # 75.0f

    cmpl-float v23, v23, v24

    if-ltz v23, :cond_7

    move/from16 v23, v17

    const/high16 v24, 0x42c80000    # 100.0f

    cmpg-float v23, v23, v24

    if-gtz v23, :cond_7

    .line 218
    move/from16 v23, v17

    const/high16 v24, 0x42960000    # 75.0f

    sub-float v23, v23, v24

    const/high16 v24, 0x40000000    # 2.0f

    mul-float v23, v23, v24

    const/high16 v24, 0x42c80000    # 100.0f

    div-float v23, v23, v24

    move/from16 v18, v23

    .line 219
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move/from16 v25, v7

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v26, v8

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    move/from16 v27, v0

    move/from16 v28, v18

    invoke-direct/range {v23 .. v28}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    .line 221
    :cond_7
    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    move/from16 v23, v0

    const/16 v24, 0x0

    cmpl-float v23, v23, v24

    if-lez v23, :cond_8

    move/from16 v23, v9

    if-eqz v23, :cond_8

    .line 226
    move-object/from16 v23, v4

    move/from16 v24, v10

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 227
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Canvas;->save()I

    move-result v23

    move/from16 v10, v23

    .line 228
    move-object/from16 v23, v4

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    move-result v23

    .line 229
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move/from16 v25, v7

    move/from16 v26, v8

    invoke-direct/range {v23 .. v26}, Landroid/support/v4/widget/SwipeProgressBar;->drawTrigger(Landroid/graphics/Canvas;II)V

    .line 232
    :cond_8
    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    invoke-static/range {v23 .. v27}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;IIII)V

    .line 240
    :cond_9
    :goto_2
    move-object/from16 v23, v4

    move/from16 v24, v10

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 241
    goto/16 :goto_0

    .line 184
    :cond_a
    move/from16 v23, v17

    const/16 v24, 0x0

    cmpl-float v23, v23, v24

    if-ltz v23, :cond_b

    move/from16 v23, v17

    const/high16 v24, 0x41c80000    # 25.0f

    cmpg-float v23, v23, v24

    if-gez v23, :cond_b

    .line 185
    move-object/from16 v23, v4

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor4:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_1

    .line 186
    :cond_b
    move/from16 v23, v17

    const/high16 v24, 0x41c80000    # 25.0f

    cmpl-float v23, v23, v24

    if-ltz v23, :cond_c

    move/from16 v23, v17

    const/high16 v24, 0x42480000    # 50.0f

    cmpg-float v23, v23, v24

    if-gez v23, :cond_c

    .line 187
    move-object/from16 v23, v4

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_1

    .line 188
    :cond_c
    move/from16 v23, v17

    const/high16 v24, 0x42480000    # 50.0f

    cmpl-float v23, v23, v24

    if-ltz v23, :cond_d

    move/from16 v23, v17

    const/high16 v24, 0x42960000    # 75.0f

    cmpg-float v23, v23, v24

    if-gez v23, :cond_d

    .line 189
    move-object/from16 v23, v4

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor2:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_1

    .line 191
    :cond_d
    move-object/from16 v23, v4

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor3:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_1

    .line 236
    :cond_e
    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    move/from16 v23, v0

    const/16 v24, 0x0

    cmpl-float v23, v23, v24

    if-lez v23, :cond_9

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    cmpg-double v23, v23, v25

    if-gtz v23, :cond_9

    .line 237
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move/from16 v25, v7

    move/from16 v26, v8

    invoke-direct/range {v23 .. v26}, Landroid/support/v4/widget/SwipeProgressBar;->drawTrigger(Landroid/graphics/Canvas;II)V

    goto/16 :goto_2
.end method

.method isRunning()Z
    .locals 5

    .prologue
    .line 135
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-wide v1, v1, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method setBounds(IIII)V
    .locals 7

    .prologue
    .line 271
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    move v6, v1

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 272
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    move v6, v2

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 273
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    move v6, v3

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 274
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    move v6, v4

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 275
    return-void
.end method

.method setColorScheme(IIII)V
    .locals 7

    .prologue
    .line 89
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    .line 90
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroid/support/v4/widget/SwipeProgressBar;->mColor2:I

    .line 91
    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroid/support/v4/widget/SwipeProgressBar;->mColor3:I

    .line 92
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroid/support/v4/widget/SwipeProgressBar;->mColor4:I

    .line 93
    return-void
.end method

.method setTriggerPercentage(F)V
    .locals 7

    .prologue
    .line 101
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    .line 102
    move-object v2, v0

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Landroid/support/v4/widget/SwipeProgressBar;->mStartTime:J

    .line 103
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v3, v4, v5, v6}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;IIII)V

    .line 105
    return-void
.end method

.method start()V
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    if-nez v1, :cond_0

    .line 112
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    .line 113
    move-object v1, v0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/support/v4/widget/SwipeProgressBar;->mStartTime:J

    .line 114
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    .line 115
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->postInvalidate()V

    .line 117
    :cond_0
    return-void
.end method

.method stop()V
    .locals 4

    .prologue
    .line 123
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    if-eqz v1, :cond_0

    .line 124
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    .line 125
    move-object v1, v0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    .line 126
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    .line 127
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->postInvalidate()V

    .line 129
    :cond_0
    return-void
.end method
