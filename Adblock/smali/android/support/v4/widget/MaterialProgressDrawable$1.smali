.class Landroid/support/v4/widget/MaterialProgressDrawable$1;
.super Landroid/view/animation/Animation;
.source "MaterialProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/MaterialProgressDrawable;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

.field final synthetic val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/MaterialProgressDrawable;Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)V
    .locals 5

    .prologue
    .line 363
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/widget/MaterialProgressDrawable$1;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    move-object v3, v0

    invoke-direct {v3}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 14

    .prologue
    .line 366
    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/MaterialProgressDrawable$1;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    iget-boolean v10, v10, Landroid/support/v4/widget/MaterialProgressDrawable;->mFinishing:Z

    if-eqz v10, :cond_0

    .line 367
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/MaterialProgressDrawable$1;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    move v11, v1

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v10, v11, v12}, Landroid/support/v4/widget/MaterialProgressDrawable;->applyFinishTranslation(FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V

    .line 413
    :goto_0
    return-void

    .line 371
    :cond_0
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/MaterialProgressDrawable$1;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v10, v11}, Landroid/support/v4/widget/MaterialProgressDrawable;->getMinProgressArc(Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)F

    move-result v10

    move v3, v10

    .line 372
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v10}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v10

    move v4, v10

    .line 373
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v10}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v10

    move v5, v10

    .line 374
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v10}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v10

    move v6, v10

    .line 376
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/MaterialProgressDrawable$1;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    move v11, v1

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v10, v11, v12}, Landroid/support/v4/widget/MaterialProgressDrawable;->updateRingColor(FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V

    .line 380
    move v10, v1

    const/high16 v11, 0x3f000000    # 0.5f

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_1

    .line 384
    move v10, v1

    const/high16 v11, 0x3f000000    # 0.5f

    div-float/2addr v10, v11

    move v7, v10

    .line 386
    move v10, v5

    const v11, 0x3f4ccccd    # 0.8f

    move v12, v3

    sub-float/2addr v11, v12

    sget-object v12, Landroid/support/v4/widget/MaterialProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move v13, v7

    .line 388
    invoke-interface {v12, v13}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v12

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    move v8, v10

    .line 389
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    move v11, v8

    invoke-virtual {v10, v11}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 394
    :cond_1
    move v10, v1

    const/high16 v11, 0x3f000000    # 0.5f

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    .line 398
    const v10, 0x3f4ccccd    # 0.8f

    move v11, v3

    sub-float/2addr v10, v11

    move v7, v10

    .line 399
    move v10, v1

    const/high16 v11, 0x3f000000    # 0.5f

    sub-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    div-float/2addr v10, v11

    move v8, v10

    .line 401
    move v10, v4

    move v11, v7

    sget-object v12, Landroid/support/v4/widget/MaterialProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move v13, v8

    .line 402
    invoke-interface {v12, v13}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v12

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    move v9, v10

    .line 403
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    move v11, v9

    invoke-virtual {v10, v11}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 406
    :cond_2
    move v10, v6

    const/high16 v11, 0x3e800000    # 0.25f

    move v12, v1

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    move v7, v10

    .line 407
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    move v11, v7

    invoke-virtual {v10, v11}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setRotation(F)V

    .line 409
    const/high16 v10, 0x43580000    # 216.0f

    move v11, v1

    mul-float/2addr v10, v11

    const/high16 v11, 0x44870000    # 1080.0f

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/MaterialProgressDrawable$1;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    iget v12, v12, Landroid/support/v4/widget/MaterialProgressDrawable;->mRotationCount:F

    const/high16 v13, 0x40a00000    # 5.0f

    div-float/2addr v12, v13

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    move v8, v10

    .line 411
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/widget/MaterialProgressDrawable$1;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    move v11, v8

    invoke-virtual {v10, v11}, Landroid/support/v4/widget/MaterialProgressDrawable;->setRotation(F)V

    goto/16 :goto_0
.end method
