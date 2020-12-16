.class final Landroid/support/v7/view/menu/CascadingMenuPopup;
.super Landroid/support/v7/view/menu/MenuPopup;
.source "CascadingMenuPopup.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuPresenter;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;,
        Landroid/support/v7/view/menu/CascadingMenuPopup$HorizPosition;
    }
.end annotation


# static fields
.field static final HORIZ_POSITION_LEFT:I = 0x0

.field static final HORIZ_POSITION_RIGHT:I = 0x1

.field static final SUBMENU_TIMEOUT_MS:I = 0xc8


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field private mForceShowIcon:Z

.field private final mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHasXOffset:Z

.field private mHasYOffset:Z

.field private mLastPosition:I

.field private final mMenuItemHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;

.field private final mMenuMaxWidth:I

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOverflowOnly:Z

.field private final mPendingMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/view/menu/MenuBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

.field private mRawDropDownGravity:I

.field mShouldCloseImmediately:Z

.field private mShowTitle:Z

.field final mShowingMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;",
            ">;"
        }
    .end annotation
.end field

.field mShownAnchorView:Landroid/view/View;

.field final mSubMenuHoverHandler:Landroid/os/Handler;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;

.field private mXOffset:I

.field private mYOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
    .locals 12
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 200
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v7, v0

    invoke-direct {v7}, Landroid/support/v7/view/menu/MenuPopup;-><init>()V

    .line 87
    move-object v7, v0

    new-instance v8, Ljava/util/LinkedList;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    iput-object v8, v7, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    .line 93
    move-object v7, v0

    new-instance v8, Ljava/util/ArrayList;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    .line 95
    move-object v7, v0

    new-instance v8, Landroid/support/v7/view/menu/CascadingMenuPopup$1;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Landroid/support/v7/view/menu/CascadingMenuPopup$1;-><init>(Landroid/support/v7/view/menu/CascadingMenuPopup;)V

    iput-object v8, v7, Landroid/support/v7/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 116
    move-object v7, v0

    new-instance v8, Landroid/support/v7/view/menu/CascadingMenuPopup$2;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Landroid/support/v7/view/menu/CascadingMenuPopup$2;-><init>(Landroid/support/v7/view/menu/CascadingMenuPopup;)V

    iput-object v8, v7, Landroid/support/v7/view/menu/CascadingMenuPopup;->mMenuItemHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;

    .line 176
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroid/support/v7/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    .line 177
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroid/support/v7/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    .line 201
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Landroid/support/v7/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    .line 202
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 203
    move-object v7, v0

    move v8, v3

    iput v8, v7, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPopupStyleAttr:I

    .line 204
    move-object v7, v0

    move v8, v4

    iput v8, v7, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPopupStyleRes:I

    .line 205
    move-object v7, v0

    move v8, v5

    iput-boolean v8, v7, Landroid/support/v7/view/menu/CascadingMenuPopup;->mOverflowOnly:Z

    .line 207
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/support/v7/view/menu/CascadingMenuPopup;->mForceShowIcon:Z

    .line 208
    move-object v7, v0

    move-object v8, v0

    invoke-direct {v8}, Landroid/support/v7/view/menu/CascadingMenuPopup;->getInitialMenuPosition()I

    move-result v8

    iput v8, v7, Landroid/support/v7/view/menu/CascadingMenuPopup;->mLastPosition:I

    .line 210
    move-object v7, v1

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object v6, v7

    .line 211
    move-object v7, v0

    move-object v8, v6

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v9, 0x2

    div-int/lit8 v8, v8, 0x2

    move-object v9, v6

    sget v10, Landroid/support/v7/appcompat/R$dimen;->abc_config_prefDialogWidth:I

    .line 212
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 211
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v7, Landroid/support/v7/view/menu/CascadingMenuPopup;->mMenuMaxWidth:I

    .line 214
    move-object v7, v0

    new-instance v8, Landroid/os/Handler;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    iput-object v8, v7, Landroid/support/v7/view/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    .line 215
    return-void
.end method

