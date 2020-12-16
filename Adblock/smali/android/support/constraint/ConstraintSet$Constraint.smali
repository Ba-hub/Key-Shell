.class Landroid/support/constraint/ConstraintSet$Constraint;
.super Ljava/lang/Object;
.source "ConstraintSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/ConstraintSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Constraint"
.end annotation


# static fields
.field static final UNSET:I = -0x1


# instance fields
.field public alpha:F

.field public applyElevation:Z

.field public baselineToBaseline:I

.field public bottomMargin:I

.field public bottomToBottom:I

.field public bottomToTop:I

.field public dimensionRatio:Ljava/lang/String;

.field public editorAbsoluteX:I

.field public editorAbsoluteY:I

.field public elevation:F

.field public endMargin:I

.field public endToEnd:I

.field public endToStart:I

.field public goneBottomMargin:I

.field public goneEndMargin:I

.field public goneLeftMargin:I

.field public goneRightMargin:I

.field public goneStartMargin:I

.field public goneTopMargin:I

.field public guideBegin:I

.field public guideEnd:I

.field public guidePercent:F

.field public heightDefault:I

.field public heightMax:I

.field public heightMin:I

.field public horizontalBias:F

.field public horizontalChainStyle:I

.field public horizontalWeight:F

.field public leftMargin:I

.field public leftToLeft:I

.field public leftToRight:I

.field public mHeight:I

.field mIsGuideline:Z

.field mViewId:I

.field public mWidth:I

.field public orientation:I

.field public rightMargin:I

.field public rightToLeft:I

.field public rightToRight:I

.field public rotationX:F

.field public rotationY:F

.field public scaleX:F

.field public scaleY:F

.field public startMargin:I

.field public startToEnd:I

.field public startToStart:I

.field public topMargin:I

.field public topToBottom:I

.field public topToTop:I

.field public transformPivotX:F

.field public transformPivotY:F

.field public translationX:F

.field public translationY:F

.field public translationZ:F

.field public verticalBias:F

.field public verticalChainStyle:I

.field public verticalWeight:F

.field public visibility:I

.field public widthDefault:I

.field public widthMax:I

.field public widthMin:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 328
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 330
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->mIsGuideline:Z

    .line 335
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->guideBegin:I

    .line 336
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->guideEnd:I

    .line 337
    move-object v1, v0

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->guidePercent:F

    .line 339
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    .line 340
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    .line 341
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    .line 342
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    .line 343
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 344
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    .line 345
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 346
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 347
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 349
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    .line 350
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    .line 351
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    .line 352
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->endToEnd:I

    .line 354
    move-object v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    .line 355
    move-object v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalBias:F

    .line 356
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->dimensionRatio:Ljava/lang/String;

    .line 358
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->editorAbsoluteX:I

    .line 359
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->editorAbsoluteY:I

    .line 361
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->orientation:I

    .line 362
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->leftMargin:I

    .line 363
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->rightMargin:I

    .line 364
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->topMargin:I

    .line 365
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomMargin:I

    .line 366
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->endMargin:I

    .line 367
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->startMargin:I

    .line 368
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    .line 369
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->goneLeftMargin:I

    .line 370
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->goneTopMargin:I

    .line 371
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->goneRightMargin:I

    .line 372
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->goneBottomMargin:I

    .line 373
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->goneEndMargin:I

    .line 374
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->goneStartMargin:I

    .line 375
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalWeight:F

    .line 376
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalWeight:F

    .line 377
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalChainStyle:I

    .line 378
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalChainStyle:I

    .line 379
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->alpha:F

    .line 380
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->applyElevation:Z

    .line 381
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->elevation:F

    .line 382
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->rotationX:F

    .line 383
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->rotationY:F

    .line 384
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->scaleX:F

    .line 385
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->scaleY:F

    .line 386
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotX:F

    .line 387
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotY:F

    .line 388
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->translationX:F

    .line 389
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->translationY:F

    .line 390
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->translationZ:F

    .line 391
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->widthDefault:I

    .line 392
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->heightDefault:I

    .line 393
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->widthMax:I

    .line 394
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->heightMax:I

    .line 395
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->widthMin:I

    .line 396
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->heightMin:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/constraint/ConstraintSet$1;)V
    .locals 3

    .prologue
    .line 328
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/constraint/ConstraintSet$Constraint;-><init>()V

    return-void
