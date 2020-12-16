.class public Landroid/support/constraint/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "ConstraintLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/ConstraintLayout$LayoutParams;
    }
.end annotation


# static fields
.field static final ALLOWS_EMBEDDED:Z = false

.field private static final SIMPLE_LAYOUT:Z = true

.field private static final TAG:Ljava/lang/String; = "ConstraintLayout"

.field public static final VERSION:Ljava/lang/String; = "ConstraintLayout-1.0.0"


# instance fields
.field mChildrenByIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintSet:Landroid/support/constraint/ConstraintSet;

.field private mDirtyHierarchy:Z

.field mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMinHeight:I

.field private mMinWidth:I

.field private mOptimizationLevel:I

.field private final mVariableDimensionsWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 414
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 395
    move-object v2, v0

    new-instance v3, Landroid/util/SparseArray;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v2, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 400
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/16 v5, 0x64

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v2, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 402
    move-object v2, v0

    new-instance v3, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v3, v2, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 404
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 405
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    .line 406
    move-object v2, v0

    const v3, 0x7fffffff

    iput v3, v2, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    .line 407
    move-object v2, v0

    const v3, 0x7fffffff

    iput v3, v2, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    .line 409
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 410
    move-object v2, v0

    const/4 v3, 0x2

    iput v3, v2, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    .line 411
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 415
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/support/constraint/ConstraintLayout;->init(Landroid/util/AttributeSet;)V

    .line 416
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    .line 419
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 395
    move-object v3, v0

    new-instance v4, Landroid/util/SparseArray;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, v3, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 400
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/16 v6, 0x64

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, v3, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 402
    move-object v3, v0

    new-instance v4, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v4, v3, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 404
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 405
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    .line 406
    move-object v3, v0

    const v4, 0x7fffffff

    iput v4, v3, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    .line 407
    move-object v3, v0

    const v4, 0x7fffffff

    iput v4, v3, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    .line 409
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 410
    move-object v3, v0

    const/4 v4, 0x2

    iput v4, v3, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    .line 411
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 420
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroid/support/constraint/ConstraintLayout;->init(Landroid/util/AttributeSet;)V

    .line 421
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    .line 424
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 395
    move-object v4, v0

    new-instance v5, Landroid/util/SparseArray;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, v4, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 400
    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const/16 v7, 0x64

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v4, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 402
    move-object v4, v0

    new-instance v5, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v5, v4, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 404
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 405
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    .line 406
    move-object v4, v0

    const v5, 0x7fffffff

    iput v5, v4, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    .line 407
    move-object v4, v0

    const v5, 0x7fffffff

    iput v5, v4, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    .line 409
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 410
    move-object v4, v0

    const/4 v5, 0x2

    iput v5, v4, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    .line 411
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 425
    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Landroid/support/constraint/ConstraintLayout;->init(Landroid/util/AttributeSet;)V

    .line 426
    return-void
.end method

.method private final getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 5

    .prologue
    .line 862
    move-object v0, p0

    move v1, p1

    move v3, v1

    if-nez v3, :cond_0

    .line 863
    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object v0, v3

    .line 869
    :goto_0
    return-object v0

    .line 865
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v2, v3

    .line 866
    move-object v3, v2

    move-object v4, v0

    if-ne v3, v4, :cond_1

    .line 867
    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object v0, v3

    goto :goto_0

    .line 869
    :cond_1
    move-object v3, v2

    if-nez v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    move-object v0, v3

    goto :goto_0

    :cond_2
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget-object v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    goto :goto_1
.end method

