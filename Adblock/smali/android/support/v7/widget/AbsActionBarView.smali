.class abstract Landroid/support/v7/widget/AbsActionBarView;
.super Landroid/view/ViewGroup;
.source "AbsActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:I = 0xc8


# instance fields
.field protected mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

.field protected mContentHeight:I

.field private mEatingHover:Z

.field private mEatingTouch:Z

.field protected mMenuView:Landroid/support/v7/widget/ActionMenuView;

.field protected final mPopupContext:Landroid/content/Context;

.field protected final mVisAnimListener:Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;

.field protected mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    move-object v5, v0

    new-instance v6, Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;-><init>(Landroid/support/v7/widget/AbsActionBarView;)V

    iput-object v6, v5, Landroid/support/v7/widget/AbsActionBarView;->mVisAnimListener:Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;

    .line 63
    new-instance v5, Landroid/util/TypedValue;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    move-object v4, v5

    .line 64
    move-object v5, v1

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget v6, Landroid/support/v7/appcompat/R$attr;->actionBarPopupTheme:I

    move-object v7, v4

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v4

    iget v5, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_0

    .line 66
    move-object v5, v0

    new-instance v6, Landroid/view/ContextThemeWrapper;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    move-object v9, v4

    iget v9, v9, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v7, v8, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v6, v5, Landroid/support/v7/widget/AbsActionBarView;->mPopupContext:Landroid/content/Context;

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroid/support/v7/widget/AbsActionBarView;->mPopupContext:Landroid/content/Context;

    goto :goto_0
.end method

.method static synthetic access$001(Landroid/support/v7/widget/AbsActionBarView;I)V
    .locals 4

    .prologue
    .line 35
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$101(Landroid/support/v7/widget/AbsActionBarView;I)V
    .locals 4

    .prologue
    .line 35
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method protected static next(IIZ)I
    .locals 5

    .prologue
    .line 256
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, v2

    if-eqz v3, :cond_0

    move v3, v0

    move v4, v1

    sub-int/2addr v3, v4

    :goto_0
    move v0, v3

    return v0

    :cond_0
    move v3, v0

    move v4, v1

    add-int/2addr v3, v4

    goto :goto_0
.end method


