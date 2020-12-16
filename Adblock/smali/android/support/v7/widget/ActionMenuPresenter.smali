.class Landroid/support/v7/widget/ActionMenuPresenter;
.super Landroid/support/v7/view/menu/BaseMenuPresenter;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;,
        Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;,
        Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;,
        Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;,
        Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;,
        Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;,
        Landroid/support/v7/widget/ActionMenuPresenter$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionMenuPresenter"


# instance fields
.field private final mActionButtonGroups:Landroid/util/SparseBooleanArray;

.field mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

.field private mActionItemWidthLimit:I

.field private mExpandedActionViewsExclusive:Z

.field private mMaxItems:I

.field private mMaxItemsSet:Z

.field private mMinCellSize:I

.field mOpenSubMenuId:I

.field mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

.field mOverflowPopup:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

.field private mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

.field private mPendingOverflowIconSet:Z

.field private mPopupCallback:Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;

.field final mPopupPresenterCallback:Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;

.field mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

.field private mReserveOverflow:Z

.field private mReserveOverflowSet:Z

.field private mScrapActionButtonView:Landroid/view/View;

.field private mStrictWidthLimit:Z

.field private mWidthLimit:I

.field private mWidthLimitSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    sget v4, Landroid/support/v7/appcompat/R$layout;->abc_action_menu_layout:I

    sget v5, Landroid/support/v7/appcompat/R$layout;->abc_action_menu_item_layout:I

    invoke-direct {v2, v3, v4, v5}, Landroid/support/v7/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    .line 74
    move-object v2, v0

    new-instance v3, Landroid/util/SparseBooleanArray;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v3, v2, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 84
    move-object v2, v0

    new-instance v3, Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;)V

    iput-object v3, v2, Landroid/support/v7/widget/ActionMenuPresenter;->mPopupPresenterCallback:Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;

    .line 89
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/MenuView;
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/MenuView;
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    move-object v0, v1

    return-object v0
.end method

.method private findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 8

    .prologue
    .line 324
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    check-cast v6, Landroid/view/ViewGroup;

    move-object v2, v6

    .line 325
    move-object v6, v2

    if-nez v6, :cond_0

    const/4 v6, 0x0

    move-object v0, v6

    .line 335
    :goto_0
    return-object v0

    .line 327
    :cond_0
    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v3, v6

    .line 328
    const/4 v6, 0x0

    move v4, v6

    :goto_1
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_2

    .line 329
    move-object v6, v2

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    .line 330
    move-object v6, v5

    instance-of v6, v6, Landroid/support/v7/view/menu/MenuView$ItemView;

    if-eqz v6, :cond_1

    move-object v6, v5

    check-cast v6, Landroid/support/v7/view/menu/MenuView$ItemView;

    .line 331
    invoke-interface {v6}, Landroid/support/v7/view/menu/MenuView$ItemView;->getItemData()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v6

    move-object v7, v1

    if-ne v6, v7, :cond_1

    .line 332
    move-object v6, v5

    move-object v0, v6

    goto :goto_0

    .line 328
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 335
    :cond_2
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0
.end method


# virtual methods
.method public bindItemView(Landroid/support/v7/view/menu/MenuItemImpl;Landroid/support/v7/view/menu/MenuView$ItemView;)V
    .locals 10

    .prologue
    .line 211
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v2

    move-object v6, v1

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/support/v7/view/menu/MenuView$ItemView;->initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V

    .line 213
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    check-cast v5, Landroid/support/v7/widget/ActionMenuView;

    move-object v3, v5

    .line 214
    move-object v5, v2

    check-cast v5, Landroid/support/v7/view/menu/ActionMenuItemView;

    move-object v4, v5

    .line 215
    move-object v5, v4

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v7/view/menu/ActionMenuItemView;->setItemInvoker(Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;)V

    .line 217
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ActionMenuPresenter;->mPopupCallback:Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    if-nez v5, :cond_0

    .line 218
    move-object v5, v0

    new-instance v6, Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;)V

    iput-object v6, v5, Landroid/support/v7/widget/ActionMenuPresenter;->mPopupCallback:Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    .line 220
    :cond_0
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ActionMenuPresenter;->mPopupCallback:Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    invoke-virtual {v5, v6}, Landroid/support/v7/view/menu/ActionMenuItemView;->setPopupCallback(Landroid/support/v7/view/menu/ActionMenuItemView$PopupCallback;)V

    .line 221
    return-void
