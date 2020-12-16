.class public Landroid/support/v7/widget/Toolbar;
.super Landroid/view/ViewGroup;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;,
        Landroid/support/v7/widget/Toolbar$SavedState;,
        Landroid/support/v7/widget/Toolbar$LayoutParams;,
        Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Toolbar"


# instance fields
.field private mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

.field mButtonGravity:I

.field mCollapseButtonView:Landroid/widget/ImageButton;

.field private mCollapseDescription:Ljava/lang/CharSequence;

.field private mCollapseIcon:Landroid/graphics/drawable/Drawable;

.field private mCollapsible:Z

.field private mContentInsetEndWithActions:I

.field private mContentInsetStartWithNavigation:I

.field private mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

.field private mEatingHover:Z

.field private mEatingTouch:Z

.field mExpandedActionView:Landroid/view/View;

.field private mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

.field private mGravity:I

.field private final mHiddenViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLogoView:Landroid/widget/ImageView;

.field private mMaxButtonHeight:I

.field private mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

.field private mMenuView:Landroid/support/v7/widget/ActionMenuView;

.field private final mMenuViewItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

.field private mNavButtonView:Landroid/widget/ImageButton;

.field mOnMenuItemClickListener:Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;

.field private mOuterActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private final mShowOverflowMenuRunnable:Ljava/lang/Runnable;

.field private mSubtitleText:Ljava/lang/CharSequence;

.field private mSubtitleTextAppearance:I

.field private mSubtitleTextColor:I

.field private mSubtitleTextView:Landroid/widget/TextView;