# virtual methods
.method public animateToVisibility(I)V
    .locals 7

    .prologue
    .line 180
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v7/widget/AbsActionBarView;->setupAnimatorToVisibility(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    move-object v2, v3

    .line 181
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 182
    return-void
.end method

.method public canShowOverflowMenu()Z
    .locals 2

    .prologue
    .line 235
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/AbsActionBarView;->isOverflowReserved()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/AbsActionBarView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 2

    .prologue
    .line 239
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v1, :cond_0

    .line 240
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    move-result v1

    .line 242
    :cond_0
    return-void
.end method

.method public getAnimatedVisibility()I
    .locals 2

    .prologue
    .line 152
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AbsActionBarView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v1, :cond_0

    .line 153
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AbsActionBarView;->mVisAnimListener:Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;

    iget v1, v1, Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    move v0, v1

    .line 155
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/AbsActionBarView;->getVisibility()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public getContentHeight()I
    .locals 2

    .prologue
    .line 145
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/AbsActionBarView;->mContentHeight:I

    move v0, v1

    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 2

    .prologue
    .line 210
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v1, :cond_0

    .line 211
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v1

    move v0, v1

    .line 213
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 2

    .prologue
    .line 224
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v1, :cond_0

    .line 225
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v1

    move v0, v1

    .line 227
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 2

    .prologue
    .line 217
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v1, :cond_0

    .line 218
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v1

    move v0, v1

    .line 220
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 2

    .prologue
    .line 231
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowReserved()Z

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

.method protected measureChildView(Landroid/view/View;III)I
    .locals 8

    .prologue
    .line 246
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v1

    move v6, v2

    const/high16 v7, -0x80000000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    move v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    .line 249
    move v5, v2

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    move v2, v5

    .line 250
    move v5, v2

    move v6, v4

    sub-int/2addr v5, v6

    move v2, v5

    .line 252
    const/4 v5, 0x0

    move v6, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v0, v5

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    .prologue
    .line 74
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 78
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/AbsActionBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Landroid/support/v7/appcompat/R$styleable;->ActionBar:[I

    sget v6, Landroid/support/v7/appcompat/R$attr;->actionBarStyle:I

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    move-object v2, v3

    .line 80
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroid/support/v7/appcompat/R$styleable;->ActionBar_height:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/AbsActionBarView;->setContentHeight(I)V

    .line 81
    move-object v3, v2

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v3, :cond_0

    .line 84
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ActionMenuPresenter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 86
    :cond_0
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    .line 119
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-static {v4}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v4

    move v2, v4

    .line 120
    move v4, v2

    const/16 v5, 0x9

    if-ne v4, v5, :cond_0

    .line 121
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v7/widget/AbsActionBarView;->mEatingHover:Z

    .line 124
    :cond_0
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/widget/AbsActionBarView;->mEatingHover:Z

    if-nez v4, :cond_1

    .line 125
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    move v3, v4

    .line 126
    move v4, v2

    const/16 v5, 0x9

    if-ne v4, v5, :cond_1

    move v4, v3

    if-nez v4, :cond_1

    .line 127
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v7/widget/AbsActionBarView;->mEatingHover:Z

    .line 131
    :cond_1
    move v4, v2

    const/16 v5, 0xa

    if-eq v4, v5, :cond_2

    move v4, v2

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 133
    :cond_2
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v7/widget/AbsActionBarView;->mEatingHover:Z

    .line 136
    :cond_3
    const/4 v4, 0x1

    move v0, v4

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    .line 95
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-static {v4}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v4

    move v2, v4

    .line 96
    move v4, v2

    if-nez v4, :cond_0

    .line 97
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v7/widget/AbsActionBarView;->mEatingTouch:Z

    .line 100
    :cond_0
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/widget/AbsActionBarView;->mEatingTouch:Z

    if-nez v4, :cond_1

    .line 101
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    move v3, v4

    .line 102
    move v4, v2

    if-nez v4, :cond_1

    move v4, v3

    if-nez v4, :cond_1

    .line 103
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v7/widget/AbsActionBarView;->mEatingTouch:Z

    .line 107
    :cond_1
    move v4, v2

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    move v4, v2

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 108
    :cond_2
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v7/widget/AbsActionBarView;->mEatingTouch:Z

    .line 111
    :cond_3
    const/4 v4, 0x1

    move v0, v4

    return v0
.end method

.method protected positionChild(Landroid/view/View;IIIZ)I
    .locals 15

    .prologue
    .line 260
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    move v6, v9

    .line 261
    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    move v7, v9

    .line 262
    move v9, v3

    move v10, v4

    move v11, v7

    sub-int/2addr v10, v11

    const/4 v11, 0x2

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    move v8, v9

    .line 264
    move v9, v5

    if-eqz v9, :cond_0

    .line 265
    move-object v9, v1

    move v10, v2

    move v11, v6

    sub-int/2addr v10, v11

    move v11, v8

    move v12, v2

    move v13, v8

    move v14, v7

    add-int/2addr v13, v14

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/view/View;->layout(IIII)V

    .line 270
    :goto_0
    move v9, v5

    if-eqz v9, :cond_1

    move v9, v6

    neg-int v9, v9

    :goto_1
    move v0, v9

    return v0

    .line 267
    :cond_0
    move-object v9, v1

    move v10, v2

    move v11, v8

    move v12, v2

    move v13, v6

    add-int/2addr v12, v13

    move v13, v8

    move v14, v7

    add-int/2addr v13, v14

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 270
    :cond_1
    move v9, v6

    goto :goto_1
.end method

.method public postShowOverflowMenu()V
    .locals 6

    .prologue
    .line 202
    move-object v0, p0

    move-object v1, v0

    new-instance v2, Landroid/support/v7/widget/AbsActionBarView$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/v7/widget/AbsActionBarView$1;-><init>(Landroid/support/v7/widget/AbsActionBarView;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AbsActionBarView;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .line 207
    return-void
.end method

.method public setContentHeight(I)V
    .locals 4

    .prologue
    .line 140
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/AbsActionBarView;->mContentHeight:I

    .line 141
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/AbsActionBarView;->requestLayout()V

    .line 142
    return-void
.end method

.method public setVisibility(I)V
    .locals 4

    .prologue
    .line 186
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/AbsActionBarView;->getVisibility()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 187
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AbsActionBarView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v2, :cond_0

    .line 188
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AbsActionBarView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 190
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 192
    :cond_1
    return-void
.end method

.method public setupAnimatorToVisibility(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 9

    .prologue
    .line 159
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/AbsActionBarView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v5, :cond_0

    .line 160
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/AbsActionBarView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 163
    :cond_0
    move v5, v1

    if-nez v5, :cond_2

    .line 164
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/AbsActionBarView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1

    .line 165
    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 167
    :cond_1
    move-object v5, v0

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    move-object v4, v5

    .line 168
    move-object v5, v4

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    .line 169
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/AbsActionBarView;->mVisAnimListener:Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;

    move-object v7, v4

    move v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    .line 170
    move-object v5, v4

    move-object v0, v5

    .line 175
    :goto_0
    return-object v0

    .line 172
    :cond_2
    move-object v5, v0

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    move-object v4, v5

    .line 173
    move-object v5, v4

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    .line 174
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/AbsActionBarView;->mVisAnimListener:Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;

    move-object v7, v4

    move v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    .line 175
    move-object v5, v4

    move-object v0, v5

    goto :goto_0
.end method

.method public showOverflowMenu()Z
    .locals 2

    .prologue
    .line 195
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v1, :cond_0

    .line 196
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v1

    move v0, v1

    .line 198
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method
