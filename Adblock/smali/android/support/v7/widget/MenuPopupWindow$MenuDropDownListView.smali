.class public Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;
.super Landroid/support/v7/widget/DropDownListView;
.source "MenuPopupWindow.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/MenuPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuDropDownListView"
.end annotation


# instance fields
.field final mAdvanceKey:I

.field private mHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;

.field private mHoveredMenuItem:Landroid/view/MenuItem;

.field final mRetreatKey:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 8

    .prologue
    .line 137
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Landroid/support/v7/widget/DropDownListView;-><init>(Landroid/content/Context;Z)V

    .line 139
    move-object v5, v1

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v3, v5

    .line 140
    move-object v5, v3

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    move-object v4, v5

    .line 141
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_0

    const/4 v5, 0x1

    move-object v6, v4

    .line 142
    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 143
    move-object v5, v0

    const/16 v6, 0x15

    iput v6, v5, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    .line 144
    move-object v5, v0

    const/16 v6, 0x16

    iput v6, v5, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    .line 149
    :goto_0
    return-void

    .line 146
    :cond_0
    move-object v5, v0

    const/16 v6, 0x16

    iput v6, v5, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    .line 147
    move-object v5, v0

    const/16 v6, 0x15

    iput v6, v5, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    goto :goto_0
.end method


# virtual methods
.method public clearSelection()V
    .locals 3

    .prologue
    .line 156
    move-object v0, p0

    move-object v1, v0

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->setSelection(I)V

    .line 157
    return-void
.end method

.method public bridge synthetic hasFocus()Z
    .locals 2

    .prologue
    .line 128
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v7/widget/DropDownListView;->hasFocus()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public bridge synthetic hasWindowFocus()Z
    .locals 2

    .prologue
    .line 128
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v7/widget/DropDownListView;->hasWindowFocus()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public bridge synthetic isFocused()Z
    .locals 2

    .prologue
    .line 128
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v7/widget/DropDownListView;->isFocused()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public bridge synthetic isInTouchMode()Z
    .locals 2

    .prologue
    .line 128
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v7/widget/DropDownListView;->isInTouchMode()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public bridge synthetic onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .locals 6

    .prologue
    .line 128
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/v7/widget/DropDownListView;->onForwardedEvent(Landroid/view/MotionEvent;I)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    .line 183
    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;

    if-eqz v8, :cond_2

    .line 187
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    move-object v4, v8

    .line 188
    move-object v8, v4

    instance-of v8, v8, Landroid/widget/HeaderViewListAdapter;

    if-eqz v8, :cond_3

    .line 189
    move-object v8, v4

    check-cast v8, Landroid/widget/HeaderViewListAdapter;

    move-object v5, v8

    .line 190
    move-object v8, v5

    invoke-virtual {v8}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v8

    move v2, v8

    .line 191
    move-object v8, v5

    invoke-virtual {v8}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    check-cast v8, Landroid/support/v7/view/menu/MenuAdapter;

    move-object v3, v8

    .line 198
    :goto_0
    const/4 v8, 0x0

    move-object v5, v8

    .line 199
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/16 v9, 0xa

    if-eq v8, v9, :cond_0

    .line 200
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    move-object v10, v1

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->pointToPosition(II)I

    move-result v8

    move v6, v8

    .line 201
    move v8, v6

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 202
    move v8, v6

    move v9, v2

    sub-int/2addr v8, v9

    move v7, v8

    .line 203
    move v8, v7

    if-ltz v8, :cond_0

    move v8, v7

    move-object v9, v3

    invoke-virtual {v9}, Landroid/support/v7/view/menu/MenuAdapter;->getCount()I

    move-result v9

    if-ge v8, v9, :cond_0

    .line 204
    move-object v8, v3

    move v9, v7

    invoke-virtual {v8, v9}, Landroid/support/v7/view/menu/MenuAdapter;->getItem(I)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v8

    move-object v5, v8

    .line 209
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->mHoveredMenuItem:Landroid/view/MenuItem;

    move-object v6, v8

    .line 210
    move-object v8, v6

    move-object v9, v5

    if-eq v8, v9, :cond_2

    .line 211
    move-object v8, v3

    invoke-virtual {v8}, Landroid/support/v7/view/menu/MenuAdapter;->getAdapterMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v8

    move-object v7, v8

    .line 212
    move-object v8, v6

    if-eqz v8, :cond_1

    .line 213
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;

    move-object v9, v7

    move-object v10, v6

    invoke-interface {v8, v9, v10}, Landroid/support/v7/widget/MenuItemHoverListener;->onItemHoverExit(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    .line 216
    :cond_1
    move-object v8, v0

    move-object v9, v5

    iput-object v9, v8, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->mHoveredMenuItem:Landroid/view/MenuItem;

    .line 218
    move-object v8, v5

    if-eqz v8, :cond_2

    .line 219
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;

    move-object v9, v7

    move-object v10, v5

    invoke-interface {v8, v9, v10}, Landroid/support/v7/widget/MenuItemHoverListener;->onItemHoverEnter(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    .line 224
    :cond_2
    move-object v8, v0

    move-object v9, v1

    invoke-super {v8, v9}, Landroid/support/v7/widget/DropDownListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    move v0, v8

    return v0

    .line 193
    :cond_3
    const/4 v8, 0x0

    move v2, v8

    .line 194
    move-object v8, v4

    check-cast v8, Landroid/support/v7/view/menu/MenuAdapter;

    move-object v3, v8

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9

    .prologue
    .line 161
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/ListMenuItemView;

    move-object v3, v4

    .line 162
    move-object v4, v3

    if-eqz v4, :cond_1

    move v4, v1

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    if-ne v4, v5, :cond_1

    .line 163
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/view/menu/ListMenuItemView;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v7/view/menu/ListMenuItemView;->getItemData()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 164
    move-object v4, v0

    move-object v5, v3

    move-object v6, v0

    .line 166
    invoke-virtual {v6}, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->getSelectedItemPosition()I

    move-result v6

    move-object v7, v0

    .line 167
    invoke-virtual {v7}, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->getSelectedItemId()J

    move-result-wide v7

    .line 164
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v4

    .line 169
    :cond_0
    const/4 v4, 0x1

    move v0, v4

    .line 177
    :goto_0
    return v0

    .line 170
    :cond_1
    move-object v4, v3

    if-eqz v4, :cond_2

    move v4, v1

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    if-ne v4, v5, :cond_2

    .line 171
    move-object v4, v0

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->setSelection(I)V

    .line 174
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/MenuAdapter;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuAdapter;->getAdapterMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 175
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 177
    :cond_2
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Landroid/support/v7/widget/DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method public setHoverListener(Landroid/support/v7/widget/MenuItemHoverListener;)V
    .locals 4

    .prologue
    .line 152
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;

    .line 153
    return-void
.end method
