.class public Landroid/support/v7/widget/ActionMenuView;
.super Landroid/support/v7/widget/LinearLayoutCompat;
.source "ActionMenuView.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;
.implements Landroid/support/v7/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ActionMenuView$LayoutParams;,
        Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;,
        Landroid/support/v7/widget/ActionMenuView$ActionMenuPresenterCallback;,
        Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;,
        Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

.field private mMinCellSize:I

.field mOnMenuItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ActionMenuView;->setBaselineAligned(Z)V

    .line 81
    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    move v3, v4

    .line 82
    move-object v4, v0

    const/high16 v5, 0x42600000    # 56.0f

    move v6, v3

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/support/v7/widget/ActionMenuView;->mMinCellSize:I

    .line 83
    move-object v4, v0

    const/high16 v5, 0x40800000    # 4.0f

    move v6, v3

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    .line 84
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 85
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I

    .line 86
    return-void
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 17

    .prologue
    .line 403
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v14, v0

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-object v5, v14

    .line 405
    move v14, v3

    invoke-static {v14}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    move v15, v4

    sub-int/2addr v14, v15

    move v6, v14

    .line 407
    move v14, v3

    invoke-static {v14}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    move v7, v14

    .line 408
    move v14, v6

    move v15, v7

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    move v8, v14

    .line 410
    move-object v14, v0

    instance-of v14, v14, Landroid/support/v7/view/menu/ActionMenuItemView;

    if-eqz v14, :cond_3

    move-object v14, v0

    check-cast v14, Landroid/support/v7/view/menu/ActionMenuItemView;

    :goto_0
    move-object v9, v14

    .line 412
    move-object v14, v9

    if-eqz v14, :cond_4

    move-object v14, v9

    invoke-virtual {v14}, Landroid/support/v7/view/menu/ActionMenuItemView;->hasText()Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v14, 0x1

    :goto_1
    move v10, v14

    .line 414
    const/4 v14, 0x0

    move v11, v14

    .line 415
    move v14, v2

    if-lez v14, :cond_2

    move v14, v10

    if-eqz v14, :cond_0

    move v14, v2

    const/4 v15, 0x2

    if-lt v14, v15, :cond_2

    .line 416
    :cond_0
    move v14, v1

    move v15, v2

    mul-int/2addr v14, v15

    const/high16 v15, -0x80000000

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    move v12, v14

    .line 418
    move-object v14, v0

    move v15, v12

    move/from16 v16, v8

    invoke-virtual/range {v14 .. v16}, Landroid/view/View;->measure(II)V

    .line 420
    move-object v14, v0

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    move v13, v14

    .line 421
    move v14, v13

    move v15, v1

    div-int/2addr v14, v15

    move v11, v14

    .line 422
    move v14, v13

    move v15, v1

    rem-int/2addr v14, v15

    if-eqz v14, :cond_1

    add-int/lit8 v11, v11, 0x1

    .line 423
    :cond_1
    move v14, v10

    if-eqz v14, :cond_2

    move v14, v11

    const/4 v15, 0x2

    if-ge v14, v15, :cond_2

    const/4 v14, 0x2

    move v11, v14

    .line 426
    :cond_2
    move-object v14, v5

    iget-boolean v14, v14, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v14, :cond_5

    move v14, v10

    if-eqz v14, :cond_5

    const/4 v14, 0x1

    :goto_2
    move v12, v14

    .line 427
    move-object v14, v5

    move v15, v12

    iput-boolean v15, v14, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 429
    move-object v14, v5

    move v15, v11

    iput v15, v14, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 430
    move v14, v11

    move v15, v1

    mul-int/2addr v14, v15

    move v13, v14

    .line 431
    move-object v14, v0

    move v15, v13

    const/high16 v16, 0x40000000    # 2.0f

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    move/from16 v16, v8

    invoke-virtual/range {v14 .. v16}, Landroid/view/View;->measure(II)V

    .line 433
    move v14, v11

    move v0, v14

    return v0

    .line 410
    :cond_3
    const/4 v14, 0x0

    goto :goto_0

    .line 412
    :cond_4
    const/4 v14, 0x0

    goto :goto_1

    .line 426
    :cond_5
    const/4 v14, 0x0

    goto :goto_2
.end method

