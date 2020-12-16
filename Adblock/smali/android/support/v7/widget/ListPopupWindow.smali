.class public Landroid/support/v7/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/support/v7/view/menu/ShowableListMenu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;,
        Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;,
        Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;,
        Landroid/support/v7/widget/ListPopupWindow$ListSelectorHider;,
        Landroid/support/v7/widget/ListPopupWindow$PopupDataSetObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final EXPAND_LIST_TIMEOUT:I = 0xfa

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field public static final MATCH_PARENT:I = -0x1

.field public static final POSITION_PROMPT_ABOVE:I = 0x0

.field public static final POSITION_PROMPT_BELOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ListPopupWindow"

.field public static final WRAP_CONTENT:I = -0x2

.field private static sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;

.field private static sGetMaxAvailableHeightMethod:Ljava/lang/reflect/Method;

.field private static sSetEpicenterBoundsMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDropDownAlwaysVisible:Z

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownGravity:I

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field mDropDownList:Landroid/support/v7/widget/DropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownVerticalOffsetSet:Z

.field private mDropDownWidth:I

.field private mDropDownWindowLayoutType:I

.field private mEpicenterBounds:Landroid/graphics/Rect;

.field private mForceIgnoreOutsideTouch:Z

.field final mHandler:Landroid/os/Handler;

.field private final mHideSelector:Landroid/support/v7/widget/ListPopupWindow$ListSelectorHider;

.field private mIsAnimatedFromAnchor:Z

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field mListItemExpandMaximum:I

.field private mModal:Z

.field private mObserver:Landroid/database/DataSetObserver;

.field mPopup:Landroid/widget/PopupWindow;

.field private mPromptPosition:I

.field private mPromptView:Landroid/view/View;

.field final mResizePopupRunnable:Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;