.method private createPopupWindow()Landroid/support/v7/widget/MenuPopupWindow;
    .locals 9

    .prologue
    .line 223
    move-object v0, p0

    new-instance v2, Landroid/support/v7/widget/MenuPopupWindow;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPopupStyleAttr:I

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPopupStyleRes:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/support/v7/widget/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    move-object v1, v2

    .line 225
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/CascadingMenuPopup;->mMenuItemHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/MenuPopupWindow;->setHoverListener(Landroid/support/v7/widget/MenuItemHoverListener;)V

    .line 226
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/MenuPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 227
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/MenuPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 228
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/MenuPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 229
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/MenuPopupWindow;->setDropDownGravity(I)V

    .line 230
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/MenuPopupWindow;->setModal(Z)V

    .line 231
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method private findIndexOfAddedMenu(Landroid/support/v7/view/menu/MenuBuilder;)I
    .locals 7
    .param p1    # Landroid/support/v7/view/menu/MenuBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 596
    move-object v0, p0

    move-object v1, p1

    const/4 v5, 0x0

    move v2, v5

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v3, v5

    :goto_0
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_1

    .line 597
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    move-object v4, v5

    .line 598
    move-object v5, v1

    move-object v6, v4

    iget-object v6, v6, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-ne v5, v6, :cond_0

    .line 599
    move v5, v2

    move v0, v5

    .line 603
    :goto_1
    return v0

    .line 596
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 603
    :cond_1
    const/4 v5, -0x1

    move v0, v5

    goto :goto_1
.end method

.method private findMenuItemForSubmenu(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuBuilder;)Landroid/view/MenuItem;
    .locals 8
    .param p1    # Landroid/support/v7/view/menu/MenuBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/view/menu/MenuBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 457
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v6, 0x0

    move v3, v6

    move-object v6, v1

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v6

    move v4, v6

    :goto_0
    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_1

    .line 458
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    move-object v5, v6

    .line 459
    move-object v6, v5

    invoke-interface {v6}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v2

    move-object v7, v5

    invoke-interface {v7}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v7

    if-ne v6, v7, :cond_0

    .line 460
    move-object v6, v5

    move-object v0, v6

    .line 464
    :goto_1
    return-object v0

    .line 457
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 464
    :cond_1
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method