.end method

.method static synthetic access$100(Landroid/support/constraint/ConstraintSet$Constraint;ILandroid/support/constraint/ConstraintLayout$LayoutParams;)V
    .locals 6

    .prologue
    .line 328
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/constraint/ConstraintSet$Constraint;->fillFrom(ILandroid/support/constraint/ConstraintLayout$LayoutParams;)V

    return-void
.end method

.method private fillFrom(ILandroid/support/constraint/ConstraintLayout$LayoutParams;)V
    .locals 6

    .prologue
    .line 470
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->mViewId:I

    .line 471
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    .line 472
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    .line 473
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    .line 474
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    .line 475
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 476
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    .line 477
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 478
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 479
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 480
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    .line 481
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    .line 482
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    .line 483
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->endToEnd:I

    .line 485
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    .line 486
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->verticalBias:F

    .line 487
    move-object v4, v0

    move-object v5, v2

    iget-object v5, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    iput-object v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->dimensionRatio:Ljava/lang/String;

    .line 488
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->editorAbsoluteX:I

    .line 489
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->editorAbsoluteY:I

    .line 490
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->orientation:I

    .line 491
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->guidePercent:F

    .line 492
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->guideBegin:I

    .line 493
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->guideEnd:I

    .line 494
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->mWidth:I

    .line 495
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->mHeight:I

    .line 496
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->leftMargin:I

    .line 497
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->rightMargin:I

    .line 498
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->topMargin:I

    .line 499
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->bottomMargin:I

    .line 500
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->verticalWeight:F

    .line 501
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalWeight:F

    .line 502
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->verticalChainStyle:I

    .line 503
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalChainStyle:I

    .line 504
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->widthDefault:I

    .line 505
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->heightDefault:I

    .line 506
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->widthMax:I

    .line 507
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->heightMax:I

    .line 508
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->widthMin:I

    .line 509
    move-object v4, v0

    move-object v5, v2

    iget v5, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->heightMin:I

    .line 510
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    move v3, v4

    .line 511
    move v4, v3

    const/16 v5, 0x11

    if-lt v4, v5, :cond_0

    .line 512
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->getMarginEnd()I

    move-result v5

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->endMargin:I

    .line 513
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->getMarginStart()I

    move-result v5

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->startMargin:I

    .line 515
    :cond_0
    return-void
.end method


# virtual methods
.method public applyTo(Landroid/support/constraint/ConstraintLayout$LayoutParams;)V
    .locals 4

    .prologue
    .line 518
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 519
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 520
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 521
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 523
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 524
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 525
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 526
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 528
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 530
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 531
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 532
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 533
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->endToEnd:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 535
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->leftMargin:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 536
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->rightMargin:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    .line 537
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->topMargin:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    .line 538
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->bottomMargin:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    .line 539
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->goneStartMargin:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 540
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->goneEndMargin:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 542
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 543
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->verticalBias:F

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 545
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->dimensionRatio:Ljava/lang/String;

    iput-object v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 546
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->editorAbsoluteX:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 547
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->editorAbsoluteY:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 548
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->verticalWeight:F

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 549
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalWeight:F

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 550
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->verticalChainStyle:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 551
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalChainStyle:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 552
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->widthDefault:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 553
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->heightDefault:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 554
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->widthMax:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 555
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->heightMax:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 556
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->widthMin:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 557
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->heightMin:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 558
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->orientation:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    .line 559
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->guidePercent:F

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 560
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->guideBegin:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 561
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->guideEnd:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 562
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->mWidth:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    .line 563
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->mHeight:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    .line 564
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 565
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->startMargin:I

    invoke-virtual {v2, v3}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    .line 566
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->endMargin:I

    invoke-virtual {v2, v3}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->setMarginEnd(I)V

    .line 569
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->validate()V

    .line 570
    return-void
