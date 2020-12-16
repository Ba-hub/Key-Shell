.class public Landroid/support/constraint/ConstraintLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "ConstraintLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final BASELINE:I = 0x5

.field public static final BOTTOM:I = 0x4

.field public static final CHAIN_PACKED:I = 0x2

.field public static final CHAIN_SPREAD:I = 0x0

.field public static final CHAIN_SPREAD_INSIDE:I = 0x1

.field public static final END:I = 0x7

.field public static final HORIZONTAL:I = 0x0

.field public static final LEFT:I = 0x1

.field public static final MATCH_CONSTRAINT:I = 0x0

.field public static final MATCH_CONSTRAINT_SPREAD:I = 0x0

.field public static final MATCH_CONSTRAINT_WRAP:I = 0x1

.field public static final PARENT_ID:I = 0x0

.field public static final RIGHT:I = 0x2

.field public static final START:I = 0x6

.field public static final TOP:I = 0x3

.field public static final UNSET:I = -0x1

.field public static final VERTICAL:I = 0x1


# instance fields
.field public baselineToBaseline:I

.field public bottomToBottom:I

.field public bottomToTop:I

.field public dimensionRatio:Ljava/lang/String;

.field dimensionRatioSide:I

.field dimensionRatioValue:F

.field public editorAbsoluteX:I

.field public editorAbsoluteY:I

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

.field public horizontalBias:F

.field public horizontalChainStyle:I

.field horizontalDimensionFixed:Z

.field public horizontalWeight:F

.field isGuideline:Z

.field public leftToLeft:I

.field public leftToRight:I

.field public matchConstraintDefaultHeight:I

.field public matchConstraintDefaultWidth:I

.field public matchConstraintMaxHeight:I

.field public matchConstraintMaxWidth:I

.field public matchConstraintMinHeight:I

.field public matchConstraintMinWidth:I

.field needsBaseline:Z

.field public orientation:I

.field resolveGoneLeftMargin:I

.field resolveGoneRightMargin:I

.field resolvedHorizontalBias:F

.field resolvedLeftToLeft:I

.field resolvedLeftToRight:I

.field resolvedRightToLeft:I

.field resolvedRightToRight:I

.field public rightToLeft:I

.field public rightToRight:I

.field public startToEnd:I

.field public startToStart:I

.field public topToBottom:I

.field public topToTop:I

.field public verticalBias:F

.field public verticalChainStyle:I

.field verticalDimensionFixed:Z

.field public verticalWeight:F

.field widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;