.field private final mScrollListener:Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTouchInterceptor:Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 84
    :try_start_0
    const-class v1, Landroid/widget/PopupWindow;

    const-string v2, "setClipToScreenEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/v7/widget/ListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    :try_start_1
    const-class v1, Landroid/widget/PopupWindow;

    const-string v2, "getMaxAvailableHeight"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-class v6, Landroid/view/View;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/v7/widget/ListPopupWindow;->sGetMaxAvailableHeightMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    :goto_1
    :try_start_2
    const-class v1, Landroid/widget/PopupWindow;

    const-string v2, "setEpicenterBounds"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-class v6, Landroid/graphics/Rect;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/v7/widget/ListPopupWindow;->sSetEpicenterBoundsMethod:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    .line 102
    :goto_2
    return-void

    .line 86
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 87
    const-string v1, "ListPopupWindow"

    const-string v2, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 92
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 93
    const-string v1, "ListPopupWindow"

    const-string v2, "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 99
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 100
    const-string v1, "ListPopupWindow"

    const-string v2, "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 216
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    sget v5, Landroid/support/v7/appcompat/R$attr;->listPopupWindowStyle:I

    invoke-direct {v2, v3, v4, v5}, Landroid/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 217
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 227
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Landroid/support/v7/appcompat/R$attr;->listPopupWindowStyle:I

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 228
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    .line 240
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 241
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 14
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
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
    .line 253
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 108
    move-object v6, v0

    const/4 v7, -0x2

    iput v7, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    .line 109
    move-object v6, v0

    const/4 v7, -0x2

    iput v7, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    .line 112
    move-object v6, v0

    const/16 v7, 0x3ea

    iput v7, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    .line 114
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/support/v7/widget/ListPopupWindow;->mIsAnimatedFromAnchor:Z

    .line 116
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownGravity:I

    .line 118
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 119
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 120
    move-object v6, v0

    const v7, 0x7fffffff

    iput v7, v6, Landroid/support/v7/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 123
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroid/support/v7/widget/ListPopupWindow;->mPromptPosition:I

    .line 134
    move-object v6, v0

    new-instance v7, Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    invoke-direct {v8, v9}, Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Landroid/support/v7/widget/ListPopupWindow;)V

    iput-object v7, v6, Landroid/support/v7/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;

    .line 135
    move-object v6, v0

    new-instance v7, Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    invoke-direct {v8, v9}, Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Landroid/support/v7/widget/ListPopupWindow;)V

    iput-object v7, v6, Landroid/support/v7/widget/ListPopupWindow;->mTouchInterceptor:Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;

    .line 136
    move-object v6, v0

    new-instance v7, Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    invoke-direct {v8, v9}, Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;-><init>(Landroid/support/v7/widget/ListPopupWindow;)V

    iput-object v7, v6, Landroid/support/v7/widget/ListPopupWindow;->mScrollListener:Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;

    .line 137
    move-object v6, v0

    new-instance v7, Landroid/support/v7/widget/ListPopupWindow$ListSelectorHider;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    invoke-direct {v8, v9}, Landroid/support/v7/widget/ListPopupWindow$ListSelectorHider;-><init>(Landroid/support/v7/widget/ListPopupWindow;)V

    iput-object v7, v6, Landroid/support/v7/widget/ListPopupWindow;->mHideSelector:Landroid/support/v7/widget/ListPopupWindow$ListSelectorHider;

    .line 142
    move-object v6, v0

    new-instance v7, Landroid/graphics/Rect;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v6, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 254
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroid/support/v7/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 255
    move-object v6, v0

    new-instance v7, Landroid/os/Handler;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v1

    invoke-virtual {v9}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v7, v6, Landroid/support/v7/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    .line 257
    move-object v6, v1

    move-object v7, v2

    sget-object v8, Landroid/support/v7/appcompat/R$styleable;->ListPopupWindow:[I

    move v9, v3

    move v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    move-object v5, v6

    .line 259
    move-object v6, v0

    move-object v7, v5

    sget v8, Landroid/support/v7/appcompat/R$styleable;->ListPopupWindow_android_dropDownHorizontalOffset:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 261
    move-object v6, v0

    move-object v7, v5

    sget v8, Landroid/support/v7/appcompat/R$styleable;->ListPopupWindow_android_dropDownVerticalOffset:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 263
    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    if-eqz v6, :cond_0

    .line 264
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 266
    :cond_0
    move-object v6, v5

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 268
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_1

    .line 269
    move-object v6, v0

    new-instance v7, Landroid/support/v7/widget/AppCompatPopupWindow;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v1

    move-object v10, v2

    move v11, v3

    move v12, v4

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/support/v7/widget/AppCompatPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v7, v6, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 273
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 274
    return-void

    .line 271
    :cond_1
    move-object v6, v0

    new-instance v7, Landroid/support/v7/widget/AppCompatPopupWindow;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v1

    move-object v10, v2

    move v11, v3

    invoke-direct {v8, v9, v10, v11}, Landroid/support/v7/widget/AppCompatPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v7, v6, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    goto :goto_0
.end method

.method private buildDropDown()I
    .locals 18

    .prologue
    .line 1123
    move-object/from16 v0, p0

    const/4 v11, 0x0

    move v2, v11

    .line 1125
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    if-nez v11, :cond_8

    .line 1126
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    move-object v3, v11

    .line 1134
    move-object v11, v0

    new-instance v12, Landroid/support/v7/widget/ListPopupWindow$2;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v0

    invoke-direct {v13, v14}, Landroid/support/v7/widget/ListPopupWindow$2;-><init>(Landroid/support/v7/widget/ListPopupWindow;)V

    iput-object v12, v11, Landroid/support/v7/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    .line 1145
    move-object v11, v0

    move-object v12, v0

    move-object v13, v3

    move-object v14, v0

    iget-boolean v14, v14, Landroid/support/v7/widget/ListPopupWindow;->mModal:Z

    if-nez v14, :cond_6

    const/4 v14, 0x1

    :goto_0
    invoke-virtual {v12, v13, v14}, Landroid/support/v7/widget/ListPopupWindow;->createDropDownListView(Landroid/content/Context;Z)Landroid/support/v7/widget/DropDownListView;

    move-result-object v12

    iput-object v12, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    .line 1146
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_0

    .line 1147
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1149
    :cond_0
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1150
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1151
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/DropDownListView;->setFocusable(Z)V

    .line 1152
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/DropDownListView;->setFocusableInTouchMode(Z)V

    .line 1153
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    new-instance v12, Landroid/support/v7/widget/ListPopupWindow$3;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v0

    invoke-direct {v13, v14}, Landroid/support/v7/widget/ListPopupWindow$3;-><init>(Landroid/support/v7/widget/ListPopupWindow;)V

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1171
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ListPopupWindow;->mScrollListener:Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1173
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v11, :cond_1

    .line 1174
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1177
    :cond_1
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    move-object v1, v11

    .line 1179
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    move-object v4, v11

    .line 1180
    move-object v11, v4

    if-eqz v11, :cond_2

    .line 1183
    new-instance v11, Landroid/widget/LinearLayout;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v3

    invoke-direct {v12, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v5, v11

    .line 1184
    move-object v11, v5

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1186
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v12, v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object v6, v11

    .line 1190
    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mPromptPosition:I

    packed-switch v11, :pswitch_data_0

    .line 1202
    const-string v11, "ListPopupWindow"

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid hint position "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v0

    iget v13, v13, Landroid/support/v7/widget/ListPopupWindow;->mPromptPosition:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 1210
    :goto_1
    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    if-ltz v11, :cond_7

    .line 1211
    const/high16 v11, -0x80000000

    move v8, v11

    .line 1212
    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    move v7, v11

    .line 1217
    :goto_2
    move v11, v7

    move v12, v8

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    move v9, v11

    .line 1218
    const/4 v11, 0x0

    move v10, v11

    .line 1219
    move-object v11, v4

    move v12, v9

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/View;->measure(II)V

    .line 1221
    move-object v11, v4

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    move-object v6, v11

    .line 1222
    move-object v11, v4

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    move-object v12, v6

    iget v12, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v11, v12

    move-object v12, v6

    iget v12, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v11, v12

    move v2, v11

    .line 1225
    move-object v11, v5

    move-object v1, v11

    .line 1228
    :cond_2
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v12, v1

    invoke-virtual {v11, v12}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1243
    :cond_3
    :goto_3
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v11}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object v4, v11

    .line 1244
    move-object v11, v4

    if-eqz v11, :cond_9

    .line 1245
    move-object v11, v4

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v11

    .line 1246
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    move v3, v11

    .line 1250
    move-object v11, v0

    iget-boolean v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v11, :cond_4

    .line 1251
    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    neg-int v12, v12

    iput v12, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 1259
    :cond_4
    :goto_4
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 1260
    invoke-virtual {v11}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_a

    const/4 v11, 0x1

    :goto_5
    move v5, v11

    .line 1261
    move-object v11, v0

    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v7/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v12

    move-object v13, v0

    iget v13, v13, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    move v14, v5

    invoke-direct {v11, v12, v13, v14}, Landroid/support/v7/widget/ListPopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v11

    move v6, v11

    .line 1263
    move-object v11, v0

    iget-boolean v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v11, :cond_5

    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_b

    .line 1264
    :cond_5
    move v11, v6

    move v12, v3

    add-int/2addr v11, v12

    move v0, v11

    .line 1296
    :goto_6
    return v0

    .line 1145
    :cond_6
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1192
    :pswitch_0
    move-object v11, v5

    move-object v12, v1

    move-object v13, v6

    invoke-virtual {v11, v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1193
    move-object v11, v5

    move-object v12, v4

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1194
    goto/16 :goto_1

    .line 1197
    :pswitch_1
    move-object v11, v5

    move-object v12, v4

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1198
    move-object v11, v5

    move-object v12, v1

    move-object v13, v6

    invoke-virtual {v11, v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1199
    goto/16 :goto_1

    .line 1214
    :cond_7
    const/4 v11, 0x0

    move v8, v11

    .line 1215
    const/4 v11, 0x0

    move v7, v11

    goto/16 :goto_2

    .line 1230
    :cond_8
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v11}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    move-object v1, v11

    .line 1231
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    move-object v3, v11

    .line 1232
    move-object v11, v3

    if-eqz v11, :cond_3

    .line 1233
    move-object v11, v3

    .line 1234
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    move-object v4, v11

    .line 1235
    move-object v11, v3

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    move-object v12, v4

    iget v12, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v11, v12

    move-object v12, v4

    iget v12, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v11, v12

    move v2, v11

    goto/16 :goto_3

    .line 1254
    :cond_9
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->setEmpty()V

    .line 1255
    const/4 v11, 0x0

    move v3, v11

    goto :goto_4

    .line 1260
    :cond_a
    const/4 v11, 0x0

    goto :goto_5

    .line 1268
    :cond_b
    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    packed-switch v11, :pswitch_data_1

    .line 1282
    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    move v7, v11

    .line 1288
    :goto_7
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    move v12, v7

    const/4 v13, 0x0

    const/4 v14, -0x1

    move v15, v6

    move/from16 v16, v2

    sub-int v15, v15, v16

    const/16 v16, -0x1

    invoke-virtual/range {v11 .. v16}, Landroid/support/v7/widget/DropDownListView;->measureHeightOfChildrenCompat(IIIII)I

    move-result v11

    move v8, v11

    .line 1290
    move v11, v8

    if-lez v11, :cond_c

    .line 1291
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v11}, Landroid/support/v7/widget/DropDownListView;->getPaddingTop()I

    move-result v11

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    .line 1292
    invoke-virtual {v12}, Landroid/support/v7/widget/DropDownListView;->getPaddingBottom()I

    move-result v12

    add-int/2addr v11, v12

    move v9, v11

    .line 1293
    move v11, v2

    move v12, v3

    move v13, v9

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    move v2, v11

    .line 1296
    :cond_c
    move v11, v8

    move v12, v2

    add-int/2addr v11, v12

    move v0, v11

    goto/16 :goto_6

    .line 1270
    :pswitch_2
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 1271
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v13

    sub-int/2addr v11, v12

    const/high16 v12, -0x80000000

    .line 1270
    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    move v7, v11

    .line 1274
    goto :goto_7

    .line 1276
    :pswitch_3
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 1277
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v13

    sub-int/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    .line 1276
    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    move v7, v11

    .line 1280
    goto :goto_7

    .line 1190
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1268
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 12

    .prologue
    .line 1398
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    sget-object v5, Landroid/support/v7/widget/ListPopupWindow;->sGetMaxAvailableHeightMethod:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_0

    .line 1400
    :try_start_0
    sget-object v5, Landroid/support/v7/widget/ListPopupWindow;->sGetMaxAvailableHeightMethod:Ljava/lang/reflect/Method;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v1

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move v10, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x2

    move v10, v3

    .line 1401
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1400
    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    move v0, v5

    .line 1407
    :goto_0
    return v0

    .line 1402
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 1403
    const-string v5, "ListPopupWindow"

    const-string v6, "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1407
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v6, v1

    move v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v5

    move v0, v5

    goto :goto_0
.end method

.method private static isConfirmKey(I)Z
    .locals 3

    .prologue
    .line 1384
    move v0, p0

    move v1, v0

    const/16 v2, 0x42

    if-eq v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0x17

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private removePromptView()V
    .locals 5

    .prologue
    .line 756
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 757
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v1, v3

    .line 758
    move-object v3, v1

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 759
    move-object v3, v1

    check-cast v3, Landroid/view/ViewGroup;

    move-object v2, v3

    .line 760
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 763
    :cond_0
    return-void
.end method

.method private setPopupClipToScreenEnabled(Z)V
    .locals 10

    .prologue
    .line 1388
    move-object v0, p0

    move v1, p1

    sget-object v3, Landroid/support/v7/widget/ListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    .line 1390
    :try_start_0
    sget-object v3, Landroid/support/v7/widget/ListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1395
    :cond_0
    :goto_0
    return-void

    .line 1391
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1392
    const-string v3, "ListPopupWindow"

    const-string v4, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method


# virtual methods
.method public clearListSelection()V
    .locals 4

    .prologue
    .line 815
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    move-object v1, v2

    .line 816
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 818
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/DropDownListView;->setListSelectionHidden(Z)V

    .line 820
    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/v7/widget/DropDownListView;->requestLayout()V

    .line 822
    :cond_0
    return-void
.end method

.method public createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .locals 7

    .prologue
    .line 1107
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/support/v7/widget/ListPopupWindow$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/ListPopupWindow$1;-><init>(Landroid/support/v7/widget/ListPopupWindow;Landroid/view/View;)V

    move-object v0, v2

    return-object v0
.end method

.method createDropDownListView(Landroid/content/Context;Z)Landroid/support/v7/widget/DropDownListView;
    .locals 8
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 919
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    new-instance v3, Landroid/support/v7/widget/DropDownListView;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/v7/widget/DropDownListView;-><init>(Landroid/content/Context;Z)V

    move-object v0, v3

    return-object v0
.end method

.method public dismiss()V
    .locals 3

    .prologue
    .line 739
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 740
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/ListPopupWindow;->removePromptView()V

    .line 741
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 742
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    .line 743
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 744
    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 456
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    move-object v0, v1

    return-object v0
.end method

.method public getAnimationStyle()I
    .locals 2
    .annotation build Landroid/support/annotation/StyleRes;
    .end annotation

    .prologue
    .line 447
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getAnimationStyle()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 419
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 564
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    move v0, v1

    return v0
.end method

.method public getHorizontalOffset()I
    .locals 2

    .prologue
    .line 473
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    move v0, v1

    return v0
.end method

.method public getInputMethodMode()I
    .locals 2

    .prologue
    .line 787
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 915
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    move-object v0, v1

    return-object v0
.end method

.method public getPromptPosition()I
    .locals 2

    .prologue
    .line 318
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mPromptPosition:I

    move v0, v1

    return v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 864
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 865
    const/4 v1, 0x0

    move-object v0, v1

    .line 867
    :goto_0
    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v1}, Landroid/support/v7/widget/DropDownListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public getSelectedItemId()J
    .locals 3

    .prologue
    .line 890
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 891
    const-wide/high16 v1, -0x8000000000000000L

    move-wide v0, v1

    .line 893
    :goto_0
    return-wide v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v1}, Landroid/support/v7/widget/DropDownListView;->getSelectedItemId()J

    move-result-wide v1

    move-wide v0, v1

    goto :goto_0