.end method

.method public dismissPopupMenus()Z
    .locals 4

    .prologue
    .line 384
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v2

    move v1, v2

    .line 385
    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/ActionMenuPresenter;->hideSubMenus()Z

    move-result v3

    or-int/2addr v2, v3

    move v1, v2

    .line 386
    move v2, v1

    move v0, v2

    return v0
.end method

.method public filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 6

    .prologue
    .line 283
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    move v0, v3

    .line 284
    :goto_0
    return v0

    :cond_0
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/v7/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public flagActionItems()Z
    .locals 29

    .prologue
    .line 423
    move-object/from16 v2, p0

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 424
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v3, v23

    .line 425
    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v4, v23

    .line 431
    :goto_0
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItems:I

    move/from16 v23, v0

    move/from16 v5, v23

    .line 432
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    move/from16 v23, v0

    move/from16 v6, v23

    .line 433
    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    move/from16 v7, v23

    .line 434
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    move-object/from16 v23, v0

    check-cast v23, Landroid/view/ViewGroup;

    move-object/from16 v8, v23

    .line 436
    const/16 v23, 0x0

    move/from16 v9, v23

    .line 437
    const/16 v23, 0x0

    move/from16 v10, v23

    .line 438
    const/16 v23, 0x0

    move/from16 v11, v23

    .line 439
    const/16 v23, 0x0

    move/from16 v12, v23

    .line 440
    const/16 v23, 0x0

    move/from16 v13, v23

    :goto_1
    move/from16 v23, v13

    move/from16 v24, v4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    .line 441
    move-object/from16 v23, v3

    move/from16 v24, v13

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object/from16 v14, v23

    .line 442
    move-object/from16 v23, v14

    invoke-virtual/range {v23 .. v23}, Landroid/support/v7/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 443
    add-int/lit8 v9, v9, 0x1

    .line 449
    :goto_2
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    move/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v23, v14

    invoke-virtual/range {v23 .. v23}, Landroid/support/v7/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 452
    const/16 v23, 0x0

    move/from16 v5, v23

    .line 440
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 427
    :cond_1
    const/16 v23, 0x0

    move-object/from16 v3, v23

    .line 428
    const/16 v23, 0x0

    move/from16 v4, v23

    goto :goto_0

    .line 444
    :cond_2
    move-object/from16 v23, v14

    invoke-virtual/range {v23 .. v23}, Landroid/support/v7/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v23

    if-eqz v23, :cond_3

    .line 445
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 447
    :cond_3
    const/16 v23, 0x1

    move/from16 v12, v23

    goto :goto_2

    .line 457
    :cond_4
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    move/from16 v23, v0

    if-eqz v23, :cond_6

    move/from16 v23, v12

    if-nez v23, :cond_5

    move/from16 v23, v9

    move/from16 v24, v10

    add-int v23, v23, v24

    move/from16 v24, v5

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_6

    .line 459
    :cond_5
    add-int/lit8 v5, v5, -0x1

    .line 461
    :cond_6
    move/from16 v23, v5

    move/from16 v24, v9

    sub-int v23, v23, v24

    move/from16 v5, v23

    .line 463
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    move-object/from16 v23, v0

    move-object/from16 v13, v23

    .line 464
    move-object/from16 v23, v13

    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseBooleanArray;->clear()V

    .line 466
    const/16 v23, 0x0

    move/from16 v14, v23

    .line 467
    const/16 v23, 0x0

    move/from16 v15, v23

    .line 468
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v23, v0

    if-eqz v23, :cond_7

    .line 469
    move/from16 v23, v6

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v24, v0

    div-int v23, v23, v24

    move/from16 v15, v23

    .line 470
    move/from16 v23, v6

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v24, v0

    rem-int v23, v23, v24

    move/from16 v16, v23

    .line 471
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v23, v0

    move/from16 v24, v16

    move/from16 v25, v15

    div-int v24, v24, v25

    add-int v23, v23, v24

    move/from16 v14, v23

    .line 475
    :cond_7
    const/16 v23, 0x0

    move/from16 v16, v23

    :goto_3
    move/from16 v23, v16

    move/from16 v24, v4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_1e

    .line 476
    move-object/from16 v23, v3

    move/from16 v24, v16

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object/from16 v17, v23

    .line 478
    move-object/from16 v23, v17

    invoke-virtual/range {v23 .. v23}, Landroid/support/v7/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v23

    if-eqz v23, :cond_c

    .line 479
    move-object/from16 v23, v2

    move-object/from16 v24, v17

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v26, v8

    invoke-virtual/range {v23 .. v26}, Landroid/support/v7/widget/ActionMenuPresenter;->getItemView(Landroid/support/v7/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v23

    move-object/from16 v18, v23

    .line 480
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v23, v0

    if-nez v23, :cond_8

    .line 481
    move-object/from16 v23, v2

    move-object/from16 v24, v18

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 483
    :cond_8
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v23, v0

    if-eqz v23, :cond_b

    .line 484
    move/from16 v23, v15

    move-object/from16 v24, v18

    move/from16 v25, v14

    move/from16 v26, v15

    move/from16 v27, v7

    const/16 v28, 0x0

    invoke-static/range {v24 .. v28}, Landroid/support/v7/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v15, v23

    .line 489
    :goto_4
    move-object/from16 v23, v18

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    move/from16 v19, v23

    .line 490
    move/from16 v23, v6

    move/from16 v24, v19

    sub-int v23, v23, v24

    move/from16 v6, v23

    .line 491
    move/from16 v23, v11

    if-nez v23, :cond_9

    .line 492
    move/from16 v23, v19

    move/from16 v11, v23

    .line 494
    :cond_9
    move-object/from16 v23, v17

    invoke-virtual/range {v23 .. v23}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v23

    move/from16 v20, v23

    .line 495
    move/from16 v23, v20

    if-eqz v23, :cond_a

    .line 496
    move-object/from16 v23, v13

    move/from16 v24, v20

    const/16 v25, 0x1

    invoke-virtual/range {v23 .. v25}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 498
    :cond_a
    move-object/from16 v23, v17

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/support/v7/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 475
    :goto_5
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    .line 487
    :cond_b
    move-object/from16 v23, v18

    move/from16 v24, v7

    move/from16 v25, v7

    invoke-virtual/range {v23 .. v25}, Landroid/view/View;->measure(II)V

    goto :goto_4

    .line 499
    :cond_c
    move-object/from16 v23, v17

    invoke-virtual/range {v23 .. v23}, Landroid/support/v7/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v23

    if-eqz v23, :cond_1d

    .line 502
    move-object/from16 v23, v17

    invoke-virtual/range {v23 .. v23}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v23

    move/from16 v18, v23

    .line 503
    move-object/from16 v23, v13

    move/from16 v24, v18

    invoke-virtual/range {v23 .. v24}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v23

    move/from16 v19, v23

    .line 504
    move/from16 v23, v5

    if-gtz v23, :cond_d

    move/from16 v23, v19

    if-eqz v23, :cond_15

    :cond_d
    move/from16 v23, v6

    if-lez v23, :cond_15

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v23, v0

    if-eqz v23, :cond_e

    move/from16 v23, v15

    if-lez v23, :cond_15

    :cond_e
    const/16 v23, 0x1

    :goto_6
    move/from16 v20, v23

    .line 507
    move/from16 v23, v20

    if-eqz v23, :cond_12

    .line 508
    move-object/from16 v23, v2

    move-object/from16 v24, v17

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v26, v8

    invoke-virtual/range {v23 .. v26}, Landroid/support/v7/widget/ActionMenuPresenter;->getItemView(Landroid/support/v7/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v23

    move-object/from16 v21, v23

    .line 509
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v23, v0

    if-nez v23, :cond_f

    .line 510
    move-object/from16 v23, v2

    move-object/from16 v24, v21

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 512
    :cond_f
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v23, v0

    if-eqz v23, :cond_16

    .line 513
    move-object/from16 v23, v21

    move/from16 v24, v14

    move/from16 v25, v15

    move/from16 v26, v7

    const/16 v27, 0x0

    invoke-static/range {v23 .. v27}, Landroid/support/v7/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v23

    move/from16 v22, v23

    .line 515
    move/from16 v23, v15

    move/from16 v24, v22

    sub-int v23, v23, v24

    move/from16 v15, v23

    .line 516
    move/from16 v23, v22

    if-nez v23, :cond_10

    .line 517
    const/16 v23, 0x0

    move/from16 v20, v23

    .line 522
    :cond_10
    :goto_7
    move-object/from16 v23, v21

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    move/from16 v22, v23

    .line 523
    move/from16 v23, v6

    move/from16 v24, v22

    sub-int v23, v23, v24

    move/from16 v6, v23

    .line 524
    move/from16 v23, v11

    if-nez v23, :cond_11

    .line 525
    move/from16 v23, v22

    move/from16 v11, v23

    .line 528
    :cond_11
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v23, v0

    if-eqz v23, :cond_18

    .line 529
    move/from16 v23, v20

    move/from16 v24, v6

    if-ltz v24, :cond_17

    const/16 v24, 0x1

    :goto_8
    and-int v23, v23, v24

    move/from16 v20, v23

    .line 536
    :cond_12
    :goto_9
    move/from16 v23, v20

    if-eqz v23, :cond_1a

    move/from16 v23, v18

    if-eqz v23, :cond_1a

    .line 537
    move-object/from16 v23, v13

    move/from16 v24, v18

    const/16 v25, 0x1

    invoke-virtual/range {v23 .. v25}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 551
    :cond_13
    move/from16 v23, v20

    if-eqz v23, :cond_14

    add-int/lit8 v5, v5, -0x1

    .line 553
    :cond_14
    move-object/from16 v23, v17

    move/from16 v24, v20

    invoke-virtual/range {v23 .. v24}, Landroid/support/v7/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 554
    goto/16 :goto_5

    .line 504
    :cond_15
    const/16 v23, 0x0

    goto/16 :goto_6

    .line 520
    :cond_16
    move-object/from16 v23, v21

    move/from16 v24, v7

    move/from16 v25, v7

    invoke-virtual/range {v23 .. v25}, Landroid/view/View;->measure(II)V

    goto :goto_7

    .line 529
    :cond_17
    const/16 v24, 0x0

    goto :goto_8

    .line 532
    :cond_18
    move/from16 v23, v20

    move/from16 v24, v6

    move/from16 v25, v11

    add-int v24, v24, v25

    if-lez v24, :cond_19

    const/16 v24, 0x1

    :goto_a
    and-int v23, v23, v24

    move/from16 v20, v23

    goto :goto_9

    :cond_19
    const/16 v24, 0x0

    goto :goto_a

    .line 538
    :cond_1a
    move/from16 v23, v19

    if-eqz v23, :cond_13

    .line 540
    move-object/from16 v23, v13

    move/from16 v24, v18

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 541
    const/16 v23, 0x0

    move/from16 v21, v23

    :goto_b
    move/from16 v23, v21

    move/from16 v24, v16

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_13

    .line 542
    move-object/from16 v23, v3

    move/from16 v24, v21

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object/from16 v22, v23

    .line 543
    move-object/from16 v23, v22

    invoke-virtual/range {v23 .. v23}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v23

    move/from16 v24, v18

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1c

    .line 545
    move-object/from16 v23, v22

    invoke-virtual/range {v23 .. v23}, Landroid/support/v7/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v23

    if-eqz v23, :cond_1b

    add-int/lit8 v5, v5, 0x1

    .line 546
    :cond_1b
    move-object/from16 v23, v22

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/support/v7/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 541
    :cond_1c
    add-int/lit8 v21, v21, 0x1

    goto :goto_b

    .line 556
    :cond_1d
    move-object/from16 v23, v17

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/support/v7/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    goto/16 :goto_5

    .line 559
    :cond_1e
    const/16 v23, 0x1

    move/from16 v2, v23

    return v2
.end method

.method public getItemView(Landroid/support/v7/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .prologue
    .line 195
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, v1

    invoke-virtual {v7}, Landroid/support/v7/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v7

    move-object v4, v7

    .line 196
    move-object v7, v4

    if-eqz v7, :cond_0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/support/v7/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 197
    :cond_0
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    invoke-super {v7, v8, v9, v10}, Landroid/support/v7/view/menu/BaseMenuPresenter;->getItemView(Landroid/support/v7/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    move-object v4, v7

    .line 199
    :cond_1
    move-object v7, v4

    move-object v8, v1

    invoke-virtual {v8}, Landroid/support/v7/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x8

    :goto_0
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 201
    move-object v7, v3

    check-cast v7, Landroid/support/v7/widget/ActionMenuView;

    move-object v5, v7

    .line 202
    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    move-object v6, v7

    .line 203
    move-object v7, v5

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 204
    move-object v7, v4

    move-object v8, v5

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    :cond_2
    move-object v7, v4

    move-object v0, v7

    return-object v0

    .line 199
    :cond_3
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView;
    .locals 6

    .prologue
    .line 185
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    move-object v2, v4

    .line 186
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroid/support/v7/view/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView;

    move-result-object v4

    move-object v3, v4

    .line 187
    move-object v4, v2

    move-object v5, v3

    if-eq v4, v5, :cond_0

    .line 188
    move-object v4, v3

    check-cast v4, Landroid/support/v7/widget/ActionMenuView;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ActionMenuView;->setPresenter(Landroid/support/v7/widget/ActionMenuPresenter;)V

    .line 190
    :cond_0
    move-object v4, v3

    move-object v0, v4

    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 175
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v1, :cond_0

    .line 176
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .line 180
    :goto_0
    return-object v0

    .line 177
    :cond_0
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    if-eqz v1, :cond_1

    .line 178
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    goto :goto_0

    .line 180
    :cond_1
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 4

    .prologue
    .line 365
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    if-eqz v2, :cond_0

    .line 366
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    check-cast v2, Landroid/view/View;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    .line 367
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .line 368
    const/4 v2, 0x1

    move v0, v2

    .line 376
    :goto_0
    return v0

    .line 371
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    move-object v1, v2

    .line 372
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 373
    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuPopupHelper;->dismiss()V

    .line 374
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 376
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public hideSubMenus()Z
    .locals 2

    .prologue
    .line 395
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    if-eqz v1, :cond_0

    .line 396
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->dismiss()V

    .line 397
    const/4 v1, 0x1

    move v0, v1

    .line 399
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 13
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/view/menu/MenuBuilder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-super {v7, v8, v9}, Landroid/support/v7/view/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 95
    move-object v7, v1

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object v3, v7

    .line 97
    move-object v7, v1

    invoke-static {v7}, Landroid/support/v7/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroid/support/v7/view/ActionBarPolicy;

    move-result-object v7

    move-object v4, v7

    .line 98
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    if-nez v7, :cond_0

    .line 99
    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v8}, Landroid/support/v7/view/ActionBarPolicy;->showsOverflowMenuButton()Z

    move-result v8

    iput-boolean v8, v7, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    .line 102
    :cond_0
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    if-nez v7, :cond_1

    .line 103
    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v8}, Landroid/support/v7/view/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    move-result v8

    iput v8, v7, Landroid/support/v7/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 107
    :cond_1
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v7, :cond_2

    .line 108
    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v8}, Landroid/support/v7/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result v8

    iput v8, v7, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItems:I

    .line 111
    :cond_2
    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/ActionMenuPresenter;->mWidthLimit:I

    move v5, v7

    .line 112
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v7, :cond_5

    .line 113
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    if-nez v7, :cond_4

    .line 114
    move-object v7, v0

    new-instance v8, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v9, v10, v11}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v8, v7, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 115
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    if-eqz v7, :cond_3

    .line 116
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Landroid/support/v7/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    .line 118
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/support/v7/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    .line 120
    :cond_3
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    move v6, v7

    .line 121
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    move v8, v6

    move v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->measure(II)V

    .line 123
    :cond_4
    move v7, v5

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v8}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 128
    :goto_0
    move-object v7, v0

    move v8, v5

    iput v8, v7, Landroid/support/v7/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 130
    move-object v7, v0

    const/high16 v8, 0x42600000    # 56.0f

    move-object v9, v3

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v7, Landroid/support/v7/widget/ActionMenuPresenter;->mMinCellSize:I

    .line 133
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 134
    return-void

    .line 125
    :cond_5
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    goto :goto_0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 2

    .prologue
    .line 410
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 2

    .prologue
    .line 406
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;->isShowing()Z

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

    .prologue
    .line 417
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    move v0, v1

    return v0
