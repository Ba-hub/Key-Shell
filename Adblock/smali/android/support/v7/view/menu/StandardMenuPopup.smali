.class final Landroid/support/v7/view/menu/StandardMenuPopup;
.super Landroid/support/v7/view/menu/MenuPopup;
.source "StandardMenuPopup.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/support/v7/view/menu/MenuPresenter;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private final mAdapter:Landroid/support/v7/view/menu/MenuAdapter;

.field private mAnchorView:Landroid/view/View;

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field private final mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHasContentWidth:Z

.field private final mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOverflowOnly:Z

.field final mPopup:Landroid/support/v7/widget/MenuPopupWindow;

.field private final mPopupMaxWidth:I

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

.field private mShowTitle:Z

.field mShownAnchorView:Landroid/view/View;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;

.field private mWasDismissed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;IIZ)V
    .locals 17

    .prologue
    .line 97
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v9, v0

    invoke-direct {v9}, Landroid/support/v7/view/menu/MenuPopup;-><init>()V

    .line 58
    move-object v9, v0

    new-instance v10, Landroid/support/v7/view/menu/StandardMenuPopup$1;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v0

    invoke-direct {v11, v12}, Landroid/support/v7/view/menu/StandardMenuPopup$1;-><init>(Landroid/support/v7/view/menu/StandardMenuPopup;)V

    iput-object v10, v9, Landroid/support/v7/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 92
    move-object v9, v0

    const/4 v10, 0x0

    iput v10, v9, Landroid/support/v7/view/menu/StandardMenuPopup;->mDropDownGravity:I

    .line 98
    move-object v9, v0

    move-object v10, v1

    iput-object v10, v9, Landroid/support/v7/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    .line 99
    move-object v9, v0

    move-object v10, v2

    iput-object v10, v9, Landroid/support/v7/view/menu/StandardMenuPopup;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 100
    move-object v9, v0

    move v10, v6

    iput-boolean v10, v9, Landroid/support/v7/view/menu/StandardMenuPopup;->mOverflowOnly:Z

    .line 101
    move-object v9, v1

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    move-object v7, v9

    .line 102
    move-object v9, v0

    new-instance v10, Landroid/support/v7/view/menu/MenuAdapter;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v2

    move-object v13, v7

    move-object v14, v0

    iget-boolean v14, v14, Landroid/support/v7/view/menu/StandardMenuPopup;->mOverflowOnly:Z

    invoke-direct {v11, v12, v13, v14}, Landroid/support/v7/view/menu/MenuAdapter;-><init>(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/LayoutInflater;Z)V

    iput-object v10, v9, Landroid/support/v7/view/menu/StandardMenuPopup;->mAdapter:Landroid/support/v7/view/menu/MenuAdapter;

    .line 103
    move-object v9, v0

    move v10, v4

    iput v10, v9, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopupStyleAttr:I

    .line 104
    move-object v9, v0

    move v10, v5

    iput v10, v9, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopupStyleRes:I

    .line 106
    move-object v9, v1

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    move-object v8, v9

    .line 107
    move-object v9, v0

    move-object v10, v8

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v11, 0x2

    div-int/lit8 v10, v10, 0x2

    move-object v11, v8

    sget v12, Landroid/support/v7/appcompat/R$dimen;->abc_config_prefDialogWidth:I

    .line 108
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 107
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v9, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopupMaxWidth:I

    .line 110
    move-object v9, v0

    move-object v10, v3

    iput-object v10, v9, Landroid/support/v7/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    .line 112
    move-object v9, v0

    new-instance v10, Landroid/support/v7/widget/MenuPopupWindow;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    move-object v14, v0

    iget v14, v14, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopupStyleAttr:I

    move-object v15, v0

    iget v15, v15, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopupStyleRes:I

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/support/v7/widget/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v10, v9, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    .line 115
    move-object v9, v2

    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v9, v10, v11}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 116
    return-void
.end method

