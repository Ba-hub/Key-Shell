.class Landroid/support/v7/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AlertController$CheckedItemAdapter;,
        Landroid/support/v7/app/AlertController$AlertParams;,
        Landroid/support/v7/app/AlertController$RecycleListView;,
        Landroid/support/v7/app/AlertController$ButtonHandler;
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field mButtonNegative:Landroid/widget/Button;

.field mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field mButtonNeutral:Landroid/widget/Button;

.field mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPanelLayoutHint:I

.field private mButtonPanelSideLayout:I

.field mButtonPositive:Landroid/widget/Button;

.field mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field final mDialog:Landroid/support/v7/app/AppCompatDialog;

.field mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field mListItemLayout:I

.field mListLayout:I

.field mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field mMultiChoiceItemLayout:I

.field mScrollView:Landroid/support/v4/widget/NestedScrollView;

.field private mShowTitle:Z

.field mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewLayoutResId:I

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/app/AppCompatDialog;Landroid/view/Window;)V
    .locals 11

    .prologue
    .line 176
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 79
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    .line 95
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/v7/app/AlertController;->mIconId:I

    .line 105
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroid/support/v7/app/AlertController;->mCheckedItem:I

    .line 116
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/v7/app/AlertController;->mButtonPanelLayoutHint:I

    .line 120
    move-object v5, v0

    new-instance v6, Landroid/support/v7/app/AlertController$1;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/support/v7/app/AlertController$1;-><init>(Landroid/support/v7/app/AlertController;)V

    iput-object v6, v5, Landroid/support/v7/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 177
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroid/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    .line 178
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroid/support/v7/app/AlertController;->mDialog:Landroid/support/v7/app/AppCompatDialog;

    .line 179
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    .line 180
    move-object v5, v0

    new-instance v6, Landroid/support/v7/app/AlertController$ButtonHandler;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v2

    invoke-direct {v7, v8}, Landroid/support/v7/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v6, v5, Landroid/support/v7/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 182
    move-object v5, v1

    const/4 v6, 0x0

    sget-object v7, Landroid/support/v7/appcompat/R$styleable;->AlertDialog:[I

    sget v8, Landroid/support/v7/appcompat/R$attr;->alertDialogStyle:I

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object v4, v5

    .line 185
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_android_layout:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v5, Landroid/support/v7/app/AlertController;->mAlertDialogLayout:I

    .line 186
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_buttonPanelSideLayout:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v5, Landroid/support/v7/app/AlertController;->mButtonPanelSideLayout:I

    .line 188
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_listLayout:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v5, Landroid/support/v7/app/AlertController;->mListLayout:I

    .line 189
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_multiChoiceItemLayout:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v5, Landroid/support/v7/app/AlertController;->mMultiChoiceItemLayout:I

    .line 190
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_singleChoiceItemLayout:I

    const/4 v8, 0x0

    .line 191
    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v5, Landroid/support/v7/app/AlertController;->mSingleChoiceItemLayout:I

    .line 192
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_listItemLayout:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v5, Landroid/support/v7/app/AlertController;->mListItemLayout:I

    .line 193
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_showTitle:I

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v5, Landroid/support/v7/app/AlertController;->mShowTitle:Z

    .line 195
    move-object v5, v4

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 198
    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v7/app/AppCompatDialog;->supportRequestWindowFeature(I)Z

    move-result v5

    .line 199
    return-void
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5

    .prologue
    .line 202
    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 203
    const/4 v3, 0x1

    move v0, v3

    .line 220
    :goto_0
    return v0

    .line 206
    :cond_0
    move-object v3, v0

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-nez v3, :cond_1

    .line 207
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 210
    :cond_1
    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    move-object v1, v3

    .line 211
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v2, v3

    .line 212
    :cond_2
    move v3, v2

    if-lez v3, :cond_3

    .line 213
    add-int/lit8 v2, v2, -0x1

    .line 214
    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    .line 215
    move-object v3, v0

    invoke-static {v3}, Landroid/support/v7/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 216
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 220
    :cond_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 5

    .prologue
    .line 809
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    move-object v2, v3

    .line 810
    move-object v3, v2

    const/4 v4, 0x1

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 811
    move-object v3, v2

    const/high16 v4, 0x3f000000    # 0.5f

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 812
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 813
    return-void
.end method

.method static manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 738
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    if-eqz v3, :cond_0

    .line 739
    move-object v3, v1

    move-object v4, v0

    const/4 v5, -0x1

    .line 740
    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    .line 739
    :goto_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 742
    :cond_0
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 743
    move-object v3, v2

    move-object v4, v0

    const/4 v5, 0x1

    .line 744
    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    .line 743
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 746
    :cond_1
    return-void

    .line 740
    :cond_2
    const/4 v4, 0x4

    goto :goto_0

    .line 744
    :cond_3
    const/4 v4, 0x4

    goto :goto_1
.end method

.method private resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 429
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    if-nez v4, :cond_1

    .line 431
    move-object v4, v2

    instance-of v4, v4, Landroid/view/ViewStub;

    if-eqz v4, :cond_0

    .line 432
    move-object v4, v2

    check-cast v4, Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    move-object v2, v4

    .line 435
    :cond_0
    move-object v4, v2

    check-cast v4, Landroid/view/ViewGroup;

    move-object v0, v4

    .line 451
    :goto_0
    return-object v0

    .line 439
    :cond_1
    move-object v4, v2

    if-eqz v4, :cond_2

    .line 440
    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    move-object v3, v4

    .line 441
    move-object v4, v3

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 442
    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 447
    :cond_2
    move-object v4, v1

    instance-of v4, v4, Landroid/view/ViewStub;

    if-eqz v4, :cond_3

    .line 448
    move-object v4, v1

    check-cast v4, Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    move-object v1, v4

    .line 451
    :cond_3
    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup;

    move-object v0, v4

    goto :goto_0
.end method

.method private selectContentView()I
    .locals 3

    .prologue
    .line 230
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/app/AlertController;->mButtonPanelSideLayout:I

    if-nez v1, :cond_0

    .line 231
    move-object v1, v0

    iget v1, v1, Landroid/support/v7/app/AlertController;->mAlertDialogLayout:I

    move v0, v1

    .line 236
    :goto_0
    return v0

    .line 233
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroid/support/v7/app/AlertController;->mButtonPanelLayoutHint:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 234
    move-object v1, v0

    iget v1, v1, Landroid/support/v7/app/AlertController;->mButtonPanelSideLayout:I

    move v0, v1

    goto :goto_0

    .line 236
    :cond_1
    move-object v1, v0

    iget v1, v1, Landroid/support/v7/app/AlertController;->mAlertDialogLayout:I

    move v0, v1

    goto :goto_0
.end method

.method private setScrollIndicators(Landroid/view/ViewGroup;Landroid/view/View;II)V
    .locals 16

    .prologue
    .line 550
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v10, Landroid/support/v7/appcompat/R$id;->scrollIndicatorUp:I

    invoke-virtual {v9, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    move-object v5, v9

    .line 551
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v10, Landroid/support/v7/appcompat/R$id;->scrollIndicatorDown:I

    invoke-virtual {v9, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    move-object v6, v9

    .line 553
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-lt v9, v10, :cond_2

    .line 555
    move-object v9, v2

    move v10, v3

    move v11, v4

    invoke-static {v9, v10, v11}, Landroid/support/v4/view/ViewCompat;->setScrollIndicators(Landroid/view/View;II)V

    .line 557
    move-object v9, v5

    if-eqz v9, :cond_0

    .line 558
    move-object v9, v1

    move-object v10, v5

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 560
    :cond_0
    move-object v9, v6

    if-eqz v9, :cond_1

    .line 561
    move-object v9, v1

    move-object v10, v6

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 626
    :cond_1
    :goto_0
    return-void

    .line 565
    :cond_2
    move-object v9, v5

    if-eqz v9, :cond_3

    move v9, v3

    const/4 v10, 0x1

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_3

    .line 566
    move-object v9, v1

    move-object v10, v5

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 567
    const/4 v9, 0x0

    move-object v5, v9

    .line 569
    :cond_3
    move-object v9, v6

    if-eqz v9, :cond_4

    move v9, v3

    const/4 v10, 0x2

    and-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_4

    .line 570
    move-object v9, v1

    move-object v10, v6

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 571
    const/4 v9, 0x0

    move-object v6, v9

    .line 574
    :cond_4
    move-object v9, v5

    if-nez v9, :cond_5

    move-object v9, v6

    if-eqz v9, :cond_1

    .line 575
    :cond_5
    move-object v9, v5

    move-object v7, v9

    .line 576
    move-object v9, v6

    move-object v8, v9

    .line 578
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v9, :cond_6

    .line 580
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    new-instance v10, Landroid/support/v7/app/AlertController$2;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    move-object v13, v7

    move-object v14, v8

    invoke-direct {v11, v12, v13, v14}, Landroid/support/v7/app/AlertController$2;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v9, v10}, Landroid/support/v4/widget/NestedScrollView;->setOnScrollChangeListener(Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;)V

    .line 590
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    new-instance v10, Landroid/support/v7/app/AlertController$3;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    move-object v13, v7

    move-object v14, v8

    invoke-direct {v11, v12, v13, v14}, Landroid/support/v7/app/AlertController$3;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v9, v10}, Landroid/support/v4/widget/NestedScrollView;->post(Ljava/lang/Runnable;)Z

    move-result v9

    goto :goto_0

    .line 596
    :cond_6
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v9, :cond_7

    .line 598
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v10, Landroid/support/v7/app/AlertController$4;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    move-object v13, v7

    move-object v14, v8

    invoke-direct {v11, v12, v13, v14}, Landroid/support/v7/app/AlertController$4;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 609
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v10, Landroid/support/v7/app/AlertController$5;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    move-object v13, v7

    move-object v14, v8

    invoke-direct {v11, v12, v13, v14}, Landroid/support/v7/app/AlertController$5;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    move-result v9

    goto :goto_0

    .line 617
    :cond_7
    move-object v9, v7

    if-eqz v9, :cond_8

    .line 618
    move-object v9, v1

    move-object v10, v7

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 620
    :cond_8
    move-object v9, v8

    if-eqz v9, :cond_1

    .line 621
    move-object v9, v1

    move-object v10, v8

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method private setupButtons(Landroid/view/ViewGroup;)V
    .locals 10

    .prologue
    .line 749
    move-object v0, p0

    move-object v1, p1

    const/4 v7, 0x1

    move v2, v7

    .line 750
    const/4 v7, 0x2

    move v3, v7

    .line 751
    const/4 v7, 0x4

    move v4, v7

    .line 752
    const/4 v7, 0x0

    move v5, v7

    .line 753
    move-object v7, v0

    move-object v8, v1

    const v9, 0x1020019

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, v7, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 754
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 756
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 757
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 764
    :goto_0
    move-object v7, v0

    move-object v8, v1

    const v9, 0x102001a

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, v7, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 765
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 767
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 768
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 776
    :goto_1
    move-object v7, v0

    move-object v8, v1

    const v9, 0x102001b

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, v7, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 777
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 779
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 780
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 788
    :goto_2
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/support/v7/app/AlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 793
    move v7, v5

    move v8, v2

    if-ne v7, v8, :cond_5

    .line 794
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {v7, v8}, Landroid/support/v7/app/AlertController;->centerButton(Landroid/widget/Button;)V

    .line 802
    :cond_0
    :goto_3
    move v7, v5

    if-eqz v7, :cond_7

    const/4 v7, 0x1

    :goto_4
    move v6, v7

    .line 803
    move v7, v6

    if-nez v7, :cond_1

    .line 804
    move-object v7, v1

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 806
    :cond_1
    return-void

    .line 759
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 760
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 761
    move v7, v5

    move v8, v2

    or-int/2addr v7, v8

    move v5, v7

    goto/16 :goto_0

    .line 770
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 771
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 773
    move v7, v5

    move v8, v3

    or-int/2addr v7, v8

    move v5, v7

    goto :goto_1

    .line 782
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 783
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 785
    move v7, v5

    move v8, v4

    or-int/2addr v7, v8

    move v5, v7

    goto :goto_2

    .line 795
    :cond_5
    move v7, v5

    move v8, v3

    if-ne v7, v8, :cond_6

    .line 796
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {v7, v8}, Landroid/support/v7/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 797
    :cond_6
    move v7, v5

    move v8, v4

    if-ne v7, v8, :cond_0

    .line 798
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {v7, v8}, Landroid/support/v7/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 802
    :cond_7
    const/4 v7, 0x0

    goto :goto_4
.end method

.method private setupContent(Landroid/view/ViewGroup;)V
    .locals 12

    .prologue
    .line 709
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v6, Landroid/support/v7/appcompat/R$id;->scrollView:I

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/widget/NestedScrollView;

    iput-object v5, v4, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    .line 710
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/NestedScrollView;->setFocusable(Z)V

    .line 711
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 714
    move-object v4, v0

    move-object v5, v1

    const v6, 0x102000b

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 715
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v4, :cond_0

    .line 735
    :goto_0
    return-void

    .line 719
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    .line 720
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 735
    :goto_1
    goto :goto_0

    .line 722
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 723
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/NestedScrollView;->removeView(Landroid/view/View;)V

    .line 725
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_2

    .line 726
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v4}, Landroid/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    move-object v2, v4

    .line 727
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    move v3, v4

    .line 728
    move-object v4, v2

    move v5, v3

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 729
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    move v6, v3

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 731
    goto :goto_1

    .line 732
    :cond_2
    move-object v4, v1

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private setupCustomContent(Landroid/view/ViewGroup;)V
    .locals 12

    .prologue
    .line 630
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    if-eqz v5, :cond_4

    .line 631
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    move-object v2, v5

    .line 639
    :goto_0
    move-object v5, v2

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    :goto_1
    move v3, v5

    .line 640
    move v5, v3

    if-eqz v5, :cond_0

    move-object v5, v2

    invoke-static {v5}, Landroid/support/v7/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 641
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    const/high16 v6, 0x20000

    const/high16 v7, 0x20000

    invoke-virtual {v5, v6, v7}, Landroid/view/Window;->setFlags(II)V

    .line 645
    :cond_1
    move v5, v3

    if-eqz v5, :cond_7

    .line 646
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v6, Landroid/support/v7/appcompat/R$id;->custom:I

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    move-object v4, v5

    .line 647
    move-object v5, v4

    move-object v6, v2

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 649
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v5, :cond_2

    .line 650
    move-object v5, v4

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/app/AlertController;->mViewSpacingLeft:I

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/app/AlertController;->mViewSpacingTop:I

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/app/AlertController;->mViewSpacingRight:I

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/app/AlertController;->mViewSpacingBottom:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 654
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v5, :cond_3

    .line 655
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 660
    :cond_3
    :goto_2
    return-void

    .line 632
    :cond_4
    move-object v5, v0

    iget v5, v5, Landroid/support/v7/app/AlertController;->mViewLayoutResId:I

    if-eqz v5, :cond_5

    .line 633
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    move-object v3, v5

    .line 634
    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/app/AlertController;->mViewLayoutResId:I

    move-object v7, v1

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    move-object v2, v5

    .line 635
    goto :goto_0

    .line 636
    :cond_5
    const/4 v5, 0x0

    move-object v2, v5

    goto :goto_0

    .line 639
    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    .line 658
    :cond_7
    move-object v5, v1

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2
.end method