.end method

.method public getSelectedItemPosition()I
    .locals 2

    .prologue
    .line 877
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 878
    const/4 v1, -0x1

    move v0, v1

    .line 880
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v1}, Landroid/support/v7/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 903
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 904
    const/4 v1, 0x0

    move-object v0, v1

    .line 906
    :goto_0
    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v1}, Landroid/support/v7/widget/DropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public getSoftInputMode()I
    .locals 2

    .prologue
    .line 403
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getSoftInputMode()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getVerticalOffset()I
    .locals 2

    .prologue
    .line 489
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v1, :cond_0

    .line 490
    const/4 v1, 0x0

    move v0, v1

    .line 492
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    move v0, v1

    goto :goto_0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 531
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    move v0, v1

    return v0
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 379
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    move v0, v1

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 3

    .prologue
    .line 837
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isModal()Z
    .locals 2

    .prologue
    .line 341
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mModal:Z

    move v0, v1

    return v0
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    .line 829
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 13
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 944
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 950
    move v10, v1

    const/16 v11, 0x3e

    if-eq v10, v11, :cond_8

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    .line 951
    invoke-virtual {v10}, Landroid/support/v7/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v10

    if-gez v10, :cond_0

    move v10, v1

    .line 952
    invoke-static {v10}, Landroid/support/v7/widget/ListPopupWindow;->isConfirmKey(I)Z

    move-result v10

    if-nez v10, :cond_8

    .line 953
    :cond_0
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v10}, Landroid/support/v7/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v10

    move v3, v10

    .line 956
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v10

    if-nez v10, :cond_4

    const/4 v10, 0x1

    :goto_0
    move v5, v10

    .line 958
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    move-object v6, v10

    .line 961
    const v10, 0x7fffffff

    move v8, v10

    .line 962
    const/high16 v10, -0x80000000

    move v9, v10

    .line 964
    move-object v10, v6

    if-eqz v10, :cond_1

    .line 965
    move-object v10, v6

    invoke-interface {v10}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v10

    move v7, v10

    .line 966
    move v10, v7

    if-eqz v10, :cond_5

    const/4 v10, 0x0

    .line 967
    :goto_1
    move v8, v10

    .line 968
    move v10, v7

    if-eqz v10, :cond_6

    move-object v10, v6

    invoke-interface {v10}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    .line 969
    :goto_2
    move v9, v10

    .line 972
    :cond_1
    move v10, v5

    if-eqz v10, :cond_2

    move v10, v1

    const/16 v11, 0x13

    if-ne v10, v11, :cond_2

    move v10, v3

    move v11, v8

    if-le v10, v11, :cond_3

    :cond_2
    move v10, v5

    if-nez v10, :cond_7

    move v10, v1

    const/16 v11, 0x14

    if-ne v10, v11, :cond_7

    move v10, v3

    move v11, v9

    if-lt v10, v11, :cond_7

    .line 976
    :cond_3
    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v7/widget/ListPopupWindow;->clearListSelection()V

    .line 977
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 978
    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v7/widget/ListPopupWindow;->show()V

    .line 979
    const/4 v10, 0x1

    move v0, v10

    .line 1024
    :goto_3
    return v0

    .line 956
    :cond_4
    const/4 v10, 0x0

    goto :goto_0

    .line 966
    :cond_5
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 967
    invoke-virtual {v10, v11, v12}, Landroid/support/v7/widget/DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v10

    goto :goto_1

    .line 968
    :cond_6
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    move-object v11, v6

    .line 969
    invoke-interface {v11}, Landroid/widget/ListAdapter;->getCount()I

    move-result v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/support/v7/widget/DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v10

    goto :goto_2

    .line 983
    :cond_7
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/DropDownListView;->setListSelectionHidden(Z)V

    .line 986
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    move v11, v1

    move-object v12, v2

    invoke-virtual {v10, v11, v12}, Landroid/support/v7/widget/DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v10

    move v4, v10

    .line 989
    move v10, v4

    if-eqz v10, :cond_9

    .line 992
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 997
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v10}, Landroid/support/v7/widget/DropDownListView;->requestFocusFromTouch()Z

    move-result v10

    .line 998
    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v7/widget/ListPopupWindow;->show()V

    .line 1000
    move v10, v1

    sparse-switch v10, :sswitch_data_0

    .line 1024
    :cond_8
    const/4 v10, 0x0

    move v0, v10

    goto :goto_3

    .line 1007
    :sswitch_0
    const/4 v10, 0x1

    move v0, v10

    goto :goto_3

    .line 1010
    :cond_9
    move v10, v5

    if-eqz v10, :cond_a

    move v10, v1

    const/16 v11, 0x14

    if-ne v10, v11, :cond_a

    .line 1013
    move v10, v3

    move v11, v9

    if-ne v10, v11, :cond_8

    .line 1014
    const/4 v10, 0x1

    move v0, v10

    goto :goto_3

    .line 1016
    :cond_a
    move v10, v5

    if-nez v10, :cond_8

    move v10, v1

    const/16 v11, 0x13

    if-ne v10, v11, :cond_8

    move v10, v3

    move v11, v8

    if-ne v10, v11, :cond_8

    .line 1018
    const/4 v10, 0x1

    move v0, v10

    goto :goto_3

    .line 1000
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1062
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, v1

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1065
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    move-object v3, v5

    .line 1066
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 1067
    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v5

    move-object v4, v5

    .line 1068
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 1069
    move-object v5, v4

    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 1071
    :cond_0
    const/4 v5, 0x1

    move v0, v5

    .line 1083
    :goto_0
    return v0

    .line 1072
    :cond_1
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 1073
    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v5

    move-object v4, v5

    .line 1074
    move-object v5, v4

    if-eqz v5, :cond_2

    .line 1075
    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 1077
    :cond_2
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1078
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/ListPopupWindow;->dismiss()V

    .line 1079
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 1083
    :cond_3
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1038
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v4}, Landroid/support/v7/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v4

    if-ltz v4, :cond_1

    .line 1039
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    move v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    move v3, v4

    .line 1040
    move v4, v3

    if-eqz v4, :cond_0

    move v4, v1

    invoke-static {v4}, Landroid/support/v7/widget/ListPopupWindow;->isConfirmKey(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1043
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/ListPopupWindow;->dismiss()V

    .line 1045
    :cond_0
    move v4, v3

    move v0, v4

    .line 1047
    :goto_0
    return v0

    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public performItemClick(I)Z
    .locals 11

    .prologue
    .line 848
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 849
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v5, :cond_0

    .line 850
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    move-object v2, v5

    .line 851
    move-object v5, v2

    move v6, v1

    move-object v7, v2

    invoke-virtual {v7}, Landroid/support/v7/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v3, v5

    .line 852
    move-object v5, v2

    invoke-virtual {v5}, Landroid/support/v7/widget/DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    move-object v4, v5

    .line 853
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v6, v2

    move-object v7, v3

    move v8, v1

    move-object v9, v4

    move v10, v1

    invoke-interface {v9, v10}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v9

    invoke-interface/range {v5 .. v10}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 855
    :cond_0
    const/4 v5, 0x1

    move v0, v5

    .line 857
    :goto_0
    return v0

    :cond_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public postShow()V
    .locals 3

    .prologue
    .line 632
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .line 633
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 7
    .param p1    # Landroid/widget/ListAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 283
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    if-nez v2, :cond_3

    .line 284
    move-object v2, v0

    new-instance v3, Landroid/support/v7/widget/ListPopupWindow$PopupDataSetObserver;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/v7/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Landroid/support/v7/widget/ListPopupWindow;)V

    iput-object v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    .line 288
    :cond_0
    :goto_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 289
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_1

    .line 290
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 293
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    if-eqz v2, :cond_2

    .line 294
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 296
    :cond_2
    return-void

    .line 285
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    .line 286
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 466
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 467
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 437
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 438
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 428
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 429
    return-void