.method private final getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 4

    .prologue
    .line 874
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    if-ne v2, v3, :cond_0

    .line 875
    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object v0, v2

    .line 877
    :goto_0
    return-object v0

    :cond_0
    move-object v2, v1

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    move-object v0, v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget-object v2, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    goto :goto_1
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 12

    .prologue
    .line 436
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object v8, v0

    invoke-virtual {v7, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setCompanionWidget(Ljava/lang/Object;)V

    .line 437
    move-object v7, v0

    iget-object v7, v7, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v8

    move-object v9, v0

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 438
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 439
    move-object v7, v1

    if-eqz v7, :cond_7

    .line 440
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    move-object v8, v1

    sget-object v9, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    move-object v2, v7

    .line 441
    move-object v7, v2

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v7

    move v3, v7

    .line 442
    const/4 v7, 0x0

    move v4, v7

    :goto_0
    move v7, v4

    move v8, v3

    if-ge v7, v8, :cond_6

    .line 443
    move-object v7, v2

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    move v5, v7

    .line 444
    move v7, v5

    sget v8, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_minWidth:I

    if-ne v7, v8, :cond_1

    .line 445
    move-object v7, v0

    move-object v8, v2

    move v9, v5

    move-object v10, v0

    iget v10, v10, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v8

    iput v8, v7, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 442
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 446
    :cond_1
    move v7, v5

    sget v8, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_minHeight:I

    if-ne v7, v8, :cond_2

    .line 447
    move-object v7, v0

    move-object v8, v2

    move v9, v5

    move-object v10, v0

    iget v10, v10, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v8

    iput v8, v7, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    goto :goto_1

    .line 448
    :cond_2
    move v7, v5

    sget v8, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_maxWidth:I

    if-ne v7, v8, :cond_3

    .line 449
    move-object v7, v0

    move-object v8, v2

    move v9, v5

    move-object v10, v0

    iget v10, v10, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v8

    iput v8, v7, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    goto :goto_1

    .line 450
    :cond_3
    move v7, v5

    sget v8, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_maxHeight:I

    if-ne v7, v8, :cond_4

    .line 451
    move-object v7, v0

    move-object v8, v2

    move v9, v5

    move-object v10, v0

    iget v10, v10, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v8

    iput v8, v7, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    goto :goto_1

    .line 452
    :cond_4
    move v7, v5

    sget v8, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_optimizationLevel:I

    if-ne v7, v8, :cond_5

    .line 453
    move-object v7, v0

    move-object v8, v2

    move v9, v5

    move-object v10, v0

    iget v10, v10, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, v7, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    goto :goto_1

    .line 454
    :cond_5
    move v7, v5

    sget v8, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_constraintSet:I

    if-ne v7, v8, :cond_0

    .line 455
    move-object v7, v2

    move v8, v5

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    move v6, v7

    .line 456
    move-object v7, v0

    new-instance v8, Landroid/support/constraint/ConstraintSet;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Landroid/support/constraint/ConstraintSet;-><init>()V

    iput-object v8, v7, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 457
    move-object v7, v0

    iget-object v7, v7, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    move v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/support/constraint/ConstraintSet;->load(Landroid/content/Context;I)V

    goto :goto_1

    .line 460
    :cond_6
    move-object v7, v2

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 462
    :cond_7
    move-object v7, v0

    iget-object v7, v7, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object v8, v0

    iget v8, v8, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    invoke-virtual {v7, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    .line 463
    return-void
.end method

.method private internalMeasureChildren(II)V
    .locals 22

    .prologue
    .line 881
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v19

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v20

    add-int v19, v19, v20

    move/from16 v5, v19

    .line 882
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v19

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v20

    add-int v19, v19, v20

    move/from16 v6, v19

    .line 884
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v19

    move/from16 v7, v19

    .line 885
    const/16 v19, 0x0

    move/from16 v8, v19

    :goto_0
    move/from16 v19, v8

    move/from16 v20, v7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_d

    .line 886
    move-object/from16 v19, v2

    move/from16 v20, v8

    invoke-virtual/range {v19 .. v20}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v9, v19

    .line 887
    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 885
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 890
    :cond_1
    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-object/from16 v10, v19

    .line 891
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v19, v0

    move-object/from16 v11, v19

    .line 892
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 893
    goto :goto_1

    .line 896
    :cond_2
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    move/from16 v19, v0

    move/from16 v12, v19

    .line 897
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    move/from16 v19, v0

    move/from16 v13, v19

    .line 901
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    move/from16 v19, v0

    if-nez v19, :cond_4

    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    move/from16 v19, v0

    if-nez v19, :cond_4

    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    move/from16 v19, v0

    if-nez v19, :cond_3

    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    :cond_3
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    move/from16 v19, v0

    if-nez v19, :cond_a

    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    :cond_4
    const/16 v19, 0x1

    :goto_2
    move/from16 v14, v19

    .line 911
    const/16 v19, 0x0

    move/from16 v15, v19

    .line 912
    const/16 v19, 0x0

    move/from16 v16, v19

    .line 914
    move/from16 v19, v14

    if-eqz v19, :cond_7

    .line 918
    move/from16 v19, v12

    if-eqz v19, :cond_5

    move/from16 v19, v12

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 919
    :cond_5
    move/from16 v19, v3

    move/from16 v20, v6

    const/16 v21, -0x2

    invoke-static/range {v19 .. v21}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v19

    move/from16 v17, v19

    .line 921
    const/16 v19, 0x1

    move/from16 v15, v19

    .line 926
    :goto_3
    move/from16 v19, v13

    if-eqz v19, :cond_6

    move/from16 v19, v13

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 927
    :cond_6
    move/from16 v19, v4

    move/from16 v20, v5

    const/16 v21, -0x2

    invoke-static/range {v19 .. v21}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v19

    move/from16 v18, v19

    .line 929
    const/16 v19, 0x1

    move/from16 v16, v19

    .line 934
    :goto_4
    move-object/from16 v19, v9

    move/from16 v20, v17

    move/from16 v21, v18

    invoke-virtual/range {v19 .. v21}, Landroid/view/View;->measure(II)V

    .line 936
    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    move/from16 v12, v19

    .line 937
    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    move/from16 v13, v19

    .line 940
    :cond_7
    move-object/from16 v19, v11

    move/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 941
    move-object/from16 v19, v11

    move/from16 v20, v13

    invoke-virtual/range {v19 .. v20}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 942
    move/from16 v19, v15

    if-eqz v19, :cond_8

    .line 943
    move-object/from16 v19, v11

    move/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapWidth(I)V

    .line 945
    :cond_8
    move/from16 v19, v16

    if-eqz v19, :cond_9

    .line 946
    move-object/from16 v19, v11

    move/from16 v20, v13

    invoke-virtual/range {v19 .. v20}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapHeight(I)V

    .line 949
    :cond_9
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 950
    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getBaseline()I

    move-result v19

    move/from16 v17, v19

    .line 951
    move/from16 v19, v17

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 952
    move-object/from16 v19, v11

    move/from16 v20, v17

    invoke-virtual/range {v19 .. v20}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    goto/16 :goto_1

    .line 901
    :cond_a
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 923
    :cond_b
    move/from16 v19, v3

    move/from16 v20, v6

    move/from16 v21, v12

    invoke-static/range {v19 .. v21}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v19

    move/from16 v17, v19

    goto/16 :goto_3

    .line 931
    :cond_c
    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v13

    invoke-static/range {v19 .. v21}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v19

    move/from16 v18, v19

    goto :goto_4

    .line 956
    :cond_d
    return-void
.end method

.method private setChildrenConstraints()V
    .locals 27

    .prologue
    .line 636
    move-object/from16 v2, p0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 637
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    invoke-virtual/range {v20 .. v21}, Landroid/support/constraint/ConstraintSet;->applyToInternal(Landroid/support/constraint/ConstraintLayout;)V

    .line 639
    :cond_0
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v20

    move/from16 v3, v20

    .line 640
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->removeAllChildren()V

    .line 641
    const/16 v20, 0x0

    move/from16 v4, v20

    :goto_0
    move/from16 v20, v4

    move/from16 v21, v3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_20

    .line 642
    move-object/from16 v20, v2

    move/from16 v21, v4

    invoke-virtual/range {v20 .. v21}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v5, v20

    .line 643
    move-object/from16 v20, v2

    move-object/from16 v21, v5

    invoke-direct/range {v20 .. v21}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v20

    move-object/from16 v6, v20

    .line 644
    move-object/from16 v20, v6

    if-nez v20, :cond_2

    .line 641
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 648
    :cond_2
    move-object/from16 v20, v5

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-object/from16 v7, v20

    .line 649
    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->reset()V

    .line 650
    move-object/from16 v20, v6

    move-object/from16 v21, v5

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getVisibility()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 651
    move-object/from16 v20, v6

    move-object/from16 v21, v5

    invoke-virtual/range {v20 .. v21}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setCompanionWidget(Ljava/lang/Object;)V

    .line 652
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v20, v0

    move-object/from16 v21, v6

    invoke-virtual/range {v20 .. v21}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 654
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    move/from16 v20, v0

    if-nez v20, :cond_4

    .line 655
    :cond_3
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v21, v6

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v20

    .line 658
    :cond_4
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    .line 659
    move-object/from16 v20, v6

    check-cast v20, Landroid/support/constraint/solver/widgets/Guideline;

    move-object/from16 v8, v20

    .line 660
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    .line 661
    move-object/from16 v20, v8

    move-object/from16 v21, v7

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideBegin(I)V

    .line 663
    :cond_5
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    .line 664
    move-object/from16 v20, v8

    move-object/from16 v21, v7

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideEnd(I)V

    .line 666
    :cond_6
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    move/from16 v20, v0

    const/high16 v21, -0x40800000    # -1.0f

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_7

    .line 667
    move-object/from16 v20, v8

    move-object/from16 v21, v7

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/support/constraint/solver/widgets/Guideline;->setGuidePercent(F)V

    .line 669
    :cond_7
    goto/16 :goto_1

    :cond_8
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_9

    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 684
    :cond_9
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    move/from16 v20, v0

    move/from16 v8, v20

    .line 685
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    move/from16 v20, v0

    move/from16 v9, v20

    .line 686
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    move/from16 v20, v0

    move/from16 v10, v20

    .line 687
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    move/from16 v20, v0

    move/from16 v11, v20

    .line 688
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    move/from16 v20, v0

    move/from16 v12, v20

    .line 689
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    move/from16 v20, v0

    move/from16 v13, v20

    .line 690
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    move/from16 v20, v0

    move/from16 v14, v20

    .line 692
    sget v20, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v21, 0x11

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_b

    .line 695
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    move/from16 v20, v0

    move/from16 v8, v20

    .line 696
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    move/from16 v20, v0

    move/from16 v9, v20

    .line 697
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    move/from16 v20, v0

    move/from16 v10, v20

    .line 698
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    move/from16 v20, v0

    move/from16 v11, v20

    .line 699
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    move/from16 v20, v0

    move/from16 v12, v20

    .line 700
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    move/from16 v20, v0

    move/from16 v13, v20

    .line 701
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    move/from16 v20, v0

    move/from16 v14, v20

    .line 703
    move/from16 v20, v8

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    move/from16 v20, v9

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 704
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_16

    .line 705
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    move/from16 v20, v0

    move/from16 v8, v20

    .line 710
    :cond_a
    :goto_2
    move/from16 v20, v10

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    move/from16 v20, v11

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 711
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_17

    .line 712
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    move/from16 v20, v0

    move/from16 v10, v20

    .line 720
    :cond_b
    :goto_3
    move/from16 v20, v8

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_18

    .line 721
    move-object/from16 v20, v2

    move/from16 v21, v8

    invoke-direct/range {v20 .. v21}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v20

    move-object/from16 v15, v20

    .line 722
    move-object/from16 v20, v15

    if-eqz v20, :cond_c

    .line 723
    move-object/from16 v20, v6

    sget-object v21, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v22, v15

    sget-object v23, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v24, v7

    move-object/from16 v0, v24

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    move/from16 v24, v0

    move/from16 v25, v12

    invoke-virtual/range {v20 .. v25}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 737
    :cond_c
    :goto_4
    move/from16 v20, v10

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_19

    .line 738
    move-object/from16 v20, v2

    move/from16 v21, v10

    invoke-direct/range {v20 .. v21}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v20

    move-object/from16 v15, v20

    .line 739
    move-object/from16 v20, v15

    if-eqz v20, :cond_d

    .line 740
    move-object/from16 v20, v6

    sget-object v21, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v22, v15

    sget-object v23, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v24, v7

    move-object/from16 v0, v24

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    move/from16 v24, v0

    move/from16 v25, v13

    invoke-virtual/range {v20 .. v25}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 754
    :cond_d
    :goto_5
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1a

    .line 755
    move-object/from16 v20, v2

    move-object/from16 v21, v7

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    move/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v20

    move-object/from16 v15, v20

    .line 756
    move-object/from16 v20, v15

    if-eqz v20, :cond_e

    .line 757
    move-object/from16 v20, v6

    sget-object v21, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v22, v15

    sget-object v23, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v24, v7

    move-object/from16 v0, v24

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    move/from16 v24, v0

    move-object/from16 v25, v7

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    move/from16 v25, v0

    invoke-virtual/range {v20 .. v25}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 771
    :cond_e
    :goto_6
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1b

    .line 772
    move-object/from16 v20, v2

    move-object/from16 v21, v7

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    move/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v20

    move-object/from16 v15, v20

    .line 773
    move-object/from16 v20, v15

    if-eqz v20, :cond_f

    .line 774
    move-object/from16 v20, v6

    sget-object v21, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v22, v15

    sget-object v23, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v24, v7

    move-object/from16 v0, v24

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    move/from16 v24, v0

    move-object/from16 v25, v7

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    move/from16 v25, v0

    invoke-virtual/range {v20 .. v25}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 788
    :cond_f
    :goto_7
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_10

    .line 789
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v21, v7

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/View;

    move-object/from16 v15, v20

    .line 790
    move-object/from16 v20, v2

    move-object/from16 v21, v7

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    move/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v20

    move-object/from16 v16, v20

    .line 791
    move-object/from16 v20, v16

    if-eqz v20, :cond_10

    move-object/from16 v20, v15

    if-eqz v20, :cond_10

    move-object/from16 v20, v15

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move/from16 v20, v0

    if-eqz v20, :cond_10

    .line 792
    move-object/from16 v20, v15

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-object/from16 v17, v20

    .line 793
    move-object/from16 v20, v7

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 794
    move-object/from16 v20, v17

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 795
    move-object/from16 v20, v6

    sget-object v21, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v20 .. v21}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v20

    move-object/from16 v18, v20

    .line 796
    move-object/from16 v20, v16

    sget-object v21, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 797
    invoke-virtual/range {v20 .. v21}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v20

    move-object/from16 v19, v20

    .line 798
    move-object/from16 v20, v18

    move-object/from16 v21, v19

    const/16 v22, 0x0

    const/16 v23, -0x1

    sget-object v24, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-virtual/range {v20 .. v26}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    move-result v20

    .line 801
    move-object/from16 v20, v6

    sget-object v21, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v20 .. v21}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 802
    move-object/from16 v20, v6

    sget-object v21, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v20 .. v21}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 806
    :cond_10
    move/from16 v20, v14

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-ltz v20, :cond_11

    move/from16 v20, v14

    const/high16 v21, 0x3f000000    # 0.5f

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_11

    .line 807
    move-object/from16 v20, v6

    move/from16 v21, v14

    invoke-virtual/range {v20 .. v21}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 809
    :cond_11
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-ltz v20, :cond_12

    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    move/from16 v20, v0

    const/high16 v21, 0x3f000000    # 0.5f

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_12

    .line 810
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    .line 813
    :cond_12
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroid/support/constraint/ConstraintLayout;->isInEditMode()Z

    move-result v20

    if-eqz v20, :cond_14

    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_13

    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_14

    .line 815
    :cond_13
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    move/from16 v21, v0

    move-object/from16 v22, v7

    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setOrigin(II)V

    .line 819
    :cond_14
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    move/from16 v20, v0

    if-nez v20, :cond_1d

    .line 820
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1c

    .line 821
    move-object/from16 v20, v6

    sget-object v21, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual/range {v20 .. v21}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 822
    move-object/from16 v20, v6

    sget-object v21, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v20 .. v21}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v20

    move-object/from16 v21, v7

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 823
    move-object/from16 v20, v6

    sget-object v21, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v20 .. v21}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v20

    move-object/from16 v21, v7

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 832
    :goto_8
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    move/from16 v20, v0

    if-nez v20, :cond_1f

    .line 833
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1e

    .line 834
    move-object/from16 v20, v6

    sget-object v21, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual/range {v20 .. v21}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 835
    move-object/from16 v20, v6

    sget-object v21, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v20 .. v21}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v20

    move-object/from16 v21, v7

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 836
    move-object/from16 v20, v6

    sget-object v21, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v20 .. v21}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v20

    move-object/from16 v21, v7

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 846
    :goto_9
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_15

    .line 847
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setDimensionRatio(Ljava/lang/String;)V

    .line 849
    :cond_15
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalWeight(F)V

    .line 850
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalWeight(F)V

    .line 851
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    .line 852
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    .line 853
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    move/from16 v21, v0

    move-object/from16 v22, v7

    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    move/from16 v22, v0

    move-object/from16 v23, v7

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    move/from16 v23, v0

    invoke-virtual/range {v20 .. v23}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalMatchStyle(III)V

    .line 855
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    move/from16 v21, v0

    move-object/from16 v22, v7

    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    move/from16 v22, v0

    move-object/from16 v23, v7

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    move/from16 v23, v0

    invoke-virtual/range {v20 .. v23}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalMatchStyle(III)V

    goto/16 :goto_1

    .line 706
    :cond_16
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_a

    .line 707
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    move/from16 v20, v0

    move/from16 v9, v20

    goto/16 :goto_2

    .line 713
    :cond_17
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_b

    .line 714
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    move/from16 v20, v0

    move/from16 v11, v20

    goto/16 :goto_3

    .line 727
    :cond_18
    move/from16 v20, v9

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_c

    .line 728
    move-object/from16 v20, v2

    move/from16 v21, v9

    invoke-direct/range {v20 .. v21}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v20

    move-object/from16 v15, v20

    .line 729
    move-object/from16 v20, v15

    if-eqz v20, :cond_c

    .line 730
    move-object/from16 v20, v6

    sget-object v21, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v22, v15

    sget-object v23, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v24, v7

    move-object/from16 v0, v24

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    move/from16 v24, v0

    move/from16 v25, v12

    invoke-virtual/range {v20 .. v25}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    goto/16 :goto_4

    .line 744
    :cond_19
    move/from16 v20, v11

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_d

    .line 745
    move-object/from16 v20, v2

    move/from16 v21, v11

    invoke-direct/range {v20 .. v21}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v20

    move-object/from16 v15, v20

    .line 746
    move-object/from16 v20, v15

    if-eqz v20, :cond_d

    .line 747
    move-object/from16 v20, v6

    sget-object v21, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v22, v15

    sget-object v23, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v24, v7

    move-object/from16 v0, v24

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    move/from16 v24, v0

    move/from16 v25, v13

    invoke-virtual/range {v20 .. v25}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    goto/16 :goto_5

    .line 761
    :cond_1a
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_e

    .line 762
    move-object/from16 v20, v2

    move-object/from16 v21, v7

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    move/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v20

    move-object/from16 v15, v20

    .line 763
    move-object/from16 v20, v15

    if-eqz v20, :cond_e

    .line 764
    move-object/from16 v20, v6

    sget-object v21, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v22, v15

    sget-object v23, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v24, v7

    move-object/from16 v0, v24

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    move/from16 v24, v0

    move-object/from16 v25, v7

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    move/from16 v25, v0

    invoke-virtual/range {v20 .. v25}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    goto/16 :goto_6

    .line 778
    :cond_1b
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_f

    .line 779
    move-object/from16 v20, v2

    move-object/from16 v21, v7

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    move/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v20

    move-object/from16 v15, v20

    .line 780
    move-object/from16 v20, v15

    if-eqz v20, :cond_f

    .line 781
    move-object/from16 v20, v6

    sget-object v21, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v22, v15

    sget-object v23, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v24, v7

    move-object/from16 v0, v24

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    move/from16 v24, v0

    move-object/from16 v25, v7

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    move/from16 v25, v0

    invoke-virtual/range {v20 .. v25}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    goto/16 :goto_7

    .line 825
    :cond_1c
    move-object/from16 v20, v6

    sget-object v21, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual/range {v20 .. v21}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 826
    move-object/from16 v20, v6

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    goto/16 :goto_8

    .line 829
    :cond_1d
    move-object/from16 v20, v6

    sget-object v21, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual/range {v20 .. v21}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 830
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    goto/16 :goto_8

    .line 838
    :cond_1e
    move-object/from16 v20, v6

    sget-object v21, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual/range {v20 .. v21}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 839
    move-object/from16 v20, v6

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    goto/16 :goto_9

    .line 842
    :cond_1f
    move-object/from16 v20, v6

    sget-object v21, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual/range {v20 .. v21}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 843
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    goto/16 :goto_9

    .line 859
    :cond_20
    return-void