# direct methods
.method public constructor <init>(II)V
    .locals 7

    .prologue
    .line 1869
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1355
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 1360
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 1365
    move-object v3, v0

    const/high16 v4, -0x40800000    # -1.0f

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 1370
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1375
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 1380
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 1385
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1390
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1395
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 1400
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 1405
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1410
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 1415
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 1420
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 1425
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 1430
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 1435
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 1440
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 1445
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 1450
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 1455
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 1460
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 1465
    move-object v3, v0

    const/high16 v4, 0x3f000000    # 0.5f

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 1470
    move-object v3, v0

    const/high16 v4, 0x3f000000    # 0.5f

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 1475
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 1480
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    .line 1485
    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 1491
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 1497
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 1509
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 1521
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 1532
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 1543
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 1549
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 1555
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 1561
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 1567
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 1573
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 1579
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 1581
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    .line 1584
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 1585
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 1587
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 1588
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 1590
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 1591
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 1592
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 1593
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 1594
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 1595
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 1596
    move-object v3, v0

    const/high16 v4, 0x3f000000    # 0.5f

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 1598
    move-object v3, v0

    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    iput-object v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1870
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 20

    .prologue
    .line 1662
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-direct/range {v15 .. v17}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1355
    move-object v15, v1

    const/16 v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 1360
    move-object v15, v1

    const/16 v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 1365
    move-object v15, v1

    const/high16 v16, -0x40800000    # -1.0f

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 1370
    move-object v15, v1

    const/16 v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1375
    move-object v15, v1

    const/16 v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 1380
    move-object v15, v1

    const/16 v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 1385
    move-object v15, v1

    const/16 v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1390
    move-object v15, v1

    const/16 v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1395
    move-object v15, v1

    const/16 v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 1400
    move-object v15, v1

    const/16 v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 1405
    move-object v15, v1

    const/16 v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1410
    move-object v15, v1

    const/16 v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 1415
    move-object v15, v1

    const/16 v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 1420
    move-object v15, v1

    const/16 v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 1425
    move-object v15, v1

    const/16 v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 1430
    move-object v15, v1

    const/16 v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 1435
    move-object v15, v1

    const/16 v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 1440
    move-object v15, v1

    const/16 v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 1445
    move-object v15, v1

    const/16 v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 1450
    move-object v15, v1

    const/16 v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 1455
    move-object v15, v1

    const/16 v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 1460
    move-object v15, v1

    const/16 v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 1465
    move-object v15, v1

    const/high16 v16, 0x3f000000    # 0.5f

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 1470
    move-object v15, v1

    const/high16 v16, 0x3f000000    # 0.5f

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 1475
    move-object v15, v1

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 1480
    move-object v15, v1

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    .line 1485
    move-object v15, v1

    const/16 v16, 0x1

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 1491
    move-object v15, v1

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 1497
    move-object v15, v1

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 1509
    move-object v15, v1

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 1521
    move-object v15, v1

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 1532
    move-object v15, v1

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 1543
    move-object v15, v1

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 1549
    move-object v15, v1

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 1555
    move-object v15, v1

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 1561
    move-object v15, v1

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 1567
    move-object v15, v1

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 1573
    move-object v15, v1

    const/16 v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 1579
    move-object v15, v1

    const/16 v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 1581
    move-object v15, v1

    const/16 v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    .line 1584
    move-object v15, v1

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 1585
    move-object v15, v1

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 1587
    move-object v15, v1

    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 1588
    move-object v15, v1

    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 1590
    move-object v15, v1

    const/16 v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 1591
    move-object v15, v1

    const/16 v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 1592
    move-object v15, v1

    const/16 v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 1593
    move-object v15, v1

    const/16 v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 1594
    move-object v15, v1

    const/16 v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 1595
    move-object v15, v1

    const/16 v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 1596
    move-object v15, v1

    const/high16 v16, 0x3f000000    # 0.5f

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 1598
    move-object v15, v1

    new-instance v16, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v19, v16

    move-object/from16 v16, v19

    move-object/from16 v17, v19

    invoke-direct/range {v17 .. v17}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1664
    move-object v15, v2

    move-object/from16 v16, v3

    sget-object v17, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v15

    move-object v4, v15

    .line 1665
    move-object v15, v4

    invoke-virtual {v15}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v15

    move v5, v15

    .line 1666
    const/4 v15, 0x0

    move v6, v15

    :goto_0
    move v15, v6

    move/from16 v16, v5

    move/from16 v0, v16

    if-ge v15, v0, :cond_31

    .line 1667
    move-object v15, v4

    move/from16 v16, v6

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v15

    move v7, v15

    .line 1668
    move v15, v7

    sget v16, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintLeft_toLeftOf:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 1669
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1670
    move-object v15, v1

    iget v15, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1671
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    const/16 v18, -0x1

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1666
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1673
    :cond_1
    move v15, v7

    sget v16, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintLeft_toRightOf:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 1674
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 1675
    move-object v15, v1

    iget v15, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1676
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    const/16 v18, -0x1

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    goto :goto_1

    .line 1678
    :cond_2
    move v15, v7

    sget v16, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintRight_toLeftOf:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 1679
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 1680
    move-object v15, v1

    iget v15, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1681
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    const/16 v18, -0x1

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    goto :goto_1

    .line 1683
    :cond_3
    move v15, v7

    sget v16, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintRight_toRightOf:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 1684
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1685
    move-object v15, v1

    iget v15, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1686
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    const/16 v18, -0x1

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    goto/16 :goto_1

    .line 1688
    :cond_4
    move v15, v7

    sget v16, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintTop_toTopOf:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 1689
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1690
    move-object v15, v1

    iget v15, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1691
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    const/16 v18, -0x1

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    goto/16 :goto_1

    .line 1693
    :cond_5
    move v15, v7

    sget v16, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintTop_toBottomOf:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 1694
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 1695
    move-object v15, v1

    iget v15, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1696
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    const/16 v18, -0x1

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    goto/16 :goto_1

    .line 1698
    :cond_6
    move v15, v7

    sget v16, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintBottom_toTopOf:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 1699
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 1700
    move-object v15, v1

    iget v15, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1701
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    const/16 v18, -0x1

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    goto/16 :goto_1

    .line 1703
    :cond_7
    move v15, v7

    sget v16, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintBottom_toBottomOf:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    .line 1704
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1705
    move-object v15, v1

    iget v15, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1706
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    const/16 v18, -0x1

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    goto/16 :goto_1

    .line 1708
    :cond_8
    move v15, v7

    sget v16, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    .line 1709
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 1710
    move-object v15, v1

    iget v15, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1711
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    const/16 v18, -0x1

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    goto/16 :goto_1

    .line 1713
    :cond_9
    move v15, v7

    sget v16, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_editor_absoluteX:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    .line 1714
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    goto/16 :goto_1

    .line 1715
    :cond_a
    move v15, v7

    sget v16, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_editor_absoluteY:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    .line 1716
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    goto/16 :goto_1

    .line 1717
    :cond_b
    move v15, v7

    sget v16, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintGuide_begin:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    .line 1718
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    goto/16 :goto_1

    .line 1719
    :cond_c
    move v15, v7

    sget v16, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintGuide_end:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_d

    .line 1720
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    goto/16 :goto_1

    .line 1721
    :cond_d
    move v15, v7

    sget v16, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintGuide_percent:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_e

    .line 1722
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    goto/16 :goto_1

    .line 1723
    :cond_e
    move v15, v7

    sget v16, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_orientation:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 1724
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    goto/16 :goto_1

    .line 1725
    :cond_f
    move v15, v7

    sget v16, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintStart_toEndOf:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_10

    .line 1726
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 1727
    move-object v15, v1

    iget v15, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1728
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    const/16 v18, -0x1

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    goto/16 :goto_1

    .line 1730
    :cond_10
    move v15, v7

    sget v16, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintStart_toStartOf:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_11

    .line 1731
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 1732
    move-object v15, v1

    iget v15, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1733
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    const/16 v18, -0x1

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    goto/16 :goto_1

    .line 1735
    :cond_11
    move v15, v7

    sget v16, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintEnd_toStartOf:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_12

    .line 1736
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 1737
    move-object v15, v1

    iget v15, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1738
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    const/16 v18, -0x1

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    goto/16 :goto_1

    .line 1740
    :cond_12
    move v15, v7

    sget v16, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintEnd_toEndOf:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_13

    .line 1741
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 1742
    move-object v15, v1

    iget v15, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1743
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    const/16 v18, -0x1

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    goto/16 :goto_1

    .line 1745
    :cond_13
    move v15, v7

    sget v16, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_goneMarginLeft:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_14

    .line 1746
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    goto/16 :goto_1

    .line 1747
    :cond_14
    move v15, v7

    sget v16, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_goneMarginTop:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_15

    .line 1748
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    goto/16 :goto_1

    .line 1749
    :cond_15
    move v15, v7

    sget v16, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_goneMarginRight:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_16

    .line 1750
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    goto/16 :goto_1

    .line 1751
    :cond_16
    move v15, v7

    sget v16, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_goneMarginBottom:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_17

    .line 1752
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    goto/16 :goto_1

    .line 1753
    :cond_17
    move v15, v7

    sget v16, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_goneMarginStart:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_18

    .line 1754
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    goto/16 :goto_1

    .line 1755
    :cond_18
    move v15, v7

    sget v16, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_goneMarginEnd:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_19

    .line 1756
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    goto/16 :goto_1

    .line 1757
    :cond_19
    move v15, v7

    sget v16, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintHorizontal_bias:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_1a

    .line 1758
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    goto/16 :goto_1

    .line 1759
    :cond_1a
    move v15, v7

    sget v16, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintVertical_bias:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_1b

    .line 1760
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    goto/16 :goto_1

    .line 1761
    :cond_1b
    move v15, v7

    sget v16, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintDimensionRatio:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_22

    .line 1762
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 1763
    move-object v15, v1

    const/high16 v16, 0x7fc00000    # Float.NaN

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    .line 1764
    move-object v15, v1

    const/16 v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 1765
    move-object v15, v1

    iget-object v15, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    if-eqz v15, :cond_0

    .line 1766
    move-object v15, v1

    iget-object v15, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    move v8, v15

    .line 1767
    move-object v15, v1

    iget-object v15, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    const/16 v16, 0x2c

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    move v9, v15

    .line 1768
    move v15, v9

    if-lez v15, :cond_1f

    move v15, v9

    move/from16 v16, v8

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    if-ge v15, v0, :cond_1f

    .line 1769
    move-object v15, v1

    iget-object v15, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    const/16 v16, 0x0

    move/from16 v17, v9

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object v10, v15

    .line 1770
    move-object v15, v10

    const-string v16, "W"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1e

    .line 1771
    move-object v15, v1

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 1775
    :cond_1c
    :goto_2
    add-int/lit8 v9, v9, 0x1

    .line 1779
    :goto_3
    move-object v15, v1

    iget-object v15, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    const/16 v16, 0x3a

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    move v10, v15

    .line 1780
    move v15, v10

    if-ltz v15, :cond_21

    move v15, v10

    move/from16 v16, v8

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    if-ge v15, v0, :cond_21

    .line 1781
    move-object v15, v1

    iget-object v15, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    move/from16 v16, v9

    move/from16 v17, v10

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object v11, v15

    .line 1782
    move-object v15, v1

    iget-object v15, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    move/from16 v16, v10

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    move-object v12, v15

    .line 1783
    move-object v15, v11

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_1d

    move-object v15, v12

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_1d

    .line 1785
    move-object v15, v11

    :try_start_0
    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    move v13, v15

    .line 1786
    move-object v15, v12

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    move v14, v15

    .line 1787
    move v15, v13

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_1d

    move v15, v14

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_1d

    .line 1788
    move-object v15, v1

    iget v15, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_20

    .line 1789
    move-object v15, v1

    move/from16 v16, v14

    move/from16 v17, v13

    div-float v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1808
    :cond_1d
    :goto_4
    goto/16 :goto_1

    .line 1772
    :cond_1e
    move-object v15, v10

    const-string v16, "H"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1c

    .line 1773
    move-object v15, v1

    const/16 v16, 0x1

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    goto/16 :goto_2

    .line 1777
    :cond_1f
    const/4 v15, 0x0

    move v9, v15

    goto/16 :goto_3

    .line 1791
    :cond_20
    move-object v15, v1

    move/from16 v16, v13

    move/from16 v17, v14

    div-float v16, v16, v17

    :try_start_1
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 1794
    :catch_0
    move-exception v15

    move-object v13, v15

    goto :goto_4

    .line 1799
    :cond_21
    move-object v15, v1

    iget-object v15, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    move/from16 v16, v9

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    move-object v11, v15

    .line 1800
    move-object v15, v11

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_1d

    .line 1802
    move-object v15, v1

    move-object/from16 v16, v11

    :try_start_2
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1805
    goto :goto_4

    .line 1803
    :catch_1
    move-exception v15

    move-object v12, v15

    goto :goto_4

    .line 1809
    :cond_22
    move v15, v7

    sget v16, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintHorizontal_weight:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_23

    .line 1810
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    goto/16 :goto_1

    .line 1811
    :cond_23
    move v15, v7

    sget v16, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintVertical_weight:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_24

    .line 1812
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    goto/16 :goto_1

    .line 1813
    :cond_24
    move v15, v7

    sget v16, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintHorizontal_chainStyle:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_25

    .line 1814
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    goto/16 :goto_1

    .line 1815
    :cond_25
    move v15, v7

    sget v16, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintVertical_chainStyle:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_26

    .line 1816
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    goto/16 :goto_1

    .line 1817
    :cond_26
    move v15, v7

    sget v16, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintWidth_default:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_27

    .line 1818
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    goto/16 :goto_1

    .line 1819
    :cond_27
    move v15, v7

    sget v16, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintHeight_default:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_28

    .line 1820
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    goto/16 :goto_1

    .line 1821
    :cond_28
    move v15, v7

    sget v16, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintWidth_min:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_29

    .line 1822
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    goto/16 :goto_1

    .line 1823
    :cond_29
    move v15, v7

    sget v16, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintWidth_max:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_2a

    .line 1824
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    goto/16 :goto_1

    .line 1825
    :cond_2a
    move v15, v7

    sget v16, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintHeight_min:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_2b

    .line 1826
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    goto/16 :goto_1

    .line 1827
    :cond_2b
    move v15, v7

    sget v16, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintHeight_max:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_2c

    .line 1828
    move-object v15, v1

    move-object/from16 v16, v4

    move/from16 v17, v7

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    goto/16 :goto_1

    .line 1829
    :cond_2c
    move v15, v7

    sget v16, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintLeft_creator:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_2d

    goto/16 :goto_1

    .line 1831
    :cond_2d
    move v15, v7

    sget v16, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintTop_creator:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_2e

    goto/16 :goto_1

    .line 1833
    :cond_2e
    move v15, v7

    sget v16, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintRight_creator:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_2f

    goto/16 :goto_1

    .line 1835
    :cond_2f
    move v15, v7

    sget v16, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintBottom_creator:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_30

    goto/16 :goto_1

    .line 1837
    :cond_30
    move v15, v7

    sget v16, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintBaseline_creator:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    goto/16 :goto_1

    .line 1843
    :cond_31
    move-object v15, v4

    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 1844
    move-object v15, v1

    invoke-virtual {v15}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->validate()V

    .line 1845
    return-void
