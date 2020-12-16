.class Landroid/support/v4/widget/MaterialProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/MaterialProgressDrawable$Ring;,
        Landroid/support/v4/widget/MaterialProgressDrawable$ProgressDrawableSize;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x534

.field private static final ARROW_HEIGHT:I = 0x5

.field private static final ARROW_HEIGHT_LARGE:I = 0x6

.field private static final ARROW_OFFSET_ANGLE:F = 5.0f

.field private static final ARROW_WIDTH:I = 0xa

.field private static final ARROW_WIDTH_LARGE:I = 0xc

.field private static final CENTER_RADIUS:F = 8.75f

.field private static final CENTER_RADIUS_LARGE:F = 12.5f

.field private static final CIRCLE_DIAMETER:I = 0x28

.field private static final CIRCLE_DIAMETER_LARGE:I = 0x38

.field private static final COLORS:[I

.field private static final COLOR_START_DELAY_OFFSET:F = 0.75f

.field static final DEFAULT:I = 0x1

.field private static final END_TRIM_START_DELAY_OFFSET:F = 0.5f

.field private static final FULL_ROTATION:F = 1080.0f

.field static final LARGE:I = 0x0

.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MAX_PROGRESS_ARC:F = 0.8f

.field private static final NUM_POINTS:F = 5.0f

.field private static final START_TRIM_DURATION_OFFSET:F = 0.5f

.field private static final STROKE_WIDTH:F = 2.5f

.field private static final STROKE_WIDTH_LARGE:F = 3.0f


# instance fields
.field private mAnimation:Landroid/view/animation/Animation;

.field private final mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallback:Landroid/graphics/drawable/Drawable$Callback;

.field mFinishing:Z

.field private mHeight:D

.field private mParent:Landroid/view/View;

.field private mResources:Landroid/content/res/Resources;

.field private final mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

.field private mRotation:F

.field mRotationCount:F

.field private mWidth:D


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 50
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/support/v4/widget/MaterialProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 51
    new-instance v0, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Landroid/support/v4/widget/MaterialProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 74
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const/high16 v3, -0x1000000

    aput v3, v1, v2

    sput-object v0, Landroid/support/v4/widget/MaterialProgressDrawable;->COLORS:[I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 8

    .prologue
    .line 118
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 92
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroid/support/v4/widget/MaterialProgressDrawable;->mAnimators:Ljava/util/ArrayList;

    .line 449
    move-object v3, v0

    new-instance v4, Landroid/support/v4/widget/MaterialProgressDrawable$3;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/support/v4/widget/MaterialProgressDrawable$3;-><init>(Landroid/support/v4/widget/MaterialProgressDrawable;)V

    iput-object v4, v3, Landroid/support/v4/widget/MaterialProgressDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 119
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v4/widget/MaterialProgressDrawable;->mParent:Landroid/view/View;

    .line 120
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, v3, Landroid/support/v4/widget/MaterialProgressDrawable;->mResources:Landroid/content/res/Resources;

    .line 122
    move-object v3, v0

    new-instance v4, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/MaterialProgressDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-direct {v5, v6}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v4, v3, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    .line 123
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    sget-object v4, Landroid/support/v4/widget/MaterialProgressDrawable;->COLORS:[I

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColors([I)V

    .line 125
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/MaterialProgressDrawable;->updateSizes(I)V

    .line 126
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v4/widget/MaterialProgressDrawable;->setupAnimators()V

    .line 127
    return-void
.end method

.method private evaluateColorChange(FII)I
    .locals 20

    .prologue
    .line 309
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move v15, v3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move v5, v15

    .line 310
    move v15, v5

    const/16 v16, 0x18

    shr-int/lit8 v15, v15, 0x18

    const/16 v16, 0xff

    and-int/lit16 v15, v15, 0xff

    move v6, v15

    .line 311
    move v15, v5

    const/16 v16, 0x10

    shr-int/lit8 v15, v15, 0x10

    const/16 v16, 0xff

    and-int/lit16 v15, v15, 0xff

    move v7, v15

    .line 312
    move v15, v5

    const/16 v16, 0x8

    shr-int/lit8 v15, v15, 0x8

    const/16 v16, 0xff

    and-int/lit16 v15, v15, 0xff

    move v8, v15

    .line 313
    move v15, v5

    const/16 v16, 0xff

    and-int/lit16 v15, v15, 0xff

    move v9, v15

    .line 315
    move v15, v4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move v10, v15

    .line 316
    move v15, v10

    const/16 v16, 0x18

    shr-int/lit8 v15, v15, 0x18

    const/16 v16, 0xff

    and-int/lit16 v15, v15, 0xff

    move v11, v15

    .line 317
    move v15, v10

    const/16 v16, 0x10

    shr-int/lit8 v15, v15, 0x10

    const/16 v16, 0xff

    and-int/lit16 v15, v15, 0xff

    move v12, v15

    .line 318
    move v15, v10

    const/16 v16, 0x8

    shr-int/lit8 v15, v15, 0x8

    const/16 v16, 0xff

    and-int/lit16 v15, v15, 0xff

    move v13, v15

    .line 319
    move v15, v10

    const/16 v16, 0xff

    and-int/lit16 v15, v15, 0xff

    move v14, v15

    .line 321
    move v15, v6

    move/from16 v16, v2

    move/from16 v17, v11

    move/from16 v18, v6

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    add-int v15, v15, v16

    const/16 v16, 0x18

    shl-int/lit8 v15, v15, 0x18

    move/from16 v16, v7

    move/from16 v17, v2

    move/from16 v18, v12

    move/from16 v19, v7

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    add-int v16, v16, v17

    const/16 v17, 0x10

    shl-int/lit8 v16, v16, 0x10

    or-int v15, v15, v16

    move/from16 v16, v8

    move/from16 v17, v2

    move/from16 v18, v13

    move/from16 v19, v8

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    add-int v16, v16, v17

    const/16 v17, 0x8

    shl-int/lit8 v16, v16, 0x8

    or-int v15, v15, v16

    move/from16 v16, v9

    move/from16 v17, v2

    move/from16 v18, v14

    move/from16 v19, v9

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    add-int v16, v16, v17

    or-int v15, v15, v16

    move v1, v15

    return v1
.end method

.method private getRotation()F
    .locals 2

    .prologue
    .line 255
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/MaterialProgressDrawable;->mRotation:F

    move v0, v1

    return v0
.end method

.method private setSizeParameters(DDDDFF)V
    .locals 22

    .prologue
    .line 131
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    move-object/from16 v17, v0

    move-object/from16 v14, v17

    .line 132
    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v4/widget/MaterialProgressDrawable;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    move-object/from16 v15, v17

    .line 133
    move-object/from16 v17, v15

    move-object/from16 v0, v17

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v17, v0

    move/from16 v16, v17

    .line 135
    move-object/from16 v17, v3

    move-wide/from16 v18, v4

    move/from16 v20, v16

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Landroid/support/v4/widget/MaterialProgressDrawable;->mWidth:D

    .line 136
    move-object/from16 v17, v3

    move-wide/from16 v18, v6

    move/from16 v20, v16

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Landroid/support/v4/widget/MaterialProgressDrawable;->mHeight:D

    .line 137
    move-object/from16 v17, v14

    move-wide/from16 v18, v10

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v16

    mul-float v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setStrokeWidth(F)V

    .line 138
    move-object/from16 v17, v14

    move-wide/from16 v18, v8

    move/from16 v20, v16

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    invoke-virtual/range {v17 .. v19}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setCenterRadius(D)V

    .line 139
    move-object/from16 v17, v14

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 140
    move-object/from16 v17, v14

    move/from16 v18, v12

    move/from16 v19, v16

    mul-float v18, v18, v19

    move/from16 v19, v13

    move/from16 v20, v16

    mul-float v19, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setArrowDimensions(FF)V

    .line 141
    move-object/from16 v17, v14

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/support/v4/widget/MaterialProgressDrawable;->mWidth:D

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/support/v4/widget/MaterialProgressDrawable;->mHeight:D

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setInsets(II)V

    .line 142
    return-void
.end method

.method private setupAnimators()V
    .locals 9

    .prologue
    .line 362
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    move-object v1, v3

    .line 363
    new-instance v3, Landroid/support/v4/widget/MaterialProgressDrawable$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroid/support/v4/widget/MaterialProgressDrawable$1;-><init>(Landroid/support/v4/widget/MaterialProgressDrawable;Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)V

    move-object v2, v3

    .line 415
    move-object v3, v2

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 416
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 417
    move-object v3, v2

    sget-object v4, Landroid/support/v4/widget/MaterialProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 418
    move-object v3, v2

    new-instance v4, Landroid/support/v4/widget/MaterialProgressDrawable$2;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Landroid/support/v4/widget/MaterialProgressDrawable$2;-><init>(Landroid/support/v4/widget/MaterialProgressDrawable;Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 446
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v4/widget/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    .line 447
    return-void
.end method


# virtual methods
.method applyFinishTranslation(FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V
    .locals 11

    .prologue
    .line 347
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v7, v0

    move v8, v1

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/widget/MaterialProgressDrawable;->updateRingColor(FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V

    .line 348
    move-object v7, v2

    invoke-virtual {v7}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v7

    const v8, 0x3f4ccccd    # 0.8f

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    add-double/2addr v7, v9

    double-to-float v7, v7

    move v3, v7

    .line 350
    move-object v7, v0

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroid/support/v4/widget/MaterialProgressDrawable;->getMinProgressArc(Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)F

    move-result v7

    move v4, v7

    .line 351
    move-object v7, v2

    invoke-virtual {v7}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v7

    move-object v8, v2

    .line 352
    invoke-virtual {v8}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v8

    move v9, v4

    sub-float/2addr v8, v9

    move-object v9, v2

    invoke-virtual {v9}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v9

    sub-float/2addr v8, v9

    move v9, v1

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    move v5, v7

    .line 354
    move-object v7, v2

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 355
    move-object v7, v2

    move-object v8, v2

    invoke-virtual {v8}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 356
    move-object v7, v2

    invoke-virtual {v7}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v7

    move v8, v3

    move-object v9, v2

    .line 357
    invoke-virtual {v9}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v9

    sub-float/2addr v8, v9

    move v9, v1

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    move v6, v7

    .line 358
    move-object v7, v2

    move v8, v6

    invoke-virtual {v7, v8}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setRotation(F)V

    .line 359
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    .line 226
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/MaterialProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    move-object v2, v4

    .line 227
    move-object v4, v1

    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    move-result v4

    move v3, v4

    .line 228
    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/widget/MaterialProgressDrawable;->mRotation:F

    move-object v6, v2

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v6

    move-object v7, v2

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 229
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 230
    move-object v4, v1

    move v5, v3

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 231
    return-void
.end method

.method public getAlpha()I
    .locals 2

    .prologue
    .line 239
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getAlpha()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 3

    .prologue
    .line 216
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Landroid/support/v4/widget/MaterialProgressDrawable;->mHeight:D

    double-to-int v1, v1

    move v0, v1

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 3

    .prologue
    .line 221
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Landroid/support/v4/widget/MaterialProgressDrawable;->mWidth:D

    double-to-int v1, v1

    move v0, v1

    return v0
.end method

.method getMinProgressArc(Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)F
    .locals 8

    .prologue
    .line 303
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    .line 304
    invoke-virtual {v2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStrokeWidth()F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    move-object v6, v1

    invoke-virtual {v6}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getCenterRadius()D

    move-result-wide v6

    mul-double/2addr v4, v6

    div-double/2addr v2, v4

    .line 303
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v2, v2

    move v0, v2

    return v0
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 260
    move-object v0, p0

    const/4 v1, -0x3

    move v0, v1

    return v0
.end method

.method public isRunning()Z
    .locals 7

    .prologue
    .line 265
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/MaterialProgressDrawable;->mAnimators:Ljava/util/ArrayList;

    move-object v1, v5

    .line 266
    move-object v5, v1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v5

    .line 267
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_1

    .line 268
    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/animation/Animation;

    move-object v4, v5

    .line 269
    move-object v5, v4

    invoke-virtual {v5}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v4

    invoke-virtual {v5}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v5

    if-nez v5, :cond_0

    .line 270
    const/4 v5, 0x1

    move v0, v5

    .line 273
    :goto_1
    return v0

    .line 267
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 273
    :cond_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1
.end method

.method public setAlpha(I)V
    .locals 4

    .prologue
    .line 235
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setAlpha(I)V

    .line 236
    return-void
.end method

.method public setArrowScale(F)V
    .locals 4

    .prologue
    .line 172
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setArrowScale(F)V

    .line 173
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 4

    .prologue
    .line 199
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setBackgroundColor(I)V

    .line 200
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4

    .prologue
    .line 244
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 245
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 4

    .prologue
    .line 210
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColors([I)V

    .line 211
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 212
    return-void
.end method

.method public setProgressRotation(F)V
    .locals 4

    .prologue
    .line 192
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setRotation(F)V

    .line 193
    return-void
.end method

.method setRotation(F)V
    .locals 4

    .prologue
    .line 249
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/widget/MaterialProgressDrawable;->mRotation:F

    .line 250
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/widget/MaterialProgressDrawable;->invalidateSelf()V

    .line 251
    return-void
.end method

.method public setStartEndTrim(FF)V
    .locals 5

    .prologue
    .line 182
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 183
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 184
    return-void
.end method

.method public showArrow(Z)V
    .locals 4

    .prologue
    .line 165
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    .line 166
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 278
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->reset()V

    .line 279
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->storeOriginals()V

    .line 281
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getEndTrim()F

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartTrim()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 282
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/widget/MaterialProgressDrawable;->mFinishing:Z

    .line 283
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x29a

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 284
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/MaterialProgressDrawable;->mParent:Landroid/view/View;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 291
    :goto_0
    return-void

    .line 286
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 287
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->resetOriginals()V

    .line 288
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x534

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 289
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/MaterialProgressDrawable;->mParent:Landroid/view/View;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 295
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/MaterialProgressDrawable;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 296
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/MaterialProgressDrawable;->setRotation(F)V

    .line 297
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    .line 298
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 299
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->resetOriginals()V

    .line 300
    return-void
.end method

.method updateRingColor(FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V
    .locals 8

    .prologue
    .line 333
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, v1

    const/high16 v4, 0x3f400000    # 0.75f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 337
    move-object v3, v2

    move-object v4, v0

    move v5, v1

    const/high16 v6, 0x3f400000    # 0.75f

    sub-float/2addr v5, v6

    const/high16 v6, 0x3e800000    # 0.25f

    div-float/2addr v5, v6

    move-object v6, v2

    .line 338
    invoke-virtual {v6}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingColor()I

    move-result v6

    move-object v7, v2

    .line 339
    invoke-virtual {v7}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getNextColor()I

    move-result v7

    .line 337
    invoke-direct {v4, v5, v6, v7}, Landroid/support/v4/widget/MaterialProgressDrawable;->evaluateColorChange(FII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColor(I)V

    .line 341
    :cond_0
    return-void
.end method

.method public updateSizes(I)V
    .locals 13

    .prologue
    .line 152
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-nez v2, :cond_0

    .line 153
    move-object v2, v0

    const-wide/high16 v3, 0x404c000000000000L    # 56.0

    const-wide/high16 v5, 0x404c000000000000L    # 56.0

    const-wide/high16 v7, 0x4029000000000000L    # 12.5

    const-wide/high16 v9, 0x4008000000000000L    # 3.0

    const/high16 v11, 0x41400000    # 12.0f

    const/high16 v12, 0x40c00000    # 6.0f

    invoke-direct/range {v2 .. v12}, Landroid/support/v4/widget/MaterialProgressDrawable;->setSizeParameters(DDDDFF)V

    .line 159
    :goto_0
    return-void

    .line 156
    :cond_0
    move-object v2, v0

    const-wide/high16 v3, 0x4044000000000000L    # 40.0

    const-wide/high16 v5, 0x4044000000000000L    # 40.0

    const-wide v7, 0x4021800000000000L    # 8.75

    const-wide/high16 v9, 0x4004000000000000L    # 2.5

    const/high16 v11, 0x41200000    # 10.0f

    const/high16 v12, 0x40a00000    # 5.0f

    invoke-direct/range {v2 .. v12}, Landroid/support/v4/widget/MaterialProgressDrawable;->setSizeParameters(DDDDFF)V

    goto :goto_0
.end method