.end method

.method public setContentWidth(I)V
    .locals 6

    .prologue
    .line 551
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v2, v3

    .line 552
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 553
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v3

    .line 554
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    move v5, v1

    add-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    .line 558
    :goto_0
    return-void

    .line 556
    :cond_0
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ListPopupWindow;->setWidth(I)V

    goto :goto_0
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 369
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 370
    return-void
.end method

.method public setDropDownGravity(I)V
    .locals 4

    .prologue
    .line 524
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mDropDownGravity:I

    .line 525
    return-void
.end method

.method public setEpicenterBounds(Landroid/graphics/Rect;)V
    .locals 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 514
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    .line 515
    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 353
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 354
    return-void
.end method

.method public setHeight(I)V
    .locals 4

    .prologue
    .line 573
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    .line 574
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 4

    .prologue
    .line 482
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 483
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 4

    .prologue
    .line 778
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 779
    return-void
.end method

.method setListItemExpandMax(I)V
    .locals 4

    .prologue
    .line 929
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 930
    return-void
.end method

.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 412
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    .line 413
    return-void
.end method

.method public setModal(Z)V
    .locals 4

    .prologue
    .line 331
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mModal:Z

    .line 332
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 333
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 4
    .param p1    # Landroid/widget/PopupWindow$OnDismissListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 752
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 753
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 4
    .param p1    # Landroid/widget/AdapterView$OnItemClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 597
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 598
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 4
    .param p1    # Landroid/widget/AdapterView$OnItemSelectedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 608
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 609
    return-void
