.class abstract Landroid/support/v7/view/menu/MenuPopup;
.super Ljava/lang/Object;
.source "MenuPopup.java"

# interfaces
.implements Landroid/support/v7/view/menu/ShowableListMenu;
.implements Landroid/support/v7/view/menu/MenuPresenter;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mEpicenterBounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I
    .locals 18

    .prologue
    .line 142
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v13, 0x0

    move v4, v13

    .line 143
    const/4 v13, 0x0

    move-object v5, v13

    .line 144
    const/4 v13, 0x0

    move v6, v13

    .line 146
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    move v7, v13

    .line 147
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    move v8, v13

    .line 148
    move-object v13, v0

    invoke-interface {v13}, Landroid/widget/ListAdapter;->getCount()I

    move-result v13

    move v9, v13

    .line 149
    const/4 v13, 0x0

    move v10, v13

    :goto_0
    move v13, v10

    move v14, v9

    if-ge v13, v14, :cond_4

    .line 150
    move-object v13, v0

    move v14, v10

    invoke-interface {v13, v14}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v13

    move v11, v13

    .line 151
    move v13, v11

    move v14, v6

    if-eq v13, v14, :cond_0

    .line 152
    move v13, v11

    move v6, v13

    .line 153
    const/4 v13, 0x0

    move-object v5, v13

    .line 156
    :cond_0
    move-object v13, v1

    if-nez v13, :cond_1

    .line 157
    new-instance v13, Landroid/widget/FrameLayout;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v2

    invoke-direct {v14, v15}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object v1, v13

    .line 160
    :cond_1
    move-object v13, v0

    move v14, v10

    move-object v15, v5

    move-object/from16 v16, v1

    invoke-interface/range {v13 .. v16}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    move-object v5, v13

    .line 161
    move-object v13, v5

    move v14, v7

    move v15, v8

    invoke-virtual {v13, v14, v15}, Landroid/view/View;->measure(II)V

    .line 163
    move-object v13, v5

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    move v12, v13

    .line 164
    move v13, v12

    move v14, v3

    if-lt v13, v14, :cond_2

    .line 165
    move v13, v3

    move v0, v13

    .line 171
    :goto_1
    return v0

    .line 166
    :cond_2
    move v13, v12

    move v14, v4

    if-le v13, v14, :cond_3

    .line 167
    move v13, v12

    move v4, v13

    .line 149
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 171
    :cond_4
    move v13, v4

    move v0, v13

    goto :goto_1
.end method

.method protected static shouldPreserveIconSpacing(Landroid/support/v7/view/menu/MenuBuilder;)Z
    .locals 7

    .prologue
    .line 201
    move-object v0, p0

    const/4 v5, 0x0

    move v1, v5

    .line 202
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v5

    move v2, v5

    .line 204
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 205
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    move-object v4, v5

    .line 206
    move-object v5, v4

    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v4

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 207
    const/4 v5, 0x1

    move v1, v5

    .line 212
    :cond_0
    move v5, v1

    move v0, v5

    return v0

    .line 204
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected static toMenuAdapter(Landroid/widget/ListAdapter;)Landroid/support/v7/view/menu/MenuAdapter;
    .locals 2

    .prologue
    .line 183
    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_0

    .line 184
    move-object v1, v0

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuAdapter;

    move-object v0, v1

    .line 186
    :goto_0
    return-object v0

    :cond_0
    move-object v1, v0

    check-cast v1, Landroid/support/v7/view/menu/MenuAdapter;

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public abstract addMenu(Landroid/support/v7/view/menu/MenuBuilder;)V
.end method

.method protected closeMenuOnSubMenuOpened()Z
    .locals 2

    .prologue
    .line 216
    move-object v0, p0

    const/4 v1, 0x1

    move v0, v1

    return v0
.end method

.method public collapseItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 4

    .prologue
    .line 112
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v3, 0x0

    move v0, v3

    return v0
.end method

.method public expandItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 4

    .prologue
    .line 107
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v3, 0x0

    move v0, v3

    return v0
.end method

.method public getEpicenterBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/MenuPopup;->mEpicenterBounds:Landroid/graphics/Rect;

    move-object v0, v1

    return-object v0
.end method

.method public getId()I
    .locals 2

    .prologue
    .line 117
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView;
    .locals 6

    .prologue
    .line 102
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "MenuPopups manage their own views"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/view/menu/MenuBuilder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 98
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 122
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    move-object v8, v1

    invoke-virtual {v8}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v8

    check-cast v8, Landroid/widget/ListAdapter;

    move-object v6, v8

    .line 123
    move-object v8, v6

    invoke-static {v8}, Landroid/support/v7/view/menu/MenuPopup;->toMenuAdapter(Landroid/widget/ListAdapter;)Landroid/support/v7/view/menu/MenuAdapter;

    move-result-object v8

    move-object v7, v8

    .line 127
    move-object v8, v7

    iget-object v8, v8, Landroid/support/v7/view/menu/MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

    move-object v9, v6

    move v10, v3

    .line 128
    invoke-interface {v9, v10}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/MenuItem;

    move-object v10, v0

    move-object v11, v0

    .line 130
    invoke-virtual {v11}, Landroid/support/v7/view/menu/MenuPopup;->closeMenuOnSubMenuOpened()Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x0

    .line 127
    :goto_0
    invoke-virtual {v8, v9, v10, v11}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroid/support/v7/view/menu/MenuPresenter;I)Z

    move-result v8

    .line 131
    return-void

    .line 130
    :cond_0
    const/4 v11, 0x4

    goto :goto_0
.end method

.method public abstract setAnchorView(Landroid/view/View;)V
.end method

.method public setEpicenterBounds(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 70
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/menu/MenuPopup;->mEpicenterBounds:Landroid/graphics/Rect;

    .line 71
    return-void
.end method

.method public abstract setForceShowIcon(Z)V
.end method

.method public abstract setGravity(I)V
.end method

.method public abstract setHorizontalOffset(I)V
.end method

.method public abstract setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
.end method

.method public abstract setShowTitle(Z)V
.end method

.method public abstract setVerticalOffset(I)V
.end method