.end method

.method public clone()Landroid/support/constraint/ConstraintSet$Constraint;
    .locals 5

    .prologue
    .line 399
    move-object v0, p0

    new-instance v2, Landroid/support/constraint/ConstraintSet$Constraint;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/support/constraint/ConstraintSet$Constraint;-><init>()V

    move-object v1, v2

    .line 400
    move-object v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->mIsGuideline:Z

    iput-boolean v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->mIsGuideline:Z

    .line 401
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->mWidth:I

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->mWidth:I

    .line 402
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->mHeight:I

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->mHeight:I

    .line 403
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->guideBegin:I

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->guideBegin:I

    .line 404
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->guideEnd:I

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->guideEnd:I

    .line 405
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->guidePercent:F

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->guidePercent:F

    .line 406
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    .line 407
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    .line 408
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    .line 409
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    .line 410
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 411
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    .line 412
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 413
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 414
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 415
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    .line 416
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    .line 417
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    .line 418
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->endToEnd:I

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->endToEnd:I

    .line 419
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    .line 420
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->verticalBias:F

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->verticalBias:F

    .line 421
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->dimensionRatio:Ljava/lang/String;

    iput-object v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->dimensionRatio:Ljava/lang/String;

    .line 422
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->editorAbsoluteX:I

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->editorAbsoluteX:I

    .line 423
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->editorAbsoluteY:I

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->editorAbsoluteY:I

    .line 424
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    .line 425
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    .line 426
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    .line 427
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    .line 428
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    .line 429
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->orientation:I

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->orientation:I

    .line 430
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->leftMargin:I

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->leftMargin:I

    .line 431
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->rightMargin:I

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->rightMargin:I

    .line 432
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->topMargin:I

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->topMargin:I

    .line 433
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->bottomMargin:I

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->bottomMargin:I

    .line 434
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->endMargin:I

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->endMargin:I

    .line 435
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->startMargin:I

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->startMargin:I

    .line 436
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    .line 437
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->goneLeftMargin:I

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->goneLeftMargin:I

    .line 438
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->goneTopMargin:I

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->goneTopMargin:I

    .line 439
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->goneRightMargin:I

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->goneRightMargin:I

    .line 440
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->goneBottomMargin:I

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->goneBottomMargin:I

    .line 441
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->goneEndMargin:I

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->goneEndMargin:I

    .line 442
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->goneStartMargin:I

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->goneStartMargin:I

    .line 443
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->verticalWeight:F

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->verticalWeight:F

    .line 444
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalWeight:F

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalWeight:F

    .line 445
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalChainStyle:I

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalChainStyle:I

    .line 446
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->verticalChainStyle:I

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->verticalChainStyle:I

    .line 447
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->alpha:F

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->alpha:F

    .line 448
    move-object v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->applyElevation:Z

    iput-boolean v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->applyElevation:Z

    .line 449
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->elevation:F

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->elevation:F

    .line 450
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->rotationX:F

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->rotationX:F

    .line 451
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->rotationY:F

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->rotationY:F

    .line 452
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->scaleX:F

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->scaleX:F

    .line 453
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->scaleY:F

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->scaleY:F

    .line 454
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotX:F

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotX:F

    .line 455
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotY:F

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotY:F

    .line 456
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->translationX:F

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->translationX:F

    .line 457
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->translationY:F

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->translationY:F

    .line 458
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->translationZ:F

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->translationZ:F

    .line 459
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->widthDefault:I

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->widthDefault:I

    .line 460
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->heightDefault:I

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->heightDefault:I

    .line 461
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->widthMax:I

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->widthMax:I

    .line 462
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->heightMax:I

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->heightMax:I

    .line 463
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->widthMin:I

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->widthMin:I

    .line 464
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintSet$Constraint;->heightMin:I

    iput v3, v2, Landroid/support/constraint/ConstraintSet$Constraint;->heightMin:I

    .line 466
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 328
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/constraint/ConstraintSet$Constraint;->clone()Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
