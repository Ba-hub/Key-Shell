.class public Landroid/support/v7/widget/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "ButtonBarLayout.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final ALLOW_STACKING_MIN_HEIGHT_DP:I = 0x140

.field private static final PEEK_BUTTON_DP:I = 0x10


# instance fields
.field private mAllowStacking:Z

.field private mLastWidthSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 53
    move-object v5, v0

    .line 54
    invoke-virtual {v5}, Landroid/support/v7/widget/ButtonBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/content/res/ConfigurationHelper;->getScreenHeightDp(Landroid/content/res/Resources;)I

    move-result v5

    const/16 v6, 0x140

    if-lt v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v3, v5

    .line 56
    move-object v5, v1

    move-object v6, v2

    sget-object v7, Landroid/support/v7/appcompat/R$styleable;->ButtonBarLayout:[I

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object v4, v5

    .line 57
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroid/support/v7/appcompat/R$styleable;->ButtonBarLayout_allowStacking:I

    move v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v5, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 59
    move-object v5, v4

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    return-void

    .line 54
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private getNextVisibleChildIndex(I)I
    .locals 6

    .prologue
    .line 157
    move-object v0, p0

    move v1, p1

    move v4, v1

    move v2, v4

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/ButtonBarLayout;->getChildCount()I

    move-result v4

    move v3, v4

    :goto_0
    move v4, v2

    move v5, v3

    if-ge v4, v5, :cond_1

    .line 158
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 159
    move v4, v2

    move v0, v4

    .line 162
    :goto_1
    return v0

    .line 157
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    :cond_1
    const/4 v4, -0x1

    move v0, v4

    goto :goto_1
.end method

.method private isStacked()Z
    .locals 3

    .prologue
    .line 183
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ButtonBarLayout;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setStacked(Z)V
    .locals 8

    .prologue
    .line 166
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    move v6, v1

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    :goto_0
    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ButtonBarLayout;->setOrientation(I)V

    .line 167
    move-object v5, v0

    move v6, v1

    if-eqz v6, :cond_2

    const/4 v6, 0x5

    :goto_1
    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ButtonBarLayout;->setGravity(I)V

    .line 169
    move-object v5, v0

    sget v6, Landroid/support/v7/appcompat/R$id;->spacer:I

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v2, v5

    .line 170
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 171
    move-object v5, v2

    move v6, v1

    if-eqz v6, :cond_3

    const/16 v6, 0x8

    :goto_2
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 176
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/ButtonBarLayout;->getChildCount()I

    move-result v5

    move v3, v5

    .line 177
    move v5, v3

    const/4 v6, 0x2

    add-int/lit8 v5, v5, -0x2

    move v4, v5

    :goto_3
    move v5, v4

    if-ltz v5, :cond_4

    .line 178
    move-object v5, v0

    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    .line 177
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 166
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 167
    :cond_2
    const/16 v6, 0x50

    goto :goto_1

    .line 171
    :cond_3
    const/4 v6, 0x4

    goto :goto_2

    .line 180
    :cond_4
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 15

    .prologue
    .line 74
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move v11, v1

    invoke-static {v11}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    move v3, v11

    .line 76
    move-object v11, v0

    iget-boolean v11, v11, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eqz v11, :cond_1

    .line 77
    move v11, v3

    move-object v12, v0

    iget v12, v12, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I

    if-le v11, v12, :cond_0

    move-object v11, v0

    invoke-direct {v11}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 79
    move-object v11, v0

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V

    .line 82
    :cond_0
    move-object v11, v0

    move v12, v3

    iput v12, v11, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 85
    :cond_1
    const/4 v11, 0x0

    move v4, v11

    .line 91
    move-object v11, v0

    invoke-direct {v11}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v11

    if-nez v11, :cond_6

    move v11, v1

    invoke-static {v11}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    if-ne v11, v12, :cond_6

    .line 92
    move v11, v3

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    move v5, v11

    .line 95
    const/4 v11, 0x1

    move v4, v11

    .line 100
    :goto_0
    move-object v11, v0

    move v12, v5

    move v13, v2

    invoke-super {v11, v12, v13}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 102
    move-object v11, v0

    iget-boolean v11, v11, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eqz v11, :cond_2

    move-object v11, v0

    invoke-direct {v11}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v11

    if-nez v11, :cond_2

    .line 105
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0xb

    if-lt v11, v12, :cond_8

    .line 107
    move-object v11, v0

    invoke-static {v11}, Landroid/support/v4/view/ViewCompat;->getMeasuredWidthAndState(Landroid/view/View;)I

    move-result v11

    move v7, v11

    .line 108
    move v11, v7

    const/high16 v12, -0x1000000

    and-int/2addr v11, v12

    move v8, v11

    .line 109
    move v11, v8

    const/high16 v12, 0x1000000

    if-ne v11, v12, :cond_7

    const/4 v11, 0x1

    :goto_1
    move v6, v11

    .line 120
    :goto_2
    move v11, v6

    if-eqz v11, :cond_2

    .line 121
    move-object v11, v0

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V

    .line 123
    const/4 v11, 0x1

    move v4, v11

    .line 127
    :cond_2
    move v11, v4

    if-eqz v11, :cond_3

    .line 128
    move-object v11, v0

    move v12, v1

    move v13, v2

    invoke-super {v11, v12, v13}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 133
    :cond_3
    const/4 v11, 0x0

    move v6, v11

    .line 134
    move-object v11, v0

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Landroid/support/v7/widget/ButtonBarLayout;->getNextVisibleChildIndex(I)I

    move-result v11

    move v7, v11

    .line 135
    move v11, v7

    if-ltz v11, :cond_4

    .line 136
    move-object v11, v0

    move v12, v7

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    move-object v8, v11

    .line 137
    move-object v11, v8

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    move-object v9, v11

    .line 138
    move v11, v6

    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v7/widget/ButtonBarLayout;->getPaddingTop()I

    move-result v12

    move-object v13, v8

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v12, v13

    move-object v13, v9

    iget v13, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v12, v13

    move-object v13, v9

    iget v13, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    move v6, v11

    .line 140
    move-object v11, v0

    invoke-direct {v11}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 141
    move-object v11, v0

    move v12, v7

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    invoke-direct {v11, v12}, Landroid/support/v7/widget/ButtonBarLayout;->getNextVisibleChildIndex(I)I

    move-result v11

    move v10, v11

    .line 142
    move v11, v10

    if-ltz v11, :cond_4

    .line 143
    move v11, v6

    int-to-float v11, v11

    move-object v12, v0

    move v13, v10

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x41800000    # 16.0f

    move-object v14, v0

    .line 144
    invoke-virtual {v14}, Landroid/support/v7/widget/ButtonBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v14, v14, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    add-float/2addr v11, v12

    float-to-int v11, v11

    move v6, v11

    .line 151
    :cond_4
    :goto_3
    move-object v11, v0

    invoke-static {v11}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v11

    move v12, v6

    if-eq v11, v12, :cond_5

    .line 152
    move-object v11, v0

    move v12, v6

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/ButtonBarLayout;->setMinimumHeight(I)V

    .line 154
    :cond_5
    return-void

    .line 97
    :cond_6
    move v11, v1

    move v5, v11

    goto/16 :goto_0

    .line 109
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 113
    :cond_8
    const/4 v11, 0x0

    move v7, v11

    .line 114
    const/4 v11, 0x0

    move v8, v11

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/v7/widget/ButtonBarLayout;->getChildCount()I

    move-result v11

    move v9, v11

    :goto_4
    move v11, v8

    move v12, v9

    if-ge v11, v12, :cond_9

    .line 115
    move v11, v7

    move-object v12, v0

    move v13, v8

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v11, v12

    move v7, v11

    .line 114
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 117
    :cond_9
    move v11, v7

    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v7/widget/ButtonBarLayout;->getPaddingLeft()I

    move-result v12

    add-int/2addr v11, v12

    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v7/widget/ButtonBarLayout;->getPaddingRight()I

    move-result v12

    add-int/2addr v11, v12

    move v12, v3

    if-le v11, v12, :cond_a

    const/4 v11, 0x1

    :goto_5
    move v6, v11

    goto/16 :goto_2

    :cond_a
    const/4 v11, 0x0

    goto :goto_5

    .line 147
    :cond_b
    move v11, v6

    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v7/widget/ButtonBarLayout;->getPaddingBottom()I

    move-result v12

    add-int/2addr v11, v12

    move v6, v11

    goto :goto_3
.end method

.method public setAllowStacking(Z)V
    .locals 4

    .prologue
    .line 63
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    move v3, v1

    if-eq v2, v3, :cond_1

    .line 64
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 65
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    if-nez v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ButtonBarLayout;->getOrientation()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 66
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V

    .line 68
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ButtonBarLayout;->requestLayout()V

    .line 70
    :cond_1
    return-void
.end method