.method private setupTitle(Landroid/view/ViewGroup;)V
    .locals 10

    .prologue
    .line 663
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 665
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v2, v4

    .line 668
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController;->mCustomTitleView:Landroid/view/View;

    const/4 v6, 0x0

    move-object v7, v2

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 671
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v5, Landroid/support/v7/appcompat/R$id;->title_template:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 672
    move-object v4, v3

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 706
    :goto_0
    return-void

    .line 674
    :cond_0
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    const v6, 0x1020006

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v4, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 676
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v2, v4

    .line 677
    move v4, v2

    if-eqz v4, :cond_4

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/app/AlertController;->mShowTitle:Z

    if-eqz v4, :cond_4

    .line 679
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v6, Landroid/support/v7/appcompat/R$id;->alertTitle:I

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Landroid/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 680
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 685
    move-object v4, v0

    iget v4, v4, Landroid/support/v7/app/AlertController;->mIconId:I

    if-eqz v4, :cond_2

    .line 686
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/app/AlertController;->mIconId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 676
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 687
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 688
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 692
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 693
    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v6

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 694
    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 695
    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v8

    .line 692
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 696
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 700
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v5, Landroid/support/v7/appcompat/R$id;->title_template:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 701
    move-object v4, v3

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 702
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 703
    move-object v4, v1

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private setupView()V
    .locals 24

    .prologue
    .line 455
    move-object/from16 v2, p0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v19, v0

    sget v20, Landroid/support/v7/appcompat/R$id;->parentPanel:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v3, v19

    .line 456
    move-object/from16 v19, v3

    sget v20, Landroid/support/v7/appcompat/R$id;->topPanel:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v4, v19

    .line 457
    move-object/from16 v19, v3

    sget v20, Landroid/support/v7/appcompat/R$id;->contentPanel:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v5, v19

    .line 458
    move-object/from16 v19, v3

    sget v20, Landroid/support/v7/appcompat/R$id;->buttonPanel:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v6, v19

    .line 462
    move-object/from16 v19, v3

    sget v20, Landroid/support/v7/appcompat/R$id;->customPanel:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/view/ViewGroup;

    move-object/from16 v7, v19

    .line 463
    move-object/from16 v19, v2

    move-object/from16 v20, v7

    invoke-direct/range {v19 .. v20}, Landroid/support/v7/app/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)V

    .line 465
    move-object/from16 v19, v7

    sget v20, Landroid/support/v7/appcompat/R$id;->topPanel:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v8, v19

    .line 466
    move-object/from16 v19, v7

    sget v20, Landroid/support/v7/appcompat/R$id;->contentPanel:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v9, v19

    .line 467
    move-object/from16 v19, v7

    sget v20, Landroid/support/v7/appcompat/R$id;->buttonPanel:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v10, v19

    .line 470
    move-object/from16 v19, v2

    move-object/from16 v20, v8

    move-object/from16 v21, v4

    invoke-direct/range {v19 .. v21}, Landroid/support/v7/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v19

    move-object/from16 v11, v19

    .line 471
    move-object/from16 v19, v2

    move-object/from16 v20, v9

    move-object/from16 v21, v5

    invoke-direct/range {v19 .. v21}, Landroid/support/v7/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v19

    move-object/from16 v12, v19

    .line 472
    move-object/from16 v19, v2

    move-object/from16 v20, v10

    move-object/from16 v21, v6

    invoke-direct/range {v19 .. v21}, Landroid/support/v7/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v19

    move-object/from16 v13, v19

    .line 474
    move-object/from16 v19, v2

    move-object/from16 v20, v12

    invoke-direct/range {v19 .. v20}, Landroid/support/v7/app/AlertController;->setupContent(Landroid/view/ViewGroup;)V

    .line 475
    move-object/from16 v19, v2

    move-object/from16 v20, v13

    invoke-direct/range {v19 .. v20}, Landroid/support/v7/app/AlertController;->setupButtons(Landroid/view/ViewGroup;)V

    .line 476
    move-object/from16 v19, v2

    move-object/from16 v20, v11

    invoke-direct/range {v19 .. v20}, Landroid/support/v7/app/AlertController;->setupTitle(Landroid/view/ViewGroup;)V

    .line 478
    move-object/from16 v19, v7

    if-eqz v19, :cond_8

    move-object/from16 v19, v7

    .line 479
    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_8

    const/16 v19, 0x1

    :goto_0
    move/from16 v14, v19

    .line 480
    move-object/from16 v19, v11

    if-eqz v19, :cond_9

    move-object/from16 v19, v11

    .line 481
    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_9

    const/16 v19, 0x1

    :goto_1
    move/from16 v15, v19

    .line 482
    move-object/from16 v19, v13

    if-eqz v19, :cond_a

    move-object/from16 v19, v13

    .line 483
    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    const/16 v19, 0x1

    :goto_2
    move/from16 v16, v19

    .line 486
    move/from16 v19, v16

    if-nez v19, :cond_0

    .line 487
    move-object/from16 v19, v12

    if-eqz v19, :cond_0

    .line 488
    move-object/from16 v19, v12

    sget v20, Landroid/support/v7/appcompat/R$id;->textSpacerNoButtons:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v17, v19

    .line 489
    move-object/from16 v19, v17

    if-eqz v19, :cond_0

    .line 490
    move-object/from16 v19, v17

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 495
    :cond_0
    move/from16 v19, v15

    if-eqz v19, :cond_b

    .line 497
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 498
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/support/v4/widget/NestedScrollView;->setClipToPadding(Z)V

    .line 502
    :cond_1
    const/16 v19, 0x0

    move-object/from16 v17, v19

    .line 503
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    move/from16 v19, v14

    if-eqz v19, :cond_3

    .line 504
    :cond_2
    move/from16 v19, v14

    if-nez v19, :cond_3

    .line 505
    move-object/from16 v19, v11

    sget v20, Landroid/support/v7/appcompat/R$id;->titleDividerNoCustom:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v17, v19

    .line 509
    :cond_3
    move-object/from16 v19, v17

    if-eqz v19, :cond_4

    .line 510
    move-object/from16 v19, v17

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 521
    :cond_4
    :goto_3
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/support/v7/app/AlertController$RecycleListView;

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 522
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    check-cast v19, Landroid/support/v7/app/AlertController$RecycleListView;

    move/from16 v20, v15

    move/from16 v21, v16

    invoke-virtual/range {v19 .. v21}, Landroid/support/v7/app/AlertController$RecycleListView;->setHasDecor(ZZ)V

    .line 526
    :cond_5
    move/from16 v19, v14

    if-nez v19, :cond_6

    .line 527
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    :goto_4
    move-object/from16 v17, v19

    .line 528
    move-object/from16 v19, v17

    if-eqz v19, :cond_6

    .line 529
    move/from16 v19, v15

    if-eqz v19, :cond_d

    const/16 v19, 0x1

    :goto_5
    move/from16 v20, v16

    if-eqz v20, :cond_e

    const/16 v20, 0x2

    :goto_6
    or-int v19, v19, v20

    move/from16 v18, v19

    .line 531
    move-object/from16 v19, v2

    move-object/from16 v20, v12

    move-object/from16 v21, v17

    move/from16 v22, v18

    const/16 v23, 0x3

    invoke-direct/range {v19 .. v23}, Landroid/support/v7/app/AlertController;->setScrollIndicators(Landroid/view/ViewGroup;Landroid/view/View;II)V

    .line 536
    :cond_6
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v17, v19

    .line 537
    move-object/from16 v19, v17

    if-eqz v19, :cond_7

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    .line 538
    move-object/from16 v19, v17

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 539
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/app/AlertController;->mCheckedItem:I

    move/from16 v19, v0

    move/from16 v18, v19

    .line 540
    move/from16 v19, v18

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_7

    .line 541
    move-object/from16 v19, v17

    move/from16 v20, v18

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 542
    move-object/from16 v19, v17

    move/from16 v20, v18

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setSelection(I)V

    .line 545
    :cond_7
    return-void

    .line 479
    :cond_8
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 481
    :cond_9
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 483
    :cond_a
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 513
    :cond_b
    move-object/from16 v19, v12

    if-eqz v19, :cond_4

    .line 514
    move-object/from16 v19, v12

    sget v20, Landroid/support/v7/appcompat/R$id;->textSpacerNoTitle:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v17, v19

    .line 515
    move-object/from16 v19, v17

    if-eqz v19, :cond_4

    .line 516
    move-object/from16 v19, v17

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 527
    :cond_c
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    move-object/from16 v19, v0

    goto/16 :goto_4

    .line 529
    :cond_d
    const/16 v19, 0x0

    goto/16 :goto_5

    :cond_e
    const/16 v20, 0x0

    goto/16 :goto_6