.end method

.method public setPromptPosition(I)V
    .locals 4

    .prologue
    .line 308
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mPromptPosition:I

    .line 309
    return-void
.end method

.method public setPromptView(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 618
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v3

    move v2, v3

    .line 619
    move v3, v2

    if-eqz v3, :cond_0

    .line 620
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/widget/ListPopupWindow;->removePromptView()V

    .line 622
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 623
    move v3, v2

    if-eqz v3, :cond_1

    .line 624
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/ListPopupWindow;->show()V

    .line 626
    :cond_1
    return-void
.end method

.method public setSelection(I)V
    .locals 6

    .prologue
    .line 797
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    move-object v2, v3

    .line 798
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    if-eqz v3, :cond_0

    .line 799
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/DropDownListView;->setListSelectionHidden(Z)V

    .line 800
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/DropDownListView;->setSelection(I)V

    .line 802
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    .line 803
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/DropDownListView;->getChoiceMode()I

    move-result v3

    if-eqz v3, :cond_0

    .line 804
    move-object v3, v2

    move v4, v1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/DropDownListView;->setItemChecked(IZ)V

    .line 808
    :cond_0
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 4

    .prologue
    .line 393
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 394
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 4

    .prologue
    .line 501
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 502
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 503
    return-void
.end method

.method public setWidth(I)V
    .locals 4

    .prologue
    .line 541
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    .line 542
    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 4

    .prologue
    .line 586
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    .line 587
    return-void
.end method

.method public show()V
    .locals 13

    .prologue
    .line 641
    move-object v0, p0

    move-object v6, v0

    invoke-direct {v6}, Landroid/support/v7/widget/ListPopupWindow;->buildDropDown()I

    move-result v6

    move v1, v6

    .line 643
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v6

    move v2, v6

    .line 644
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    invoke-static {v6, v7}, Landroid/support/v4/widget/PopupWindowCompat;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 646
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 648
    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 651
    const/4 v6, -0x1

    move v3, v6

    .line 659
    :goto_0
    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_7

    .line 662
    move v6, v2

    if-eqz v6, :cond_3

    move v6, v1

    :goto_1
    move v4, v6

    .line 663
    move v6, v2

    if-eqz v6, :cond_5

    .line 664
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    const/4 v7, -0x1

    :goto_2
    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 666
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 678
    :goto_3
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v7, :cond_9

    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v7, :cond_9

    const/4 v7, 0x1

    :goto_4
    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 680
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v7

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    move v10, v3

    if-gez v10, :cond_a

    const/4 v10, -0x1

    :goto_5
    move v11, v4

    if-gez v11, :cond_b

    const/4 v11, -0x1

    :goto_6
    invoke-virtual/range {v6 .. v11}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 732
    :cond_0
    :goto_7
    return-void

    .line 652
    :cond_1
    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_2

    .line 653
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    move v3, v6

    goto :goto_0

    .line 655
    :cond_2
    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    move v3, v6

    goto :goto_0

    .line 662
    :cond_3
    const/4 v6, -0x1

    goto :goto_1

    .line 664
    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    .line 668
    :cond_5
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_6

    const/4 v7, -0x1

    :goto_8
    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 670
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_3

    .line 668
    :cond_6
    const/4 v7, 0x0

    goto :goto_8

    .line 672
    :cond_7
    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_8

    .line 673
    move v6, v1

    move v4, v6

    goto :goto_3

    .line 675
    :cond_8
    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    move v4, v6

    goto :goto_3

    .line 678
    :cond_9
    const/4 v7, 0x0

    goto :goto_4

    .line 680
    :cond_a
    move v10, v3

    goto :goto_5

    :cond_b
    move v11, v4

    goto :goto_6

    .line 685
    :cond_c
    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_10

    .line 686
    const/4 v6, -0x1

    move v3, v6

    .line 696
    :goto_9
    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_12

    .line 697
    const/4 v6, -0x1

    move v4, v6

    .line 706
    :goto_a
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 707
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 708
    move-object v6, v0

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/support/v7/widget/ListPopupWindow;->setPopupClipToScreenEnabled(Z)V

    .line 712
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v7, :cond_14

    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v7, :cond_14

    const/4 v7, 0x1

    :goto_b
    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 713
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ListPopupWindow;->mTouchInterceptor:Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 714
    sget-object v6, Landroid/support/v7/widget/ListPopupWindow;->sSetEpicenterBoundsMethod:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_d

    .line 716
    :try_start_0
    sget-object v6, Landroid/support/v7/widget/ListPopupWindow;->sSetEpicenterBoundsMethod:Ljava/lang/reflect/Method;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 721
    :cond_d
    :goto_c
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v7

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    move-object v10, v0

    iget v10, v10, Landroid/support/v7/widget/ListPopupWindow;->mDropDownGravity:I

    invoke-static {v6, v7, v8, v9, v10}, Landroid/support/v4/widget/PopupWindowCompat;->showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    .line 723
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/DropDownListView;->setSelection(I)V

    .line 725
    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mModal:Z

    if-eqz v6, :cond_e

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v6}, Landroid/support/v7/widget/DropDownListView;->isInTouchMode()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 726
    :cond_e
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/ListPopupWindow;->clearListSelection()V

    .line 728
    :cond_f
    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mModal:Z

    if-nez v6, :cond_0

    .line 729
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ListPopupWindow;->mHideSelector:Landroid/support/v7/widget/ListPopupWindow$ListSelectorHider;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v6

    goto/16 :goto_7

    .line 688
    :cond_10
    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_11

    .line 689
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    move v3, v6

    goto/16 :goto_9

    .line 691
    :cond_11
    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I

    move v3, v6

    goto/16 :goto_9

    .line 699
    :cond_12
    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_13

    .line 700
    move v6, v1

    move v4, v6

    goto/16 :goto_a

    .line 702
    :cond_13
    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I

    move v4, v6

    goto/16 :goto_a

    .line 712
    :cond_14
    const/4 v7, 0x0

    goto/16 :goto_b

    .line 717
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 718
    const-string v6, "ListPopupWindow"

    const-string v7, "Could not invoke setEpicenterBounds on PopupWindow"

    move-object v8, v5

    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    goto :goto_c
.end method
