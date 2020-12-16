.class Landroid/support/v7/widget/DropDownListView;
.super Landroid/support/v7/widget/ListViewCompat;
.source "DropDownListView.java"


# instance fields
.field private mClickAnimation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field private mDrawsInPressedState:Z

.field private mHijackFocus:Z

.field private mListSelectionHidden:Z

.field private mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 7

    .prologue
    .line 86
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    sget v6, Landroid/support/v7/appcompat/R$attr;->dropDownListViewStyle:I

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/ListViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Landroid/support/v7/widget/DropDownListView;->mHijackFocus:Z

    .line 88
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/DropDownListView;->setCacheColorHint(I)V

    .line 89
    return-void
.end method

.method private clearPressedItem()V
    .locals 5

    .prologue
    .line 174
    move-object v0, p0

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v7/widget/DropDownListView;->mDrawsInPressedState:Z

    .line 175
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/DropDownListView;->setPressed(Z)V

    .line 177
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/DropDownListView;->drawableStateChanged()V

    .line 179
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/DropDownListView;->mMotionPosition:I

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 180
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 181
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 184
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/DropDownListView;->mClickAnimation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v2, :cond_1

    .line 185
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/DropDownListView;->mClickAnimation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 186
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/DropDownListView;->mClickAnimation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 188
    :cond_1
    return-void
.end method

.method private clickPressedItem(Landroid/view/View;I)V
    .locals 10

    .prologue
    .line 158
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/DropDownListView;->getItemIdAtPosition(I)J

    move-result-wide v5

    move-wide v3, v5

    .line 159
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move-wide v8, v3

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/support/v7/widget/DropDownListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v5

    .line 160
    return-void
.end method

.method private setPressedItem(Landroid/view/View;IFF)V
    .locals 12

    .prologue
    .line 191
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/support/v7/widget/DropDownListView;->mDrawsInPressedState:Z

    .line 194
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_0

    .line 195
    move-object v7, v0

    move v8, v3

    move v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/widget/DropDownListView;->drawableHotspotChanged(FF)V

    .line 197
    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/DropDownListView;->isPressed()Z

    move-result v7

    if-nez v7, :cond_1

    .line 198
    move-object v7, v0

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/DropDownListView;->setPressed(Z)V

    .line 202
    :cond_1
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/DropDownListView;->layoutChildren()V

    .line 206
    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/DropDownListView;->mMotionPosition:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    .line 207
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/DropDownListView;->mMotionPosition:I

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v5, v7

    .line 208
    move-object v7, v5

    if-eqz v7, :cond_2

    move-object v7, v5

    move-object v8, v1

    if-eq v7, v8, :cond_2

    move-object v7, v5

    invoke-virtual {v7}, Landroid/view/View;->isPressed()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 209
    move-object v7, v5

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setPressed(Z)V

    .line 212
    :cond_2
    move-object v7, v0

    move v8, v2

    iput v8, v7, Landroid/support/v7/widget/DropDownListView;->mMotionPosition:I

    .line 215
    move v7, v3

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    move v5, v7

    .line 216
    move v7, v4

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    move v6, v7

    .line 217
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_3

    .line 218
    move-object v7, v1

    move v8, v5

    move v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 220
    :cond_3
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->isPressed()Z

    move-result v7

    if-nez v7, :cond_4

    .line 221
    move-object v7, v1

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/View;->setPressed(Z)V

    .line 225
    :cond_4
    move-object v7, v0

    move v8, v2

    move-object v9, v1

    move v10, v3

    move v11, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/support/v7/widget/DropDownListView;->positionSelectorLikeTouchCompat(ILandroid/view/View;FF)V

    .line 230
    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/DropDownListView;->setSelectorEnabled(Z)V

    .line 234
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/DropDownListView;->refreshDrawableState()V

    .line 235
    return-void
.end method


# virtual methods
.method public hasFocus()Z
    .locals 2

    .prologue
    .line 275
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/DropDownListView;->mHijackFocus:Z

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v7/widget/ListViewCompat;->hasFocus()Z

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

.method public hasWindowFocus()Z
    .locals 2

    .prologue
    .line 255
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/DropDownListView;->mHijackFocus:Z

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v7/widget/ListViewCompat;->hasWindowFocus()Z

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

.method public isFocused()Z
    .locals 2

    .prologue
    .line 265
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/DropDownListView;->mHijackFocus:Z

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v7/widget/ListViewCompat;->isFocused()Z

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