.method private onMeasureExactFormat(II)V
    .locals 38

    .prologue
    .line 177
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v32, v4

    invoke-static/range {v32 .. v32}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v32

    move/from16 v5, v32

    .line 178
    move/from16 v32, v3

    invoke-static/range {v32 .. v32}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v32

    move/from16 v6, v32

    .line 179
    move/from16 v32, v4

    invoke-static/range {v32 .. v32}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v32

    move/from16 v7, v32

    .line 181
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v32

    move-object/from16 v33, v2

    invoke-virtual/range {v33 .. v33}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v33

    add-int v32, v32, v33

    move/from16 v8, v32

    .line 182
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Landroid/support/v7/widget/ActionMenuView;->getPaddingTop()I

    move-result v32

    move-object/from16 v33, v2

    invoke-virtual/range {v33 .. v33}, Landroid/support/v7/widget/ActionMenuView;->getPaddingBottom()I

    move-result v33

    add-int v32, v32, v33

    move/from16 v9, v32

    .line 184
    move/from16 v32, v4

    move/from16 v33, v9

    const/16 v34, -0x2

    invoke-static/range {v32 .. v34}, Landroid/support/v7/widget/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v32

    move/from16 v10, v32

    .line 187
    move/from16 v32, v6

    move/from16 v33, v8

    sub-int v32, v32, v33

    move/from16 v6, v32

    .line 190
    move/from16 v32, v6

    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->mMinCellSize:I

    move/from16 v33, v0

    div-int v32, v32, v33

    move/from16 v11, v32

    .line 191
    move/from16 v32, v6

    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->mMinCellSize:I

    move/from16 v33, v0

    rem-int v32, v32, v33

    move/from16 v12, v32

    .line 193
    move/from16 v32, v11

    if-nez v32, :cond_0

    .line 195
    move-object/from16 v32, v2

    move/from16 v33, v6

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Landroid/support/v7/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 386
    :goto_0
    return-void

    .line 199
    :cond_0
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->mMinCellSize:I

    move/from16 v32, v0

    move/from16 v33, v12

    move/from16 v34, v11

    div-int v33, v33, v34

    add-int v32, v32, v33

    move/from16 v13, v32

    .line 201
    move/from16 v32, v11

    move/from16 v14, v32

    .line 202
    const/16 v32, 0x0

    move/from16 v15, v32

    .line 203
    const/16 v32, 0x0

    move/from16 v16, v32

    .line 204
    const/16 v32, 0x0

    move/from16 v17, v32

    .line 205
    const/16 v32, 0x0

    move/from16 v18, v32

    .line 206
    const/16 v32, 0x0

    move/from16 v19, v32

    .line 209
    const-wide/16 v32, 0x0

    move-wide/from16 v20, v32

    .line 211
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v32

    move/from16 v22, v32

    .line 212
    const/16 v32, 0x0

    move/from16 v23, v32

    :goto_1
    move/from16 v32, v23

    move/from16 v33, v22

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_8

    .line 213
    move-object/from16 v32, v2

    move/from16 v33, v23

    invoke-virtual/range {v32 .. v33}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    move-object/from16 v24, v32

    .line 214
    move-object/from16 v32, v24

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getVisibility()I

    move-result v32

    const/16 v33, 0x8

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_2

    .line 212
    :cond_1
    :goto_2
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 216
    :cond_2
    move-object/from16 v32, v24

    move-object/from16 v0, v32

    instance-of v0, v0, Landroid/support/v7/view/menu/ActionMenuItemView;

    move/from16 v32, v0

    move/from16 v25, v32

    .line 217
    add-int/lit8 v18, v18, 0x1

    .line 219
    move/from16 v32, v25

    if-eqz v32, :cond_3

    .line 222
    move-object/from16 v32, v24

    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v32 .. v36}, Landroid/view/View;->setPadding(IIII)V

    .line 225
    :cond_3
    move-object/from16 v32, v24

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-object/from16 v26, v32

    .line 226
    move-object/from16 v32, v26

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 227
    move-object/from16 v32, v26

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 228
    move-object/from16 v32, v26

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 229
    move-object/from16 v32, v26

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 230
    move-object/from16 v32, v26

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 231
    move-object/from16 v32, v26

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 232
    move-object/from16 v32, v26

    move/from16 v33, v25

    if-eqz v33, :cond_6

    move-object/from16 v33, v24

    check-cast v33, Landroid/support/v7/view/menu/ActionMenuItemView;

    invoke-virtual/range {v33 .. v33}, Landroid/support/v7/view/menu/ActionMenuItemView;->hasText()Z

    move-result v33

    if-eqz v33, :cond_6

    const/16 v33, 0x1

    :goto_3
    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 235
    move-object/from16 v32, v26

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v32, v0

    if-eqz v32, :cond_7

    const/16 v32, 0x1

    :goto_4
    move/from16 v27, v32

    .line 237
    move-object/from16 v32, v24

    move/from16 v33, v13

    move/from16 v34, v27

    move/from16 v35, v10

    move/from16 v36, v9

    invoke-static/range {v32 .. v36}, Landroid/support/v7/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v32

    move/from16 v28, v32

    .line 240
    move/from16 v32, v16

    move/from16 v33, v28

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    move-result v32

    move/from16 v16, v32

    .line 241
    move-object/from16 v32, v26

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v32, v0

    if-eqz v32, :cond_4

    add-int/lit8 v17, v17, 0x1

    .line 242
    :cond_4
    move-object/from16 v32, v26

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v32, v0

    if-eqz v32, :cond_5

    const/16 v32, 0x1

    move/from16 v19, v32

    .line 244
    :cond_5
    move/from16 v32, v14

    move/from16 v33, v28

    sub-int v32, v32, v33

    move/from16 v14, v32

    .line 245
    move/from16 v32, v15

    move-object/from16 v33, v24

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getMeasuredHeight()I

    move-result v33

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    move-result v32

    move/from16 v15, v32

    .line 246
    move/from16 v32, v28

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1

    move-wide/from16 v32, v20

    const/16 v34, 0x1

    move/from16 v35, v23

    shl-int v34, v34, v35

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    or-long v32, v32, v34

    move-wide/from16 v20, v32

    goto/16 :goto_2

    .line 232
    :cond_6
    const/16 v33, 0x0

    goto :goto_3

    .line 235
    :cond_7
    move/from16 v32, v14

    goto :goto_4

    .line 251
    :cond_8
    move/from16 v32, v19

    if-eqz v32, :cond_a

    move/from16 v32, v18

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_a

    const/16 v32, 0x1

    :goto_5
    move/from16 v23, v32

    .line 256
    const/16 v32, 0x0

    move/from16 v24, v32

    .line 257
    :goto_6
    move/from16 v32, v17

    if-lez v32, :cond_e

    move/from16 v32, v14

    if-lez v32, :cond_e

    .line 258
    const v32, 0x7fffffff

    move/from16 v25, v32

    .line 259
    const-wide/16 v32, 0x0

    move-wide/from16 v26, v32

    .line 260
    const/16 v32, 0x0

    move/from16 v28, v32

    .line 261
    const/16 v32, 0x0

    move/from16 v29, v32

    :goto_7
    move/from16 v32, v29

    move/from16 v33, v22

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_d

    .line 262
    move-object/from16 v32, v2

    move/from16 v33, v29

    invoke-virtual/range {v32 .. v33}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    move-object/from16 v30, v32

    .line 263
    move-object/from16 v32, v30

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-object/from16 v31, v32

    .line 266
    move-object/from16 v32, v31

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v32, v0

    if-nez v32, :cond_b

    .line 261
    :cond_9
    :goto_8
    add-int/lit8 v29, v29, 0x1

    goto :goto_7

    .line 251
    :cond_a
    const/16 v32, 0x0

    goto :goto_5

    .line 269
    :cond_b
    move-object/from16 v32, v31

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v32, v0

    move/from16 v33, v25

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_c

    .line 270
    move-object/from16 v32, v31

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v32, v0

    move/from16 v25, v32

    .line 271
    const/16 v32, 0x1

    move/from16 v33, v29

    shl-int v32, v32, v33

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v26, v32

    .line 272
    const/16 v32, 0x1

    move/from16 v28, v32

    goto :goto_8

    .line 273
    :cond_c
    move-object/from16 v32, v31

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v32, v0

    move/from16 v33, v25

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_9

    .line 274
    move-wide/from16 v32, v26

    const/16 v34, 0x1

    move/from16 v35, v29

    shl-int v34, v34, v35

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    or-long v32, v32, v34

    move-wide/from16 v26, v32

    .line 275
    add-int/lit8 v28, v28, 0x1

    goto :goto_8

    .line 280
    :cond_d
    move-wide/from16 v32, v20

    move-wide/from16 v34, v26

    or-long v32, v32, v34

    move-wide/from16 v20, v32

    .line 282
    move/from16 v32, v28

    move/from16 v33, v14

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_13

    .line 311
    :cond_e
    move/from16 v32, v19

    if-nez v32, :cond_18

    move/from16 v32, v18

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_18

    const/16 v32, 0x1

    :goto_9
    move/from16 v25, v32

    .line 312
    move/from16 v32, v14

    if-lez v32, :cond_20

    move-wide/from16 v32, v20

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-eqz v32, :cond_20

    move/from16 v32, v14

    move/from16 v33, v18

    const/16 v34, 0x1

    add-int/lit8 v33, v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_f

    move/from16 v32, v25

    if-nez v32, :cond_f

    move/from16 v32, v16

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_20

    .line 314
    :cond_f
    move-wide/from16 v32, v20

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->bitCount(J)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v26, v32

    .line 316
    move/from16 v32, v25

    if-nez v32, :cond_11

    .line 318
    move-wide/from16 v32, v20

    const-wide/16 v34, 0x1

    and-long v32, v32, v34

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-eqz v32, :cond_10

    .line 319
    move-object/from16 v32, v2

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-object/from16 v27, v32

    .line 320
    move-object/from16 v32, v27

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v32, v0

    if-nez v32, :cond_10

    move/from16 v32, v26

    const/high16 v33, 0x3f000000    # 0.5f

    sub-float v32, v32, v33

    move/from16 v26, v32

    .line 322
    :cond_10
    move-wide/from16 v32, v20

    const/16 v34, 0x1

    move/from16 v35, v22

    const/16 v36, 0x1

    add-int/lit8 v35, v35, -0x1

    shl-int v34, v34, v35

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    and-long v32, v32, v34

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-eqz v32, :cond_11

    .line 323
    move-object/from16 v32, v2

    move/from16 v33, v22

    const/16 v34, 0x1

    add-int/lit8 v33, v33, -0x1

    invoke-virtual/range {v32 .. v33}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-object/from16 v27, v32

    .line 324
    move-object/from16 v32, v27

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v32, v0

    if-nez v32, :cond_11

    move/from16 v32, v26

    const/high16 v33, 0x3f000000    # 0.5f

    sub-float v32, v32, v33

    move/from16 v26, v32

    .line 328
    :cond_11
    move/from16 v32, v26

    const/16 v33, 0x0

    cmpl-float v32, v32, v33

    if-lez v32, :cond_19

    move/from16 v32, v14

    move/from16 v33, v13

    mul-int v32, v32, v33

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v33, v26

    div-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    :goto_a
    move/from16 v27, v32

    .line 331
    const/16 v32, 0x0

    move/from16 v28, v32

    :goto_b
    move/from16 v32, v28

    move/from16 v33, v22

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_1f

    .line 332
    move-wide/from16 v32, v20

    const/16 v34, 0x1

    move/from16 v35, v28

    shl-int v34, v34, v35

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    and-long v32, v32, v34

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-nez v32, :cond_1a

    .line 331
    :cond_12
    :goto_c
    add-int/lit8 v28, v28, 0x1

    goto :goto_b

    .line 285
    :cond_13
    add-int/lit8 v25, v25, 0x1

    .line 287
    const/16 v32, 0x0

    move/from16 v29, v32

    :goto_d
    move/from16 v32, v29

    move/from16 v33, v22

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_17

    .line 288
    move-object/from16 v32, v2

    move/from16 v33, v29

    invoke-virtual/range {v32 .. v33}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    move-object/from16 v30, v32

    .line 289
    move-object/from16 v32, v30

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-object/from16 v31, v32

    .line 290
    move-wide/from16 v32, v26

    const/16 v34, 0x1

    move/from16 v35, v29

    shl-int v34, v34, v35

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    and-long v32, v32, v34

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-nez v32, :cond_15

    .line 292
    move-object/from16 v32, v31

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v32, v0

    move/from16 v33, v25

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_14

    move-wide/from16 v32, v20

    const/16 v34, 0x1

    move/from16 v35, v29

    shl-int v34, v34, v35

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    or-long v32, v32, v34

    move-wide/from16 v20, v32

    .line 287
    :cond_14
    :goto_e
    add-int/lit8 v29, v29, 0x1

    goto :goto_d

    .line 296
    :cond_15
    move/from16 v32, v23

    if-eqz v32, :cond_16

    move-object/from16 v32, v31

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v32, v0

    if-eqz v32, :cond_16

    move/from16 v32, v14

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_16

    .line 298
    move-object/from16 v32, v30

    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v33, v0

    move/from16 v34, v13

    add-int v33, v33, v34

    const/16 v34, 0x0

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v32 .. v36}, Landroid/view/View;->setPadding(IIII)V

    .line 300
    :cond_16
    move-object/from16 v32, v31

    move-object/from16 v37, v32

    move-object/from16 v32, v37

    move-object/from16 v33, v37

    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v33, v0

    const/16 v34, 0x1

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 301
    move-object/from16 v32, v31

    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 302
    add-int/lit8 v14, v14, -0x1

    goto :goto_e

    .line 305
    :cond_17
    const/16 v32, 0x1

    move/from16 v24, v32

    .line 306
    goto/16 :goto_6

    .line 311
    :cond_18
    const/16 v32, 0x0

    goto/16 :goto_9

    .line 328
    :cond_19
    const/16 v32, 0x0

    goto/16 :goto_a

    .line 334
    :cond_1a
    move-object/from16 v32, v2

    move/from16 v33, v28

    invoke-virtual/range {v32 .. v33}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    move-object/from16 v29, v32

    .line 335
    move-object/from16 v32, v29

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-object/from16 v30, v32

    .line 336
    move-object/from16 v32, v29

    move-object/from16 v0, v32

    instance-of v0, v0, Landroid/support/v7/view/menu/ActionMenuItemView;

    move/from16 v32, v0

    if-eqz v32, :cond_1c

    .line 338
    move-object/from16 v32, v30

    move/from16 v33, v27

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 339
    move-object/from16 v32, v30

    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 340
    move/from16 v32, v28

    if-nez v32, :cond_1b

    move-object/from16 v32, v30

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v32, v0

    if-nez v32, :cond_1b

    .line 343
    move-object/from16 v32, v30

    move/from16 v33, v27

    move/from16 v0, v33

    neg-int v0, v0

    move/from16 v33, v0

    const/16 v34, 0x2

    div-int/lit8 v33, v33, 0x2

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 345
    :cond_1b
    const/16 v32, 0x1

    move/from16 v24, v32

    goto/16 :goto_c

    .line 346
    :cond_1c
    move-object/from16 v32, v30

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v32, v0

    if-eqz v32, :cond_1d

    .line 347
    move-object/from16 v32, v30

    move/from16 v33, v27

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 348
    move-object/from16 v32, v30

    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 349
    move-object/from16 v32, v30

    move/from16 v33, v27

    move/from16 v0, v33

    neg-int v0, v0

    move/from16 v33, v0

    const/16 v34, 0x2

    div-int/lit8 v33, v33, 0x2

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 350
    const/16 v32, 0x1

    move/from16 v24, v32

    goto/16 :goto_c

    .line 355
    :cond_1d
    move/from16 v32, v28

    if-eqz v32, :cond_1e

    .line 356
    move-object/from16 v32, v30

    move/from16 v33, v27

    const/16 v34, 0x2

    div-int/lit8 v33, v33, 0x2

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 358
    :cond_1e
    move/from16 v32, v28

    move/from16 v33, v22

    const/16 v34, 0x1

    add-int/lit8 v33, v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_12

    .line 359
    move-object/from16 v32, v30

    move/from16 v33, v27

    const/16 v34, 0x2

    div-int/lit8 v33, v33, 0x2

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    goto/16 :goto_c

    .line 364
    :cond_1f
    const/16 v32, 0x0

    move/from16 v14, v32

    .line 368
    :cond_20
    move/from16 v32, v24

    if-eqz v32, :cond_22

    .line 369
    const/16 v32, 0x0

    move/from16 v26, v32

    :goto_f
    move/from16 v32, v26

    move/from16 v33, v22

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_22

    .line 370
    move-object/from16 v32, v2

    move/from16 v33, v26

    invoke-virtual/range {v32 .. v33}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    move-object/from16 v27, v32

    .line 371
    move-object/from16 v32, v27

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-object/from16 v28, v32

    .line 373
    move-object/from16 v32, v28

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    move/from16 v32, v0

    if-nez v32, :cond_21

    .line 369
    :goto_10
    add-int/lit8 v26, v26, 0x1

    goto :goto_f

    .line 375
    :cond_21
    move-object/from16 v32, v28

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v32, v0

    move/from16 v33, v13

    mul-int v32, v32, v33

    move-object/from16 v33, v28

    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move/from16 v29, v32

    .line 376
    move-object/from16 v32, v27

    move/from16 v33, v29

    const/high16 v34, 0x40000000    # 2.0f

    invoke-static/range {v33 .. v34}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v33

    move/from16 v34, v10

    invoke-virtual/range {v32 .. v34}, Landroid/view/View;->measure(II)V

    goto :goto_10

    .line 381
    :cond_22
    move/from16 v32, v5

    const/high16 v33, 0x40000000    # 2.0f

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_23

    .line 382
    move/from16 v32, v15

    move/from16 v7, v32

    .line 385
    :cond_23
    move-object/from16 v32, v2

    move/from16 v33, v6

    move/from16 v34, v7

    invoke-virtual/range {v32 .. v34}, Landroid/support/v7/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 386
    goto/16 :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 3

    .prologue
    .line 609
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 2

    .prologue
    .line 719
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v1, :cond_0

    .line 720
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    move-result v1

    .line 722
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    .prologue
    .line 745
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .locals 7

    .prologue
    .line 582
    move-object v0, p0

    new-instance v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(II)V

    move-object v1, v2

    .line 584
    move-object v2, v1

    const/16 v3, 0x10

    iput v3, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 585
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .locals 7

    .prologue
    .line 590
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .locals 7

    .prologue
    .line 595
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-eqz v3, :cond_2

    .line 596
    move-object v3, v1

    instance-of v3, v3, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    if-eqz v3, :cond_1

    new-instance v3, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    check-cast v5, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    invoke-direct {v4, v5}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(Landroid/support/v7/widget/ActionMenuView$LayoutParams;)V

    :goto_0
    move-object v2, v3

    .line 599
    move-object v3, v2

    iget v3, v3, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v3, :cond_0

    .line 600
    move-object v3, v2

    const/16 v4, 0x10

    iput v4, v3, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 602
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .line 604
    :goto_1
    return-object v0

    .line 596
    :cond_1
    new-instance v3, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 604
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v3

    move-object v0, v3

    goto :goto_1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .locals 4

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .locals 4

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public generateOverflowButtonLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .locals 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 615
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v2

    move-object v1, v2

    .line 616
    move-object v2, v1

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 617
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 7

    .prologue
    .line 647
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v2, :cond_0

    .line 648
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, v2

    .line 649
    move-object v2, v0

    new-instance v3, Landroid/support/v7/view/menu/MenuBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 650
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    new-instance v3, Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;-><init>(Landroid/support/v7/widget/ActionMenuView;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 651
    move-object v2, v0

    new-instance v3, Landroid/support/v7/widget/ActionMenuPresenter;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/v7/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 652
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 653
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    :goto_0
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuPresenter;->setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 655
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 656
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuPresenter;->setMenuView(Landroid/support/v7/widget/ActionMenuView;)V

    .line 659
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v0, v2

    return-object v0

    .line 653
    :cond_1
    new-instance v3, Landroid/support/v7/widget/ActionMenuView$ActionMenuPresenterCallback;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/v7/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>(Landroid/support/v7/widget/ActionMenuView;)V

    goto :goto_0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 564
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 565
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuPresenter;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getPopupTheme()I
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I

    move v0, v1

    return v0
.end method

.method public getWindowAnimations()I
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 629
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method protected hasSupportDividerBeforeChildAt(I)Z
    .locals 8
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 729
    move-object v0, p0

    move v1, p1

    move v5, v1

    if-nez v5, :cond_0

    .line 730
    const/4 v5, 0x0

    move v0, v5

    .line 741
    :goto_0
    return v0

    .line 732
    :cond_0
    move-object v5, v0

    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v2, v5

    .line 733
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v3, v5

    .line 734
    const/4 v5, 0x0

    move v4, v5

    .line 735
    move v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_1

    move-object v5, v2

    instance-of v5, v5, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v5, :cond_1

    .line 736
    move v5, v4

    move-object v6, v2

    check-cast v6, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v6}, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v6

    or-int/2addr v5, v6

    move v4, v5

    .line 738
    :cond_1
    move v5, v1

    if-lez v5, :cond_2

    move-object v5, v3

    instance-of v5, v5, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v5, :cond_2

    .line 739
    move v5, v4

    move-object v6, v3

    check-cast v6, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v6}, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v6

    or-int/2addr v5, v6

    move v4, v5

    .line 741
    :cond_2
    move v5, v4

    move v0, v5

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 2

    .prologue
    .line 696
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initialize(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 635
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 636
    return-void
.end method

.method public invokeItem(Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 5
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 623
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 712
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 2

    .prologue
    .line 706
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 571
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/ActionMenuView;->mReserveOverflow:Z

    move v0, v1

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    .line 127
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 129
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v2, :cond_0

    .line 130
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 132
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v2

    .line 134
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v2

    .line 137
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 543
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v7/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    .line 544
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->dismissPopupMenus()V

    .line 545
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 32

    .prologue
    .line 438
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    move/from16 v26, v0

    if-nez v26, :cond_0

    .line 439
    move-object/from16 v26, v2

    move/from16 v27, v3

    move/from16 v28, v4

    move/from16 v29, v5

    move/from16 v30, v6

    move/from16 v31, v7

    invoke-super/range {v26 .. v31}, Landroid/support/v7/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    .line 539
    :goto_0
    return-void

    .line 443
    :cond_0
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v26

    move/from16 v8, v26

    .line 444
    move/from16 v26, v7

    move/from16 v27, v5

    sub-int v26, v26, v27

    const/16 v27, 0x2

    div-int/lit8 v26, v26, 0x2

    move/from16 v9, v26

    .line 445
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Landroid/support/v7/widget/ActionMenuView;->getDividerWidth()I

    move-result v26

    move/from16 v10, v26

    .line 446
    const/16 v26, 0x0

    move/from16 v11, v26

    .line 447
    const/16 v26, 0x0

    move/from16 v12, v26

    .line 448
    const/16 v26, 0x0

    move/from16 v13, v26

    .line 449
    move/from16 v26, v6

    move/from16 v27, v4

    sub-int v26, v26, v27

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v27

    sub-int v26, v26, v27

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v27

    sub-int v26, v26, v27

    move/from16 v14, v26

    .line 450
    const/16 v26, 0x0

    move/from16 v15, v26

    .line 451
    move-object/from16 v26, v2

    invoke-static/range {v26 .. v26}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v26

    move/from16 v16, v26

    .line 452
    const/16 v26, 0x0

    move/from16 v17, v26

    :goto_1
    move/from16 v26, v17

    move/from16 v27, v8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_6

    .line 453
    move-object/from16 v26, v2

    move/from16 v27, v17

    invoke-virtual/range {v26 .. v27}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v18, v26

    .line 454
    move-object/from16 v26, v18

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 452
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 458
    :cond_1
    move-object/from16 v26, v18

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    check-cast v26, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-object/from16 v19, v26

    .line 459
    move-object/from16 v26, v19

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v26, v0

    if-eqz v26, :cond_4

    .line 460
    move-object/from16 v26, v18

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    move/from16 v11, v26

    .line 461
    move-object/from16 v26, v2

    move/from16 v27, v17

    invoke-virtual/range {v26 .. v27}, Landroid/support/v7/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 462
    move/from16 v26, v11

    move/from16 v27, v10

    add-int v26, v26, v27

    move/from16 v11, v26

    .line 464
    :cond_2
    move-object/from16 v26, v18

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    move/from16 v20, v26

    .line 467
    move/from16 v26, v16

    if-eqz v26, :cond_3

    .line 468
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v26

    move-object/from16 v27, v19

    move-object/from16 v0, v27

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v22, v26

    .line 469
    move/from16 v26, v22

    move/from16 v27, v11

    add-int v26, v26, v27

    move/from16 v21, v26

    .line 474
    :goto_3
    move/from16 v26, v9

    move/from16 v27, v20

    const/16 v28, 0x2

    div-int/lit8 v27, v27, 0x2

    sub-int v26, v26, v27

    move/from16 v23, v26

    .line 475
    move/from16 v26, v23

    move/from16 v27, v20

    add-int v26, v26, v27

    move/from16 v24, v26

    .line 476
    move-object/from16 v26, v18

    move/from16 v27, v22

    move/from16 v28, v23

    move/from16 v29, v21

    move/from16 v30, v24

    invoke-virtual/range {v26 .. v30}, Landroid/view/View;->layout(IIII)V

    .line 478
    move/from16 v26, v14

    move/from16 v27, v11

    sub-int v26, v26, v27

    move/from16 v14, v26

    .line 479
    const/16 v26, 0x1

    move/from16 v15, v26

    .line 480
    goto/16 :goto_2

    .line 471
    :cond_3
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Landroid/support/v7/widget/ActionMenuView;->getWidth()I

    move-result v26

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v27

    sub-int v26, v26, v27

    move-object/from16 v27, v19

    move-object/from16 v0, v27

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move/from16 v21, v26

    .line 472
    move/from16 v26, v21

    move/from16 v27, v11

    sub-int v26, v26, v27

    move/from16 v22, v26

    goto :goto_3

    .line 481
    :cond_4
    move-object/from16 v26, v18

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    move-object/from16 v27, v19

    move-object/from16 v0, v27

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move-object/from16 v27, v19

    move-object/from16 v0, v27

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v20, v26

    .line 482
    move/from16 v26, v12

    move/from16 v27, v20

    add-int v26, v26, v27

    move/from16 v12, v26

    .line 483
    move/from16 v26, v14

    move/from16 v27, v20

    sub-int v26, v26, v27

    move/from16 v14, v26

    .line 484
    move-object/from16 v26, v2

    move/from16 v27, v17

    invoke-virtual/range {v26 .. v27}, Landroid/support/v7/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 485
    move/from16 v26, v12

    move/from16 v27, v10

    add-int v26, v26, v27

    move/from16 v12, v26

    .line 487
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 491
    :cond_6
    move/from16 v26, v8

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_7

    move/from16 v26, v15

    if-nez v26, :cond_7

    .line 493
    move-object/from16 v26, v2

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v17, v26

    .line 494
    move-object/from16 v26, v17

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    move/from16 v18, v26

    .line 495
    move-object/from16 v26, v17

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    move/from16 v19, v26

    .line 496
    move/from16 v26, v6

    move/from16 v27, v4

    sub-int v26, v26, v27

    const/16 v27, 0x2

    div-int/lit8 v26, v26, 0x2

    move/from16 v20, v26

    .line 497
    move/from16 v26, v20

    move/from16 v27, v18

    const/16 v28, 0x2

    div-int/lit8 v27, v27, 0x2

    sub-int v26, v26, v27

    move/from16 v21, v26

    .line 498
    move/from16 v26, v9

    move/from16 v27, v19

    const/16 v28, 0x2

    div-int/lit8 v27, v27, 0x2

    sub-int v26, v26, v27

    move/from16 v22, v26

    .line 499
    move-object/from16 v26, v17

    move/from16 v27, v21

    move/from16 v28, v22

    move/from16 v29, v21

    move/from16 v30, v18

    add-int v29, v29, v30

    move/from16 v30, v22

    move/from16 v31, v19

    add-int v30, v30, v31

    invoke-virtual/range {v26 .. v30}, Landroid/view/View;->layout(IIII)V

    .line 500
    goto/16 :goto_0

    .line 503
    :cond_7
    move/from16 v26, v13

    move/from16 v27, v15

    if-eqz v27, :cond_9

    const/16 v27, 0x0

    :goto_4
    sub-int v26, v26, v27

    move/from16 v17, v26

    .line 504
    const/16 v26, 0x0

    move/from16 v27, v17

    if-lez v27, :cond_a

    move/from16 v27, v14

    move/from16 v28, v17

    div-int v27, v27, v28

    :goto_5
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->max(II)I

    move-result v26

    move/from16 v18, v26

    .line 506
    move/from16 v26, v16

    if-eqz v26, :cond_d

    .line 507
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Landroid/support/v7/widget/ActionMenuView;->getWidth()I

    move-result v26

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v27

    sub-int v26, v26, v27

    move/from16 v19, v26

    .line 508
    const/16 v26, 0x0

    move/from16 v20, v26

    :goto_6
    move/from16 v26, v20

    move/from16 v27, v8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_c

    .line 509
    move-object/from16 v26, v2

    move/from16 v27, v20

    invoke-virtual/range {v26 .. v27}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v21, v26

    .line 510
    move-object/from16 v26, v21

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    check-cast v26, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-object/from16 v22, v26

    .line 511
    move-object/from16 v26, v21

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_8

    move-object/from16 v26, v22

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v26, v0

    if-eqz v26, :cond_b

    .line 508
    :cond_8
    :goto_7
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .line 503
    :cond_9
    const/16 v27, 0x1

    goto :goto_4

    .line 504
    :cond_a
    const/16 v27, 0x0

    goto :goto_5

    .line 515
    :cond_b
    move/from16 v26, v19

    move-object/from16 v27, v22

    move-object/from16 v0, v27

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move/from16 v19, v26

    .line 516
    move-object/from16 v26, v21

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    move/from16 v23, v26

    .line 517
    move-object/from16 v26, v21

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    move/from16 v24, v26

    .line 518
    move/from16 v26, v9

    move/from16 v27, v24

    const/16 v28, 0x2

    div-int/lit8 v27, v27, 0x2

    sub-int v26, v26, v27

    move/from16 v25, v26

    .line 519
    move-object/from16 v26, v21

    move/from16 v27, v19

    move/from16 v28, v23

    sub-int v27, v27, v28

    move/from16 v28, v25

    move/from16 v29, v19

    move/from16 v30, v25

    move/from16 v31, v24

    add-int v30, v30, v31

    invoke-virtual/range {v26 .. v30}, Landroid/view/View;->layout(IIII)V

    .line 520
    move/from16 v26, v19

    move/from16 v27, v23

    move-object/from16 v28, v22

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move/from16 v28, v18

    add-int v27, v27, v28

    sub-int v26, v26, v27

    move/from16 v19, v26

    goto :goto_7

    .line 539
    :cond_c
    goto/16 :goto_0

    .line 523
    :cond_d
    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v26

    move/from16 v19, v26

    .line 524
    const/16 v26, 0x0

    move/from16 v20, v26

    :goto_8
    move/from16 v26, v20

    move/from16 v27, v8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_c

    .line 525
    move-object/from16 v26, v2

    move/from16 v27, v20

    invoke-virtual/range {v26 .. v27}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v21, v26

    .line 526
    move-object/from16 v26, v21

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    check-cast v26, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-object/from16 v22, v26

    .line 527
    move-object/from16 v26, v21

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_e

    move-object/from16 v26, v22

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v26, v0

    if-eqz v26, :cond_f

    .line 524
    :cond_e
    :goto_9
    add-int/lit8 v20, v20, 0x1

    goto :goto_8

    .line 531
    :cond_f
    move/from16 v26, v19

    move-object/from16 v27, v22

    move-object/from16 v0, v27

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v19, v26

    .line 532
    move-object/from16 v26, v21

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    move/from16 v23, v26

    .line 533
    move-object/from16 v26, v21

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    move/from16 v24, v26

    .line 534
    move/from16 v26, v9

    move/from16 v27, v24

    const/16 v28, 0x2

    div-int/lit8 v27, v27, 0x2

    sub-int v26, v26, v27

    move/from16 v25, v26

    .line 535
    move-object/from16 v26, v21

    move/from16 v27, v19

    move/from16 v28, v25

    move/from16 v29, v19

    move/from16 v30, v23

    add-int v29, v29, v30

    move/from16 v30, v25

    move/from16 v31, v24

    add-int v30, v30, v31

    invoke-virtual/range {v26 .. v30}, Landroid/view/View;->layout(IIII)V

    .line 536
    move/from16 v26, v19

    move/from16 v27, v23

    move-object/from16 v28, v22

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move/from16 v28, v18

    add-int v27, v27, v28

    add-int v26, v26, v27

    move/from16 v19, v26

    goto :goto_9
.end method

.method protected onMeasure(II)V
    .locals 15

    .prologue
    .line 146
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    move v3, v9

    .line 147
    move-object v9, v0

    move v10, v1

    invoke-static {v10}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    if-ne v10, v11, :cond_2

    const/4 v10, 0x1

    :goto_0
    iput-boolean v10, v9, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    .line 149
    move v9, v3

    move-object v10, v0

    iget-boolean v10, v10, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    if-eq v9, v10, :cond_0

    .line 150
    move-object v9, v0

    const/4 v10, 0x0

    iput v10, v9, Landroid/support/v7/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 155
    :cond_0
    move v9, v1

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    move v4, v9

    .line 156
    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v9, :cond_1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v9, :cond_1

    move v9, v4

    move-object v10, v0

    iget v10, v10, Landroid/support/v7/widget/ActionMenuView;->mFormatItemsWidth:I

    if-eq v9, v10, :cond_1

    .line 157
    move-object v9, v0

    move v10, v4

    iput v10, v9, Landroid/support/v7/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 158
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 161
    :cond_1
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v9

    move v5, v9

    .line 162
    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v9, :cond_3

    move v9, v5

    if-lez v9, :cond_3

    .line 163
    move-object v9, v0

    move v10, v1

    move v11, v2

    invoke-direct {v9, v10, v11}, Landroid/support/v7/widget/ActionMenuView;->onMeasureExactFormat(II)V

    .line 173
    :goto_1
    return-void

    .line 147
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 166
    :cond_3
    const/4 v9, 0x0

    move v6, v9

    :goto_2
    move v9, v6

    move v10, v5

    if-ge v9, v10, :cond_4

    .line 167
    move-object v9, v0

    move v10, v6

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v7, v9

    .line 168
    move-object v9, v7

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-object v8, v9

    .line 169
    move-object v9, v8

    move-object v10, v8

    const/4 v11, 0x0

    move-object v13, v10

    move v14, v11

    move v10, v14

    move-object v11, v13

    move v12, v14

    iput v12, v11, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    iput v10, v9, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 166
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 171
    :cond_4
    move-object v9, v0

    move v10, v1

    move v11, v2

    invoke-super {v9, v10, v11}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    goto :goto_1
.end method

.method public peekMenu()Landroid/support/v7/view/menu/MenuBuilder;
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 678
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v0, v1

    return-object v0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 751
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 752
    return-void
.end method

.method public setMenuCallbacks(Landroid/support/v7/view/menu/MenuPresenter$Callback;Landroid/support/v7/view/menu/MenuBuilder$Callback;)V
    .locals 5
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 668
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .line 669
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v7/widget/ActionMenuView;->mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    .line 670
    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;)V
    .locals 4

    .prologue
    .line 140
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ActionMenuView;->mOnMenuItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

    .line 141
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 553
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 554
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuPresenter;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 555
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 577
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/ActionMenuView;->mReserveOverflow:Z

    .line 578
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 8
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 96
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 97
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I

    .line 98
    move v2, v1

    if-nez v2, :cond_1

    .line 99
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    move-object v2, v0

    new-instance v3, Landroid/view/ContextThemeWrapper;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v5

    move v6, v1

    invoke-direct {v4, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, v2, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public setPresenter(Landroid/support/v7/widget/ActionMenuPresenter;)V
    .locals 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 121
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 122
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuPresenter;->setMenuView(Landroid/support/v7/widget/ActionMenuView;)V

    .line 123
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 2

    .prologue
    .line 687
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
