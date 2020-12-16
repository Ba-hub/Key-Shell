.class Landroid/support/v4/view/animation/PathInterpolatorCompatBase;
.super Ljava/lang/Object;
.source "PathInterpolatorCompatBase.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x9
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static create(FF)Landroid/view/animation/Interpolator;
    .locals 7

    .prologue
    .line 41
    move v0, p0

    move v1, p1

    new-instance v2, Landroid/support/v4/view/animation/PathInterpolatorGingerbread;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move v4, v0

    move v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/v4/view/animation/PathInterpolatorGingerbread;-><init>(FF)V

    move-object v0, v2

    return-object v0
.end method

.method public static create(FFFF)Landroid/view/animation/Interpolator;
    .locals 11

    .prologue
    .line 46
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    new-instance v4, Landroid/support/v4/view/animation/PathInterpolatorGingerbread;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/support/v4/view/animation/PathInterpolatorGingerbread;-><init>(FFFF)V

    move-object v0, v4

    return-object v0
.end method

.method public static create(Landroid/graphics/Path;)Landroid/view/animation/Interpolator;
    .locals 5

    .prologue
    .line 37
    move-object v0, p0

    new-instance v1, Landroid/support/v4/view/animation/PathInterpolatorGingerbread;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroid/support/v4/view/animation/PathInterpolatorGingerbread;-><init>(Landroid/graphics/Path;)V

    move-object v0, v1

    return-object v0
.end method