.method public isInTouchMode()Z
    .locals 2

    .prologue
    .line 245
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/DropDownListView;->mHijackFocus:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/DropDownListView;->mListSelectionHidden:Z

    if-nez v1, :cond_1

    :cond_0
    move-object v1, v0

    invoke-super {v1}, Landroid/support/v7/widget/ListViewCompat;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .locals 17

    .prologue
    .line 98
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v11, 0x1

    move v3, v11

    .line 99
    const/4 v11, 0x0

    move v4, v11

    .line 101
    move-object v11, v1

    invoke-static {v11}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v11

    move v5, v11

    .line 102
    move v11, v5

    packed-switch v11, :pswitch_data_0

    .line 135
    :cond_0
    :goto_0
    move v11, v3

    if-eqz v11, :cond_1

    move v11, v4

    if-eqz v11, :cond_2

    .line 136
    :cond_1
    move-object v11, v0

    invoke-direct {v11}, Landroid/support/v7/widget/DropDownListView;->clearPressedItem()V

    .line 140
    :cond_2
    move v11, v3

    if-eqz v11, :cond_7

    .line 141
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    if-nez v11, :cond_3

    .line 142
    move-object v11, v0

    new-instance v12, Landroid/support/v4/widget/ListViewAutoScrollHelper;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v0

    invoke-direct {v13, v14}, Landroid/support/v4/widget/ListViewAutoScrollHelper;-><init>(Landroid/widget/ListView;)V

    iput-object v12, v11, Landroid/support/v7/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    .line 144
    :cond_3
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/support/v4/widget/ListViewAutoScrollHelper;->setEnabled(Z)Landroid/support/v4/widget/AutoScrollHelper;

    move-result-object v11

    .line 145
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    move-object v12, v0

    move-object v13, v1

    invoke-virtual {v11, v12, v13}, Landroid/support/v4/widget/ListViewAutoScrollHelper;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v11

    .line 150
    :cond_4
    :goto_1
    move v11, v3

    move v0, v11

    return v0

    .line 104
    :pswitch_0
    const/4 v11, 0x0

    move v3, v11

    .line 105
    goto :goto_0

    .line 107
    :pswitch_1
    const/4 v11, 0x0

    move v3, v11

    .line 110
    :pswitch_2
    move-object v11, v1

    move v12, v2

    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    move v6, v11

    .line 111
    move v11, v6

    if-gez v11, :cond_5

    .line 112
    const/4 v11, 0x0

    move v3, v11

    .line 113
    goto :goto_0

    .line 116
    :cond_5
    move-object v11, v1

    move v12, v6

    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    float-to-int v11, v11

    move v7, v11

    .line 117
    move-object v11, v1

    move v12, v6

    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    float-to-int v11, v11

    move v8, v11

    .line 118
    move-object v11, v0

    move v12, v7

    move v13, v8

    invoke-virtual {v11, v12, v13}, Landroid/support/v7/widget/DropDownListView;->pointToPosition(II)I

    move-result v11

    move v9, v11

    .line 119
    move v11, v9

    const/4 v12, -0x1

    if-ne v11, v12, :cond_6

    .line 120
    const/4 v11, 0x1

    move v4, v11

    .line 121
    goto :goto_0

    .line 124
    :cond_6
    move-object v11, v0

    move v12, v9

    move-object v13, v0

    invoke-virtual {v13}, Landroid/support/v7/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    move-object v10, v11

    .line 125
    move-object v11, v0

    move-object v12, v10

    move v13, v9

    move v14, v7

    int-to-float v14, v14

    move v15, v8

    int-to-float v15, v15

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/support/v7/widget/DropDownListView;->setPressedItem(Landroid/view/View;IFF)V

    .line 126
    const/4 v11, 0x1

    move v3, v11

    .line 128
    move v11, v5

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 129
    move-object v11, v0

    move-object v12, v10

    move v13, v9

    invoke-direct {v11, v12, v13}, Landroid/support/v7/widget/DropDownListView;->clickPressedItem(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 146
    :cond_7
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    if-eqz v11, :cond_4

    .line 147
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/support/v4/widget/ListViewAutoScrollHelper;->setEnabled(Z)Landroid/support/v4/widget/AutoScrollHelper;

    move-result-object v11

    goto :goto_1

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method setListSelectionHidden(Z)V
    .locals 4

    .prologue
    .line 170
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/DropDownListView;->mListSelectionHidden:Z

    .line 171
    return-void
.end method

.method protected touchModeDrawsInPressedStateCompat()Z
    .locals 2

    .prologue
    .line 239
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/DropDownListView;->mDrawsInPressedState:Z

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v7/widget/ListViewCompat;->touchModeDrawsInPressedStateCompat()Z

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