.end method

.method private setSelfDimensionBehaviour(II)V
    .locals 17

    .prologue
    .line 1091
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move v14, v1

    invoke-static {v14}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    move v3, v14

    .line 1092
    move v14, v1

    invoke-static {v14}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    move v4, v14

    .line 1093
    move v14, v2

    invoke-static {v14}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    move v5, v14

    .line 1094
    move v14, v2

    invoke-static {v14}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    move v6, v14

    .line 1096
    move-object v14, v0

    invoke-virtual {v14}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v14

    move-object v15, v0

    invoke-virtual {v15}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v15

    add-int/2addr v14, v15

    move v7, v14

    .line 1097
    move-object v14, v0

    invoke-virtual {v14}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v14

    move-object v15, v0

    invoke-virtual {v15}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v15

    add-int/2addr v14, v15

    move v8, v14

    .line 1099
    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v9, v14

    .line 1100
    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v10, v14

    .line 1101
    const/4 v14, 0x0

    move v11, v14

    .line 1102
    const/4 v14, 0x0

    move v12, v14

    .line 1104
    move-object v14, v0

    invoke-virtual {v14}, Landroid/support/constraint/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    move-object v13, v14

    .line 1105
    move v14, v3

    sparse-switch v14, :sswitch_data_0

    .line 1119
    :goto_0
    move v14, v5

    sparse-switch v14, :sswitch_data_1

    .line 1134
    :goto_1
    move-object v14, v0

    iget-object v14, v14, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 1135
    move-object v14, v0

    iget-object v14, v14, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    .line 1136
    move-object v14, v0

    iget-object v14, v14, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object v15, v9

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1137
    move-object v14, v0

    iget-object v14, v14, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move v15, v11

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1138
    move-object v14, v0

    iget-object v14, v14, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object v15, v10

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1139
    move-object v14, v0

    iget-object v14, v14, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move v15, v12

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 1140
    move-object v14, v0

    iget-object v14, v14, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object v15, v0

    iget v15, v15, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v16

    sub-int v15, v15, v16

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 1141
    move-object v14, v0

    iget-object v14, v14, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object v15, v0

    iget v15, v15, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v16

    sub-int v15, v15, v16

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    .line 1142
    return-void

    .line 1107
    :sswitch_0
    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v9, v14

    .line 1108
    move v14, v4

    move v11, v14

    .line 1110
    goto :goto_0

    .line 1112
    :sswitch_1
    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v9, v14

    .line 1114
    goto :goto_0

    .line 1116
    :sswitch_2
    move-object v14, v0

    iget v14, v14, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    move v15, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    move v15, v8

    sub-int/2addr v14, v15

    move v11, v14

    goto :goto_0

    .line 1121
    :sswitch_3
    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v10, v14

    .line 1122
    move v14, v6

    move v12, v14

    .line 1124
    goto :goto_1

    .line 1126
    :sswitch_4
    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v10, v14

    .line 1128
    goto :goto_1

    .line 1130
    :sswitch_5
    move-object v14, v0

    iget v14, v14, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    move v15, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    move v15, v7

    sub-int/2addr v14, v15

    move v12, v14

    goto/16 :goto_1

    .line 1105
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_2
    .end sparse-switch

    .line 1119
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_3
        0x0 -> :sswitch_4
        0x40000000 -> :sswitch_5
    .end sparse-switch