.method private tryShow()Z
    .locals 11

    .prologue
    .line 129
    move-object v0, p0

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/view/menu/StandardMenuPopup;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 130
    const/4 v6, 0x1

    move v0, v6

    .line 182
    :goto_0
    return v0

    .line 133
    :cond_0
    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/view/menu/StandardMenuPopup;->mWasDismissed:Z

    if-nez v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    if-nez v6, :cond_2

    .line 134
    :cond_1
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 137
    :cond_2
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    iput-object v7, v6, Landroid/support/v7/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    .line 139
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/MenuPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 140
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/MenuPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 141
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/MenuPopupWindow;->setModal(Z)V

    .line 143
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    move-object v1, v6

    .line 144
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v6, :cond_7

    const/4 v6, 0x1

    :goto_1
    move v2, v6

    .line 145
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    iput-object v7, v6, Landroid/support/v7/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 146
    move v6, v2

    if-eqz v6, :cond_3

    .line 147
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v6, v7}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 149
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/MenuPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 150
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/view/menu/StandardMenuPopup;->mDropDownGravity:I

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/MenuPopupWindow;->setDropDownGravity(I)V

    .line 152
    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/view/menu/StandardMenuPopup;->mHasContentWidth:Z

    if-nez v6, :cond_4

    .line 153
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/view/menu/StandardMenuPopup;->mAdapter:Landroid/support/v7/view/menu/MenuAdapter;

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    move-object v10, v0

    iget v10, v10, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopupMaxWidth:I

    invoke-static {v7, v8, v9, v10}, Landroid/support/v7/view/menu/StandardMenuPopup;->measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v7

    iput v7, v6, Landroid/support/v7/view/menu/StandardMenuPopup;->mContentWidth:I

    .line 154
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/support/v7/view/menu/StandardMenuPopup;->mHasContentWidth:Z

    .line 157
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/view/menu/StandardMenuPopup;->mContentWidth:I

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/MenuPopupWindow;->setContentWidth(I)V

    .line 158
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/MenuPopupWindow;->setInputMethodMode(I)V

    .line 159
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/view/menu/StandardMenuPopup;->getEpicenterBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/MenuPopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 160
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v6}, Landroid/support/v7/widget/MenuPopupWindow;->show()V

    .line 162
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v6}, Landroid/support/v7/widget/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v6

    move-object v3, v6

    .line 163
    move-object v6, v3

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 165
    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/view/menu/StandardMenuPopup;->mShowTitle:Z

    if-eqz v6, :cond_6

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/StandardMenuPopup;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 166
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    .line 167
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Landroid/support/v7/appcompat/R$layout;->abc_popup_menu_header_item_layout:I

    move-object v8, v3

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    move-object v4, v6

    .line 169
    move-object v6, v4

    const v7, 0x1020016

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    move-object v5, v6

    .line 170
    move-object v6, v5

    if-eqz v6, :cond_5

    .line 171
    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/view/menu/StandardMenuPopup;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v7}, Landroid/support/v7/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    :cond_5
    move-object v6, v4

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 174
    move-object v6, v3

    move-object v7, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 179
    :cond_6
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/view/menu/StandardMenuPopup;->mAdapter:Landroid/support/v7/view/menu/MenuAdapter;

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/MenuPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 180
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v6}, Landroid/support/v7/widget/MenuPopupWindow;->show()V

    .line 182
    const/4 v6, 0x1

    move v0, v6

    goto/16 :goto_0

    .line 144
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public addMenu(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 194
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/view/menu/StandardMenuPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v1}, Landroid/support/v7/widget/MenuPopupWindow;->dismiss()V

    .line 197
    :cond_0
    return-void
.end method

.method public flagActionItems()Z
    .locals 2

    .prologue
    .line 279
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 2

    .prologue
    .line 312
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v1}, Landroid/support/v7/widget/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    .line 206
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/view/menu/StandardMenuPopup;->mWasDismissed:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

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
    .locals 6

    .prologue
    .line 269
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/StandardMenuPopup;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eq v3, v4, :cond_0

    .line 275
    :goto_0
    return-void

    .line 271
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/view/menu/StandardMenuPopup;->dismiss()V

    .line 272
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/StandardMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v3, :cond_1

    .line 273
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/StandardMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    move-object v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V

    .line 275
    :cond_1
    goto :goto_0
.end method