.field private final mTempMargins:[I

.field private final mTempViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleMarginBottom:I

.field private mTitleMarginEnd:I

.field private mTitleMarginStart:I

.field private mTitleMarginTop:I

.field private mTitleText:Ljava/lang/CharSequence;

.field private mTitleTextAppearance:I

.field private mTitleTextColor:I

.field private mTitleTextView:Landroid/widget/TextView;

.field private mWrapper:Landroid/support/v7/widget/ToolbarWidgetWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 227
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 228
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 231
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Landroid/support/v7/appcompat/R$attr;->toolbarStyle:I

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 232
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 30
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 235
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move/from16 v25, v5

    invoke-direct/range {v22 .. v25}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 180
    move-object/from16 v22, v2

    const v23, 0x800013

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mGravity:I

    .line 192
    move-object/from16 v22, v2

    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v28, v23

    move-object/from16 v23, v28

    move-object/from16 v24, v28

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    .line 195
    move-object/from16 v22, v2

    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v28, v23

    move-object/from16 v23, v28

    move-object/from16 v24, v28

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    .line 197
    move-object/from16 v22, v2

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mTempMargins:[I

    .line 201
    move-object/from16 v22, v2

    new-instance v23, Landroid/support/v7/widget/Toolbar$1;

    move-object/from16 v28, v23

    move-object/from16 v23, v28

    move-object/from16 v24, v28

    move-object/from16 v25, v2

    invoke-direct/range {v24 .. v25}, Landroid/support/v7/widget/Toolbar$1;-><init>(Landroid/support/v7/widget/Toolbar;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mMenuViewItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

    .line 220
    move-object/from16 v22, v2

    new-instance v23, Landroid/support/v7/widget/Toolbar$2;

    move-object/from16 v28, v23

    move-object/from16 v23, v28

    move-object/from16 v24, v28

    move-object/from16 v25, v2

    invoke-direct/range {v24 .. v25}, Landroid/support/v7/widget/Toolbar$2;-><init>(Landroid/support/v7/widget/Toolbar;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    .line 238
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v23, v4

    sget-object v24, Landroid/support/v7/appcompat/R$styleable;->Toolbar:[I

    move/from16 v25, v5

    const/16 v26, 0x0

    invoke-static/range {v22 .. v26}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v22

    move-object/from16 v6, v22

    .line 241
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    sget v24, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleTextAppearance:I

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mTitleTextAppearance:I

    .line 242
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    sget v24, Landroid/support/v7/appcompat/R$styleable;->Toolbar_subtitleTextAppearance:I

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mSubtitleTextAppearance:I

    .line 243
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    sget v24, Landroid/support/v7/appcompat/R$styleable;->Toolbar_android_gravity:I

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mGravity:I

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Landroid/support/v7/widget/TintTypedArray;->getInteger(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mGravity:I

    .line 244
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    sget v24, Landroid/support/v7/appcompat/R$styleable;->Toolbar_buttonGravity:I

    const/16 v25, 0x30

    invoke-virtual/range {v23 .. v25}, Landroid/support/v7/widget/TintTypedArray;->getInteger(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mButtonGravity:I

    .line 247
    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMargin:I

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v22

    move/from16 v7, v22

    .line 248
    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMargins:I

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 250
    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMargins:I

    move/from16 v24, v7

    invoke-virtual/range {v22 .. v24}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v22

    move/from16 v7, v22

    .line 252
    :cond_0
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move/from16 v26, v7

    move-object/from16 v28, v25

    move/from16 v29, v26

    move/from16 v25, v29

    move-object/from16 v26, v28

    move/from16 v27, v29

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    move-object/from16 v28, v24

    move/from16 v29, v25

    move/from16 v24, v29

    move-object/from16 v25, v28

    move/from16 v26, v29

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    move-object/from16 v28, v23

    move/from16 v29, v24

    move/from16 v23, v29

    move-object/from16 v24, v28

    move/from16 v25, v29

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    .line 254
    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMarginStart:I

    const/16 v24, -0x1

    invoke-virtual/range {v22 .. v24}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v22

    move/from16 v8, v22

    .line 255
    move/from16 v22, v8

    if-ltz v22, :cond_1

    .line 256
    move-object/from16 v22, v2

    move/from16 v23, v8

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    .line 259
    :cond_1
    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMarginEnd:I

    const/16 v24, -0x1

    invoke-virtual/range {v22 .. v24}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v22

    move/from16 v9, v22

    .line 260
    move/from16 v22, v9

    if-ltz v22, :cond_2

    .line 261
    move-object/from16 v22, v2

    move/from16 v23, v9

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    .line 264
    :cond_2
    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMarginTop:I

    const/16 v24, -0x1

    invoke-virtual/range {v22 .. v24}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v22

    move/from16 v10, v22

    .line 265
    move/from16 v22, v10

    if-ltz v22, :cond_3

    .line 266
    move-object/from16 v22, v2

    move/from16 v23, v10

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    .line 269
    :cond_3
    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleMarginBottom:I

    const/16 v24, -0x1

    invoke-virtual/range {v22 .. v24}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v22

    move/from16 v11, v22

    .line 271
    move/from16 v22, v11

    if-ltz v22, :cond_4

    .line 272
    move-object/from16 v22, v2

    move/from16 v23, v11

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    .line 275
    :cond_4
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    sget v24, Landroid/support/v7/appcompat/R$styleable;->Toolbar_maxButtonHeight:I

    const/16 v25, -0x1

    invoke-virtual/range {v23 .. v25}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mMaxButtonHeight:I

    .line 277
    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetStart:I

    const/high16 v24, -0x80000000

    .line 278
    invoke-virtual/range {v22 .. v24}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v22

    move/from16 v12, v22

    .line 280
    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetEnd:I

    const/high16 v24, -0x80000000

    .line 281
    invoke-virtual/range {v22 .. v24}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v22

    move/from16 v13, v22

    .line 283
    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetLeft:I

    const/16 v24, 0x0

    .line 284
    invoke-virtual/range {v22 .. v24}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v22

    move/from16 v14, v22

    .line 285
    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetRight:I

    const/16 v24, 0x0

    .line 286
    invoke-virtual/range {v22 .. v24}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v22

    move/from16 v15, v22

    .line 288
    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v22}, Landroid/support/v7/widget/Toolbar;->ensureContentInsets()V

    .line 289
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    move-object/from16 v22, v0

    move/from16 v23, v14

    move/from16 v24, v15

    invoke-virtual/range {v22 .. v24}, Landroid/support/v7/widget/RtlSpacingHelper;->setAbsolute(II)V

    .line 291
    move/from16 v22, v12

    const/high16 v23, -0x80000000

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    move/from16 v22, v13

    const/high16 v23, -0x80000000

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    .line 293
    :cond_5
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    move-object/from16 v22, v0

    move/from16 v23, v12

    move/from16 v24, v13

    invoke-virtual/range {v22 .. v24}, Landroid/support/v7/widget/RtlSpacingHelper;->setRelative(II)V

    .line 296
    :cond_6
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    sget v24, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetStartWithNavigation:I

    const/high16 v25, -0x80000000

    invoke-virtual/range {v23 .. v25}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mContentInsetStartWithNavigation:I

    .line 298
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    sget v24, Landroid/support/v7/appcompat/R$styleable;->Toolbar_contentInsetEndWithActions:I

    const/high16 v25, -0x80000000

    invoke-virtual/range {v23 .. v25}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->mContentInsetEndWithActions:I

    .line 301
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    sget v24, Landroid/support/v7/appcompat/R$styleable;->Toolbar_collapseIcon:I

    invoke-virtual/range {v23 .. v24}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    .line 302
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    sget v24, Landroid/support/v7/appcompat/R$styleable;->Toolbar_collapseContentDescription:I

    invoke-virtual/range {v23 .. v24}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    .line 304
    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_title:I

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v16, v22

    .line 305
    move-object/from16 v22, v16

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 306
    move-object/from16 v22, v2

    move-object/from16 v23, v16

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 309
    :cond_7
    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_subtitle:I

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v17, v22

    .line 310
    move-object/from16 v22, v17

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_8

    .line 311
    move-object/from16 v22, v2

    move-object/from16 v23, v17

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 315
    :cond_8
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 316
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    sget v24, Landroid/support/v7/appcompat/R$styleable;->Toolbar_popupTheme:I

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->setPopupTheme(I)V

    .line 318
    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_navigationIcon:I

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v18, v22

    .line 319
    move-object/from16 v22, v18

    if-eqz v22, :cond_9

    .line 320
    move-object/from16 v22, v2

    move-object/from16 v23, v18

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 322
    :cond_9
    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_navigationContentDescription:I

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v19, v22

    .line 323
    move-object/from16 v22, v19

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_a

    .line 324
    move-object/from16 v22, v2

    move-object/from16 v23, v19

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 327
    :cond_a
    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_logo:I

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v20, v22

    .line 328
    move-object/from16 v22, v20

    if-eqz v22, :cond_b

    .line 329
    move-object/from16 v22, v2

    move-object/from16 v23, v20

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 332
    :cond_b
    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_logoDescription:I

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v21, v22

    .line 333
    move-object/from16 v22, v21

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_c

    .line 334
    move-object/from16 v22, v2

    move-object/from16 v23, v21

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 337
    :cond_c
    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleTextColor:I

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 338
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    sget v24, Landroid/support/v7/appcompat/R$styleable;->Toolbar_titleTextColor:I

    const/16 v25, -0x1

    invoke-virtual/range {v23 .. v25}, Landroid/support/v7/widget/TintTypedArray;->getColor(II)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 341
    :cond_d
    move-object/from16 v22, v6

    sget v23, Landroid/support/v7/appcompat/R$styleable;->Toolbar_subtitleTextColor:I

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 342
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    sget v24, Landroid/support/v7/appcompat/R$styleable;->Toolbar_subtitleTextColor:I

    const/16 v25, -0x1

    invoke-virtual/range {v23 .. v25}, Landroid/support/v7/widget/TintTypedArray;->getColor(II)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->setSubtitleTextColor(I)V

    .line 344
    :cond_e
    move-object/from16 v22, v6

    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 345
    return-void
.end method

.method private addCustomViewsWithGravity(Ljava/util/List;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2022
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v9, v0

    invoke-static {v9}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    const/4 v9, 0x1

    :goto_0
    move v3, v9

    .line 2023
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v9

    move v4, v9

    .line 2024
    move v9, v2

    move-object v10, v0

    .line 2025
    invoke-static {v10}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v10

    .line 2024
    invoke-static {v9, v10}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v9

    move v5, v9

    .line 2027
    move-object v9, v1

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 2029
    move v9, v3

    if-eqz v9, :cond_3

    .line 2030
    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v6, v9

    :goto_1
    move v9, v6

    if-ltz v9, :cond_2

    .line 2031
    move-object v9, v0

    move v10, v6

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v7, v9

    .line 2032
    move-object v9, v7

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v8, v9

    .line 2033
    move-object v9, v8

    iget v9, v9, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v9, :cond_0

    move-object v9, v0

    move-object v10, v7

    invoke-direct {v9, v10}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v9, v0

    move-object v10, v8

    iget v10, v10, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 2034
    invoke-direct {v9, v10}, Landroid/support/v7/widget/Toolbar;->getChildHorizontalGravity(I)I

    move-result v9

    move v10, v5

    if-ne v9, v10, :cond_0

    .line 2035
    move-object v9, v1

    move-object v10, v7

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 2030
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 2022
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 2048
    :cond_2
    return-void

    .line 2039
    :cond_3
    const/4 v9, 0x0

    move v6, v9

    :goto_2
    move v9, v6

    move v10, v4

    if-ge v9, v10, :cond_2

    .line 2040
    move-object v9, v0

    move v10, v6

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v7, v9

    .line 2041
    move-object v9, v7

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v8, v9

    .line 2042
    move-object v9, v8

    iget v9, v9, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v9, :cond_4

    move-object v9, v0

    move-object v10, v7

    invoke-direct {v9, v10}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v9, v0

    move-object v10, v8

    iget v10, v10, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 2043
    invoke-direct {v9, v10}, Landroid/support/v7/widget/Toolbar;->getChildHorizontalGravity(I)I

    move-result v9

    move v10, v5

    if-ne v9, v10, :cond_4

    .line 2044
    move-object v9, v1

    move-object v10, v7

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 2039
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method private addSystemView(Landroid/view/View;Z)V
    .locals 8

    .prologue
    .line 1391
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v3, v5

    .line 1393
    move-object v5, v3

    if-nez v5, :cond_0

    .line 1394
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v5

    move-object v4, v5

    .line 1400
    :goto_0
    move-object v5, v4

    const/4 v6, 0x1

    iput v6, v5, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1402
    move v5, v2

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 1403
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1404
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1408
    :goto_1
    return-void

    .line 1395
    :cond_0
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1396
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v5

    move-object v4, v5

    goto :goto_0

    .line 1398
    :cond_1
    move-object v5, v3

    check-cast v5, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v4, v5

    goto :goto_0

    .line 1406
    :cond_2
    move-object v5, v0

    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private ensureContentInsets()V
    .locals 5

    .prologue
    .line 2171
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    if-nez v1, :cond_0

    .line 2172
    move-object v1, v0

    new-instance v2, Landroid/support/v7/widget/RtlSpacingHelper;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/support/v7/widget/RtlSpacingHelper;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    .line 2174
    :cond_0
    return-void
.end method

.method private ensureLogoView()V
    .locals 6

    .prologue
    .line 686
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 687
    move-object v1, v0

    new-instance v2, Landroid/support/v7/widget/AppCompatImageView;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 689
    :cond_0
    return-void
.end method

.method private ensureMenu()V
    .locals 7

    .prologue
    .line 1034
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/Toolbar;->ensureMenuView()V

    .line 1035
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionMenuView;->peekMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1037
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/MenuBuilder;

    move-object v1, v2

    .line 1038
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v2, :cond_0

    .line 1039
    move-object v2, v0

    new-instance v3, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroid/support/v7/widget/Toolbar;)V

    iput-object v3, v2, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 1041
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuView;->setExpandedActionViewsExclusive(Z)V

    .line 1042
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 1044
    :cond_1
    return-void
.end method

.method private ensureMenuView()V
    .locals 7

    .prologue
    .line 1047
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-nez v2, :cond_0

    .line 1048
    move-object v2, v0

    new-instance v3, Landroid/support/v7/widget/ActionMenuView;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v7/widget/ActionMenuView;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    .line 1049
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/Toolbar;->mPopupTheme:I

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuView;->setPopupTheme(I)V

    .line 1050
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mMenuViewItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuView;->setOnMenuItemClickListener(Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;)V

    .line 1051
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/ActionMenuView;->setMenuCallbacks(Landroid/support/v7/view/menu/MenuPresenter$Callback;Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 1052
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v2

    move-object v1, v2

    .line 1053
    move-object v2, v1

    const v3, 0x800005

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/Toolbar;->mButtonGravity:I

    const/16 v5, 0x70

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v3, v4

    iput v3, v2, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 1054
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1055
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 1057
    :cond_0
    return-void
.end method

.method private ensureNavButtonView()V
    .locals 9

    .prologue
    .line 1362
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-nez v2, :cond_0

    .line 1363
    move-object v2, v0

    new-instance v3, Landroid/support/v7/widget/AppCompatImageButton;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    sget v7, Landroid/support/v7/appcompat/R$attr;->toolbarNavigationButtonStyle:I

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, v2, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 1365
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v2

    move-object v1, v2

    .line 1366
    move-object v2, v1

    const v3, 0x800003

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/Toolbar;->mButtonGravity:I

    const/16 v5, 0x70

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v3, v4

    iput v3, v2, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 1367
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1369
    :cond_0
    return-void
.end method

.method private getChildHorizontalGravity(I)I
    .locals 7

    .prologue
    .line 2051
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    move v2, v5

    .line 2052
    move v5, v1

    move v6, v2

    invoke-static {v5, v6}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v5

    move v3, v5

    .line 2053
    move v5, v3

    const/4 v6, 0x7

    and-int/lit8 v5, v5, 0x7

    move v4, v5

    .line 2054
    move v5, v4

    packed-switch v5, :pswitch_data_0

    .line 2060
    :pswitch_0
    move v5, v2

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    const/4 v5, 0x5

    :goto_0
    move v0, v5

    :goto_1
    return v0

    .line 2058
    :pswitch_1
    move v5, v4

    move v0, v5

    goto :goto_1

    .line 2060
    :cond_0
    const/4 v5, 0x3

    goto :goto_0

    .line 2054
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getChildTop(Landroid/view/View;I)I
    .locals 16

    .prologue
    .line 1971
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v3, v12

    .line 1972
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    move v4, v12

    .line 1973
    move v12, v2

    if-lez v12, :cond_1

    move v12, v4

    move v13, v2

    sub-int/2addr v12, v13

    const/4 v13, 0x2

    div-int/lit8 v12, v12, 0x2

    :goto_0
    move v5, v12

    .line 1974
    move-object v12, v0

    move-object v13, v3

    iget v13, v13, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    invoke-direct {v12, v13}, Landroid/support/v7/widget/Toolbar;->getChildVerticalGravity(I)I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    .line 1984
    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v12

    move v6, v12

    .line 1985
    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v12

    move v7, v12

    .line 1986
    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v12

    move v8, v12

    .line 1987
    move v12, v8

    move v13, v6

    sub-int/2addr v12, v13

    move v13, v7

    sub-int/2addr v12, v13

    move v9, v12

    .line 1988
    move v12, v9

    move v13, v4

    sub-int/2addr v12, v13

    const/4 v13, 0x2

    div-int/lit8 v12, v12, 0x2

    move v10, v12

    .line 1989
    move v12, v10

    move-object v13, v3

    iget v13, v13, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    if-ge v12, v13, :cond_2

    .line 1990
    move-object v12, v3

    iget v12, v12, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move v10, v12

    .line 1998
    :cond_0
    :goto_1
    move v12, v6

    move v13, v10

    add-int/2addr v12, v13

    move v0, v12

    :goto_2
    return v0

    .line 1973
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 1976
    :sswitch_0
    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v12

    move v13, v5

    sub-int/2addr v12, v13

    move v0, v12

    goto :goto_2

    .line 1979
    :sswitch_1
    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v12

    move-object v13, v0

    invoke-virtual {v13}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v13

    sub-int/2addr v12, v13

    move v13, v4

    sub-int/2addr v12, v13

    move-object v13, v3

    iget v13, v13, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v12, v13

    move v13, v5

    sub-int/2addr v12, v13

    move v0, v12

    goto :goto_2

    .line 1992
    :cond_2
    move v12, v8

    move v13, v7

    sub-int/2addr v12, v13

    move v13, v4

    sub-int/2addr v12, v13

    move v13, v10

    sub-int/2addr v12, v13

    move v13, v6

    sub-int/2addr v12, v13

    move v11, v12

    .line 1994
    move v12, v11

    move-object v13, v3

    iget v13, v13, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    if-ge v12, v13, :cond_0

    .line 1995
    const/4 v12, 0x0

    move v13, v10

    move-object v14, v3

    iget v14, v14, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move v15, v11

    sub-int/2addr v14, v15

    sub-int/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v10, v12

    goto :goto_1

    .line 1974
    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private getChildVerticalGravity(I)I
    .locals 5

    .prologue
    .line 2003
    move-object v0, p0

    move v1, p1

    move v3, v1

    const/16 v4, 0x70

    and-int/lit8 v3, v3, 0x70

    move v2, v3

    .line 2004
    move v3, v2

    sparse-switch v3, :sswitch_data_0

    .line 2010
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/Toolbar;->mGravity:I

    const/16 v4, 0x70

    and-int/lit8 v3, v3, 0x70

    move v0, v3

    :goto_0
    return v0

    .line 2008
    :sswitch_0
    move v3, v2

    move v0, v3

    goto :goto_0

    .line 2004
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method private getHorizontalMargins(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 2069
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v2, v3

    .line 2070
    move-object v3, v2

    invoke-static {v3}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v3

    move-object v4, v2

    .line 2071
    invoke-static {v4}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v4

    add-int/2addr v3, v4

    move v0, v3

    return v0
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 5

    .prologue
    .line 1060
    move-object v0, p0

    new-instance v1, Landroid/support/v7/view/SupportMenuInflater;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    return-object v0
.end method

.method private getVerticalMargins(Landroid/view/View;)I
    .locals 5

    .prologue
    .line 2075
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v2, v3

    .line 2076
    move-object v3, v2

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move-object v4, v2

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    move v0, v3

    return v0
.end method

.method private getViewListMeasuredWidth(Ljava/util/List;[I)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;[I)I"
        }
    .end annotation

    .prologue
    .line 1926
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v14, v2

    const/4 v15, 0x0

    aget v14, v14, v15

    move v3, v14

    .line 1927
    move-object v14, v2

    const/4 v15, 0x1

    aget v14, v14, v15

    move v4, v14

    .line 1928
    const/4 v14, 0x0

    move v5, v14

    .line 1929
    move-object v14, v1

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    move v6, v14

    .line 1930
    const/4 v14, 0x0

    move v7, v14

    :goto_0
    move v14, v7

    move v15, v6

    if-ge v14, v15, :cond_0

    .line 1931
    move-object v14, v1

    move v15, v7

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    move-object v8, v14

    .line 1932
    move-object v14, v8

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v9, v14

    .line 1933
    move-object v14, v9

    iget v14, v14, Landroid/support/v7/widget/Toolbar$LayoutParams;->leftMargin:I

    move v15, v3

    sub-int/2addr v14, v15

    move v10, v14

    .line 1934
    move-object v14, v9

    iget v14, v14, Landroid/support/v7/widget/Toolbar$LayoutParams;->rightMargin:I

    move v15, v4

    sub-int/2addr v14, v15

    move v11, v14

    .line 1935
    const/4 v14, 0x0

    move v15, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    move v12, v14

    .line 1936
    const/4 v14, 0x0

    move v15, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    move v13, v14

    .line 1937
    const/4 v14, 0x0

    move v15, v10

    neg-int v15, v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    move v3, v14

    .line 1938
    const/4 v14, 0x0

    move v15, v11

    neg-int v15, v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    move v4, v14

    .line 1939
    move v14, v5

    move v15, v12

    move-object/from16 v16, v8

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v15, v15, v16

    move/from16 v16, v13

    add-int v15, v15, v16

    add-int/2addr v14, v15

    move v5, v14

    .line 1930
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1941
    :cond_0
    move v14, v5

    move v0, v14

    return v0
.end method

.method private isChildOrHidden(Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 2143
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v3, v0

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isCustomView(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 2108
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar$LayoutParams;

    iget v1, v1, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private layoutChildLeft(Landroid/view/View;I[II)I
    .locals 15

    .prologue
    .line 1946
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v5, v9

    .line 1947
    move-object v9, v5

    iget v9, v9, Landroid/support/v7/widget/Toolbar$LayoutParams;->leftMargin:I

    move-object v10, v3

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-int/2addr v9, v10

    move v6, v9

    .line 1948
    move v9, v2

    const/4 v10, 0x0

    move v11, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/2addr v9, v10

    move v2, v9

    .line 1949
    move-object v9, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v12, v6

    neg-int v12, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    aput v11, v9, v10

    .line 1950
    move-object v9, v0

    move-object v10, v1

    move v11, v4

    invoke-direct {v9, v10, v11}, Landroid/support/v7/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result v9

    move v7, v9

    .line 1951
    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    move v8, v9

    .line 1952
    move-object v9, v1

    move v10, v2

    move v11, v7

    move v12, v2

    move v13, v8

    add-int/2addr v12, v13

    move v13, v7

    move-object v14, v1

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v13, v14

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/view/View;->layout(IIII)V

    .line 1953
    move v9, v2

    move v10, v8

    move-object v11, v5

    iget v11, v11, Landroid/support/v7/widget/Toolbar$LayoutParams;->rightMargin:I

    add-int/2addr v10, v11

    add-int/2addr v9, v10

    move v2, v9

    .line 1954
    move v9, v2

    move v0, v9

    return v0
.end method

.method private layoutChildRight(Landroid/view/View;I[II)I
    .locals 15

    .prologue
    .line 1959
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v5, v9

    .line 1960
    move-object v9, v5

    iget v9, v9, Landroid/support/v7/widget/Toolbar$LayoutParams;->rightMargin:I

    move-object v10, v3

    const/4 v11, 0x1

    aget v10, v10, v11

    sub-int/2addr v9, v10

    move v6, v9

    .line 1961
    move v9, v2

    const/4 v10, 0x0

    move v11, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    sub-int/2addr v9, v10

    move v2, v9

    .line 1962
    move-object v9, v3

    const/4 v10, 0x1

    const/4 v11, 0x0

    move v12, v6

    neg-int v12, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    aput v11, v9, v10

    .line 1963
    move-object v9, v0

    move-object v10, v1

    move v11, v4

    invoke-direct {v9, v10, v11}, Landroid/support/v7/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result v9

    move v7, v9

    .line 1964
    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    move v8, v9

    .line 1965
    move-object v9, v1

    move v10, v2

    move v11, v8

    sub-int/2addr v10, v11

    move v11, v7

    move v12, v2

    move v13, v7

    move-object v14, v1

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v13, v14

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/view/View;->layout(IIII)V

    .line 1966
    move v9, v2

    move v10, v8

    move-object v11, v5

    iget v11, v11, Landroid/support/v7/widget/Toolbar$LayoutParams;->leftMargin:I

    add-int/2addr v10, v11

    sub-int/2addr v9, v10

    move v2, v9

    .line 1967
    move v9, v2

    move v0, v9

    return v0
.end method

.method private measureChildCollapseMargins(Landroid/view/View;IIII[I)I
    .locals 20

    .prologue
    .line 1533
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v8, v16

    .line 1535
    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v16, v0

    move-object/from16 v17, v7

    const/16 v18, 0x0

    aget v17, v17, v18

    sub-int v16, v16, v17

    move/from16 v9, v16

    .line 1536
    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v16, v0

    move-object/from16 v17, v7

    const/16 v18, 0x1

    aget v17, v17, v18

    sub-int v16, v16, v17

    move/from16 v10, v16

    .line 1537
    const/16 v16, 0x0

    move/from16 v17, v9

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v11, v16

    .line 1538
    const/16 v16, 0x0

    move/from16 v17, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v12, v16

    .line 1539
    move/from16 v16, v11

    move/from16 v17, v12

    add-int v16, v16, v17

    move/from16 v13, v16

    .line 1540
    move-object/from16 v16, v7

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v19, v9

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    aput v18, v16, v17

    .line 1541
    move-object/from16 v16, v7

    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v19, v10

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    aput v18, v16, v17

    .line 1543
    move/from16 v16, v3

    move-object/from16 v17, v1

    .line 1544
    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v17

    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v18

    add-int v17, v17, v18

    move/from16 v18, v13

    add-int v17, v17, v18

    move/from16 v18, v4

    add-int v17, v17, v18

    move-object/from16 v18, v8

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v18, v0

    .line 1543
    invoke-static/range {v16 .. v18}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v16

    move/from16 v14, v16

    .line 1545
    move/from16 v16, v5

    move-object/from16 v17, v1

    .line 1546
    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v17

    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v18

    add-int v17, v17, v18

    move-object/from16 v18, v8

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v18, v8

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v18, v6

    add-int v17, v17, v18

    move-object/from16 v18, v8

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v18, v0

    .line 1545
    invoke-static/range {v16 .. v18}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v16

    move/from16 v15, v16

    .line 1549
    move-object/from16 v16, v2

    move/from16 v17, v14

    move/from16 v18, v15

    invoke-virtual/range {v16 .. v18}, Landroid/view/View;->measure(II)V

    .line 1550
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    move/from16 v17, v13

    add-int v16, v16, v17

    move/from16 v1, v16

    return v1
.end method

.method private measureChildConstrained(Landroid/view/View;IIIII)V
    .locals 15

    .prologue
    .line 1508
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v7, v12

    .line 1510
    move v12, v2

    move-object v13, v0

    .line 1511
    invoke-virtual {v13}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v13

    move-object v14, v0

    invoke-virtual {v14}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v14

    add-int/2addr v13, v14

    move-object v14, v7

    iget v14, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v13, v14

    move-object v14, v7

    iget v14, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v13, v14

    move v14, v3

    add-int/2addr v13, v14

    move-object v14, v7

    iget v14, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1510
    invoke-static {v12, v13, v14}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v12

    move v8, v12

    .line 1513
    move v12, v4

    move-object v13, v0

    .line 1514
    invoke-virtual {v13}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v13

    move-object v14, v0

    invoke-virtual {v14}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v14

    add-int/2addr v13, v14

    move-object v14, v7

    iget v14, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v13, v14

    move-object v14, v7

    iget v14, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v13, v14

    move v14, v5

    add-int/2addr v13, v14

    move-object v14, v7

    iget v14, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1513
    invoke-static {v12, v13, v14}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v12

    move v9, v12

    .line 1517
    move v12, v9

    invoke-static {v12}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    move v10, v12

    .line 1518
    move v12, v10

    const/high16 v13, 0x40000000    # 2.0f

    if-eq v12, v13, :cond_0

    move v12, v6

    if-ltz v12, :cond_0

    .line 1519
    move v12, v10

    if-eqz v12, :cond_1

    move v12, v9

    .line 1520
    invoke-static {v12}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    move v13, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    :goto_0
    move v11, v12

    .line 1522
    move v12, v11

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    move v9, v12

    .line 1524
    :cond_0
    move-object v12, v1

    move v13, v8

    move v14, v9

    invoke-virtual {v12, v13, v14}, Landroid/view/View;->measure(II)V

    .line 1525
    return-void

    .line 1520
    :cond_1
    move v12, v6

    goto :goto_0
.end method

.method private postShowOverflowMenu()V
    .locals 3

    .prologue
    .line 1446
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 1447
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .line 1448
    return-void
.end method

.method private shouldCollapse()Z
    .locals 6

    .prologue
    .line 1557
    move-object v0, p0

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/widget/Toolbar;->mCollapsible:Z

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move v0, v4

    .line 1567
    :goto_0
    return v0

    .line 1559
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v4

    move v1, v4

    .line 1560
    const/4 v4, 0x0

    move v2, v4

    :goto_1
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_2

    .line 1561
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 1562
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-lez v4, :cond_1

    move-object v4, v3

    .line 1563
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-lez v4, :cond_1

    .line 1564
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 1560
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1567
    :cond_2
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method private shouldLayout(Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 2065
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v3, v0

    if-ne v2, v3, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method addChildrenForExpandedActionView()V
    .locals 6

    .prologue
    .line 2134
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v3

    .line 2136
    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    :goto_0
    move v3, v2

    if-ltz v3, :cond_0

    .line 2137
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2136
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2139
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2140
    return-void
.end method

.method public canShowOverflowMenu()Z
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 508
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->isOverflowReserved()Z

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

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 4

    .prologue
    .line 2104
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v7/widget/Toolbar$LayoutParams;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public collapseActionView()V
    .locals 3

    .prologue
    .line 716
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    move-object v1, v2

    .line 718
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 719
    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuItemImpl;->collapseActionView()Z

    move-result v2

    .line 721
    :cond_0
    return-void

    .line 716
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    goto :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 2

    .prologue
    .line 586
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v1, :cond_0

    .line 587
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->dismissPopupMenus()V

    .line 589
    :cond_0
    return-void
.end method

.method ensureCollapseButtonView()V
    .locals 9

    .prologue
    .line 1372
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-nez v2, :cond_0

    .line 1373
    move-object v2, v0

    new-instance v3, Landroid/support/v7/widget/AppCompatImageButton;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    sget v7, Landroid/support/v7/appcompat/R$attr;->toolbarNavigationButtonStyle:I

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, v2, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1375
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1376
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1377
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v2

    move-object v1, v2

    .line 1378
    move-object v2, v1

    const v3, 0x800003

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/Toolbar;->mButtonGravity:I

    const/16 v5, 0x70

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v3, v4

    iput v3, v2, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 1379
    move-object v2, v1

    const/4 v3, 0x2

    iput v3, v2, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1380
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1381
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    new-instance v3, Landroid/support/v7/widget/Toolbar$3;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/v7/widget/Toolbar$3;-><init>(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1388
    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;
    .locals 6

    .prologue
    .line 2099
    move-object v0, p0

    new-instance v1, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(II)V

    move-object v0, v1

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/Toolbar$LayoutParams;
    .locals 7

    .prologue
    .line 2081
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/Toolbar$LayoutParams;
    .locals 6

    .prologue
    .line 2086
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v7/widget/Toolbar$LayoutParams;

    if-eqz v2, :cond_0

    .line 2087
    new-instance v2, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/support/v7/widget/Toolbar$LayoutParams;

    invoke-direct {v3, v4}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/support/v7/widget/Toolbar$LayoutParams;)V

    move-object v0, v2

    .line 2093
    :goto_0
    return-object v0

    .line 2088
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Landroid/support/v7/app/ActionBar$LayoutParams;

    if-eqz v2, :cond_1

    .line 2089
    new-instance v2, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/support/v7/app/ActionBar$LayoutParams;

    invoke-direct {v3, v4}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/support/v7/app/ActionBar$LayoutParams;)V

    move-object v0, v2

    goto :goto_0

    .line 2090
    :cond_1
    move-object v2, v1

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_2

    .line 2091
    new-instance v2, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v4}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    move-object v0, v2

    goto :goto_0

    .line 2093
    :cond_2
    new-instance v2, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getContentInsetEnd()I
    .locals 2

    .prologue
    .line 1147
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/RtlSpacingHelper;->getEnd()I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContentInsetEndWithActions()I
    .locals 3

    .prologue
    .line 1269
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/Toolbar;->mContentInsetEndWithActions:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/Toolbar;->mContentInsetEndWithActions:I

    .line 1271
    :goto_0
    move v0, v1

    return v0

    .line 1269
    :cond_0
    move-object v1, v0

    .line 1271
    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContentInsetEnd()I

    move-result v1

    goto :goto_0
.end method

.method public getContentInsetLeft()I
    .locals 2

    .prologue
    .line 1190
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/RtlSpacingHelper;->getLeft()I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContentInsetRight()I
    .locals 2

    .prologue
    .line 1210
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/RtlSpacingHelper;->getRight()I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContentInsetStart()I
    .locals 2

    .prologue
    .line 1127
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/RtlSpacingHelper;->getStart()I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContentInsetStartWithNavigation()I
    .locals 3

    .prologue
    .line 1226
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/Toolbar;->mContentInsetStartWithNavigation:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/Toolbar;->mContentInsetStartWithNavigation:I

    .line 1228
    :goto_0
    move v0, v1

    return v0

    .line 1226
    :cond_0
    move-object v1, v0

    .line 1228
    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContentInsetStart()I

    move-result v1

    goto :goto_0
.end method

.method public getCurrentContentInsetEnd()I
    .locals 6

    .prologue
    .line 1321
    move-object v0, p0

    const/4 v3, 0x0

    move v1, v3

    .line 1322
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v3, :cond_0

    .line 1323
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v3}, Landroid/support/v7/widget/ActionMenuView;->peekMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v3

    move-object v2, v3

    .line 1324
    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    move v1, v3

    .line 1326
    :cond_0
    move v3, v1

    if-eqz v3, :cond_2

    move-object v3, v0

    .line 1327
    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getContentInsetEnd()I

    move-result v3

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/Toolbar;->mContentInsetEndWithActions:I

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1328
    :goto_1
    move v0, v3

    return v0

    .line 1324
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1327
    :cond_2
    move-object v3, v0

    .line 1328
    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getContentInsetEnd()I

    move-result v3

    goto :goto_1
.end method

.method public getCurrentContentInsetLeft()I
    .locals 3

    .prologue
    .line 1341
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move-object v1, v0

    .line 1342
    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v1

    .line 1343
    :goto_0
    move v0, v1

    return v0

    .line 1342
    :cond_0
    move-object v1, v0

    .line 1343
    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v1

    goto :goto_0
.end method

.method public getCurrentContentInsetRight()I
    .locals 3

    .prologue
    .line 1356
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move-object v1, v0

    .line 1357
    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v1

    .line 1358
    :goto_0
    move v0, v1

    return v0

    .line 1357
    :cond_0
    move-object v1, v0

    .line 1358
    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v1

    goto :goto_0
.end method

.method public getCurrentContentInsetStart()I
    .locals 4

    .prologue
    .line 1307
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 1308
    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContentInsetStart()I

    move-result v1

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/Toolbar;->mContentInsetStartWithNavigation:I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1309
    :goto_0
    move v0, v1

    return v0

    .line 1308
    :cond_0
    move-object v1, v0

    .line 1309
    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContentInsetStart()I

    move-result v1

    goto :goto_0
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 644
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLogoDescription()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 682
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 2

    .prologue
    .line 1008
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/Toolbar;->ensureMenu()V

    .line 1009
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 890
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 982
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1029
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/Toolbar;->ensureMenu()V

    .line 1030
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getPopupTheme()I
    .locals 2

    .prologue
    .line 371
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/Toolbar;->mPopupTheme:I

    move v0, v1

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 785
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 729
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method

.method public getTitleMarginBottom()I
    .locals 2

    .prologue
    .line 468
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    move v0, v1

    return v0
.end method

.method public getTitleMarginEnd()I
    .locals 2

    .prologue
    .line 446
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    move v0, v1

    return v0
.end method

.method public getTitleMarginStart()I
    .locals 2

    .prologue
    .line 402
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    move v0, v1

    return v0
.end method

.method public getTitleMarginTop()I
    .locals 2

    .prologue
    .line 424
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    move v0, v1

    return v0
.end method

.method public getWrapper()Landroid/support/v7/widget/DecorToolbar;
    .locals 7
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 2114
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mWrapper:Landroid/support/v7/widget/ToolbarWidgetWrapper;

    if-nez v1, :cond_0

    .line 2115
    move-object v1, v0

    new-instance v2, Landroid/support/v7/widget/ToolbarWidgetWrapper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/ToolbarWidgetWrapper;-><init>(Landroid/support/v7/widget/Toolbar;Z)V

    iput-object v2, v1, Landroid/support/v7/widget/Toolbar;->mWrapper:Landroid/support/v7/widget/ToolbarWidgetWrapper;

    .line 2117
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mWrapper:Landroid/support/v7/widget/ToolbarWidgetWrapper;

    move-object v0, v1

    return-object v0
.end method

.method public hasExpandedActionView()Z
    .locals 2

    .prologue
    .line 702
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 2

    .prologue
    .line 542
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->hideOverflowMenu()Z

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

.method public inflateMenu(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/MenuRes;
        .end annotation
    .end param

    .prologue
    .line 1072
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/Toolbar;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1073
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 524
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->isOverflowMenuShowPending()Z

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

.method public isOverflowMenuShowing()Z
    .locals 2

    .prologue
    .line 518
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->isOverflowMenuShowing()Z

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

.method public isTitleTruncated()Z
    .locals 6
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 594
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-nez v4, :cond_0

    .line 595
    const/4 v4, 0x0

    move v0, v4

    .line 609
    :goto_0
    return v0

    .line 598
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    move-object v1, v4

    .line 599
    move-object v4, v1

    if-nez v4, :cond_1

    .line 600
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 603
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    move v2, v4

    .line 604
    const/4 v4, 0x0

    move v3, v4

    :goto_1
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_3

    .line 605
    move-object v4, v1

    move v5, v3

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    if-lez v4, :cond_2

    .line 606
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 604
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 609
    :cond_3
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 1452
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1453
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 1454
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    .line 1487
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-static {v4}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v4

    move v2, v4

    .line 1488
    move v4, v2

    const/16 v5, 0x9

    if-ne v4, v5, :cond_0

    .line 1489
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v7/widget/Toolbar;->mEatingHover:Z

    .line 1492
    :cond_0
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/widget/Toolbar;->mEatingHover:Z

    if-nez v4, :cond_1

    .line 1493
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    move v3, v4

    .line 1494
    move v4, v2

    const/16 v5, 0x9

    if-ne v4, v5, :cond_1

    move v4, v3

    if-nez v4, :cond_1

    .line 1495
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v7/widget/Toolbar;->mEatingHover:Z

    .line 1499
    :cond_1
    move v4, v2

    const/16 v5, 0xa

    if-eq v4, v5, :cond_2

    move v4, v2

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 1500
    :cond_2
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v7/widget/Toolbar;->mEatingHover:Z

    .line 1503
    :cond_3
    const/4 v4, 0x1

    move v0, v4

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 46

    .prologue
    .line 1708
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v37, v2

    invoke-static/range {v37 .. v37}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_e

    const/16 v37, 0x1

    :goto_0
    move/from16 v8, v37

    .line 1709
    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Landroid/support/v7/widget/Toolbar;->getWidth()I

    move-result v37

    move/from16 v9, v37

    .line 1710
    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v37

    move/from16 v10, v37

    .line 1711
    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v37

    move/from16 v11, v37

    .line 1712
    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v37

    move/from16 v12, v37

    .line 1713
    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v37

    move/from16 v13, v37

    .line 1714
    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v37

    move/from16 v14, v37

    .line 1715
    move/from16 v37, v11

    move/from16 v15, v37

    .line 1716
    move/from16 v37, v9

    move/from16 v38, v12

    sub-int v37, v37, v38

    move/from16 v16, v37

    .line 1718
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempMargins:[I

    move-object/from16 v37, v0

    move-object/from16 v17, v37

    .line 1719
    move-object/from16 v37, v17

    const/16 v38, 0x0

    move-object/from16 v39, v17

    const/16 v40, 0x1

    const/16 v41, 0x0

    move-object/from16 v43, v39

    move/from16 v44, v40

    move/from16 v45, v41

    move/from16 v39, v45

    move-object/from16 v40, v43

    move/from16 v41, v44

    move/from16 v42, v45

    aput v42, v40, v41

    aput v39, v37, v38

    .line 1722
    move-object/from16 v37, v2

    invoke-static/range {v37 .. v37}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v37

    move/from16 v18, v37

    .line 1723
    move/from16 v37, v18

    if-ltz v37, :cond_f

    move/from16 v37, v18

    move/from16 v38, v7

    move/from16 v39, v5

    sub-int v38, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->min(II)I

    move-result v37

    :goto_1
    move/from16 v19, v37

    .line 1725
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v38, v0

    invoke-direct/range {v37 .. v38}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v37

    if-eqz v37, :cond_0

    .line 1726
    move/from16 v37, v8

    if-eqz v37, :cond_10

    .line 1727
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v38, v0

    move/from16 v39, v16

    move-object/from16 v40, v17

    move/from16 v41, v19

    invoke-direct/range {v37 .. v41}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v37

    move/from16 v16, v37

    .line 1735
    :cond_0
    :goto_2
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v38, v0

    invoke-direct/range {v37 .. v38}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v37

    if-eqz v37, :cond_1

    .line 1736
    move/from16 v37, v8

    if-eqz v37, :cond_11

    .line 1737
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v38, v0

    move/from16 v39, v16

    move-object/from16 v40, v17

    move/from16 v41, v19

    invoke-direct/range {v37 .. v41}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v37

    move/from16 v16, v37

    .line 1745
    :cond_1
    :goto_3
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v38, v0

    invoke-direct/range {v37 .. v38}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v37

    if-eqz v37, :cond_2

    .line 1746
    move/from16 v37, v8

    if-eqz v37, :cond_12

    .line 1747
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v38, v0

    move/from16 v39, v15

    move-object/from16 v40, v17

    move/from16 v41, v19

    invoke-direct/range {v37 .. v41}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v37

    move/from16 v15, v37

    .line 1755
    :cond_2
    :goto_4
    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetLeft()I

    move-result v37

    move/from16 v20, v37

    .line 1756
    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetRight()I

    move-result v37

    move/from16 v21, v37

    .line 1757
    move-object/from16 v37, v17

    const/16 v38, 0x0

    const/16 v39, 0x0

    move/from16 v40, v20

    move/from16 v41, v15

    sub-int v40, v40, v41

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->max(II)I

    move-result v39

    aput v39, v37, v38

    .line 1758
    move-object/from16 v37, v17

    const/16 v38, 0x1

    const/16 v39, 0x0

    move/from16 v40, v21

    move/from16 v41, v9

    move/from16 v42, v12

    sub-int v41, v41, v42

    move/from16 v42, v16

    sub-int v41, v41, v42

    sub-int v40, v40, v41

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->max(II)I

    move-result v39

    aput v39, v37, v38

    .line 1759
    move/from16 v37, v15

    move/from16 v38, v20

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    move/from16 v15, v37

    .line 1760
    move/from16 v37, v16

    move/from16 v38, v9

    move/from16 v39, v12

    sub-int v38, v38, v39

    move/from16 v39, v21

    sub-int v38, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->min(II)I

    move-result v37

    move/from16 v16, v37

    .line 1762
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v38, v0

    invoke-direct/range {v37 .. v38}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v37

    if-eqz v37, :cond_3

    .line 1763
    move/from16 v37, v8

    if-eqz v37, :cond_13

    .line 1764
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v38, v0

    move/from16 v39, v16

    move-object/from16 v40, v17

    move/from16 v41, v19

    invoke-direct/range {v37 .. v41}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v37

    move/from16 v16, v37

    .line 1772
    :cond_3
    :goto_5
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v38, v0

    invoke-direct/range {v37 .. v38}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v37

    if-eqz v37, :cond_4

    .line 1773
    move/from16 v37, v8

    if-eqz v37, :cond_14

    .line 1774
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v38, v0

    move/from16 v39, v16

    move-object/from16 v40, v17

    move/from16 v41, v19

    invoke-direct/range {v37 .. v41}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v37

    move/from16 v16, v37

    .line 1782
    :cond_4
    :goto_6
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v38, v0

    invoke-direct/range {v37 .. v38}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v37

    move/from16 v22, v37

    .line 1783
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v38, v0

    invoke-direct/range {v37 .. v38}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v37

    move/from16 v23, v37

    .line 1784
    const/16 v37, 0x0

    move/from16 v24, v37

    .line 1785
    move/from16 v37, v22

    if-eqz v37, :cond_5

    .line 1786
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v37

    check-cast v37, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object/from16 v25, v37

    .line 1787
    move/from16 v37, v24

    move-object/from16 v38, v25

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v38, v0

    move-object/from16 v39, v2

    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v39

    add-int v38, v38, v39

    move-object/from16 v39, v25

    move-object/from16 v0, v39

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v39, v0

    add-int v38, v38, v39

    add-int v37, v37, v38

    move/from16 v24, v37

    .line 1789
    :cond_5
    move/from16 v37, v23

    if-eqz v37, :cond_6

    .line 1790
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v37

    check-cast v37, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object/from16 v25, v37

    .line 1791
    move/from16 v37, v24

    move-object/from16 v38, v25

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v38, v0

    move-object/from16 v39, v2

    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v39

    add-int v38, v38, v39

    move-object/from16 v39, v25

    move-object/from16 v0, v39

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v39, v0

    add-int v38, v38, v39

    add-int v37, v37, v38

    move/from16 v24, v37

    .line 1794
    :cond_6
    move/from16 v37, v22

    if-nez v37, :cond_7

    move/from16 v37, v23

    if-eqz v37, :cond_d

    .line 1796
    :cond_7
    move/from16 v37, v22

    if-eqz v37, :cond_15

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    :goto_7
    move-object/from16 v26, v37

    .line 1797
    move/from16 v37, v23

    if-eqz v37, :cond_16

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    :goto_8
    move-object/from16 v27, v37

    .line 1798
    move-object/from16 v37, v26

    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v37

    check-cast v37, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object/from16 v28, v37

    .line 1799
    move-object/from16 v37, v27

    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v37

    check-cast v37, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object/from16 v29, v37

    .line 1800
    move/from16 v37, v22

    if-eqz v37, :cond_8

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v37

    if-gtz v37, :cond_9

    :cond_8
    move/from16 v37, v23

    if-eqz v37, :cond_17

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    .line 1801
    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v37

    if-lez v37, :cond_17

    :cond_9
    const/16 v37, 0x1

    :goto_9
    move/from16 v30, v37

    .line 1803
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mGravity:I

    move/from16 v37, v0

    const/16 v38, 0x70

    and-int/lit8 v37, v37, 0x70

    sparse-switch v37, :sswitch_data_0

    .line 1809
    move/from16 v37, v10

    move/from16 v38, v13

    sub-int v37, v37, v38

    move/from16 v38, v14

    sub-int v37, v37, v38

    move/from16 v31, v37

    .line 1810
    move/from16 v37, v31

    move/from16 v38, v24

    sub-int v37, v37, v38

    const/16 v38, 0x2

    div-int/lit8 v37, v37, 0x2

    move/from16 v32, v37

    .line 1811
    move/from16 v37, v32

    move-object/from16 v38, v28

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v38, v0

    move-object/from16 v39, v2

    move-object/from16 v0, v39

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_18

    .line 1812
    move-object/from16 v37, v28

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v37, v0

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v32, v37

    .line 1821
    :cond_a
    :goto_a
    move/from16 v37, v13

    move/from16 v38, v32

    add-int v37, v37, v38

    move/from16 v25, v37

    .line 1828
    :goto_b
    move/from16 v37, v8

    if-eqz v37, :cond_1a

    .line 1829
    move/from16 v37, v30

    if-eqz v37, :cond_19

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    move/from16 v37, v0

    :goto_c
    move-object/from16 v38, v17

    const/16 v39, 0x1

    aget v38, v38, v39

    sub-int v37, v37, v38

    move/from16 v31, v37

    .line 1830
    move/from16 v37, v16

    const/16 v38, 0x0

    move/from16 v39, v31

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->max(II)I

    move-result v38

    sub-int v37, v37, v38

    move/from16 v16, v37

    .line 1831
    move-object/from16 v37, v17

    const/16 v38, 0x1

    const/16 v39, 0x0

    move/from16 v40, v31

    move/from16 v0, v40

    neg-int v0, v0

    move/from16 v40, v0

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->max(II)I

    move-result v39

    aput v39, v37, v38

    .line 1832
    move/from16 v37, v16

    move/from16 v32, v37

    .line 1833
    move/from16 v37, v16

    move/from16 v33, v37

    .line 1835
    move/from16 v37, v22

    if-eqz v37, :cond_b

    .line 1836
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v37

    check-cast v37, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object/from16 v34, v37

    .line 1837
    move/from16 v37, v32

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v38

    sub-int v37, v37, v38

    move/from16 v35, v37

    .line 1838
    move/from16 v37, v25

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v38

    add-int v37, v37, v38

    move/from16 v36, v37

    .line 1839
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    move/from16 v38, v35

    move/from16 v39, v25

    move/from16 v40, v32

    move/from16 v41, v36

    invoke-virtual/range {v37 .. v41}, Landroid/widget/TextView;->layout(IIII)V

    .line 1840
    move/from16 v37, v35

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v38, v0

    sub-int v37, v37, v38

    move/from16 v32, v37

    .line 1841
    move/from16 v37, v36

    move-object/from16 v38, v34

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v25, v37

    .line 1843
    :cond_b
    move/from16 v37, v23

    if-eqz v37, :cond_c

    .line 1844
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v37

    check-cast v37, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object/from16 v34, v37

    .line 1845
    move/from16 v37, v25

    move-object/from16 v38, v34

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v25, v37

    .line 1846
    move/from16 v37, v33

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v38

    sub-int v37, v37, v38

    move/from16 v35, v37

    .line 1847
    move/from16 v37, v25

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v38

    add-int v37, v37, v38

    move/from16 v36, v37

    .line 1848
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    move/from16 v38, v35

    move/from16 v39, v25

    move/from16 v40, v33

    move/from16 v41, v36

    invoke-virtual/range {v37 .. v41}, Landroid/widget/TextView;->layout(IIII)V

    .line 1849
    move/from16 v37, v33

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v38, v0

    sub-int v37, v37, v38

    move/from16 v33, v37

    .line 1850
    move/from16 v37, v36

    move-object/from16 v38, v34

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v25, v37

    .line 1852
    :cond_c
    move/from16 v37, v30

    if-eqz v37, :cond_d

    .line 1853
    move/from16 v37, v32

    move/from16 v38, v33

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->min(II)I

    move-result v37

    move/from16 v16, v37

    .line 1888
    :cond_d
    :goto_d
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    const/16 v39, 0x3

    invoke-direct/range {v37 .. v39}, Landroid/support/v7/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1889
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v25, v37

    .line 1890
    const/16 v37, 0x0

    move/from16 v26, v37

    :goto_e
    move/from16 v37, v26

    move/from16 v38, v25

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_1e

    .line 1891
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    move/from16 v39, v26

    invoke-virtual/range {v38 .. v39}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/view/View;

    move/from16 v39, v15

    move-object/from16 v40, v17

    move/from16 v41, v19

    invoke-direct/range {v37 .. v41}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v37

    move/from16 v15, v37

    .line 1890
    add-int/lit8 v26, v26, 0x1

    goto :goto_e

    .line 1708
    :cond_e
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 1723
    :cond_f
    const/16 v37, 0x0

    goto/16 :goto_1

    .line 1730
    :cond_10
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v38, v0

    move/from16 v39, v15

    move-object/from16 v40, v17

    move/from16 v41, v19

    invoke-direct/range {v37 .. v41}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v37

    move/from16 v15, v37

    goto/16 :goto_2

    .line 1740
    :cond_11
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v38, v0

    move/from16 v39, v15

    move-object/from16 v40, v17

    move/from16 v41, v19

    invoke-direct/range {v37 .. v41}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v37

    move/from16 v15, v37

    goto/16 :goto_3

    .line 1750
    :cond_12
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v38, v0

    move/from16 v39, v16

    move-object/from16 v40, v17

    move/from16 v41, v19

    invoke-direct/range {v37 .. v41}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v37

    move/from16 v16, v37

    goto/16 :goto_4

    .line 1767
    :cond_13
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v38, v0

    move/from16 v39, v15

    move-object/from16 v40, v17

    move/from16 v41, v19

    invoke-direct/range {v37 .. v41}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v37

    move/from16 v15, v37

    goto/16 :goto_5

    .line 1777
    :cond_14
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v38, v0

    move/from16 v39, v15

    move-object/from16 v40, v17

    move/from16 v41, v19

    invoke-direct/range {v37 .. v41}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v37

    move/from16 v15, v37

    goto/16 :goto_6

    .line 1796
    :cond_15
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    goto/16 :goto_7

    .line 1797
    :cond_16
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    goto/16 :goto_8

    .line 1801
    :cond_17
    const/16 v37, 0x0

    goto/16 :goto_9

    .line 1805
    :sswitch_0
    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v37

    move-object/from16 v38, v28

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v25, v37

    .line 1806
    goto/16 :goto_b

    .line 1814
    :cond_18
    move/from16 v37, v10

    move/from16 v38, v14

    sub-int v37, v37, v38

    move/from16 v38, v24

    sub-int v37, v37, v38

    move/from16 v38, v32

    sub-int v37, v37, v38

    move/from16 v38, v13

    sub-int v37, v37, v38

    move/from16 v33, v37

    .line 1816
    move/from16 v37, v33

    move-object/from16 v38, v28

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v38, v0

    move-object/from16 v39, v2

    move-object/from16 v0, v39

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_a

    .line 1817
    const/16 v37, 0x0

    move/from16 v38, v32

    move-object/from16 v39, v29

    move-object/from16 v0, v39

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v39, v0

    move-object/from16 v40, v2

    move-object/from16 v0, v40

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    move/from16 v40, v0

    add-int v39, v39, v40

    move/from16 v40, v33

    sub-int v39, v39, v40

    sub-int v38, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    move/from16 v32, v37

    goto/16 :goto_a

    .line 1824
    :sswitch_1
    move/from16 v37, v10

    move/from16 v38, v14

    sub-int v37, v37, v38

    move-object/from16 v38, v29

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v38, v0

    sub-int v37, v37, v38

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    move/from16 v38, v0

    sub-int v37, v37, v38

    move/from16 v38, v24

    sub-int v37, v37, v38

    move/from16 v25, v37

    goto/16 :goto_b

    .line 1829
    :cond_19
    const/16 v37, 0x0

    goto/16 :goto_c

    .line 1856
    :cond_1a
    move/from16 v37, v30

    if-eqz v37, :cond_1d

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    move/from16 v37, v0

    :goto_f
    move-object/from16 v38, v17

    const/16 v39, 0x0

    aget v38, v38, v39

    sub-int v37, v37, v38

    move/from16 v31, v37

    .line 1857
    move/from16 v37, v15

    const/16 v38, 0x0

    move/from16 v39, v31

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->max(II)I

    move-result v38

    add-int v37, v37, v38

    move/from16 v15, v37

    .line 1858
    move-object/from16 v37, v17

    const/16 v38, 0x0

    const/16 v39, 0x0

    move/from16 v40, v31

    move/from16 v0, v40

    neg-int v0, v0

    move/from16 v40, v0

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->max(II)I

    move-result v39

    aput v39, v37, v38

    .line 1859
    move/from16 v37, v15

    move/from16 v32, v37

    .line 1860
    move/from16 v37, v15

    move/from16 v33, v37

    .line 1862
    move/from16 v37, v22

    if-eqz v37, :cond_1b

    .line 1863
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v37

    check-cast v37, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object/from16 v34, v37

    .line 1864
    move/from16 v37, v32

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v38

    add-int v37, v37, v38

    move/from16 v35, v37

    .line 1865
    move/from16 v37, v25

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v38

    add-int v37, v37, v38

    move/from16 v36, v37

    .line 1866
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    move/from16 v38, v32

    move/from16 v39, v25

    move/from16 v40, v35

    move/from16 v41, v36

    invoke-virtual/range {v37 .. v41}, Landroid/widget/TextView;->layout(IIII)V

    .line 1867
    move/from16 v37, v35

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v32, v37

    .line 1868
    move/from16 v37, v36

    move-object/from16 v38, v34

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v25, v37

    .line 1870
    :cond_1b
    move/from16 v37, v23

    if-eqz v37, :cond_1c

    .line 1871
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v37

    check-cast v37, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object/from16 v34, v37

    .line 1872
    move/from16 v37, v25

    move-object/from16 v38, v34

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v25, v37

    .line 1873
    move/from16 v37, v33

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v38

    add-int v37, v37, v38

    move/from16 v35, v37

    .line 1874
    move/from16 v37, v25

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v38

    add-int v37, v37, v38

    move/from16 v36, v37

    .line 1875
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    move/from16 v38, v33

    move/from16 v39, v25

    move/from16 v40, v35

    move/from16 v41, v36

    invoke-virtual/range {v37 .. v41}, Landroid/widget/TextView;->layout(IIII)V

    .line 1876
    move/from16 v37, v35

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v33, v37

    .line 1877
    move/from16 v37, v36

    move-object/from16 v38, v34

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v25, v37

    .line 1879
    :cond_1c
    move/from16 v37, v30

    if-eqz v37, :cond_d

    .line 1880
    move/from16 v37, v32

    move/from16 v38, v33

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    move/from16 v15, v37

    goto/16 :goto_d

    .line 1856
    :cond_1d
    const/16 v37, 0x0

    goto/16 :goto_f

    .line 1895
    :cond_1e
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    const/16 v39, 0x5

    invoke-direct/range {v37 .. v39}, Landroid/support/v7/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1896
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v26, v37

    .line 1897
    const/16 v37, 0x0

    move/from16 v27, v37

    :goto_10
    move/from16 v37, v27

    move/from16 v38, v26

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_1f

    .line 1898
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    move/from16 v39, v27

    invoke-virtual/range {v38 .. v39}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/view/View;

    move/from16 v39, v16

    move-object/from16 v40, v17

    move/from16 v41, v19

    invoke-direct/range {v37 .. v41}, Landroid/support/v7/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v37

    move/from16 v16, v37

    .line 1897
    add-int/lit8 v27, v27, 0x1

    goto :goto_10

    .line 1904
    :cond_1f
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    invoke-direct/range {v37 .. v39}, Landroid/support/v7/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1905
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    move-object/from16 v39, v17

    invoke-direct/range {v37 .. v39}, Landroid/support/v7/widget/Toolbar;->getViewListMeasuredWidth(Ljava/util/List;[I)I

    move-result v37

    move/from16 v27, v37

    .line 1906
    move/from16 v37, v11

    move/from16 v38, v9

    move/from16 v39, v11

    sub-int v38, v38, v39

    move/from16 v39, v12

    sub-int v38, v38, v39

    const/16 v39, 0x2

    div-int/lit8 v38, v38, 0x2

    add-int v37, v37, v38

    move/from16 v28, v37

    .line 1907
    move/from16 v37, v27

    const/16 v38, 0x2

    div-int/lit8 v37, v37, 0x2

    move/from16 v29, v37

    .line 1908
    move/from16 v37, v28

    move/from16 v38, v29

    sub-int v37, v37, v38

    move/from16 v30, v37

    .line 1909
    move/from16 v37, v30

    move/from16 v38, v27

    add-int v37, v37, v38

    move/from16 v31, v37

    .line 1910
    move/from16 v37, v30

    move/from16 v38, v15

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_21

    .line 1911
    move/from16 v37, v15

    move/from16 v30, v37

    .line 1916
    :cond_20
    :goto_11
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v32, v37

    .line 1917
    const/16 v37, 0x0

    move/from16 v33, v37

    :goto_12
    move/from16 v37, v33

    move/from16 v38, v32

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_22

    .line 1918
    move-object/from16 v37, v2

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    move/from16 v39, v33

    invoke-virtual/range {v38 .. v39}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/view/View;

    move/from16 v39, v30

    move-object/from16 v40, v17

    move/from16 v41, v19

    invoke-direct/range {v37 .. v41}, Landroid/support/v7/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v37

    move/from16 v30, v37

    .line 1917
    add-int/lit8 v33, v33, 0x1

    goto :goto_12

    .line 1912
    :cond_21
    move/from16 v37, v31

    move/from16 v38, v16

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_20

    .line 1913
    move/from16 v37, v30

    move/from16 v38, v31

    move/from16 v39, v16

    sub-int v38, v38, v39

    sub-int v37, v37, v38

    move/from16 v30, v37

    goto :goto_11

    .line 1922
    :cond_22
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->clear()V

    .line 1923
    return-void

    .line 1803
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 30

    .prologue
    .line 1572
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    const/16 v22, 0x0

    move/from16 v5, v22

    .line 1573
    const/16 v22, 0x0

    move/from16 v6, v22

    .line 1574
    const/16 v22, 0x0

    move/from16 v7, v22

    .line 1576
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTempMargins:[I

    move-object/from16 v22, v0

    move-object/from16 v8, v22

    .line 1579
    move-object/from16 v22, v2

    invoke-static/range {v22 .. v22}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 1580
    const/16 v22, 0x1

    move/from16 v9, v22

    .line 1581
    const/16 v22, 0x0

    move/from16 v10, v22

    .line 1589
    :goto_0
    const/16 v22, 0x0

    move/from16 v11, v22

    .line 1590
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 1591
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v23, v0

    move/from16 v24, v3

    move/from16 v25, v5

    move/from16 v26, v4

    const/16 v27, 0x0

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mMaxButtonHeight:I

    move/from16 v28, v0

    invoke-direct/range {v22 .. v28}, Landroid/support/v7/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1593
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v22

    move-object/from16 v23, v2

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/support/v7/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v11, v22

    .line 1594
    move/from16 v22, v6

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v23

    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v25, v0

    .line 1595
    invoke-direct/range {v24 .. v25}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v24

    add-int v23, v23, v24

    .line 1594
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v6, v22

    .line 1596
    move/from16 v22, v7

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v23, v0

    .line 1597
    invoke-static/range {v23 .. v23}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v23

    .line 1596
    invoke-static/range {v22 .. v23}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    move/from16 v7, v22

    .line 1600
    :cond_0
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 1601
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v23, v0

    move/from16 v24, v3

    move/from16 v25, v5

    move/from16 v26, v4

    const/16 v27, 0x0

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mMaxButtonHeight:I

    move/from16 v28, v0

    invoke-direct/range {v22 .. v28}, Landroid/support/v7/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1603
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v22

    move-object/from16 v23, v2

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v24, v0

    .line 1604
    invoke-direct/range {v23 .. v24}, Landroid/support/v7/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v11, v22

    .line 1605
    move/from16 v22, v6

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v23

    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v25, v0

    .line 1606
    invoke-direct/range {v24 .. v25}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v24

    add-int v23, v23, v24

    .line 1605
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v6, v22

    .line 1607
    move/from16 v22, v7

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v23, v0

    .line 1608
    invoke-static/range {v23 .. v23}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v23

    .line 1607
    invoke-static/range {v22 .. v23}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    move/from16 v7, v22

    .line 1611
    :cond_1
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v22

    move/from16 v12, v22

    .line 1612
    move/from16 v22, v5

    move/from16 v23, v12

    move/from16 v24, v11

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v5, v22

    .line 1613
    move-object/from16 v22, v8

    move/from16 v23, v9

    const/16 v24, 0x0

    move/from16 v25, v12

    move/from16 v26, v11

    sub-int v25, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    move-result v24

    aput v24, v22, v23

    .line 1615
    const/16 v22, 0x0

    move/from16 v13, v22

    .line 1616
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 1617
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v23, v0

    move/from16 v24, v3

    move/from16 v25, v5

    move/from16 v26, v4

    const/16 v27, 0x0

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mMaxButtonHeight:I

    move/from16 v28, v0

    invoke-direct/range {v22 .. v28}, Landroid/support/v7/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1619
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v22

    move-object/from16 v23, v2

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/support/v7/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v13, v22

    .line 1620
    move/from16 v22, v6

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/support/v7/widget/ActionMenuView;->getMeasuredHeight()I

    move-result v23

    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v25, v0

    .line 1621
    invoke-direct/range {v24 .. v25}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v24

    add-int v23, v23, v24

    .line 1620
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v6, v22

    .line 1622
    move/from16 v22, v7

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v23, v0

    .line 1623
    invoke-static/range {v23 .. v23}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v23

    .line 1622
    invoke-static/range {v22 .. v23}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    move/from16 v7, v22

    .line 1626
    :cond_2
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v22

    move/from16 v14, v22

    .line 1627
    move/from16 v22, v5

    move/from16 v23, v14

    move/from16 v24, v13

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v5, v22

    .line 1628
    move-object/from16 v22, v8

    move/from16 v23, v10

    const/16 v24, 0x0

    move/from16 v25, v14

    move/from16 v26, v13

    sub-int v25, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    move-result v24

    aput v24, v22, v23

    .line 1630
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 1631
    move/from16 v22, v5

    move-object/from16 v23, v2

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v24, v0

    move/from16 v25, v3

    move/from16 v26, v5

    move/from16 v27, v4

    const/16 v28, 0x0

    move-object/from16 v29, v8

    invoke-direct/range {v23 .. v29}, Landroid/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v5, v22

    .line 1633
    move/from16 v22, v6

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v25, v0

    .line 1634
    invoke-direct/range {v24 .. v25}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v24

    add-int v23, v23, v24

    .line 1633
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v6, v22

    .line 1635
    move/from16 v22, v7

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v23, v0

    .line 1636
    invoke-static/range {v23 .. v23}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v23

    .line 1635
    invoke-static/range {v22 .. v23}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    move/from16 v7, v22

    .line 1639
    :cond_3
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 1640
    move/from16 v22, v5

    move-object/from16 v23, v2

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move/from16 v25, v3

    move/from16 v26, v5

    move/from16 v27, v4

    const/16 v28, 0x0

    move-object/from16 v29, v8

    invoke-direct/range {v23 .. v29}, Landroid/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v5, v22

    .line 1642
    move/from16 v22, v6

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v23

    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    .line 1643
    invoke-direct/range {v24 .. v25}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v24

    add-int v23, v23, v24

    .line 1642
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v6, v22

    .line 1644
    move/from16 v22, v7

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    .line 1645
    invoke-static/range {v23 .. v23}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v23

    .line 1644
    invoke-static/range {v22 .. v23}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    move/from16 v7, v22

    .line 1648
    :cond_4
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v22

    move/from16 v15, v22

    .line 1649
    const/16 v22, 0x0

    move/from16 v16, v22

    :goto_1
    move/from16 v22, v16

    move/from16 v23, v15

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_8

    .line 1650
    move-object/from16 v22, v2

    move/from16 v23, v16

    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v17, v22

    .line 1651
    move-object/from16 v22, v17

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object/from16 v18, v22

    .line 1652
    move-object/from16 v22, v18

    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    move/from16 v22, v0

    if-nez v22, :cond_5

    move-object/from16 v22, v2

    move-object/from16 v23, v17

    invoke-direct/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 1649
    :cond_5
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 1583
    :cond_6
    const/16 v22, 0x0

    move/from16 v9, v22

    .line 1584
    const/16 v22, 0x1

    move/from16 v10, v22

    goto/16 :goto_0

    .line 1657
    :cond_7
    move/from16 v22, v5

    move-object/from16 v23, v2

    move-object/from16 v24, v17

    move/from16 v25, v3

    move/from16 v26, v5

    move/from16 v27, v4

    const/16 v28, 0x0

    move-object/from16 v29, v8

    invoke-direct/range {v23 .. v29}, Landroid/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v5, v22

    .line 1659
    move/from16 v22, v6

    move-object/from16 v23, v17

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    move-object/from16 v24, v2

    move-object/from16 v25, v17

    invoke-direct/range {v24 .. v25}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v24

    add-int v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v6, v22

    .line 1660
    move/from16 v22, v7

    move-object/from16 v23, v17

    .line 1661
    invoke-static/range {v23 .. v23}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v23

    .line 1660
    invoke-static/range {v22 .. v23}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    move/from16 v7, v22

    goto :goto_2

    .line 1664
    :cond_8
    const/16 v22, 0x0

    move/from16 v16, v22

    .line 1665
    const/16 v22, 0x0

    move/from16 v17, v22

    .line 1666
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    move/from16 v22, v0

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v18, v22

    .line 1667
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    move/from16 v22, v0

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v19, v22

    .line 1668
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 1669
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move/from16 v24, v3

    move/from16 v25, v5

    move/from16 v26, v19

    add-int v25, v25, v26

    move/from16 v26, v4

    move/from16 v27, v18

    move-object/from16 v28, v8

    invoke-direct/range {v22 .. v28}, Landroid/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v22

    move/from16 v16, v22

    .line 1672
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v22

    move-object/from16 v23, v2

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/support/v7/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v16, v22

    .line 1673
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v22

    move-object/from16 v23, v2

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v17, v22

    .line 1674
    move/from16 v22, v7

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    .line 1675
    invoke-static/range {v23 .. v23}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v23

    .line 1674
    invoke-static/range {v22 .. v23}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    move/from16 v7, v22

    .line 1677
    :cond_9
    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/support/v7/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 1678
    move/from16 v22, v16

    move-object/from16 v23, v2

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move/from16 v25, v3

    move/from16 v26, v5

    move/from16 v27, v19

    add-int v26, v26, v27

    move/from16 v27, v4

    move/from16 v28, v17

    move/from16 v29, v18

    add-int v28, v28, v29

    move-object/from16 v29, v8

    invoke-direct/range {v23 .. v29}, Landroid/support/v7/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v23

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v16, v22

    .line 1682
    move/from16 v22, v17

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v23

    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    .line 1683
    invoke-direct/range {v24 .. v25}, Landroid/support/v7/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v24

    add-int v23, v23, v24

    add-int v22, v22, v23

    move/from16 v17, v22

    .line 1684
    move/from16 v22, v7

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v23, v0

    .line 1685
    invoke-static/range {v23 .. v23}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v23

    .line 1684
    invoke-static/range {v22 .. v23}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v22

    move/from16 v7, v22

    .line 1688
    :cond_a
    move/from16 v22, v5

    move/from16 v23, v16

    add-int v22, v22, v23

    move/from16 v5, v22

    .line 1689
    move/from16 v22, v6

    move/from16 v23, v17

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v6, v22

    .line 1693
    move/from16 v22, v5

    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v23

    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v24

    add-int v23, v23, v24

    add-int v22, v22, v23

    move/from16 v5, v22

    .line 1694
    move/from16 v22, v6

    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v23

    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v24

    add-int v23, v23, v24

    add-int v22, v22, v23

    move/from16 v6, v22

    .line 1696
    move/from16 v22, v5

    move-object/from16 v23, v2

    .line 1697
    invoke-virtual/range {v23 .. v23}, Landroid/support/v7/widget/Toolbar;->getSuggestedMinimumWidth()I

    move-result v23

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v23, v3

    move/from16 v24, v7

    const/high16 v25, -0x1000000

    and-int v24, v24, v25

    .line 1696
    invoke-static/range {v22 .. v24}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v22

    move/from16 v20, v22

    .line 1699
    move/from16 v22, v6

    move-object/from16 v23, v2

    .line 1700
    invoke-virtual/range {v23 .. v23}, Landroid/support/v7/widget/Toolbar;->getSuggestedMinimumHeight()I

    move-result v23

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v23, v4

    move/from16 v24, v7

    const/16 v25, 0x10

    shl-int/lit8 v24, v24, 0x10

    .line 1699
    invoke-static/range {v22 .. v24}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v22

    move/from16 v21, v22

    .line 1703
    move-object/from16 v22, v2

    move/from16 v23, v20

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v24}, Landroid/support/v7/widget/Toolbar;->shouldCollapse()Z

    move-result v24

    if-eqz v24, :cond_b

    const/16 v24, 0x0

    :goto_3
    invoke-virtual/range {v22 .. v24}, Landroid/support/v7/widget/Toolbar;->setMeasuredDimension(II)V

    .line 1704
    return-void

    .line 1703
    :cond_b
    move/from16 v24, v21

    goto :goto_3
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7

    .prologue
    .line 1424
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    instance-of v5, v5, Landroid/support/v7/widget/Toolbar$SavedState;

    if-nez v5, :cond_0

    .line 1425
    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1443
    :goto_0
    return-void

    .line 1429
    :cond_0
    move-object v5, v1

    check-cast v5, Landroid/support/v7/widget/Toolbar$SavedState;

    move-object v2, v5

    .line 1430
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v6}, Landroid/support/v7/widget/Toolbar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v6

    invoke-super {v5, v6}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1432
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v5}, Landroid/support/v7/widget/ActionMenuView;->peekMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v5

    :goto_1
    move-object v3, v5

    .line 1433
    move-object v5, v2

    iget v5, v5, Landroid/support/v7/widget/Toolbar$SavedState;->expandedMenuItemId:I

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v5, :cond_1

    move-object v5, v3

    if-eqz v5, :cond_1

    .line 1434
    move-object v5, v3

    move-object v6, v2

    iget v6, v6, Landroid/support/v7/widget/Toolbar$SavedState;->expandedMenuItemId:I

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    move-object v4, v5

    .line 1435
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 1436
    move-object v5, v4

    invoke-static {v5}, Landroid/support/v4/view/MenuItemCompat;->expandActionView(Landroid/view/MenuItem;)Z

    move-result v5

    .line 1440
    :cond_1
    move-object v5, v2

    iget-boolean v5, v5, Landroid/support/v7/widget/Toolbar$SavedState;->isOverflowOpen:Z

    if-eqz v5, :cond_2

    .line 1441
    move-object v5, v0

    invoke-direct {v5}, Landroid/support/v7/widget/Toolbar;->postShowOverflowMenu()V

    .line 1443
    :cond_2
    goto :goto_0

    .line 1432
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 5

    .prologue
    .line 484
    move-object v0, p0

    move v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 485
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 488
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/Toolbar;->ensureContentInsets()V

    .line 489
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    move v3, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RtlSpacingHelper;->setDirection(Z)V

    .line 490
    return-void

    .line 489
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 1412
    move-object v0, p0

    new-instance v2, Landroid/support/v7/widget/Toolbar$SavedState;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-super {v4}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/widget/Toolbar$SavedState;-><init>(Landroid/os/Parcelable;)V

    move-object v1, v2

    .line 1414
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v2, :cond_0

    .line 1415
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/Toolbar$SavedState;->expandedMenuItemId:I

    .line 1418
    :cond_0
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v3

    iput-boolean v3, v2, Landroid/support/v7/widget/Toolbar$SavedState;->isOverflowOpen:Z

    .line 1419
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    .line 1463
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-static {v4}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v4

    move v2, v4

    .line 1464
    move v4, v2

    if-nez v4, :cond_0

    .line 1465
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v7/widget/Toolbar;->mEatingTouch:Z

    .line 1468
    :cond_0
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/widget/Toolbar;->mEatingTouch:Z

    if-nez v4, :cond_1

    .line 1469
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    move v3, v4

    .line 1470
    move v4, v2

    if-nez v4, :cond_1

    move v4, v3

    if-nez v4, :cond_1

    .line 1471
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v7/widget/Toolbar;->mEatingTouch:Z

    .line 1475
    :cond_1
    move v4, v2

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    move v4, v2

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 1476
    :cond_2
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v7/widget/Toolbar;->mEatingTouch:Z

    .line 1479
    :cond_3
    const/4 v4, 0x1

    move v0, v4

    return v0
.end method

.method removeChildrenForExpandedActionView()V
    .locals 7

    .prologue
    .line 2121
    move-object v0, p0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v5

    move v1, v5

    .line 2123
    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v2, v5

    :goto_0
    move v5, v2

    if-ltz v5, :cond_1

    .line 2124
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v3, v5

    .line 2125
    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-object v4, v5

    .line 2126
    move-object v5, v4

    iget v5, v5, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eq v5, v6, :cond_0

    .line 2127
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/Toolbar;->removeViewAt(I)V

    .line 2128
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 2123
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2131
    :cond_1
    return-void
.end method

.method public setCollapsible(Z)V
    .locals 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 2153
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/Toolbar;->mCollapsible:Z

    .line 2154
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 2155
    return-void
.end method

.method public setContentInsetEndWithActions(I)V
    .locals 4

    .prologue
    .line 1287
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-gez v2, :cond_0

    .line 1288
    const/high16 v2, -0x80000000

    move v1, v2

    .line 1290
    :cond_0
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/Toolbar;->mContentInsetEndWithActions:I

    if-eq v2, v3, :cond_1

    .line 1291
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/Toolbar;->mContentInsetEndWithActions:I

    .line 1292
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1293
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 1296
    :cond_1
    return-void
.end method

.method public setContentInsetStartWithNavigation(I)V
    .locals 4

    .prologue
    .line 1245
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-gez v2, :cond_0

    .line 1246
    const/high16 v2, -0x80000000

    move v1, v2

    .line 1248
    :cond_0
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/Toolbar;->mContentInsetStartWithNavigation:I

    if-eq v2, v3, :cond_1

    .line 1249
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/Toolbar;->mContentInsetStartWithNavigation:I

    .line 1250
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1251
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 1254
    :cond_1
    return-void
.end method

.method public setContentInsetsAbsolute(II)V
    .locals 6

    .prologue
    .line 1169
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/widget/Toolbar;->ensureContentInsets()V

    .line 1170
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RtlSpacingHelper;->setAbsolute(II)V

    .line 1171
    return-void
.end method

.method public setContentInsetsRelative(II)V
    .locals 6

    .prologue
    .line 1106
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/widget/Toolbar;->ensureContentInsets()V

    .line 1107
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mContentInsets:Landroid/support/v7/widget/RtlSpacingHelper;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RtlSpacingHelper;->setRelative(II)V

    .line 1108
    return-void
.end method

.method public setLogo(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 502
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 503
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .prologue
    .line 622
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_2

    .line 623
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/Toolbar;->ensureLogoView()V

    .line 624
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v2, v3}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 625
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 631
    :cond_0
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 632
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 634
    :cond_1
    return-void

    .line 627
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v2, v3}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 628
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 629
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public setLogoDescription(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 656
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 657
    return-void
.end method

.method public setLogoDescription(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 668
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 669
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/Toolbar;->ensureLogoView()V

    .line 671
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 672
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 674
    :cond_1
    return-void
.end method

.method public setMenu(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/widget/ActionMenuPresenter;)V
    .locals 9
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 548
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-nez v4, :cond_0

    .line 580
    :goto_0
    return-void

    .line 552
    :cond_0
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/Toolbar;->ensureMenuView()V

    .line 553
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v4}, Landroid/support/v7/widget/ActionMenuView;->peekMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v4

    move-object v3, v4

    .line 554
    move-object v4, v3

    move-object v5, v1

    if-ne v4, v5, :cond_1

    .line 555
    goto :goto_0

    .line 558
    :cond_1
    move-object v4, v3

    if-eqz v4, :cond_2

    .line 559
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/Toolbar;->mOuterActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v4, v5}, Landroid/support/v7/view/menu/MenuBuilder;->removeMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    .line 560
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v4, v5}, Landroid/support/v7/view/menu/MenuBuilder;->removeMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    .line 563
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v4, :cond_3

    .line 564
    move-object v4, v0

    new-instance v5, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroid/support/v7/widget/Toolbar;)V

    iput-object v5, v4, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 567
    :cond_3
    move-object v4, v2

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 568
    move-object v4, v1

    if-eqz v4, :cond_4

    .line 569
    move-object v4, v1

    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 570
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 577
    :goto_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/Toolbar;->mPopupTheme:I

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ActionMenuView;->setPopupTheme(I)V

    .line 578
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ActionMenuView;->setPresenter(Landroid/support/v7/widget/ActionMenuPresenter;)V

    .line 579
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroid/support/v7/widget/Toolbar;->mOuterActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 580
    goto :goto_0

    .line 572
    :cond_4
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 573
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 574
    move-object v4, v2

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 575
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mExpandedMenuPresenter:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    goto :goto_1
.end method

.method public setMenuCallbacks(Landroid/support/v7/view/menu/MenuPresenter$Callback;Landroid/support/v7/view/menu/MenuBuilder$Callback;)V
    .locals 6
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 2163
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/widget/Toolbar;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .line 2164
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v7/widget/Toolbar;->mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    .line 2165
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v3, :cond_0

    .line 2166
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/ActionMenuView;->setMenuCallbacks(Landroid/support/v7/view/menu/MenuPresenter$Callback;Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 2168
    :cond_0
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 904
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 905
    return-void

    .line 904
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 918
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 919
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/Toolbar;->ensureNavButtonView()V

    .line 921
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    .line 922
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 924
    :cond_1
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 941
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 942
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 959
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_2

    .line 960
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/Toolbar;->ensureNavButtonView()V

    .line 961
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v2, v3}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 962
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 968
    :cond_0
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    .line 969
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 971
    :cond_1
    return-void

    .line 964
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v2, v3}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 965
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 966
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 4

    .prologue
    .line 995
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/Toolbar;->ensureNavButtonView()V

    .line 996
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 997
    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;)V
    .locals 4

    .prologue
    .line 1084
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/Toolbar;->mOnMenuItemClickListener:Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;

    .line 1085
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1018
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/Toolbar;->ensureMenu()V

    .line 1019
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActionMenuView;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1020
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 8
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 355
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/Toolbar;->mPopupTheme:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 356
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/Toolbar;->mPopupTheme:I

    .line 357
    move v2, v1

    if-nez v2, :cond_1

    .line 358
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    move-object v2, v0

    new-instance v3, Landroid/view/ContextThemeWrapper;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    move v6, v1

    invoke-direct {v4, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, v2, Landroid/support/v7/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public setSubtitle(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 796
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 797
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 8

    .prologue
    .line 807
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 808
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 809
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v2, v3

    .line 810
    move-object v3, v0

    new-instance v4, Landroid/support/v7/widget/AppCompatTextView;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 811
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->setSingleLine()V

    .line 812
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 813
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleTextAppearance:I

    if-eqz v3, :cond_0

    .line 814
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object v4, v2

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/Toolbar;->mSubtitleTextAppearance:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 816
    :cond_0
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleTextColor:I

    if-eqz v3, :cond_1

    .line 817
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/Toolbar;->mSubtitleTextColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 820
    :cond_1
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {v3, v4}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 821
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 827
    :cond_2
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 828
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 830
    :cond_3
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    .line 831
    return-void

    .line 823
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {v3, v4}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 824
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 825
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public setSubtitleTextAppearance(Landroid/content/Context;I)V
    .locals 6
    .param p2    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 849
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleTextAppearance:I

    .line 850
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 851
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 853
    :cond_0
    return-void
.end method

.method public setSubtitleTextColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 873
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/Toolbar;->mSubtitleTextColor:I

    .line 874
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 875
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 877
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 741
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 742
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 8

    .prologue
    .line 753
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 754
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 755
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v2, v3

    .line 756
    move-object v3, v0

    new-instance v4, Landroid/support/v7/widget/AppCompatTextView;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 757
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->setSingleLine()V

    .line 758
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 759
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/Toolbar;->mTitleTextAppearance:I

    if-eqz v3, :cond_0

    .line 760
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object v4, v2

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/Toolbar;->mTitleTextAppearance:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 762
    :cond_0
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/Toolbar;->mTitleTextColor:I

    if-eqz v3, :cond_1

    .line 763
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/Toolbar;->mTitleTextColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 766
    :cond_1
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v3, v4}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 767
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 773
    :cond_2
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 774
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 776
    :cond_3
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    .line 777
    return-void

    .line 769
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v3, v4}, Landroid/support/v7/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 770
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 771
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public setTitleMargin(IIII)V
    .locals 7

    .prologue
    .line 388
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    .line 389
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    .line 390
    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    .line 391
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    .line 393
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 394
    return-void
.end method

.method public setTitleMarginBottom(I)V
    .locals 4

    .prologue
    .line 479
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/Toolbar;->mTitleMarginBottom:I

    .line 480
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 481
    return-void
.end method

.method public setTitleMarginEnd(I)V
    .locals 4

    .prologue
    .line 457
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/Toolbar;->mTitleMarginEnd:I

    .line 459
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 460
    return-void
.end method

.method public setTitleMarginStart(I)V
    .locals 4

    .prologue
    .line 413
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/Toolbar;->mTitleMarginStart:I

    .line 415
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 416
    return-void
.end method

.method public setTitleMarginTop(I)V
    .locals 4

    .prologue
    .line 435
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/Toolbar;->mTitleMarginTop:I

    .line 437
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 438
    return-void
.end method

.method public setTitleTextAppearance(Landroid/content/Context;I)V
    .locals 6
    .param p2    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 838
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/v7/widget/Toolbar;->mTitleTextAppearance:I

    .line 839
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 840
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 842
    :cond_0
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 861
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/Toolbar;->mTitleTextColor:I

    .line 862
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 863
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 865
    :cond_0
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 2

    .prologue
    .line 533
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->showOverflowMenu()Z

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