.method private findParentViewForSubmenu(Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;Landroid/support/v7/view/menu/MenuBuilder;)Landroid/view/View;
    .locals 14
    .param p1    # Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/view/menu/MenuBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 478
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object v11, v0

    move-object v12, v1

    iget-object v12, v12, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v13, v2

    invoke-direct {v11, v12, v13}, Landroid/support/v7/view/menu/CascadingMenuPopup;->findMenuItemForSubmenu(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuBuilder;)Landroid/view/MenuItem;

    move-result-object v11

    move-object v3, v11

    .line 479
    move-object v11, v3

    if-nez v11, :cond_0

    .line 481
    const/4 v11, 0x0

    move-object v0, v11

    .line 521
    :goto_0
    return-object v0

    .line 487
    :cond_0
    move-object v11, v1

    invoke-virtual {v11}, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v11

    move-object v6, v11

    .line 488
    move-object v11, v6

    invoke-virtual {v11}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    move-object v7, v11

    .line 489
    move-object v11, v7

    instance-of v11, v11, Landroid/widget/HeaderViewListAdapter;

    if-eqz v11, :cond_2

    .line 490
    move-object v11, v7

    check-cast v11, Landroid/widget/HeaderViewListAdapter;

    move-object v8, v11

    .line 491
    move-object v11, v8

    invoke-virtual {v11}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v11

    move v4, v11

    .line 492
    move-object v11, v8

    invoke-virtual {v11}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    check-cast v11, Landroid/support/v7/view/menu/MenuAdapter;

    move-object v5, v11

    .line 499
    :goto_1
    const/4 v11, -0x1

    move v8, v11

    .line 500
    const/4 v11, 0x0

    move v9, v11

    move-object v11, v5

    invoke-virtual {v11}, Landroid/support/v7/view/menu/MenuAdapter;->getCount()I

    move-result v11

    move v10, v11

    :goto_2
    move v11, v9

    move v12, v10

    if-ge v11, v12, :cond_1

    .line 501
    move-object v11, v3

    move-object v12, v5

    move v13, v9

    invoke-virtual {v12, v13}, Landroid/support/v7/view/menu/MenuAdapter;->getItem(I)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v12

    if-ne v11, v12, :cond_3

    .line 502
    move v11, v9

    move v8, v11

    .line 506
    :cond_1
    move v11, v8

    const/4 v12, -0x1

    if-ne v11, v12, :cond_4

    .line 508
    const/4 v11, 0x0

    move-object v0, v11

    goto :goto_0

    .line 494
    :cond_2
    const/4 v11, 0x0

    move v4, v11

    .line 495
    move-object v11, v7

    check-cast v11, Landroid/support/v7/view/menu/MenuAdapter;

    move-object v5, v11

    goto :goto_1

    .line 500
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 512
    :cond_4
    move v11, v8

    move v12, v4

    add-int/2addr v11, v12

    move v8, v11

    .line 515
    move v11, v8

    move-object v12, v6

    invoke-virtual {v12}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v12

    sub-int/2addr v11, v12

    move v9, v11

    .line 516
    move v11, v9

    if-ltz v11, :cond_5

    move v11, v9

    move-object v12, v6

    invoke-virtual {v12}, Landroid/widget/ListView;->getChildCount()I

    move-result v12

    if-lt v11, v12, :cond_6

    .line 518
    :cond_5
    const/4 v11, 0x0

    move-object v0, v11

    goto :goto_0

    .line 521
    :cond_6
    move-object v11, v6

    move v12, v9

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    move-object v0, v11

    goto :goto_0
.end method

