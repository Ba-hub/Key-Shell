.class public Landroid/support/v7/widget/ListViewCompat;
.super Landroid/widget/ListView;
.source "ListViewCompat.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final NO_POSITION:I = -0x1

.field private static final STATE_SET_NOTHING:[I


# instance fields
.field private mIsChildViewEnabled:Ljava/lang/reflect/Field;

.field protected mMotionPosition:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field private mSelector:Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;

.field final mSelectorRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    sput-object v0, Landroid/support/v7/widget/ListViewCompat;->STATE_SET_NOTHING:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/ListViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/ListViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    move-object v5, v0

    new-instance v6, Landroid/graphics/Rect;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, v5, Landroid/support/v7/widget/ListViewCompat;->mSelectorRect:Landroid/graphics/Rect;

    .line 53
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/v7/widget/ListViewCompat;->mSelectionLeftPadding:I

    .line 54
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/v7/widget/ListViewCompat;->mSelectionTopPadding:I

    .line 55
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/v7/widget/ListViewCompat;->mSelectionRightPadding:I

    .line 56
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/v7/widget/ListViewCompat;->mSelectionBottomPadding:I

    .line 76
    move-object v5, v0

    :try_start_0
    const-class v6, Landroid/widget/AbsListView;

    const-string v7, "mIsChildViewEnabled"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    iput-object v6, v5, Landroid/support/v7/widget/ListViewCompat;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    .line 77
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ListViewCompat;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 79
    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 109
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    move v2, v3

    .line 111
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ListViewCompat;->drawSelectorCompat(Landroid/graphics/Canvas;)V

    .line 114
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 115
    return-void
.end method

.method protected drawSelectorCompat(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 143
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ListViewCompat;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 144
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/ListViewCompat;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v2, v3

    .line 145
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 146
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ListViewCompat;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 147
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 150
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 3

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/widget/ListView;->drawableStateChanged()V

    .line 103
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ListViewCompat;->setSelectorEnabled(Z)V

    .line 104
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ListViewCompat;->updateSelectorStateCompat()V

    .line 105
    return-void
.end method

.method public lookForSelectablePosition(IZ)I
    .locals 8

    .prologue
    .line 161
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/ListViewCompat;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    move-object v3, v5

    .line 162
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/ListViewCompat;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 163
    :cond_0
    const/4 v5, -0x1

    move v0, v5

    .line 188
    :goto_0
    return v0

    .line 166
    :cond_1
    move-object v5, v3

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    move v4, v5

    .line 167
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/ListViewCompat;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v5

    if-nez v5, :cond_6

    .line 168
    move v5, v2

    if-eqz v5, :cond_2

    .line 169
    const/4 v5, 0x0

    move v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v1, v5

    .line 170
    :goto_1
    move v5, v1

    move v6, v4

    if-ge v5, v6, :cond_3

    move-object v5, v3

    move v6, v1

    invoke-interface {v5, v6}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 174
    :cond_2
    move v5, v1

    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v1, v5

    .line 175
    :goto_2
    move v5, v1

    if-ltz v5, :cond_3

    move-object v5, v3

    move v6, v1

    invoke-interface {v5, v6}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 176
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 180
    :cond_3
    move v5, v1

    if-ltz v5, :cond_4

    move v5, v1

    move v6, v4

    if-lt v5, v6, :cond_5

    .line 181
    :cond_4
    const/4 v5, -0x1

    move v0, v5

    goto :goto_0

    .line 183
    :cond_5
    move v5, v1

    move v0, v5

    goto :goto_0

    .line 185
    :cond_6
    move v5, v1

    if-ltz v5, :cond_7

    move v5, v1

    move v6, v4

    if-lt v5, v6, :cond_8

    .line 186
    :cond_7
    const/4 v5, -0x1

    move v0, v5

    goto :goto_0

    .line 188
    :cond_8
    move v5, v1

    move v0, v5

    goto :goto_0
.end method

.method public measureHeightOfChildrenCompat(IIIII)I
    .locals 29

    .prologue
    .line 276
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroid/support/v7/widget/ListViewCompat;->getListPaddingTop()I

    move-result v25

    move/from16 v8, v25

    .line 277
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroid/support/v7/widget/ListViewCompat;->getListPaddingBottom()I

    move-result v25

    move/from16 v9, v25

    .line 278
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroid/support/v7/widget/ListViewCompat;->getListPaddingLeft()I

    move-result v25

    move/from16 v10, v25

    .line 279
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroid/support/v7/widget/ListViewCompat;->getListPaddingRight()I

    move-result v25

    move/from16 v11, v25

    .line 280
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroid/support/v7/widget/ListViewCompat;->getDividerHeight()I

    move-result v25

    move/from16 v12, v25

    .line 281
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroid/support/v7/widget/ListViewCompat;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    move-object/from16 v13, v25

    .line 283
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroid/support/v7/widget/ListViewCompat;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v25

    move-object/from16 v14, v25

    .line 285
    move-object/from16 v25, v14

    if-nez v25, :cond_0

    .line 286
    move/from16 v25, v8

    move/from16 v26, v9

    add-int v25, v25, v26

    move/from16 v2, v25

    .line 355
    :goto_0
    return v2

    .line 290
    :cond_0
    move/from16 v25, v8

    move/from16 v26, v9

    add-int v25, v25, v26

    move/from16 v15, v25

    .line 291
    move/from16 v25, v12

    if-lez v25, :cond_4

    move-object/from16 v25, v13

    if-eqz v25, :cond_4

    move/from16 v25, v12

    :goto_1
    move/from16 v16, v25

    .line 296
    const/16 v25, 0x0

    move/from16 v17, v25

    .line 298
    const/16 v25, 0x0

    move-object/from16 v18, v25

    .line 299
    const/16 v25, 0x0

    move/from16 v19, v25

    .line 300
    move-object/from16 v25, v14

    invoke-interface/range {v25 .. v25}, Landroid/widget/ListAdapter;->getCount()I

    move-result v25

    move/from16 v20, v25

    .line 301
    const/16 v25, 0x0

    move/from16 v21, v25

    :goto_2
    move/from16 v25, v21

    move/from16 v26, v20

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_9

    .line 302
    move-object/from16 v25, v14

    move/from16 v26, v21

    invoke-interface/range {v25 .. v26}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v25

    move/from16 v22, v25

    .line 303
    move/from16 v25, v22

    move/from16 v26, v19

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_1

    .line 304
    const/16 v25, 0x0

    move-object/from16 v18, v25

    .line 305
    move/from16 v25, v22

    move/from16 v19, v25

    .line 307
    :cond_1
    move-object/from16 v25, v14

    move/from16 v26, v21

    move-object/from16 v27, v18

    move-object/from16 v28, v2

    invoke-interface/range {v25 .. v28}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v25

    move-object/from16 v18, v25

    .line 311
    move-object/from16 v25, v18

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    move-object/from16 v24, v25

    .line 313
    move-object/from16 v25, v24

    if-nez v25, :cond_2

    .line 314
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroid/support/v7/widget/ListViewCompat;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    move-object/from16 v24, v25

    .line 315
    move-object/from16 v25, v18

    move-object/from16 v26, v24

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    :cond_2
    move-object/from16 v25, v24

    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v25, v0

    if-lez v25, :cond_5

    .line 319
    move-object/from16 v25, v24

    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v25, v0

    const/high16 v26, 0x40000000    # 2.0f

    invoke-static/range {v25 .. v26}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    move/from16 v23, v25

    .line 324
    :goto_3
    move-object/from16 v25, v18

    move/from16 v26, v3

    move/from16 v27, v23

    invoke-virtual/range {v25 .. v27}, Landroid/view/View;->measure(II)V

    .line 328
    move-object/from16 v25, v18

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->forceLayout()V

    .line 330
    move/from16 v25, v21

    if-lez v25, :cond_3

    .line 332
    move/from16 v25, v15

    move/from16 v26, v16

    add-int v25, v25, v26

    move/from16 v15, v25

    .line 335
    :cond_3
    move/from16 v25, v15

    move-object/from16 v26, v18

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    add-int v25, v25, v26

    move/from16 v15, v25

    .line 337
    move/from16 v25, v15

    move/from16 v26, v6

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_7

    .line 340
    move/from16 v25, v7

    if-ltz v25, :cond_6

    move/from16 v25, v21

    move/from16 v26, v7

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_6

    move/from16 v25, v17

    if-lez v25, :cond_6

    move/from16 v25, v15

    move/from16 v26, v6

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_6

    move/from16 v25, v17

    :goto_4
    move/from16 v2, v25

    goto/16 :goto_0

    .line 291
    :cond_4
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 322
    :cond_5
    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    move/from16 v23, v25

    goto :goto_3

    .line 340
    :cond_6
    move/from16 v25, v6

    goto :goto_4

    .line 348
    :cond_7
    move/from16 v25, v7

    if-ltz v25, :cond_8

    move/from16 v25, v21

    move/from16 v26, v7

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_8

    .line 349
    move/from16 v25, v15

    move/from16 v17, v25

    .line 301
    :cond_8
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_2

    .line 355
    :cond_9
    move/from16 v25, v15

    move/from16 v2, v25

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    .line 119
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 124
    :goto_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    move v0, v2

    return v0

    .line 121
    :pswitch_0
    move-object v2, v0

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/ListViewCompat;->pointToPosition(II)I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/ListViewCompat;->mMotionPosition:I

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected positionSelectorCompat(ILandroid/view/View;)V
    .locals 11

    .prologue
    .line 222
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ListViewCompat;->mSelectorRect:Landroid/graphics/Rect;

    move-object v3, v5

    .line 223
    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    move-object v9, v2

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 226
    move-object v5, v3

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Landroid/graphics/Rect;->left:I

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/ListViewCompat;->mSelectionLeftPadding:I

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 227
    move-object v5, v3

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Landroid/graphics/Rect;->top:I

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/ListViewCompat;->mSelectionTopPadding:I

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 228
    move-object v5, v3

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Landroid/graphics/Rect;->right:I

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/ListViewCompat;->mSelectionRightPadding:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 229
    move-object v5, v3

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/ListViewCompat;->mSelectionBottomPadding:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 234
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroid/support/v7/widget/ListViewCompat;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    move v4, v5

    .line 235
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/View;->isEnabled()Z

    move-result v5

    move v6, v4

    if-eq v5, v6, :cond_0

    .line 236
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ListViewCompat;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    move-object v6, v0

    move v7, v4

    if-nez v7, :cond_1

    const/4 v7, 0x1

    :goto_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 237
    move v5, v1

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 238
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/ListViewCompat;->refreshDrawableState()V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :cond_0
    :goto_1
    return-void

    .line 236
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 242
    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method protected positionSelectorLikeFocusCompat(ILandroid/view/View;)V
    .locals 11

    .prologue
    .line 204
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/ListViewCompat;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object v3, v8

    .line 205
    move-object v8, v3

    if-eqz v8, :cond_2

    move v8, v1

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    const/4 v8, 0x1

    :goto_0
    move v4, v8

    .line 206
    move v8, v4

    if-eqz v8, :cond_0

    .line 207
    move-object v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v8

    .line 210
    :cond_0
    move-object v8, v0

    move v9, v1

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/ListViewCompat;->positionSelectorCompat(ILandroid/view/View;)V

    .line 212
    move v8, v4

    if-eqz v8, :cond_1

    .line 213
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/ListViewCompat;->mSelectorRect:Landroid/graphics/Rect;

    move-object v5, v8

    .line 214
    move-object v8, v5

    invoke-virtual {v8}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v8

    move v6, v8

    .line 215
    move-object v8, v5

    invoke-virtual {v8}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v8

    move v7, v8

    .line 216
    move-object v8, v3

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/ListViewCompat;->getVisibility()I

    move-result v9

    if-nez v9, :cond_3

    const/4 v9, 0x1

    :goto_1
    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v8

    .line 217
    move-object v8, v3

    move v9, v6

    move v10, v7

    invoke-static {v8, v9, v10}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 219
    :cond_1
    return-void

    .line 205
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 216
    :cond_3
    const/4 v9, 0x0

    goto :goto_1
.end method

.method protected positionSelectorLikeTouchCompat(ILandroid/view/View;FF)V
    .locals 9

    .prologue
    .line 193
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, v0

    move v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/ListViewCompat;->positionSelectorLikeFocusCompat(ILandroid/view/View;)V

    .line 195
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/ListViewCompat;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v5, v6

    .line 196
    move-object v6, v5

    if-eqz v6, :cond_0

    move v6, v1

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 197
    move-object v6, v5

    move v7, v3

    move v8, v4

    invoke-static {v6, v7, v8}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 199
    :cond_0
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 8

    .prologue
    .line 85
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    if-eqz v4, :cond_1

    new-instance v4, Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iput-object v4, v3, Landroid/support/v7/widget/ListViewCompat;->mSelector:Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;

    .line 86
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ListViewCompat;->mSelector:Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;

    invoke-super {v3, v4}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 88
    new-instance v3, Landroid/graphics/Rect;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    move-object v2, v3

    .line 89
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 90
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v3

    .line 93
    :cond_0
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/support/v7/widget/ListViewCompat;->mSelectionLeftPadding:I

    .line 94
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iput v4, v3, Landroid/support/v7/widget/ListViewCompat;->mSelectionTopPadding:I

    .line 95
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iput v4, v3, Landroid/support/v7/widget/ListViewCompat;->mSelectionRightPadding:I

    .line 96
    move-object v3, v0

    move-object v4, v2

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iput v4, v3, Landroid/support/v7/widget/ListViewCompat;->mSelectionBottomPadding:I

    .line 97
    return-void

    .line 85
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected setSelectorEnabled(Z)V
    .locals 4

    .prologue
    .line 359
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListViewCompat;->mSelector:Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;

    if-eqz v2, :cond_0

    .line 360
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListViewCompat;->mSelector:Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;->setEnabled(Z)V

    .line 362
    :cond_0
    return-void
.end method

.method protected shouldShowSelectorCompat()Z
    .locals 2

    .prologue
    .line 135
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ListViewCompat;->touchModeDrawsInPressedStateCompat()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ListViewCompat;->isPressed()Z

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

.method protected touchModeDrawsInPressedStateCompat()Z
    .locals 2

    .prologue
    .line 139
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method protected updateSelectorStateCompat()V
    .locals 4

    .prologue
    .line 128
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ListViewCompat;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, v2

    .line 129
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ListViewCompat;->shouldShowSelectorCompat()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/ListViewCompat;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    .line 132
    :cond_0
    return-void
.end method