.end method

.method private static shouldCenterSingleButton(Landroid/content/Context;)Z
    .locals 7

    .prologue
    .line 171
    move-object v0, p0

    new-instance v2, Landroid/util/TypedValue;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    move-object v1, v2

    .line 172
    move-object v2, v0

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Landroid/support/v7/appcompat/R$attr;->alertDialogCenterButtons:I

    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    .line 173
    move-object v2, v1

    iget v2, v2, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 3

    .prologue
    .line 396
    move-object v0, p0

    move v1, p1

    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 404
    const/4 v2, 0x0

    move-object v0, v2

    :goto_0
    return-object v0

    .line 398
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    move-object v0, v2

    goto :goto_0

    .line 400
    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    move-object v0, v2

    goto :goto_0

    .line 402
    :pswitch_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object v0, v2

    goto :goto_0

    .line 396
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIconAttributeResId(I)I
    .locals 8

    .prologue
    .line 386
    move-object v0, p0

    move v1, p1

    new-instance v3, Landroid/util/TypedValue;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    move-object v2, v3

    .line 387
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    move v4, v1

    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    .line 388
    move-object v3, v2

    iget v3, v3, Landroid/util/TypedValue;->resourceId:I

    move v0, v3

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 2

    .prologue
    .line 392
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object v0, v1

    return-object v0