.method private getInitialMenuPosition()I
    .locals 4

    .prologue
    .line 291
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    move v1, v2

    .line 292
    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getNextMenuPosition(I)I
    .locals 10

    .prologue
    .line 305
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    invoke-virtual {v6}, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v6

    move-object v2, v6

    .line 307
    const/4 v6, 0x2

    new-array v6, v6, [I

    move-object v3, v6

    .line 308
    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 310
    new-instance v6, Landroid/graphics/Rect;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    move-object v4, v6

    .line 311
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 313
    move-object v6, v0

    iget v6, v6, Landroid/support/v7/view/menu/CascadingMenuPopup;->mLastPosition:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 314
    move-object v6, v3

    const/4 v7, 0x0

    aget v6, v6, v7

    move-object v7, v2

    invoke-virtual {v7}, Landroid/widget/ListView;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    move v7, v1

    add-int/2addr v6, v7

    move v5, v6

    .line 315
    move v6, v5

    move-object v7, v4

    iget v7, v7, Landroid/graphics/Rect;->right:I

    if-le v6, v7, :cond_0

    .line 316
    const/4 v6, 0x0

    move v0, v6

    .line 324
    :goto_0
    return v0

    .line 318
    :cond_0
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 320
    :cond_1
    move-object v6, v3

    const/4 v7, 0x0

    aget v6, v6, v7

    move v7, v1

    sub-int/2addr v6, v7

    move v5, v6

    .line 321
    move v6, v5

    if-gez v6, :cond_2

    .line 322
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 324
    :cond_2
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method

.method private showMenu(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 23
    .param p1    # Landroid/support/v7/view/menu/MenuBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 345
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v17

    move-object/from16 v4, v17

    .line 346
    new-instance v17, Landroid/support/v7/view/menu/MenuAdapter;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-boolean v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mOverflowOnly:Z

    move/from16 v21, v0

    invoke-direct/range {v18 .. v21}, Landroid/support/v7/view/menu/MenuAdapter;-><init>(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/LayoutInflater;Z)V

    move-object/from16 v5, v17

    .line 352
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v17

    if-nez v17, :cond_2

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mForceShowIcon:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 354
    move-object/from16 v17, v5

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/view/menu/MenuAdapter;->setForceShowIcon(Z)V

    .line 361
    :cond_0
    :goto_0
    move-object/from16 v17, v5

    const/16 v18, 0x0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mMenuMaxWidth:I

    move/from16 v20, v0

    invoke-static/range {v17 .. v20}, Landroid/support/v7/view/menu/CascadingMenuPopup;->measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v17

    move/from16 v6, v17

    .line 362
    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v17}, Landroid/support/v7/view/menu/CascadingMenuPopup;->createPopupWindow()Landroid/support/v7/widget/MenuPopupWindow;

    move-result-object v17

    move-object/from16 v7, v17

    .line 363
    move-object/from16 v17, v7

    move-object/from16 v18, v5

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/widget/MenuPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 364
    move-object/from16 v17, v7

    move/from16 v18, v6

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/widget/MenuPopupWindow;->setContentWidth(I)V

    .line 365
    move-object/from16 v17, v7

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/widget/MenuPopupWindow;->setDropDownGravity(I)V

    .line 369
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_3

    .line 370
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    move-object/from16 v8, v17

    .line 371
    move-object/from16 v17, v2

    move-object/from16 v18, v8

    move-object/from16 v19, v3

    invoke-direct/range {v17 .. v19}, Landroid/support/v7/view/menu/CascadingMenuPopup;->findParentViewForSubmenu(Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;Landroid/support/v7/view/menu/MenuBuilder;)Landroid/view/View;

    move-result-object v17

    move-object/from16 v9, v17

    .line 377
    :goto_1
    move-object/from16 v17, v9

    if-eqz v17, :cond_8

    .line 379
    move-object/from16 v17, v7

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/widget/MenuPopupWindow;->setTouchModal(Z)V

    .line 380
    move-object/from16 v17, v7

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/widget/MenuPopupWindow;->setEnterTransition(Ljava/lang/Object;)V

    .line 382
    move-object/from16 v17, v2

    move/from16 v18, v6

    invoke-direct/range {v17 .. v18}, Landroid/support/v7/view/menu/CascadingMenuPopup;->getNextMenuPosition(I)I

    move-result v17

    move/from16 v10, v17

    .line 383
    move/from16 v17, v10

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/16 v17, 0x1

    :goto_2
    move/from16 v11, v17

    .line 384
    move-object/from16 v17, v2

    move/from16 v18, v10

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/support/v7/view/menu/CascadingMenuPopup;->mLastPosition:I

    .line 386
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v12, v17

    .line 390
    move-object/from16 v17, v9

    move-object/from16 v18, v12

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->getLocationInWindow([I)V

    .line 391
    move-object/from16 v17, v8

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/MenuPopupWindow;->getHorizontalOffset()I

    move-result v17

    move-object/from16 v18, v12

    const/16 v19, 0x0

    aget v18, v18, v19

    add-int v17, v17, v18

    move/from16 v13, v17

    .line 392
    move-object/from16 v17, v8

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/MenuPopupWindow;->getVerticalOffset()I

    move-result v17

    move-object/from16 v18, v12

    const/16 v19, 0x1

    aget v18, v18, v19

    add-int v17, v17, v18

    move/from16 v14, v17

    .line 397
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    move/from16 v17, v0

    const/16 v18, 0x5

    and-int/lit8 v17, v17, 0x5

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 398
    move/from16 v17, v11

    if-eqz v17, :cond_5

    .line 399
    move/from16 v17, v13

    move/from16 v18, v6

    add-int v17, v17, v18

    move/from16 v15, v17

    .line 411
    :goto_3
    move-object/from16 v17, v7

    move/from16 v18, v15

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/widget/MenuPopupWindow;->setHorizontalOffset(I)V

    .line 413
    move/from16 v17, v14

    move/from16 v16, v17

    .line 414
    move-object/from16 v17, v7

    move/from16 v18, v16

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/widget/MenuPopupWindow;->setVerticalOffset(I)V

    .line 426
    :goto_4
    new-instance v17, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v7

    move-object/from16 v20, v3

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mLastPosition:I

    move/from16 v21, v0

    invoke-direct/range {v18 .. v21}, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;-><init>(Landroid/support/v7/widget/MenuPopupWindow;Landroid/support/v7/view/menu/MenuBuilder;I)V

    move-object/from16 v10, v17

    .line 427
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v18, v10

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v17

    .line 429
    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/MenuPopupWindow;->show()V

    .line 432
    move-object/from16 v17, v8

    if-nez v17, :cond_1

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowTitle:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v17

    if-eqz v17, :cond_1

    .line 433
    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v17

    move-object/from16 v11, v17

    .line 434
    move-object/from16 v17, v4

    sget v18, Landroid/support/v7/appcompat/R$layout;->abc_popup_menu_header_item_layout:I

    move-object/from16 v19, v11

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/FrameLayout;

    move-object/from16 v12, v17

    .line 436
    move-object/from16 v17, v12

    const v18, 0x1020016

    invoke-virtual/range {v17 .. v18}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v13, v17

    .line 437
    move-object/from16 v17, v12

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 438
    move-object/from16 v17, v13

    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    move-object/from16 v17, v11

    move-object/from16 v18, v12

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 442
    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/MenuPopupWindow;->show()V

    .line 444
    :cond_1
    return-void

    .line 355
    :cond_2
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 357
    move-object/from16 v17, v5

    move-object/from16 v18, v3

    invoke-static/range {v18 .. v18}, Landroid/support/v7/view/menu/MenuPopup;->shouldPreserveIconSpacing(Landroid/support/v7/view/menu/MenuBuilder;)Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/view/menu/MenuAdapter;->setForceShowIcon(Z)V

    goto/16 :goto_0

    .line 373
    :cond_3
    const/16 v17, 0x0

    move-object/from16 v8, v17

    .line 374
    const/16 v17, 0x0

    move-object/from16 v9, v17

    goto/16 :goto_1

    .line 383
    :cond_4
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 401
    :cond_5
    move/from16 v17, v13

    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getWidth()I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v15, v17

    goto/16 :goto_3

    .line 404
    :cond_6
    move/from16 v17, v11

    if-eqz v17, :cond_7

    .line 405
    move/from16 v17, v13

    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getWidth()I

    move-result v18

    add-int v17, v17, v18

    move/from16 v15, v17

    goto/16 :goto_3

    .line 407
    :cond_7
    move/from16 v17, v13

    move/from16 v18, v6

    sub-int v17, v17, v18

    move/from16 v15, v17

    goto/16 :goto_3

    .line 416
    :cond_8
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mHasXOffset:Z

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 417
    move-object/from16 v17, v7

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mXOffset:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/widget/MenuPopupWindow;->setHorizontalOffset(I)V

    .line 419
    :cond_9
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mHasYOffset:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    .line 420
    move-object/from16 v17, v7

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mYOffset:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/widget/MenuPopupWindow;->setVerticalOffset(I)V

    .line 422
    :cond_a
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/view/menu/CascadingMenuPopup;->getEpicenterBounds()Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v10, v17

    .line 423
    move-object/from16 v17, v7

    move-object/from16 v18, v10

    invoke-virtual/range {v17 .. v18}, Landroid/support/v7/widget/MenuPopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_4
.end method


# virtual methods
.method public addMenu(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 5

    .prologue
    .line 330
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 332
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/view/menu/CascadingMenuPopup;->showMenu(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 337
    :goto_0
    return-void

    .line 335
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method protected closeMenuOnSubMenuOpened()Z
    .locals 2

    .prologue
    .line 732
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public dismiss()V
    .locals 7

    .prologue
    .line 263
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v1, v5

    .line 264
    move v5, v1

    if-lez v5, :cond_1

    .line 265
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    move v6, v1

    new-array v6, v6, [Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 266
    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    move-object v2, v5

    .line 267
    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    :goto_0
    move v5, v3

    if-ltz v5, :cond_1

    .line 268
    move-object v5, v2

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 269
    move-object v5, v4

    iget-object v5, v5, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v5}, Landroid/support/v7/widget/MenuPopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 270
    move-object v5, v4

    iget-object v5, v5, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v5}, Landroid/support/v7/widget/MenuPopupWindow;->dismiss()V

    .line 267
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 274
    :cond_1
    return-void
.end method

.method public flagActionItems()Z
    .locals 2

    .prologue
    .line 667
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 4

    .prologue
    .line 706
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 708
    :goto_0
    move-object v0, v1

    return-object v0

    .line 706
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    .line 708
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v1

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 3

    .prologue
    .line 529
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v1, v1, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v1}, Landroid/support/v7/widget/MenuPopupWindow;->isShowing()Z

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

.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .locals 12

    .prologue
    .line 608
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v8, v0

    move-object v9, v1

    invoke-direct {v8, v9}, Landroid/support/v7/view/menu/CascadingMenuPopup;->findIndexOfAddedMenu(Landroid/support/v7/view/menu/MenuBuilder;)I

    move-result v8

    move v3, v8

    .line 609
    move v8, v3

    if-gez v8, :cond_0

    .line 663
    :goto_0
    return-void

    .line 614
    :cond_0
    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v4, v8

    .line 615
    move v8, v4

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 616
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    move v9, v4

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    move-object v5, v8

    .line 617
    move-object v8, v5

    iget-object v8, v8, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 621
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    move v9, v3

    invoke-interface {v8, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    move-object v5, v8

    .line 622
    move-object v8, v5

    iget-object v8, v8, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v9, v0

    invoke-virtual {v8, v9}, Landroid/support/v7/view/menu/MenuBuilder;->removeMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    .line 623
    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShouldCloseImmediately:Z

    if-eqz v8, :cond_2

    .line 625
    move-object v8, v5

    iget-object v8, v8, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/MenuPopupWindow;->setExitTransition(Ljava/lang/Object;)V

    .line 626
    move-object v8, v5

    iget-object v8, v8, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/MenuPopupWindow;->setAnimationStyle(I)V

    .line 628
    :cond_2
    move-object v8, v5

    iget-object v8, v8, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v8}, Landroid/support/v7/widget/MenuPopupWindow;->dismiss()V

    .line 630
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v6, v8

    .line 631
    move v8, v6

    if-lez v8, :cond_7

    .line 632
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    move v10, v6

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget v9, v9, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->position:I

    iput v9, v8, Landroid/support/v7/view/menu/CascadingMenuPopup;->mLastPosition:I

    .line 637
    :goto_1
    move v8, v6

    if-nez v8, :cond_8

    .line 639
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/view/menu/CascadingMenuPopup;->dismiss()V

    .line 641
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v8, :cond_3

    .line 642
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    move-object v9, v1

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V

    .line 645
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v8, :cond_5

    .line 646
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v8}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 647
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v8, v9}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 649
    :cond_4
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 655
    :cond_5
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/view/menu/CascadingMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v8}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 663
    :cond_6
    :goto_2
    goto/16 :goto_0

    .line 634
    :cond_7
    move-object v8, v0

    move-object v9, v0

    invoke-direct {v9}, Landroid/support/v7/view/menu/CascadingMenuPopup;->getInitialMenuPosition()I

    move-result v9

    iput v9, v8, Landroid/support/v7/view/menu/CascadingMenuPopup;->mLastPosition:I

    goto :goto_1

    .line 656
    :cond_8
    move v8, v2

    if-eqz v8, :cond_6

    .line 660
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    move-object v7, v8

    .line 661
    move-object v8, v7

    iget-object v8, v8, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    goto :goto_2