.end method

.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .locals 6

    .prologue
    .line 564
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    move-result v3

    .line 565
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/v7/view/menu/BaseMenuPresenter;->onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V

    .line 566
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    .line 137
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v2, :cond_0

    .line 138
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/v7/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroid/support/v7/view/ActionBarPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItems:I

    .line 140
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v2, :cond_1

    .line 141
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 143
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7

    .prologue
    .line 577
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    instance-of v5, v5, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;

    if-nez v5, :cond_0

    .line 589
    :goto_0
    return-void

    .line 581
    :cond_0
    move-object v5, v1

    check-cast v5, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;

    move-object v2, v5

    .line 582
    move-object v5, v2

    iget v5, v5, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    if-lez v5, :cond_1

    .line 583
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v6, v2

    iget v6, v6, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    invoke-virtual {v5, v6}, Landroid/support/v7/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    move-object v3, v5

    .line 584
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 585
    move-object v5, v3

    invoke-interface {v5}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v5

    check-cast v5, Landroid/support/v7/view/menu/SubMenuBuilder;

    move-object v4, v5

    .line 586
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ActionMenuPresenter;->onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z

    move-result v5

    .line 589
    :cond_1
    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 570
    move-object v0, p0

    new-instance v2, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;-><init>()V

    move-object v1, v2

    .line 571
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    iput v3, v2, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    .line 572
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z
    .locals 16

    .prologue
    .line 288
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v8, v1

    invoke-virtual {v8}, Landroid/support/v7/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x0

    move v0, v8

    .line 320
    :goto_0
    return v0

    .line 290
    :cond_0
    move-object v8, v1

    move-object v2, v8

    .line 291
    :goto_1
    move-object v8, v2

    invoke-virtual {v8}, Landroid/support/v7/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eq v8, v9, :cond_1

    .line 292
    move-object v8, v2

    invoke-virtual {v8}, Landroid/support/v7/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v8

    check-cast v8, Landroid/support/v7/view/menu/SubMenuBuilder;

    move-object v2, v8

    goto :goto_1

    .line 294
    :cond_1
    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v9}, Landroid/support/v7/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/support/v7/widget/ActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v8

    move-object v3, v8

    .line 295
    move-object v8, v3

    if-nez v8, :cond_2

    .line 300
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 303
    :cond_2
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v9}, Landroid/support/v7/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    iput v9, v8, Landroid/support/v7/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 305
    const/4 v8, 0x0

    move v4, v8

    .line 306
    move-object v8, v1

    invoke-virtual {v8}, Landroid/support/v7/view/menu/SubMenuBuilder;->size()I

    move-result v8

    move v5, v8

    .line 307
    const/4 v8, 0x0

    move v6, v8

    :goto_2
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_3

    .line 308
    move-object v8, v1

    move v9, v6

    invoke-virtual {v8, v9}, Landroid/support/v7/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    move-object v7, v8

    .line 309
    move-object v8, v7

    invoke-interface {v8}, Landroid/view/MenuItem;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v8, v7

    invoke-interface {v8}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 310
    const/4 v8, 0x1

    move v4, v8

    .line 315
    :cond_3
    move-object v8, v0

    new-instance v9, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    move-object v13, v1

    move-object v14, v3

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/view/menu/SubMenuBuilder;Landroid/view/View;)V

    iput-object v9, v8, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    .line 316
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    move v9, v4

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->setForceShowIcon(Z)V

    .line 317
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v8}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->show()V

    .line 319
    move-object v8, v0

    move-object v9, v1

    invoke-super {v8, v9}, Landroid/support/v7/view/menu/BaseMenuPresenter;->onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z

    move-result v8

    .line 320
    const/4 v8, 0x1

    move v0, v8

    goto :goto_0

    .line 307
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method public onSubUiVisibilityChanged(Z)V
    .locals 4

    .prologue
    .line 593
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_1

    .line 595
    move-object v2, v0

    const/4 v3, 0x0

    invoke-super {v2, v3}, Landroid/support/v7/view/menu/BaseMenuPresenter;->onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z

    move-result v2

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    .line 597
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    goto :goto_0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 4

    .prologue
    .line 162
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    .line 163
    return-void