.end method

.method private updateHierarchy()V
    .locals 7

    .prologue
    .line 619
    move-object v0, p0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v5

    move v1, v5

    .line 621
    const/4 v5, 0x0

    move v2, v5

    .line 622
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v1

    if-ge v5, v6, :cond_0

    .line 623
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v4, v5

    .line 624
    move-object v5, v4

    invoke-virtual {v5}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 625
    const/4 v5, 0x1

    move v2, v5

    .line 629
    :cond_0
    move v5, v2

    if-eqz v5, :cond_1

    .line 630
    move-object v5, v0

    iget-object v5, v5, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 631
    move-object v5, v0

    invoke-direct {v5}, Landroid/support/constraint/ConstraintLayout;->setChildrenConstraints()V

    .line 633
    :cond_1
    return-void

    .line 622
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 8

    .prologue
    .line 470
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 471
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-ge v4, v5, :cond_0

    .line 472
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/constraint/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 474
    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 3

    .prologue
    .line 1247
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move v0, v2

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .locals 6

    .prologue
    .line 1231
    move-object v0, p0

    new-instance v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 383
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/constraint/ConstraintLayout;->generateDefaultLayoutParams()Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .locals 7

    .prologue
    .line 1223
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 383
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/constraint/ConstraintLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 6

    .prologue
    .line 1239
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v2

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 2

    .prologue
    .line 615
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    move v0, v1

    return v0