.end method

.method public onDismiss()V
    .locals 7

    .prologue
    .line 539
    move-object v0, p0

    const/4 v5, 0x0

    move-object v1, v5

    .line 540
    const/4 v5, 0x0

    move v2, v5

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v3, v5

    :goto_0
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 541
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    move-object v4, v5

    .line 542
    move-object v5, v4

    iget-object v5, v5, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v5}, Landroid/support/v7/widget/MenuPopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_2

    .line 543
    move-object v5, v4

    move-object v1, v5

    .line 550
    :cond_0
    move-object v5, v1

    if-eqz v5, :cond_1

    .line 551
    move-object v5, v1

    iget-object v5, v5, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 553
    :cond_1
    return-void

    .line 540
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    .line 278
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    move v4, v2

    const/16 v5, 0x52

    if-ne v4, v5, :cond_0

    .line 279
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/view/menu/CascadingMenuPopup;->dismiss()V

    .line 280
    const/4 v4, 0x1

    move v0, v4

    .line 282
    :goto_0
    return v0

    :cond_0
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 677
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 672
    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z
    .locals 6

    .prologue
    .line 570
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    move-object v3, v4

    .line 571
    move-object v4, v1

    move-object v5, v3

    iget-object v5, v5, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-ne v4, v5, :cond_0

    .line 573
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->requestFocus()Z

    move-result v4

    .line 574
    const/4 v4, 0x1

    move v0, v4

    .line 586
    :goto_1
    return v0

    .line 576
    :cond_0
    goto :goto_0

    .line 578
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v7/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 579
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v7/view/menu/CascadingMenuPopup;->addMenu(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 581
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v4, :cond_2

    .line 582
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    move-object v5, v1

    invoke-interface {v4, v5}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroid/support/v7/view/menu/MenuBuilder;)Z

    move-result v4

    .line 584
    :cond_2
    const/4 v4, 0x1

    move v0, v4

    goto :goto_1

    .line 586
    :cond_3
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 690
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 691
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 694
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 695
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    .line 694
    invoke-static {v3, v4}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v3

    iput v3, v2, Landroid/support/v7/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    .line 697
    :cond_0
    return-void