.end method

.method public setItemLimit(I)V
    .locals 4

    .prologue
    .line 157
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItems:I

    .line 158
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    .line 159
    return-void
.end method

.method public setMenuView(Landroid/support/v7/widget/ActionMenuView;)V
    .locals 4

    .prologue
    .line 602
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    .line 603
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuView;->initialize(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 604
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 166
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v2, :cond_0

    .line 167
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    :goto_0
    return-void

    .line 169
    :cond_0
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    .line 170
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setReserveOverflow(Z)V
    .locals 4

    .prologue
    .line 152
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    .line 153
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    .line 154
    return-void
.end method

.method public setWidthLimit(IZ)V
    .locals 5

    .prologue
    .line 146
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v7/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 147
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Landroid/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    .line 148
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v7/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    .line 149
    return-void
.end method

.method public shouldIncludeItem(ILandroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 4

    .prologue
    .line 225
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 10

    .prologue
    .line 343
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 344
    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 345
    new-instance v2, Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    const/4 v8, 0x1

    invoke-direct/range {v3 .. v8}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;Z)V

    move-object v1, v2

    .line 346
    move-object v2, v0

    new-instance v3, Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;)V

    iput-object v3, v2, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .line 348
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    check-cast v2, Landroid/view/View;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v2

    .line 352
    move-object v2, v0

    const/4 v3, 0x0

    invoke-super {v2, v3}, Landroid/support/v7/view/menu/BaseMenuPresenter;->onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z

    move-result v2

    .line 354
    const/4 v2, 0x1

    move v0, v2

    .line 356
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public updateMenuView(Z)V
    .locals 13

    .prologue
    .line 230
    move-object v0, p0

    move v1, p1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    move-object v2, v7

    .line 231
    move-object v7, v2

    if-eqz v7, :cond_0

    .line 232
    move-object v7, v2

    invoke-static {v7}, Landroid/support/v7/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 234
    :cond_0
    move-object v7, v0

    move v8, v1

    invoke-super {v7, v8}, Landroid/support/v7/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 236
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->requestLayout()V

    .line 238
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v7, :cond_2

    .line 239
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v7}, Landroid/support/v7/view/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;

    move-result-object v7

    move-object v3, v7

    .line 240
    move-object v7, v3

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v4, v7

    .line 241
    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_2

    .line 242
    move-object v7, v3

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v7}, Landroid/support/v7/view/menu/MenuItemImpl;->getSupportActionProvider()Landroid/support/v4/view/ActionProvider;

    move-result-object v7

    move-object v6, v7

    .line 243
    move-object v7, v6

    if-eqz v7, :cond_1

    .line 244
    move-object v7, v6

    move-object v8, v0

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ActionProvider;->setSubUiVisibilityListener(Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;)V

    .line 241
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 249
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v7, :cond_7

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 250
    invoke-virtual {v7}, Landroid/support/v7/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v7

    :goto_1
    move-object v3, v7

    .line 252
    const/4 v7, 0x0

    move v4, v7

    .line 253
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v7, :cond_3

    move-object v7, v3

    if-eqz v7, :cond_3

    .line 254
    move-object v7, v3

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v5, v7

    .line 255
    move v7, v5

    const/4 v8, 0x1

    if-ne v7, v8, :cond_9

    .line 256
    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v7}, Landroid/support/v7/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v7

    if-nez v7, :cond_8

    const/4 v7, 0x1

    :goto_2
    move v4, v7

    .line 262
    :cond_3
    :goto_3
    move v7, v4

    if-eqz v7, :cond_b

    .line 263
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    if-nez v7, :cond_4

    .line 264
    move-object v7, v0

    new-instance v8, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v9, v10, v11}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v8, v7, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 266
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v7}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    move-object v5, v7

    .line 267
    move-object v7, v5

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    if-eq v7, v8, :cond_6

    .line 268
    move-object v7, v5

    if-eqz v7, :cond_5

    .line 269
    move-object v7, v5

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 271
    :cond_5
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    check-cast v7, Landroid/support/v7/widget/ActionMenuView;

    move-object v6, v7

    .line 272
    move-object v7, v6

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    move-object v9, v6

    invoke-virtual {v9}, Landroid/support/v7/widget/ActionMenuView;->generateOverflowButtonLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/widget/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    :cond_6
    :goto_4
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    check-cast v7, Landroid/support/v7/widget/ActionMenuView;

    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/ActionMenuView;->setOverflowReserved(Z)V

    .line 279
    return-void

    .line 250
    :cond_7
    const/4 v7, 0x0

    goto :goto_1

    .line 256
    :cond_8
    const/4 v7, 0x0

    goto :goto_2

    .line 258
    :cond_9
    move v7, v5

    if-lez v7, :cond_a

    const/4 v7, 0x1

    :goto_5
    move v4, v7

    goto :goto_3

    :cond_a
    const/4 v7, 0x0

    goto :goto_5

    .line 274
    :cond_b
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v7, :cond_6

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v7}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    if-ne v7, v8, :cond_6

    .line 275
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    check-cast v7, Landroid/view/ViewGroup;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_4
.end method