.end method

.method public installContent()V
    .locals 4

    .prologue
    .line 224
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/app/AlertController;->selectContentView()I

    move-result v2

    move v1, v2

    .line 225
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertController;->mDialog:Landroid/support/v7/app/AppCompatDialog;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AppCompatDialog;->setContentView(I)V

    .line 226
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/app/AlertController;->setupView()V

    .line 227
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    .line 410
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    .line 415
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 9

    .prologue
    .line 314
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v4

    if-nez v5, :cond_0

    move-object v5, v3

    if-eqz v5, :cond_0

    .line 315
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AlertController;->mHandler:Landroid/os/Handler;

    move v6, v1

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object v4, v5

    .line 318
    :cond_0
    move v5, v1

    packed-switch v5, :pswitch_data_0

    .line 336
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Button does not exist"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 321
    :pswitch_0
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroid/support/v7/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 322
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroid/support/v7/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 338
    :goto_0
    return-void

    .line 326
    :pswitch_1
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroid/support/v7/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 327
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroid/support/v7/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    .line 328
    goto :goto_0

    .line 331
    :pswitch_2
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroid/support/v7/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 332
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroid/support/v7/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    .line 333
    goto :goto_0

    .line 318
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonPanelLayoutHint(I)V
    .locals 4

    .prologue
    .line 296
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/app/AlertController;->mButtonPanelLayoutHint:I

    .line 297
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 250
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 251
    return-void