.method public onDismiss()V
    .locals 3

    .prologue
    .line 211
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/view/menu/StandardMenuPopup;->mWasDismissed:Z

    .line 212
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/StandardMenuPopup;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->close()V

    .line 214
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_1

    .line 215
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v7/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 216
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 217
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 219
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v1, :cond_2

    .line 220
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v1}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 222
    :cond_2
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    .line 298
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

    .line 299
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/view/menu/StandardMenuPopup;->dismiss()V

    .line 300
    const/4 v4, 0x1

    move v0, v4

    .line 302
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
    .line 289
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 284
    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z
    .locals 14

    .prologue
    .line 240
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    invoke-virtual {v5}, Landroid/support/v7/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 241
    new-instance v5, Landroid/support/v7/view/menu/MenuPopupHelper;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    move-object v10, v0

    iget-boolean v10, v10, Landroid/support/v7/view/menu/StandardMenuPopup;->mOverflowOnly:Z

    move-object v11, v0

    iget v11, v11, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopupStyleAttr:I

    move-object v12, v0

    iget v12, v12, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopupStyleRes:I

    invoke-direct/range {v6 .. v12}, Landroid/support/v7/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    move-object v2, v5

    .line 243
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/StandardMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    invoke-virtual {v5, v6}, Landroid/support/v7/view/menu/MenuPopupHelper;->setPresenterCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 244
    move-object v5, v2

    move-object v6, v1

    invoke-static {v6}, Landroid/support/v7/view/menu/MenuPopup;->shouldPreserveIconSpacing(Landroid/support/v7/view/menu/MenuBuilder;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/support/v7/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 247
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v5, v6}, Landroid/support/v7/view/menu/MenuPopupHelper;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 248
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/support/v7/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 251
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/StandardMenuPopup;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 254
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v5}, Landroid/support/v7/widget/MenuPopupWindow;->getHorizontalOffset()I

    move-result v5

    move v3, v5

    .line 255
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v5}, Landroid/support/v7/widget/MenuPopupWindow;->getVerticalOffset()I

    move-result v5

    move v4, v5

    .line 256
    move-object v5, v2

    move v6, v3

    move v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/view/menu/MenuPopupHelper;->tryShow(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 257
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/StandardMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v5, :cond_0

    .line 258
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/StandardMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    move-object v6, v1

    invoke-interface {v5, v6}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroid/support/v7/view/menu/MenuBuilder;)Z

    move-result v5

    .line 260
    :cond_0
    const/4 v5, 0x1

    move v0, v5

    .line 263
    :goto_0
    return v0

    :cond_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 293
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    .line 294
    return-void
.end method

.method public setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
    .locals 4

    .prologue
    .line 235
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/menu/StandardMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .line 236
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 4

    .prologue
    .line 120
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/StandardMenuPopup;->mAdapter:Landroid/support/v7/view/menu/MenuAdapter;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuAdapter;->setForceShowIcon(Z)V

    .line 121
    return-void
.end method

.method public setGravity(I)V
    .locals 4

    .prologue
    .line 125
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/view/menu/StandardMenuPopup;->mDropDownGravity:I

    .line 126
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 4

    .prologue
    .line 318
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/MenuPopupWindow;->setHorizontalOffset(I)V

    .line 319
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 4

    .prologue
    .line 307
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 308
    return-void
.end method

.method public setShowTitle(Z)V
    .locals 4

    .prologue
    .line 328
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/view/menu/StandardMenuPopup;->mShowTitle:Z

    .line 329
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 4

    .prologue
    .line 323
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/MenuPopupWindow;->setVerticalOffset(I)V

    .line 324
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    .line 187
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/view/menu/StandardMenuPopup;->tryShow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 190
    :cond_0
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 4

    .prologue
    .line 226
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v7/view/menu/StandardMenuPopup;->mHasContentWidth:Z

    .line 228
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/StandardMenuPopup;->mAdapter:Landroid/support/v7/view/menu/MenuAdapter;

    if-eqz v2, :cond_0

    .line 229
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/StandardMenuPopup;->mAdapter:Landroid/support/v7/view/menu/MenuAdapter;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuAdapter;->notifyDataSetChanged()V

    .line 231
    :cond_0
    return-void
.end method