.end method

.method public setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
    .locals 4

    .prologue
    .line 564
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .line 565
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 4

    .prologue
    .line 219
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/view/menu/CascadingMenuPopup;->mForceShowIcon:Z

    .line 220
    return-void
.end method

.method public setGravity(I)V
    .locals 5

    .prologue
    .line 681
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 682
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    .line 683
    move-object v2, v0

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 684
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    .line 683
    invoke-static {v3, v4}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v3

    iput v3, v2, Landroid/support/v7/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    .line 686
    :cond_0
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 4

    .prologue
    .line 713
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/view/menu/CascadingMenuPopup;->mHasXOffset:Z

    .line 714
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/view/menu/CascadingMenuPopup;->mXOffset:I

    .line 715
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 4

    .prologue
    .line 701
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/menu/CascadingMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 702
    return-void
.end method

.method public setShowTitle(Z)V
    .locals 4

    .prologue
    .line 725
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowTitle:Z

    .line 726
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 4

    .prologue
    .line 719
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/view/menu/CascadingMenuPopup;->mHasYOffset:Z

    .line 720
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/view/menu/CascadingMenuPopup;->mYOffset:I

    .line 721
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    .line 236
    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 255
    :goto_0
    return-void

    .line 241
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_1
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/MenuBuilder;

    move-object v2, v3

    .line 242
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroid/support/v7/view/menu/CascadingMenuPopup;->showMenu(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 243
    goto :goto_1

    .line 244
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 246
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    iput-object v4, v3, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    .line 248
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 249
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_3

    const/4 v3, 0x1

    :goto_2
    move v1, v3

    .line 250
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iput-object v4, v3, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 251
    move v3, v1

    if-eqz v3, :cond_2

    .line 252
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 255
    :cond_2
    goto :goto_0

    .line 249
    :cond_3
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public updateMenuView(Z)V
    .locals 5

    .prologue
    .line 557
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    move-object v3, v4

    .line 558
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/view/menu/CascadingMenuPopup;->toMenuAdapter(Landroid/widget/ListAdapter;)Landroid/support/v7/view/menu/MenuAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuAdapter;->notifyDataSetChanged()V

    .line 559
    goto :goto_0

    .line 560
    :cond_0
    return-void
.end method