.end method

.method public constructor <init>(Landroid/support/constraint/ConstraintLayout$LayoutParams;)V
    .locals 6

    .prologue
    .line 1606
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1355
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 1360
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 1365
    move-object v2, v0

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 1370
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1375
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 1380
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 1385
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1390
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1395
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 1400
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 1405
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1410
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 1415
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 1420
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 1425
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 1430
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 1435
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 1440
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 1445
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 1450
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 1455
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 1460
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 1465
    move-object v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 1470
    move-object v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 1475
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 1480
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    .line 1485
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 1491
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 1497
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 1509
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 1521
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 1532
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 1543
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 1549
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 1555
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 1561
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 1567
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 1573
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 1579
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 1581
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    .line 1584
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 1585
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 1587
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 1588
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 1590
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 1591
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 1592
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 1593
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 1594
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 1595
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 1596
    move-object v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 1598
    move-object v2, v0

    new-instance v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    iput-object v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1607
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 1608
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 1609
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 1610
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1611
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 1612
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 1613
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1614
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1615
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 1616
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 1617
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1618
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 1619
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 1620
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 1621
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 1622
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 1623
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 1624
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 1625
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 1626
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 1627
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 1628
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 1629
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 1630
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 1631
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    iput-object v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 1632
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    .line 1633
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 1634
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 1635
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 1636
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 1637
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 1638
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 1639
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 1640
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 1641
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 1642
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 1643
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 1644
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 1645
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 1646
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    .line 1647
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    iput-boolean v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 1648
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    iput-boolean v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 1649
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    iput-boolean v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 1650
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    iput-boolean v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 1651
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 1652
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 1653
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 1654
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 1655
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 1656
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 1657
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 1658
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1659
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 6

    .prologue
    .line 1873
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1355
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 1360
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 1365
    move-object v2, v0

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 1370
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1375
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 1380
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 1385
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1390
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1395
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 1400
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 1405
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1410
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 1415
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 1420
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 1425
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 1430
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 1435
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 1440
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 1445
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 1450
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 1455
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 1460
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 1465
    move-object v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 1470
    move-object v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 1475
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 1480
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    .line 1485
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 1491
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 1497
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 1509
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 1521
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 1532
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 1543
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 1549
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 1555
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 1561
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 1567
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 1573
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 1579
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 1581
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    .line 1584
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 1585
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 1587
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 1588
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 1590
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 1591
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 1592
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 1593
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 1594
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 1595
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 1596
    move-object v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 1598
    move-object v2, v0

    new-instance v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    iput-object v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1874
    return-void