.end method

.method public setIcon(I)V
    .locals 4

    .prologue
    .line 347
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 348
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/app/AlertController;->mIconId:I

    .line 350
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 351
    move v2, v1

    if-eqz v2, :cond_1

    .line 352
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 353
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/app/AlertController;->mIconId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 366
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 367
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v7/app/AlertController;->mIconId:I

    .line 369
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 370
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 371
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 372
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 254
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 255
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 256
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 240
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 241
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 242
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    :cond_0
    return-void
.end method

.method public setView(I)V
    .locals 4

    .prologue
    .line 264
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    .line 265
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/app/AlertController;->mViewLayoutResId:I

    .line 266
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    .line 267
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 273
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    .line 274
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v7/app/AlertController;->mViewLayoutResId:I

    .line 275
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    .line 276
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 8

    .prologue
    .line 283
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    .line 284
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroid/support/v7/app/AlertController;->mViewLayoutResId:I

    .line 285
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    .line 286
    move-object v6, v0

    move v7, v2

    iput v7, v6, Landroid/support/v7/app/AlertController;->mViewSpacingLeft:I

    .line 287
    move-object v6, v0

    move v7, v3

    iput v7, v6, Landroid/support/v7/app/AlertController;->mViewSpacingTop:I

    .line 288
    move-object v6, v0

    move v7, v4

    iput v7, v6, Landroid/support/v7/app/AlertController;->mViewSpacingRight:I

    .line 289
    move-object v6, v0

    move v7, v5

    iput v7, v6, Landroid/support/v7/app/AlertController;->mViewSpacingBottom:I

    .line 290
    return-void
.end method
