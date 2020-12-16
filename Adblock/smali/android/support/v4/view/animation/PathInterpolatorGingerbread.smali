.class Landroid/support/v4/view/animation/PathInterpolatorGingerbread;
.super Ljava/lang/Object;
.source "PathInterpolatorGingerbread.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x9
.end annotation


# static fields
.field private static final PRECISION:F = 0.002f


# instance fields
.field private final mX:[F

.field private final mY:[F


# direct methods
.method public constructor <init>(FF)V
    .locals 6

    .prologue
    .line 61
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-static {v4, v5}, Landroid/support/v4/view/animation/PathInterpolatorGingerbread;->createQuad(FF)Landroid/graphics/Path;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v4/view/animation/PathInterpolatorGingerbread;-><init>(Landroid/graphics/Path;)V

    .line 62
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 10

    .prologue
    .line 66
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-static {v6, v7, v8, v9}, Landroid/support/v4/view/animation/PathInterpolatorGingerbread;->createCubic(FFFF)Landroid/graphics/Path;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/v4/view/animation/PathInterpolatorGingerbread;-><init>(Landroid/graphics/Path;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 13

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v8, Landroid/graphics/PathMeasure;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v1

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    move-object v2, v8

    .line 44
    move-object v8, v2

    invoke-virtual {v8}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v8

    move v3, v8

    .line 45
    move v8, v3

    const v9, 0x3b03126f    # 0.002f

    div-float/2addr v8, v9

    float-to-int v8, v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v4, v8

    .line 47
    move-object v8, v0

    move v9, v4

    new-array v9, v9, [F

    iput-object v9, v8, Landroid/support/v4/view/animation/PathInterpolatorGingerbread;->mX:[F

    .line 48
    move-object v8, v0

    move v9, v4

    new-array v9, v9, [F

    iput-object v9, v8, Landroid/support/v4/view/animation/PathInterpolatorGingerbread;->mY:[F

    .line 50
    const/4 v8, 0x2

    new-array v8, v8, [F

    move-object v5, v8

    .line 51
    const/4 v8, 0x0

    move v6, v8

    :goto_0
    move v8, v6

    move v9, v4

    if-ge v8, v9, :cond_0

    .line 52
    move v8, v6

    int-to-float v8, v8

    move v9, v3

    mul-float/2addr v8, v9

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    int-to-float v9, v9

    div-float/2addr v8, v9

    move v7, v8

    .line 53
    move-object v8, v2

    move v9, v7

    move-object v10, v5

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    move-result v8

    .line 55
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/view/animation/PathInterpolatorGingerbread;->mX:[F

    move v9, v6

    move-object v10, v5

    const/4 v11, 0x0

    aget v10, v10, v11

    aput v10, v8, v9

    .line 56
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/view/animation/PathInterpolatorGingerbread;->mY:[F

    move v9, v6

    move-object v10, v5

    const/4 v11, 0x1

    aget v10, v10, v11

    aput v10, v8, v9

    .line 51
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method

.method private static createCubic(FFFF)Landroid/graphics/Path;
    .locals 13

    .prologue
    .line 112
    move v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    new-instance v5, Landroid/graphics/Path;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    move-object v4, v5

    .line 113
    move-object v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 114
    move-object v5, v4

    move v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 115
    move-object v5, v4

    move-object v0, v5

    return-object v0
.end method

.method private static createQuad(FF)Landroid/graphics/Path;
    .locals 9

    .prologue
    .line 104
    move v0, p0

    move v1, p1

    new-instance v3, Landroid/graphics/Path;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    move-object v2, v3

    .line 105
    move-object v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 106
    move-object v3, v2

    move v4, v0

    move v5, v1

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 107
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 13

    .prologue
    .line 71
    move-object v0, p0

    move v1, p1

    move v9, v1

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_0

    .line 72
    const/4 v9, 0x0

    move v0, v9

    .line 100
    :goto_0
    return v0

    .line 73
    :cond_0
    move v9, v1

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_1

    .line 74
    const/high16 v9, 0x3f800000    # 1.0f

    move v0, v9

    goto :goto_0

    .line 78
    :cond_1
    const/4 v9, 0x0

    move v2, v9

    .line 79
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/view/animation/PathInterpolatorGingerbread;->mX:[F

    array-length v9, v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v3, v9

    .line 80
    :goto_1
    move v9, v3

    move v10, v2

    sub-int/2addr v9, v10

    const/4 v10, 0x1

    if-le v9, v10, :cond_3

    .line 81
    move v9, v2

    move v10, v3

    add-int/2addr v9, v10

    const/4 v10, 0x2

    div-int/lit8 v9, v9, 0x2

    move v4, v9

    .line 82
    move v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/view/animation/PathInterpolatorGingerbread;->mX:[F

    move v11, v4

    aget v10, v10, v11

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    .line 83
    move v9, v4

    move v3, v9

    .line 87
    :goto_2
    goto :goto_1

    .line 85
    :cond_2
    move v9, v4

    move v2, v9

    goto :goto_2

    .line 89
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/view/animation/PathInterpolatorGingerbread;->mX:[F

    move v10, v3

    aget v9, v9, v10

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/view/animation/PathInterpolatorGingerbread;->mX:[F

    move v11, v2

    aget v10, v10, v11

    sub-float/2addr v9, v10

    move v4, v9

    .line 90
    move v9, v4

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_4

    .line 91
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/view/animation/PathInterpolatorGingerbread;->mY:[F

    move v10, v2

    aget v9, v9, v10

    move v0, v9

    goto :goto_0

    .line 94
    :cond_4
    move v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/view/animation/PathInterpolatorGingerbread;->mX:[F

    move v11, v2

    aget v10, v10, v11

    sub-float/2addr v9, v10

    move v5, v9

    .line 95
    move v9, v5

    move v10, v4

    div-float/2addr v9, v10

    move v6, v9

    .line 97
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/view/animation/PathInterpolatorGingerbread;->mY:[F

    move v10, v2

    aget v9, v9, v10

    move v7, v9

    .line 98
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/view/animation/PathInterpolatorGingerbread;->mY:[F

    move v10, v3

    aget v9, v9, v10

    move v8, v9

    .line 100
    move v9, v7

    move v10, v6

    move v11, v8

    move v12, v7

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    move v0, v9

    goto :goto_0
.end method