.end method

.method public getMaxWidth()I
    .locals 2

    .prologue
    .line 604
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    move v0, v1

    return v0
.end method

.method public getMinHeight()I
    .locals 2

    .prologue
    .line 567
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    move v0, v1

    return v0
.end method

.method public getMinWidth()I
    .locals 2

    .prologue
    .line 556
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    move v0, v1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 23

    .prologue
    .line 1163
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v18

    move/from16 v8, v18

    .line 1164
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Landroid/support/constraint/ConstraintLayout;->isInEditMode()Z

    move-result v18

    move/from16 v9, v18

    .line 1165
    const/16 v18, 0x0

    move/from16 v10, v18

    :goto_0
    move/from16 v18, v10

    move/from16 v19, v8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 1166
    move-object/from16 v18, v2

    move/from16 v19, v10

    invoke-virtual/range {v18 .. v19}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v11, v18

    .line 1167
    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-object/from16 v12, v18

    .line 1168
    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    move-object/from16 v18, v12

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    move/from16 v18, v9

    if-nez v18, :cond_0

    .line 1165
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1174
    :cond_0
    move-object/from16 v18, v12

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v18, v0

    move-object/from16 v13, v18

    .line 1176
    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawX()I

    move-result v18

    move/from16 v14, v18

    .line 1177
    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawY()I

    move-result v18

    move/from16 v15, v18

    .line 1178
    move/from16 v18, v14

    move-object/from16 v19, v13

    invoke-virtual/range {v19 .. v19}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v16, v18

    .line 1179
    move/from16 v18, v15

    move-object/from16 v19, v13

    invoke-virtual/range {v19 .. v19}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v17, v18

    .line 1197
    move-object/from16 v18, v11

    move/from16 v19, v14

    move/from16 v20, v15

    move/from16 v21, v16

    move/from16 v22, v17

    invoke-virtual/range {v18 .. v22}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 1199
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 27

    .prologue
    .line 963
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v23

    move/from16 v5, v23

    .line 964
    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v23

    move/from16 v6, v23

    .line 966
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v23, v0

    move/from16 v24, v5

    invoke-virtual/range {v23 .. v24}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setX(I)V

    .line 967
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v23, v0

    move/from16 v24, v6

    invoke-virtual/range {v23 .. v24}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setY(I)V

    .line 968
    move-object/from16 v23, v2

    move/from16 v24, v3

    move/from16 v25, v4

    invoke-direct/range {v23 .. v25}, Landroid/support/constraint/ConstraintLayout;->setSelfDimensionBehaviour(II)V

    .line 969
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    move/from16 v23, v0

    if-eqz v23, :cond_0

    .line 970
    move-object/from16 v23, v2

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 971
    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v23}, Landroid/support/constraint/ConstraintLayout;->updateHierarchy()V

    .line 973
    :cond_0
    move-object/from16 v23, v2

    move/from16 v24, v3

    move/from16 v25, v4

    invoke-direct/range {v23 .. v25}, Landroid/support/constraint/ConstraintLayout;->internalMeasureChildren(II)V

    .line 982
    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v23

    if-lez v23, :cond_1

    .line 983
    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Landroid/support/constraint/ConstraintLayout;->solveLinearSystem()V

    .line 985
    :cond_1
    const/16 v23, 0x0

    move/from16 v7, v23

    .line 988
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v8, v23

    .line 990
    move/from16 v23, v6

    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v24

    add-int v23, v23, v24

    move/from16 v9, v23

    .line 991
    move/from16 v23, v5

    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v24

    add-int v23, v23, v24

    move/from16 v10, v23

    .line 993
    move/from16 v23, v8

    if-lez v23, :cond_10

    .line 994
    const/16 v23, 0x0

    move/from16 v11, v23

    .line 995
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v23

    sget-object v24, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_3

    const/16 v23, 0x1

    :goto_0
    move/from16 v12, v23

    .line 997
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v23

    sget-object v24, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_4

    const/16 v23, 0x1

    :goto_1
    move/from16 v13, v23

    .line 999
    const/16 v23, 0x0

    move/from16 v14, v23

    :goto_2
    move/from16 v23, v14

    move/from16 v24, v8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_f

    .line 1000
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move/from16 v24, v14

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v15, v23

    .line 1001
    move-object/from16 v23, v15

    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/support/constraint/solver/widgets/Guideline;

    move/from16 v23, v0

    if-eqz v23, :cond_5

    .line 999
    :cond_2
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 995
    :cond_3
    const/16 v23, 0x0

    goto :goto_0

    .line 997
    :cond_4
    const/16 v23, 0x0

    goto :goto_1

    .line 1004
    :cond_5
    move-object/from16 v23, v15

    invoke-virtual/range {v23 .. v23}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/view/View;

    move-object/from16 v16, v23

    .line 1005
    move-object/from16 v23, v16

    if-nez v23, :cond_6

    .line 1006
    goto :goto_3

    .line 1008
    :cond_6
    move-object/from16 v23, v16

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getVisibility()I

    move-result v23

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 1009
    goto :goto_3

    .line 1012
    :cond_7
    const/16 v23, 0x0

    move/from16 v17, v23

    .line 1013
    const/16 v23, 0x0

    move/from16 v18, v23

    .line 1015
    move-object/from16 v23, v16

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-object/from16 v19, v23

    .line 1016
    move-object/from16 v23, v19

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    move/from16 v23, v0

    const/16 v24, -0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    .line 1017
    move/from16 v23, v3

    move/from16 v24, v10

    move-object/from16 v25, v19

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    move/from16 v25, v0

    invoke-static/range {v23 .. v25}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v23

    move/from16 v17, v23

    .line 1021
    :goto_4
    move-object/from16 v23, v19

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    move/from16 v23, v0

    const/16 v24, -0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    .line 1022
    move/from16 v23, v4

    move/from16 v24, v9

    move-object/from16 v25, v19

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    move/from16 v25, v0

    invoke-static/range {v23 .. v25}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v23

    move/from16 v18, v23

    .line 1028
    :goto_5
    move-object/from16 v23, v16

    move/from16 v24, v17

    move/from16 v25, v18

    invoke-virtual/range {v23 .. v25}, Landroid/view/View;->measure(II)V

    .line 1030
    move-object/from16 v23, v16

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    move/from16 v20, v23

    .line 1031
    move-object/from16 v23, v16

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    move/from16 v21, v23

    .line 1032
    move/from16 v23, v20

    move-object/from16 v24, v15

    invoke-virtual/range {v24 .. v24}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_9

    .line 1033
    move-object/from16 v23, v15

    move/from16 v24, v20

    invoke-virtual/range {v23 .. v24}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1034
    move/from16 v23, v12

    if-eqz v23, :cond_8

    move-object/from16 v23, v15

    invoke-virtual/range {v23 .. v23}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getRight()I

    move-result v23

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_8

    .line 1035
    move-object/from16 v23, v15

    invoke-virtual/range {v23 .. v23}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getRight()I

    move-result v23

    move-object/from16 v24, v15

    sget-object v25, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1036
    invoke-virtual/range {v24 .. v25}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v24

    add-int v23, v23, v24

    move/from16 v22, v23

    .line 1037
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v23, v0

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    move/from16 v24, v0

    move/from16 v25, v22

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1039
    :cond_8
    const/16 v23, 0x1

    move/from16 v11, v23

    .line 1041
    :cond_9
    move/from16 v23, v21

    move-object/from16 v24, v15

    invoke-virtual/range {v24 .. v24}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_b

    .line 1042
    move-object/from16 v23, v15

    move/from16 v24, v21

    invoke-virtual/range {v23 .. v24}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 1043
    move/from16 v23, v13

    if-eqz v23, :cond_a

    move-object/from16 v23, v15

    invoke-virtual/range {v23 .. v23}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v23

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_a

    .line 1044
    move-object/from16 v23, v15

    invoke-virtual/range {v23 .. v23}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v23

    move-object/from16 v24, v15

    sget-object v25, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1045
    invoke-virtual/range {v24 .. v25}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v24

    add-int v23, v23, v24

    move/from16 v22, v23

    .line 1046
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v23, v0

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    move/from16 v24, v0

    move/from16 v25, v22

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 1048
    :cond_a
    const/16 v23, 0x1

    move/from16 v11, v23

    .line 1050
    :cond_b
    move-object/from16 v23, v19

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    move/from16 v23, v0

    if-eqz v23, :cond_c

    .line 1051
    move-object/from16 v23, v16

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getBaseline()I

    move-result v23

    move/from16 v22, v23

    .line 1052
    move/from16 v23, v22

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_c

    move/from16 v23, v22

    move-object/from16 v24, v15

    invoke-virtual/range {v24 .. v24}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_c

    .line 1053
    move-object/from16 v23, v15

    move/from16 v24, v22

    invoke-virtual/range {v23 .. v24}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 1054
    const/16 v23, 0x1

    move/from16 v11, v23

    .line 1058
    :cond_c
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0xb

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_2

    .line 1059
    move/from16 v23, v7

    move-object/from16 v24, v16

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredState()I

    move-result v24

    invoke-static/range {v23 .. v24}, Landroid/support/constraint/ConstraintLayout;->combineMeasuredStates(II)I

    move-result v23

    move/from16 v7, v23

    goto/16 :goto_3

    .line 1019
    :cond_d
    move-object/from16 v23, v15

    invoke-virtual/range {v23 .. v23}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v23

    const/high16 v24, 0x40000000    # 2.0f

    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    move/from16 v17, v23

    goto/16 :goto_4

    .line 1024
    :cond_e
    move-object/from16 v23, v15

    invoke-virtual/range {v23 .. v23}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v23

    const/high16 v24, 0x40000000    # 2.0f

    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    move/from16 v18, v23

    goto/16 :goto_5

    .line 1062
    :cond_f
    move/from16 v23, v11

    if-eqz v23, :cond_10

    .line 1063
    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Landroid/support/constraint/ConstraintLayout;->solveLinearSystem()V

    .line 1067
    :cond_10
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v23

    move/from16 v24, v10

    add-int v23, v23, v24

    move/from16 v11, v23

    .line 1068
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v23

    move/from16 v24, v9

    add-int v23, v23, v24

    move/from16 v12, v23

    .line 1070
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0xb

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_13

    .line 1071
    move/from16 v23, v11

    move/from16 v24, v3

    move/from16 v25, v7

    invoke-static/range {v23 .. v25}, Landroid/support/constraint/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v23

    move/from16 v13, v23

    .line 1072
    move/from16 v23, v12

    move/from16 v24, v4

    move/from16 v25, v7

    const/16 v26, 0x10

    shl-int/lit8 v25, v25, 0x10

    invoke-static/range {v23 .. v25}, Landroid/support/constraint/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v23

    move/from16 v14, v23

    .line 1074
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    move/from16 v23, v0

    move/from16 v24, v13

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(II)I

    move-result v23

    move/from16 v13, v23

    .line 1075
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    move/from16 v23, v0

    move/from16 v24, v14

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(II)I

    move-result v23

    move/from16 v14, v23

    .line 1076
    move/from16 v23, v13

    const v24, 0xffffff

    and-int v23, v23, v24

    move/from16 v13, v23

    .line 1077
    move/from16 v23, v14

    const v24, 0xffffff

    and-int v23, v23, v24

    move/from16 v14, v23

    .line 1078
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isWidthMeasuredTooSmall()Z

    move-result v23

    if-eqz v23, :cond_11

    .line 1079
    move/from16 v23, v13

    const/high16 v24, 0x1000000

    or-int v23, v23, v24

    move/from16 v13, v23

    .line 1081
    :cond_11
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isHeightMeasuredTooSmall()Z

    move-result v23

    if-eqz v23, :cond_12

    .line 1082
    move/from16 v23, v14

    const/high16 v24, 0x1000000

    or-int v23, v23, v24

    move/from16 v14, v23

    .line 1084
    :cond_12
    move-object/from16 v23, v2

    move/from16 v24, v13

    move/from16 v25, v14

    invoke-virtual/range {v23 .. v25}, Landroid/support/constraint/ConstraintLayout;->setMeasuredDimension(II)V

    .line 1088
    :goto_6
    return-void

    .line 1086
    :cond_13
    move-object/from16 v23, v2

    move/from16 v24, v11

    move/from16 v25, v12

    invoke-virtual/range {v23 .. v25}, Landroid/support/constraint/ConstraintLayout;->setMeasuredDimension(II)V

    goto :goto_6
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 492
    move-object v0, p0

    move-object v1, p1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_0

    .line 493
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 495
    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    move-object v2, v4

    .line 496
    move-object v4, v1

    instance-of v4, v4, Landroid/support/constraint/Guideline;

    if-eqz v4, :cond_1

    .line 497
    move-object v4, v2

    instance-of v4, v4, Landroid/support/constraint/solver/widgets/Guideline;

    if-nez v4, :cond_1

    .line 498
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-object v3, v4

    .line 499
    move-object v4, v3

    new-instance v5, Landroid/support/constraint/solver/widgets/Guideline;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroid/support/constraint/solver/widgets/Guideline;-><init>()V

    iput-object v5, v4, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 500
    move-object v4, v3

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 501
    move-object v4, v3

    iget-object v4, v4, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    check-cast v4, Landroid/support/constraint/solver/widgets/Guideline;

    move-object v5, v3

    iget v5, v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    invoke-virtual {v4, v5}, Landroid/support/constraint/solver/widgets/Guideline;->setOrientation(I)V

    .line 502
    move-object v4, v3

    iget-object v4, v4, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object v2, v4

    .line 505
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 506
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 507
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 514
    move-object v0, p0

    move-object v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 515
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 517
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 518
    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->remove(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 519
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 520
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 481
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 482
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_0

    .line 483
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/constraint/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    .line 485
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 3

    .prologue
    .line 1959
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1960
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 1961
    return-void
.end method

.method public setConstraintSet(Landroid/support/constraint/ConstraintSet;)V
    .locals 4

    .prologue
    .line 1255
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 1256
    return-void
.end method

.method public setId(I)V
    .locals 5

    .prologue
    .line 430
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 431
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->setId(I)V

    .line 432
    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v3

    move-object v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 433
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 4

    .prologue
    .line 589
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    if-ne v2, v3, :cond_0

    .line 594
    :goto_0
    return-void

    .line 592
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    .line 593
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    .line 594
    goto :goto_0
.end method

.method public setMaxWidth(I)V
    .locals 4

    .prologue
    .line 576
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    if-ne v2, v3, :cond_0

    .line 581
    :goto_0
    return-void

    .line 579
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    .line 580
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    .line 581
    goto :goto_0
.end method

.method public setMinHeight(I)V
    .locals 4

    .prologue
    .line 541
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    if-ne v2, v3, :cond_0

    .line 546
    :goto_0
    return-void

    .line 544
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    .line 545
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    .line 546
    goto :goto_0
.end method

.method public setMinWidth(I)V
    .locals 4

    .prologue
    .line 528
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    if-ne v2, v3, :cond_0

    .line 533
    :goto_0
    return-void

    .line 531
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 532
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    .line 533
    goto :goto_0
.end method

.method public setOptimizationLevel(I)V
    .locals 4

    .prologue
    .line 1215
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    .line 1216
    return-void
.end method

.method protected solveLinearSystem()V
    .locals 2

    .prologue
    .line 1151
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->layout()V

    .line 1156
    return-void
.end method