.end method


# virtual methods
.method public resolveLayoutDirection(I)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 1882
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    .line 1884
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 1885
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 1886
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 1887
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 1889
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 1890
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 1891
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 1892
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 1893
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 1895
    const/4 v3, 0x1

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->getLayoutDirection()I

    move-result v4

    if-ne v3, v4, :cond_8

    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 1897
    move v3, v2

    if-eqz v3, :cond_a

    .line 1898
    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_9

    .line 1899
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 1903
    :cond_0
    :goto_1
    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 1904
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 1906
    :cond_1
    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 1907
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 1909
    :cond_2
    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 1910
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 1912
    :cond_3
    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 1913
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 1915
    :cond_4
    move-object v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v5, v0

    iget v5, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 1937
    :cond_5
    :goto_2
    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    .line 1938
    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_10

    .line 1939
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 1944
    :cond_6
    :goto_3
    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_7

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_7

    .line 1945
    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_11

    .line 1946
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 1951
    :cond_7
    :goto_4
    return-void

    .line 1895
    :cond_8
    const/4 v3, 0x0

    goto :goto_0

    .line 1900
    :cond_9
    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 1901
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    goto :goto_1

    .line 1917
    :cond_a
    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_b

    .line 1918
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 1920
    :cond_b
    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_c

    .line 1921
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 1923
    :cond_c
    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_d

    .line 1924
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 1926
    :cond_d
    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_e

    .line 1927
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 1929
    :cond_e
    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_f

    .line 1930
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 1932
    :cond_f
    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 1933
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    goto/16 :goto_2

    .line 1940
    :cond_10
    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    .line 1941
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    goto :goto_3

    .line 1947
    :cond_11
    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_7

    .line 1948
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    iput v4, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    goto :goto_4
.end method

.method public validate()V
    .locals 5

    .prologue
    .line 1848
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 1849
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 1850
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 1851
    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    if-eqz v1, :cond_0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1852
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 1854
    :cond_1
    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    if-eqz v1, :cond_2

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 1855
    :cond_2
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 1857
    :cond_3
    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_4

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    .line 1858
    :cond_4
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 1859
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 1860
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 1861
    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    instance-of v1, v1, Landroid/support/constraint/solver/widgets/Guideline;

    if-nez v1, :cond_5

    .line 1862
    move-object v1, v0

    new-instance v2, Landroid/support/constraint/solver/widgets/Guideline;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/support/constraint/solver/widgets/Guideline;-><init>()V

    iput-object v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1864
    :cond_5
    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    check-cast v1, Landroid/support/constraint/solver/widgets/Guideline;

    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/Guideline;->setOrientation(I)V

    .line 1866
    :cond_6
    return-void
.end method
