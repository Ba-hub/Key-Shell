.class public Landroid/support/v7/widget/SearchView;
.super Landroid/support/v7/widget/LinearLayoutCompat;
.source "SearchView.java"

# interfaces
.implements Landroid/support/v7/view/CollapsibleActionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;,
        Landroid/support/v7/widget/SearchView$SearchAutoComplete;,
        Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;,
        Landroid/support/v7/widget/SearchView$SavedState;,
        Landroid/support/v7/widget/SearchView$OnSuggestionListener;,
        Landroid/support/v7/widget/SearchView$OnCloseListener;,
        Landroid/support/v7/widget/SearchView$OnQueryTextListener;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field static final HIDDEN_METHOD_INVOKER:Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

.field private static final IME_OPTION_NO_MICROPHONE:Ljava/lang/String; = "nm"

.field static final LOG_TAG:Ljava/lang/String; = "SearchView"


# instance fields
.field private mAppSearchData:Landroid/os/Bundle;

.field private mClearingFocus:Z

.field final mCloseButton:Landroid/widget/ImageView;

.field private final mCollapsedIcon:Landroid/widget/ImageView;

.field private mCollapsedImeOptions:I

.field private final mDefaultQueryHint:Ljava/lang/CharSequence;

.field private final mDropDownAnchor:Landroid/view/View;

.field private mExpandedInActionView:Z

.field final mGoButton:Landroid/widget/ImageView;

.field private mIconified:Z

.field private mIconifiedByDefault:Z

.field private mMaxWidth:I

.field private mOldQueryText:Ljava/lang/CharSequence;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnCloseListener:Landroid/support/v7/widget/SearchView$OnCloseListener;

.field private final mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private final mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnQueryChangeListener:Landroid/support/v7/widget/SearchView$OnQueryTextListener;

.field mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mOnSearchClickListener:Landroid/view/View$OnClickListener;

.field private mOnSuggestionListener:Landroid/support/v7/widget/SearchView$OnSuggestionListener;

.field private final mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryHint:Ljava/lang/CharSequence;

.field private mQueryRefinement:Z

.field private mReleaseCursorRunnable:Ljava/lang/Runnable;

.field final mSearchButton:Landroid/widget/ImageView;

.field private final mSearchEditFrame:Landroid/view/View;

.field private final mSearchHintIcon:Landroid/graphics/drawable/Drawable;

.field private final mSearchPlate:Landroid/view/View;

.field final mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

.field private mSearchSrcTextViewBounds:Landroid/graphics/Rect;

.field private mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

.field mSearchable:Landroid/app/SearchableInfo;

.field private mShowImeRunnable:Ljava/lang/Runnable;

.field private final mSubmitArea:Landroid/view/View;

.field private mSubmitButtonEnabled:Z

.field private final mSuggestionCommitIconResId:I

.field private final mSuggestionRowLayout:I

.field mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

.field private mTemp:[I

.field private mTemp2:[I

.field mTextKeyListener:Landroid/view/View$OnKeyListener;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mTouchDelegate:Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;

.field private final mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

.field private mUserQuery:Ljava/lang/CharSequence;

.field private final mVoiceAppSearchIntent:Landroid/content/Intent;

.field final mVoiceButton:Landroid/widget/ImageView;

.field private mVoiceButtonEnabled:Z

.field private final mVoiceWebSearchIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 181
    new-instance v0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;-><init>()V

    sput-object v0, Landroid/support/v7/widget/SearchView;->HIDDEN_METHOD_INVOKER:Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 288
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 289
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 292
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Landroid/support/v7/appcompat/R$attr;->searchViewStyle:I

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 293
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17

    .prologue
    .line 296
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    move v14, v3

    invoke-direct {v11, v12, v13, v14}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 137
    move-object v11, v0

    new-instance v12, Landroid/graphics/Rect;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    .line 138
    move-object v11, v0

    new-instance v12, Landroid/graphics/Rect;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    .line 139
    move-object v11, v0

    const/4 v12, 0x2

    new-array v12, v12, [I

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mTemp:[I

    .line 140
    move-object v11, v0

    const/4 v12, 0x2

    new-array v12, v12, [I

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mTemp2:[I

    .line 187
    move-object v11, v0

    new-instance v12, Landroid/support/v7/widget/SearchView$1;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v0

    invoke-direct {v13, v14}, Landroid/support/v7/widget/SearchView$1;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    .line 199
    move-object v11, v0

    new-instance v12, Landroid/support/v7/widget/SearchView$2;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v0

    invoke-direct {v13, v14}, Landroid/support/v7/widget/SearchView$2;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    .line 206
    move-object v11, v0

    new-instance v12, Landroid/support/v7/widget/SearchView$3;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v0

    invoke-direct {v13, v14}, Landroid/support/v7/widget/SearchView$3;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    .line 217
    move-object v11, v0

    new-instance v12, Ljava/util/WeakHashMap;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 1027
    move-object v11, v0

    new-instance v12, Landroid/support/v7/widget/SearchView$7;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v0

    invoke-direct {v13, v14}, Landroid/support/v7/widget/SearchView$7;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 1049
    move-object v11, v0

    new-instance v12, Landroid/support/v7/widget/SearchView$8;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v0

    invoke-direct {v13, v14}, Landroid/support/v7/widget/SearchView$8;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    .line 1212
    move-object v11, v0

    new-instance v12, Landroid/support/v7/widget/SearchView$9;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v0

    invoke-direct {v13, v14}, Landroid/support/v7/widget/SearchView$9;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 1454
    move-object v11, v0

    new-instance v12, Landroid/support/v7/widget/SearchView$10;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v0

    invoke-direct {v13, v14}, Landroid/support/v7/widget/SearchView$10;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1466
    move-object v11, v0

    new-instance v12, Landroid/support/v7/widget/SearchView$11;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v0

    invoke-direct {v13, v14}, Landroid/support/v7/widget/SearchView$11;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1756
    move-object v11, v0

    new-instance v12, Landroid/support/v7/widget/SearchView$12;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v0

    invoke-direct {v13, v14}, Landroid/support/v7/widget/SearchView$12;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 298
    move-object v11, v1

    move-object v12, v2

    sget-object v13, Landroid/support/v7/appcompat/R$styleable;->SearchView:[I

    move v14, v3

    const/4 v15, 0x0

    invoke-static {v11, v12, v13, v14, v15}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v11

    move-object v4, v11

    .line 301
    move-object v11, v1

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    move-object v5, v11

    .line 302
    move-object v11, v4

    sget v12, Landroid/support/v7/appcompat/R$styleable;->SearchView_layout:I

    sget v13, Landroid/support/v7/appcompat/R$layout;->abc_search_view:I

    invoke-virtual {v11, v12, v13}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v11

    move v6, v11

    .line 304
    move-object v11, v5

    move v12, v6

    move-object v13, v0

    const/4 v14, 0x1

    invoke-virtual {v11, v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 306
    move-object v11, v0

    move-object v12, v0

    sget v13, Landroid/support/v7/appcompat/R$id;->search_src_text:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    .line 307
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-object v12, v0

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSearchView(Landroid/support/v7/widget/SearchView;)V

    .line 309
    move-object v11, v0

    move-object v12, v0

    sget v13, Landroid/support/v7/appcompat/R$id;->search_edit_frame:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mSearchEditFrame:Landroid/view/View;

    .line 310
    move-object v11, v0

    move-object v12, v0

    sget v13, Landroid/support/v7/appcompat/R$id;->search_plate:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mSearchPlate:Landroid/view/View;

    .line 311
    move-object v11, v0

    move-object v12, v0

    sget v13, Landroid/support/v7/appcompat/R$id;->submit_area:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mSubmitArea:Landroid/view/View;

    .line 312
    move-object v11, v0

    move-object v12, v0

    sget v13, Landroid/support/v7/appcompat/R$id;->search_button:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    .line 313
    move-object v11, v0

    move-object v12, v0

    sget v13, Landroid/support/v7/appcompat/R$id;->search_go_btn:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    .line 314
    move-object v11, v0

    move-object v12, v0

    sget v13, Landroid/support/v7/appcompat/R$id;->search_close_btn:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    .line 315
    move-object v11, v0

    move-object v12, v0

    sget v13, Landroid/support/v7/appcompat/R$id;->search_voice_btn:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    .line 316
    move-object v11, v0

    move-object v12, v0

    sget v13, Landroid/support/v7/appcompat/R$id;->search_mag_icon:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    .line 319
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mSearchPlate:Landroid/view/View;

    move-object v12, v4

    sget v13, Landroid/support/v7/appcompat/R$styleable;->SearchView_queryBackground:I

    .line 320
    invoke-virtual {v12, v13}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 319
    invoke-static {v11, v12}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 321
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mSubmitArea:Landroid/view/View;

    move-object v12, v4

    sget v13, Landroid/support/v7/appcompat/R$styleable;->SearchView_submitBackground:I

    .line 322
    invoke-virtual {v12, v13}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 321
    invoke-static {v11, v12}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 323
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    move-object v12, v4

    sget v13, Landroid/support/v7/appcompat/R$styleable;->SearchView_searchIcon:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 324
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    move-object v12, v4

    sget v13, Landroid/support/v7/appcompat/R$styleable;->SearchView_goIcon:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 325
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    move-object v12, v4

    sget v13, Landroid/support/v7/appcompat/R$styleable;->SearchView_closeIcon:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 326
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    move-object v12, v4

    sget v13, Landroid/support/v7/appcompat/R$styleable;->SearchView_voiceIcon:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 327
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    move-object v12, v4

    sget v13, Landroid/support/v7/appcompat/R$styleable;->SearchView_searchIcon:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 329
    move-object v11, v0

    move-object v12, v4

    sget v13, Landroid/support/v7/appcompat/R$styleable;->SearchView_searchHintIcon:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    .line 332
    move-object v11, v0

    move-object v12, v4

    sget v13, Landroid/support/v7/appcompat/R$styleable;->SearchView_suggestionRowLayout:I

    sget v14, Landroid/support/v7/appcompat/R$layout;->abc_search_dropdown_item_icons_2line:I

    invoke-virtual {v12, v13, v14}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v12

    iput v12, v11, Landroid/support/v7/widget/SearchView;->mSuggestionRowLayout:I

    .line 334
    move-object v11, v0

    move-object v12, v4

    sget v13, Landroid/support/v7/appcompat/R$styleable;->SearchView_commitIcon:I

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v12

    iput v12, v11, Landroid/support/v7/widget/SearchView;->mSuggestionCommitIconResId:I

    .line 336
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 343
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/SearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 344
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/SearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 345
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/SearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 346
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/SearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 349
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    new-instance v12, Landroid/support/v7/widget/SearchView$4;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v0

    invoke-direct {v13, v14}, Landroid/support/v7/widget/SearchView$4;-><init>(Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 357
    move-object v11, v0

    move-object v12, v4

    sget v13, Landroid/support/v7/appcompat/R$styleable;->SearchView_iconifiedByDefault:I

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v12

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 359
    move-object v11, v4

    sget v12, Landroid/support/v7/appcompat/R$styleable;->SearchView_android_maxWidth:I

    const/4 v13, -0x1

    invoke-virtual {v11, v12, v13}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v11

    move v7, v11

    .line 360
    move v11, v7

    const/4 v12, -0x1

    if-eq v11, v12, :cond_0

    .line 361
    move-object v11, v0

    move v12, v7

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/SearchView;->setMaxWidth(I)V

    .line 364
    :cond_0
    move-object v11, v0

    move-object v12, v4

    sget v13, Landroid/support/v7/appcompat/R$styleable;->SearchView_defaultQueryHint:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mDefaultQueryHint:Ljava/lang/CharSequence;

    .line 365
    move-object v11, v0

    move-object v12, v4

    sget v13, Landroid/support/v7/appcompat/R$styleable;->SearchView_queryHint:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 367
    move-object v11, v4

    sget v12, Landroid/support/v7/appcompat/R$styleable;->SearchView_android_imeOptions:I

    const/4 v13, -0x1

    invoke-virtual {v11, v12, v13}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v11

    move v8, v11

    .line 368
    move v11, v8

    const/4 v12, -0x1

    if-eq v11, v12, :cond_1

    .line 369
    move-object v11, v0

    move v12, v8

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/SearchView;->setImeOptions(I)V

    .line 372
    :cond_1
    move-object v11, v4

    sget v12, Landroid/support/v7/appcompat/R$styleable;->SearchView_android_inputType:I

    const/4 v13, -0x1

    invoke-virtual {v11, v12, v13}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v11

    move v9, v11

    .line 373
    move v11, v9

    const/4 v12, -0x1

    if-eq v11, v12, :cond_2

    .line 374
    move-object v11, v0

    move v12, v9

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/SearchView;->setInputType(I)V

    .line 377
    :cond_2
    const/4 v11, 0x1

    move v10, v11

    .line 378
    move-object v11, v4

    sget v12, Landroid/support/v7/appcompat/R$styleable;->SearchView_android_focusable:I

    move v13, v10

    invoke-virtual {v11, v12, v13}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v11

    move v10, v11

    .line 379
    move-object v11, v0

    move v12, v10

    invoke-virtual {v11, v12}, Landroid/support/v7/widget/SearchView;->setFocusable(Z)V

    .line 381
    move-object v11, v4

    invoke-virtual {v11}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 384
    move-object v11, v0

    new-instance v12, Landroid/content/Intent;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const-string v14, "android.speech.action.WEB_SEARCH"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    .line 385
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    const/high16 v12, 0x10000000

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v11

    .line 386
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    const-string v12, "android.speech.extra.LANGUAGE_MODEL"

    const-string v13, "web_search"

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 389
    move-object v11, v0

    new-instance v12, Landroid/content/Intent;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const-string v14, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    .line 390
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    const/high16 v12, 0x10000000

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v11

    .line 392
    move-object v11, v0

    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v13}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getDropDownAnchor()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    iput-object v12, v11, Landroid/support/v7/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    .line 393
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    if-eqz v11, :cond_3

    .line 394
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0xb

    if-lt v11, v12, :cond_4

    .line 395
    move-object v11, v0

    invoke-direct {v11}, Landroid/support/v7/widget/SearchView;->addOnLayoutChangeListenerToDropDownAnchorSDK11()V

    .line 401
    :cond_3
    :goto_0
    move-object v11, v0

    move-object v12, v0

    iget-boolean v12, v12, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    invoke-direct {v11, v12}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 402
    move-object v11, v0

    invoke-direct {v11}, Landroid/support/v7/widget/SearchView;->updateQueryHint()V

    .line 403
    return-void

    .line 397
    :cond_4
    move-object v11, v0

    invoke-direct {v11}, Landroid/support/v7/widget/SearchView;->addOnLayoutChangeListenerToDropDownAnchorBase()V

    goto :goto_0
.end method

.method private addOnLayoutChangeListenerToDropDownAnchorBase()V
    .locals 6

    .prologue
    .line 417
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Landroid/support/v7/widget/SearchView$6;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/v7/widget/SearchView$6;-><init>(Landroid/support/v7/widget/SearchView;)V

    .line 418
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 424
    return-void
.end method

.method private addOnLayoutChangeListenerToDropDownAnchorSDK11()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 407
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    new-instance v2, Landroid/support/v7/widget/SearchView$5;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/v7/widget/SearchView$5;-><init>(Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 414
    return-void
.end method

.method private createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 12

    .prologue
    .line 1584
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    new-instance v8, Landroid/content/Intent;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v1

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    .line 1585
    move-object v8, v7

    const/high16 v9, 0x10000000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v8

    .line 1589
    move-object v8, v2

    if-eqz v8, :cond_0

    .line 1590
    move-object v8, v7

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v8

    .line 1592
    :cond_0
    move-object v8, v7

    const-string v9, "user_query"

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v8

    .line 1593
    move-object v8, v4

    if-eqz v8, :cond_1

    .line 1594
    move-object v8, v7

    const-string v9, "query"

    move-object v10, v4

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 1596
    :cond_1
    move-object v8, v3

    if-eqz v8, :cond_2

    .line 1597
    move-object v8, v7

    const-string v9, "intent_extra_data_key"

    move-object v10, v3

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 1599
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v8, :cond_3

    .line 1600
    move-object v8, v7

    const-string v9, "app_data"

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v8

    .line 1602
    :cond_3
    move v8, v5

    if-eqz v8, :cond_4

    .line 1603
    move-object v8, v7

    const-string v9, "action_key"

    move v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    .line 1604
    move-object v8, v7

    const-string v9, "action_msg"

    move-object v10, v6

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 1606
    :cond_4
    move-object v8, v7

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v9}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v8

    .line 1607
    move-object v8, v7

    move-object v0, v8

    return-object v0
.end method

.method private createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
    .locals 17

    .prologue
    .line 1703
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object v9, v1

    :try_start_0
    const-string v10, "suggest_intent_action"

    invoke-static {v9, v10}, Landroid/support/v7/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 1705
    move-object v9, v4

    if-nez v9, :cond_0

    .line 1706
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v9}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 1708
    :cond_0
    move-object v9, v4

    if-nez v9, :cond_1

    .line 1709
    const-string v9, "android.intent.action.SEARCH"

    move-object v4, v9

    .line 1713
    :cond_1
    move-object v9, v1

    const-string v10, "suggest_intent_data"

    invoke-static {v9, v10}, Landroid/support/v7/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 1714
    move-object v9, v5

    if-nez v9, :cond_2

    .line 1715
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v9}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 1718
    :cond_2
    move-object v9, v5

    if-eqz v9, :cond_3

    .line 1719
    move-object v9, v1

    const-string v10, "suggest_intent_data_id"

    invoke-static {v9, v10}, Landroid/support/v7/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 1720
    move-object v9, v6

    if-eqz v9, :cond_3

    .line 1721
    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v6

    invoke-static {v10}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 1724
    :cond_3
    move-object v9, v5

    if-nez v9, :cond_4

    const/4 v9, 0x0

    :goto_0
    move-object v6, v9

    .line 1726
    move-object v9, v1

    const-string v10, "suggest_intent_query"

    invoke-static {v9, v10}, Landroid/support/v7/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 1727
    move-object v9, v1

    const-string v10, "suggest_intent_extra_data"

    invoke-static {v9, v10}, Landroid/support/v7/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 1729
    move-object v9, v0

    move-object v10, v4

    move-object v11, v6

    move-object v12, v8

    move-object v13, v7

    move v14, v2

    move-object v15, v3

    invoke-direct/range {v9 .. v15}, Landroid/support/v7/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    move-object v0, v9

    .line 1739
    :goto_1
    return-object v0

    .line 1724
    :cond_4
    move-object v9, v5

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    goto :goto_0

    .line 1730
    :catch_0
    move-exception v9

    move-object v4, v9

    .line 1733
    move-object v9, v1

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getPosition()I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    move v5, v9

    .line 1737
    :goto_2
    const-string v9, "SearchView"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Search suggestions cursor at row "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " returned exception."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v11, v4

    invoke-static {v9, v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v9

    .line 1739
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_1

    .line 1734
    :catch_1
    move-exception v9

    move-object v6, v9

    .line 1735
    const/4 v9, -0x1

    move v5, v9

    goto :goto_2
.end method

.method private createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 18

    .prologue
    .line 1629
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v13, v2

    invoke-virtual {v13}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v13

    move-object v3, v13

    .line 1634
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const-string v15, "android.intent.action.SEARCH"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v13

    .line 1635
    move-object v13, v4

    move-object v14, v3

    invoke-virtual {v13, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v13

    .line 1636
    move-object v13, v0

    invoke-virtual {v13}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x0

    move-object v15, v4

    const/high16 v16, 0x40000000    # 2.0f

    invoke-static/range {v13 .. v16}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    move-object v5, v13

    .line 1643
    new-instance v13, Landroid/os/Bundle;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    move-object v6, v13

    .line 1644
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v13, :cond_0

    .line 1645
    move-object v13, v6

    const-string v14, "app_data"

    move-object v15, v0

    iget-object v15, v15, Landroid/support/v7/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1651
    :cond_0
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v1

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v7, v13

    .line 1654
    const-string v13, "free_form"

    move-object v8, v13

    .line 1655
    const/4 v13, 0x0

    move-object v9, v13

    .line 1656
    const/4 v13, 0x0

    move-object v10, v13

    .line 1657
    const/4 v13, 0x1

    move v11, v13

    .line 1659
    move-object v13, v0

    invoke-virtual {v13}, Landroid/support/v7/widget/SearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move-object v12, v13

    .line 1660
    move-object v13, v2

    invoke-virtual {v13}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v13

    if-eqz v13, :cond_1

    .line 1661
    move-object v13, v12

    move-object v14, v2

    invoke-virtual {v14}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object v8, v13

    .line 1663
    :cond_1
    move-object v13, v2

    invoke-virtual {v13}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v13

    if-eqz v13, :cond_2

    .line 1664
    move-object v13, v12

    move-object v14, v2

    invoke-virtual {v14}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object v9, v13

    .line 1666
    :cond_2
    move-object v13, v2

    invoke-virtual {v13}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v13

    if-eqz v13, :cond_3

    .line 1667
    move-object v13, v12

    move-object v14, v2

    invoke-virtual {v14}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    .line 1669
    :cond_3
    move-object v13, v2

    invoke-virtual {v13}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v13

    if-eqz v13, :cond_4

    .line 1670
    move-object v13, v2

    invoke-virtual {v13}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v13

    move v11, v13

    .line 1673
    :cond_4
    move-object v13, v7

    const-string v14, "android.speech.extra.LANGUAGE_MODEL"

    move-object v15, v8

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    .line 1674
    move-object v13, v7

    const-string v14, "android.speech.extra.PROMPT"

    move-object v15, v9

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    .line 1675
    move-object v13, v7

    const-string v14, "android.speech.extra.LANGUAGE"

    move-object v15, v10

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    .line 1676
    move-object v13, v7

    const-string v14, "android.speech.extra.MAX_RESULTS"

    move v15, v11

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v13

    .line 1677
    move-object v13, v7

    const-string v14, "calling_package"

    move-object v15, v3

    if-nez v15, :cond_5

    const/4 v15, 0x0

    :goto_0
    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    .line 1681
    move-object v13, v7

    const-string v14, "android.speech.extra.RESULTS_PENDINGINTENT"

    move-object v15, v5

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v13

    .line 1682
    move-object v13, v7

    const-string v14, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    move-object v15, v6

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v13

    .line 1684
    move-object v13, v7

    move-object v0, v13

    return-object v0

    .line 1677
    :cond_5
    move-object v15, v3

    .line 1678
    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v15

    goto :goto_0
.end method

.method private createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 9

    .prologue
    .line 1614
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v5, Landroid/content/Intent;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v3, v5

    .line 1615
    move-object v5, v2

    invoke-virtual {v5}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v5

    move-object v4, v5

    .line 1616
    move-object v5, v3

    const-string v6, "calling_package"

    move-object v7, v4

    if-nez v7, :cond_0

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 1618
    move-object v5, v3

    move-object v0, v5

    return-object v0

    .line 1616
    :cond_0
    move-object v7, v4

    .line 1617
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method private dismissSuggestions()V
    .locals 2

    .prologue
    .line 1253
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->dismissDropDown()V

    .line 1254
    return-void
.end method

.method private getChildBoundsWithinSearchView(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 11

    .prologue
    .line 888
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/SearchView;->mTemp:[I

    invoke-virtual {v5, v6}, Landroid/view/View;->getLocationInWindow([I)V

    .line 889
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/SearchView;->mTemp2:[I

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/SearchView;->getLocationInWindow([I)V

    .line 890
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SearchView;->mTemp:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/SearchView;->mTemp2:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    sub-int/2addr v5, v6

    move v3, v5

    .line 891
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SearchView;->mTemp:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/SearchView;->mTemp2:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    sub-int/2addr v5, v6

    move v4, v5

    .line 892
    move-object v5, v2

    move v6, v4

    move v7, v3

    move v8, v4

    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    move v9, v3

    move-object v10, v1

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 893
    return-void
.end method

.method private getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 10

    .prologue
    .line 1139
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 1140
    :cond_0
    move-object v4, v1

    move-object v0, v4

    .line 1149
    :goto_0
    return-object v0

    .line 1143
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getTextSize()F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v4, v6

    double-to-int v4, v4

    move v2, v4

    .line 1144
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v2

    move v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1146
    new-instance v4, Landroid/text/SpannableStringBuilder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "   "

    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object v3, v4

    .line 1147
    move-object v4, v3

    new-instance v5, Landroid/text/style/ImageSpan;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {v6, v7}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/16 v8, 0x21

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1148
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 1149
    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

.method private getPreferredHeight()I
    .locals 3

    .prologue
    .line 901
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$dimen;->abc_search_view_preferred_height:I

    .line 902
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    move v0, v1

    return v0
.end method

.method private getPreferredWidth()I
    .locals 3

    .prologue
    .line 896
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$dimen;->abc_search_view_preferred_width:I

    .line 897
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    move v0, v1

    return v0
.end method

.method private hasVoiceSearch()Z
    .locals 6

    .prologue
    .line 930
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 931
    const/4 v3, 0x0

    move-object v1, v3

    .line 932
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 933
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    move-object v1, v3

    .line 937
    :cond_0
    :goto_0
    move-object v3, v1

    if-eqz v3, :cond_3

    .line 938
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object v4, v1

    const/high16 v5, 0x10000

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    move-object v2, v3

    .line 940
    move-object v3, v2

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    .line 943
    :goto_2
    return v0

    .line 934
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 935
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    move-object v1, v3

    goto :goto_0

    .line 940
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 943
    :cond_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_2
.end method

.method static isLandscapeMode(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 1749
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

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

.method private isSubmitAreaEnabled()Z
    .locals 2

    .prologue
    .line 947
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/SearchView;->mSubmitButtonEnabled:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v1, :cond_1

    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private launchIntent(Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 1541
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_0

    .line 1551
    :goto_0
    return-void

    .line 1547
    :cond_0
    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1551
    :goto_1
    goto :goto_0

    .line 1548
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1549
    const-string v3, "SearchView"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed launch activity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_1
.end method

.method private launchSuggestion(IILjava/lang/String;)Z
    .locals 10

    .prologue
    .line 1524
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v6}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    move-object v4, v6

    .line 1525
    move-object v6, v4

    if-eqz v6, :cond_0

    move-object v6, v4

    move v7, v1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1527
    move-object v6, v0

    move-object v7, v4

    move v8, v2

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Landroid/support/v7/widget/SearchView;->createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    move-object v5, v6

    .line 1530
    move-object v6, v0

    move-object v7, v5

    invoke-direct {v6, v7}, Landroid/support/v7/widget/SearchView;->launchIntent(Landroid/content/Intent;)V

    .line 1532
    const/4 v6, 0x1

    move v0, v6

    .line 1534
    :goto_0
    return v0

    :cond_0
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method

.method private postUpdateFocusedState()V
    .locals 3

    .prologue
    .line 982
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .line 983
    return-void
.end method

.method private rewriteQueryFromSuggestion(I)V
    .locals 7

    .prologue
    .line 1491
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v5

    move-object v2, v5

    .line 1492
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v5}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v5

    move-object v3, v5

    .line 1493
    move-object v5, v3

    if-nez v5, :cond_0

    .line 1511
    :goto_0
    return-void

    .line 1496
    :cond_0
    move-object v5, v3

    move v6, v1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1498
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/CursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v4, v5

    .line 1499
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 1502
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    .line 1511
    :goto_1
    goto :goto_0

    .line 1505
    :cond_1
    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1509
    :cond_2
    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 1557
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1559
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-object v3, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 1560
    return-void

    .line 1559
    :cond_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    goto :goto_0
.end method

.method private updateCloseButton()V
    .locals 6

    .prologue
    .line 970
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    move v1, v4

    .line 973
    move v4, v1

    if-nez v4, :cond_0

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v4, :cond_3

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/widget/SearchView;->mExpandedInActionView:Z

    if-nez v4, :cond_3

    :cond_0
    const/4 v4, 0x1

    :goto_1
    move v2, v4

    .line 974
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    move v5, v2

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 975
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v3, v4

    .line 976
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 977
    move-object v4, v3

    move v5, v1

    if-eqz v5, :cond_5

    sget-object v5, Landroid/support/v7/widget/SearchView;->ENABLED_STATE_SET:[I

    :goto_3
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    .line 979
    :cond_1
    return-void

    .line 970
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 973
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 974
    :cond_4
    const/16 v5, 0x8

    goto :goto_2

    .line 977
    :cond_5
    sget-object v5, Landroid/support/v7/widget/SearchView;->EMPTY_STATE_SET:[I

    goto :goto_3
.end method

.method private updateQueryHint()V
    .locals 5

    .prologue
    .line 1153
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView;->getQueryHint()Ljava/lang/CharSequence;

    move-result-object v2

    move-object v1, v2

    .line 1154
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-object v3, v0

    move-object v4, v1

    if-nez v4, :cond_0

    const-string v4, ""

    :goto_0
    invoke-direct {v3, v4}, Landroid/support/v7/widget/SearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    .line 1155
    return-void

    .line 1154
    :cond_0
    move-object v4, v1

    goto :goto_0
.end method

.method private updateSearchAutoComplete()V
    .locals 10

    .prologue
    .line 1161
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setThreshold(I)V

    .line 1162
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1163
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getInputType()I

    move-result v2

    move v1, v2

    .line 1166
    move v2, v1

    const/16 v3, 0xf

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1169
    move v2, v1

    const v3, -0x10001

    and-int/2addr v2, v3

    move v1, v2

    .line 1170
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1171
    move v2, v1

    const/high16 v3, 0x10000

    or-int/2addr v2, v3

    move v1, v2

    .line 1178
    move v2, v1

    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    move v1, v2

    .line 1181
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 1182
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v2, :cond_1

    .line 1183
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1187
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1188
    move-object v2, v0

    new-instance v3, Landroid/support/v7/widget/SuggestionsAdapter;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/SearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/support/v7/widget/SuggestionsAdapter;-><init>(Landroid/content/Context;Landroid/support/v7/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    iput-object v3, v2, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    .line 1190
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1191
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    check-cast v2, Landroid/support/v7/widget/SuggestionsAdapter;

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/SearchView;->mQueryRefinement:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    :goto_0
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    .line 1195
    :cond_2
    return-void

    .line 1191
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private updateSubmitArea()V
    .locals 4

    .prologue
    .line 960
    move-object v0, p0

    const/16 v2, 0x8

    move v1, v2

    .line 961
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/SearchView;->isSubmitAreaEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    .line 962
    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    .line 963
    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 964
    :cond_0
    const/4 v2, 0x0

    move v1, v2

    .line 966
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSubmitArea:Landroid/view/View;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 967
    return-void
.end method

.method private updateSubmitButton(Z)V
    .locals 5

    .prologue
    .line 951
    move-object v0, p0

    move v1, p1

    const/16 v3, 0x8

    move v2, v3

    .line 952
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/SearchView;->mSubmitButtonEnabled:Z

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/widget/SearchView;->isSubmitAreaEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    if-nez v3, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/SearchView;->mVoiceButtonEnabled:Z

    if-nez v3, :cond_1

    .line 954
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    .line 956
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 957
    return-void
.end method

.method private updateViewsVisibility(Z)V
    .locals 7

    .prologue
    .line 906
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    move v6, v1

    iput-boolean v6, v5, Landroid/support/v7/widget/SearchView;->mIconified:Z

    .line 908
    move v5, v1

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    :goto_0
    move v2, v5

    .line 910
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    :goto_1
    move v3, v5

    .line 912
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 913
    move-object v5, v0

    move v6, v3

    invoke-direct {v5, v6}, Landroid/support/v7/widget/SearchView;->updateSubmitButton(Z)V

    .line 914
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SearchView;->mSearchEditFrame:Landroid/view/View;

    move v6, v1

    if-eqz v6, :cond_3

    const/16 v6, 0x8

    :goto_2
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 917
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v5, :cond_4

    .line 918
    :cond_0
    const/16 v5, 0x8

    move v4, v5

    .line 922
    :goto_3
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    move v6, v4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 924
    move-object v5, v0

    invoke-direct {v5}, Landroid/support/v7/widget/SearchView;->updateCloseButton()V

    .line 925
    move-object v5, v0

    move v6, v3

    if-nez v6, :cond_5

    const/4 v6, 0x1

    :goto_4
    invoke-direct {v5, v6}, Landroid/support/v7/widget/SearchView;->updateVoiceButton(Z)V

    .line 926
    move-object v5, v0

    invoke-direct {v5}, Landroid/support/v7/widget/SearchView;->updateSubmitArea()V

    .line 927
    return-void

    .line 908
    :cond_1
    const/16 v5, 0x8

    goto :goto_0

    .line 910
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 914
    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 920
    :cond_4
    const/4 v5, 0x0

    move v4, v5

    goto :goto_3

    .line 925
    :cond_5
    const/4 v6, 0x0

    goto :goto_4
.end method

.method private updateVoiceButton(Z)V
    .locals 5

    .prologue
    .line 1204
    move-object v0, p0

    move v1, p1

    const/16 v3, 0x8

    move v2, v3

    .line 1205
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v1

    if-eqz v3, :cond_0

    .line 1206
    const/4 v3, 0x0

    move v2, v3

    .line 1207
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1209
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1210
    return-void
.end method


# virtual methods
.method adjustDropDownSizeAndPosition()V
    .locals 12

    .prologue
    .line 1411
    move-object v0, p0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_0

    .line 1412
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move-object v1, v8

    .line 1413
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    move v2, v8

    .line 1414
    new-instance v8, Landroid/graphics/Rect;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    move-object v3, v8

    .line 1415
    move-object v8, v0

    invoke-static {v8}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v8

    move v4, v8

    .line 1416
    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v8, :cond_1

    move-object v8, v1

    sget v9, Landroid/support/v7/appcompat/R$dimen;->abc_dropdownitem_icon_width:I

    .line 1417
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    move-object v9, v1

    sget v10, Landroid/support/v7/appcompat/R$dimen;->abc_dropdownitem_text_padding_left:I

    .line 1418
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int/2addr v8, v9

    :goto_0
    move v5, v8

    .line 1420
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v8}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v8

    .line 1422
    move v8, v4

    if-eqz v8, :cond_2

    .line 1423
    move-object v8, v3

    iget v8, v8, Landroid/graphics/Rect;->left:I

    neg-int v8, v8

    move v6, v8

    .line 1427
    :goto_1
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move v9, v6

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setDropDownHorizontalOffset(I)V

    .line 1428
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    move-object v9, v3

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    move-object v9, v3

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    move v9, v5

    add-int/2addr v8, v9

    move v9, v2

    sub-int/2addr v8, v9

    move v7, v8

    .line 1430
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move v9, v7

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setDropDownWidth(I)V

    .line 1432
    :cond_0
    return-void

    .line 1418
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 1425
    :cond_2
    move v8, v2

    move-object v9, v3

    iget v9, v9, Landroid/graphics/Rect;->left:I

    move v10, v5

    add-int/2addr v9, v10

    sub-int/2addr v8, v9

    move v6, v8

    goto :goto_1
.end method

.method public clearFocus()V
    .locals 3

    .prologue
    .line 534
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/widget/SearchView;->mClearingFocus:Z

    .line 535
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    .line 536
    move-object v1, v0

    invoke-super {v1}, Landroid/support/v7/widget/LinearLayoutCompat;->clearFocus()V

    .line 537
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->clearFocus()V

    .line 538
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/widget/SearchView;->mClearingFocus:Z

    .line 539
    return-void
.end method

.method forceSuggestionQuery()V
    .locals 3

    .prologue
    .line 1744
    move-object v0, p0

    sget-object v1, Landroid/support/v7/widget/SearchView;->HIDDEN_METHOD_INVOKER:Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->doBeforeTextChanged(Landroid/widget/AutoCompleteTextView;)V

    .line 1745
    sget-object v1, Landroid/support/v7/widget/SearchView;->HIDDEN_METHOD_INVOKER:Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->doAfterTextChanged(Landroid/widget/AutoCompleteTextView;)V

    .line 1746
    return-void
.end method

.method public getImeOptions()I
    .locals 2

    .prologue
    .line 489
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getInputType()I
    .locals 2

    .prologue
    .line 511
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getInputType()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getMaxWidth()I
    .locals 2

    .prologue
    .line 814
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    move v0, v1

    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 596
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 656
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 657
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    move-object v1, v2

    .line 663
    :goto_0
    move-object v2, v1

    move-object v0, v2

    return-object v0

    .line 658
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v2

    if-eqz v2, :cond_1

    .line 659
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 661
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mDefaultQueryHint:Ljava/lang/CharSequence;

    move-object v1, v2

    goto :goto_0
.end method

.method getSuggestionCommitIconResId()I
    .locals 2

    .prologue
    .line 431
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/SearchView;->mSuggestionCommitIconResId:I

    move v0, v1

    return v0
.end method

.method getSuggestionRowLayout()I
    .locals 2

    .prologue
    .line 427
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/SearchView;->mSuggestionRowLayout:I

    move v0, v1

    return v0
.end method

.method public getSuggestionsAdapter()Landroid/support/v4/widget/CursorAdapter;
    .locals 2

    .prologue
    .line 792
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    move-object v0, v1

    return-object v0
.end method

.method public isIconfiedByDefault()Z
    .locals 2

    .prologue
    .line 692
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    move v0, v1

    return v0
.end method

.method public isIconified()Z
    .locals 2

    .prologue
    .line 720
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/SearchView;->mIconified:Z

    move v0, v1

    return v0
.end method

.method public isQueryRefinementEnabled()Z
    .locals 2

    .prologue
    .line 772
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/SearchView;->mQueryRefinement:Z

    move v0, v1

    return v0
.end method

.method public isSubmitButtonEnabled()Z
    .locals 2

    .prologue
    .line 742
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/SearchView;->mSubmitButtonEnabled:Z

    move v0, v1

    return v0
.end method

.method launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V
    .locals 13

    .prologue
    .line 1563
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    const-string v6, "android.intent.action.SEARCH"

    move-object v4, v6

    .line 1564
    move-object v6, v0

    move-object v7, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v10, v3

    move v11, v1

    move-object v12, v2

    invoke-direct/range {v6 .. v12}, Landroid/support/v7/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    move-object v5, v6

    .line 1565
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1566
    return-void
.end method

.method public onActionViewCollapsed()V
    .locals 4

    .prologue
    .line 1330
    move-object v0, p0

    move-object v1, v0

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 1331
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    .line 1332
    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1333
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/SearchView;->mCollapsedImeOptions:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1334
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/widget/SearchView;->mExpandedInActionView:Z

    .line 1335
    return-void
.end method

.method public onActionViewExpanded()V
    .locals 4

    .prologue
    .line 1342
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/SearchView;->mExpandedInActionView:Z

    if-eqz v1, :cond_0

    .line 1349
    :goto_0
    return-void

    .line 1344
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/widget/SearchView;->mExpandedInActionView:Z

    .line 1345
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v2

    iput v2, v1, Landroid/support/v7/widget/SearchView;->mCollapsedImeOptions:I

    .line 1346
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/SearchView;->mCollapsedImeOptions:I

    const/high16 v3, 0x2000000

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1347
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1348
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView;->setIconified(Z)V

    .line 1349
    goto :goto_0
.end method

.method onCloseClicked()V
    .locals 4

    .prologue
    .line 1257
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    move-object v1, v2

    .line 1258
    move-object v2, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1259
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v2, :cond_1

    .line 1261
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mOnCloseListener:Landroid/support/v7/widget/SearchView$OnCloseListener;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mOnCloseListener:Landroid/support/v7/widget/SearchView$OnCloseListener;

    invoke-interface {v2}, Landroid/support/v7/widget/SearchView$OnCloseListener;->onClose()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1263
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    .line 1265
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1274
    :cond_1
    :goto_0
    return-void

    .line 1269
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1270
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    move-result v2

    .line 1271
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 1001
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 1002
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .line 1003
    move-object v1, v0

    invoke-super {v1}, Landroid/support/v7/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    .line 1004
    return-void
.end method

.method onItemClicked(IILjava/lang/String;)Z
    .locals 8

    .prologue
    .line 1435
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView;->mOnSuggestionListener:Landroid/support/v7/widget/SearchView$OnSuggestionListener;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView;->mOnSuggestionListener:Landroid/support/v7/widget/SearchView$OnSuggestionListener;

    move v5, v1

    .line 1436
    invoke-interface {v4, v5}, Landroid/support/v7/widget/SearchView$OnSuggestionListener;->onSuggestionClick(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1437
    :cond_0
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/widget/SearchView;->launchSuggestion(IILjava/lang/String;)Z

    move-result v4

    .line 1438
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    .line 1439
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/SearchView;->dismissSuggestions()V

    .line 1440
    const/4 v4, 0x1

    move v0, v4

    .line 1442
    :goto_0
    return v0

    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method onItemSelected(I)Z
    .locals 4

    .prologue
    .line 1446
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mOnSuggestionListener:Landroid/support/v7/widget/SearchView$OnSuggestionListener;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mOnSuggestionListener:Landroid/support/v7/widget/SearchView$OnSuggestionListener;

    move v3, v1

    .line 1447
    invoke-interface {v2, v3}, Landroid/support/v7/widget/SearchView$OnSuggestionListener;->onSuggestionSelect(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1448
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/SearchView;->rewriteQueryFromSuggestion(I)V

    .line 1449
    const/4 v2, 0x1

    move v0, v2

    .line 1451
    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 13

    .prologue
    .line 869
    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-super/range {v6 .. v11}, Landroid/support/v7/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    .line 871
    move v6, v1

    if-eqz v6, :cond_0

    .line 874
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    invoke-direct {v6, v7, v8}, Landroid/support/v7/widget/SearchView;->getChildBoundsWithinSearchView(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 875
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    move v10, v5

    move v11, v3

    sub-int/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 877
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/SearchView;->mTouchDelegate:Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;

    if-nez v6, :cond_1

    .line 878
    move-object v6, v0

    new-instance v7, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-direct {v8, v9, v10, v11}, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V

    iput-object v7, v6, Landroid/support/v7/widget/SearchView;->mTouchDelegate:Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;

    .line 880
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/SearchView;->mTouchDelegate:Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/SearchView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 885
    :cond_0
    :goto_0
    return-void

    .line 882
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/SearchView;->mTouchDelegate:Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 11

    .prologue
    .line 820
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 821
    move-object v7, v0

    move v8, v1

    move v9, v2

    invoke-super {v7, v8, v9}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 865
    :goto_0
    return-void

    .line 825
    :cond_0
    move v7, v1

    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    move v3, v7

    .line 826
    move v7, v1

    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    move v4, v7

    .line 828
    move v7, v3

    sparse-switch v7, :sswitch_data_0

    .line 848
    :cond_1
    :goto_1
    const/high16 v7, 0x40000000    # 2.0f

    move v3, v7

    .line 850
    move v7, v2

    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    move v5, v7

    .line 851
    move v7, v2

    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    move v6, v7

    .line 853
    move v7, v5

    sparse-switch v7, :sswitch_data_1

    .line 861
    :goto_2
    const/high16 v7, 0x40000000    # 2.0f

    move v5, v7

    .line 863
    move-object v7, v0

    move v8, v4

    move v9, v3

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    move v9, v6

    move v10, v5

    .line 864
    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 863
    invoke-super {v7, v8, v9}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 865
    goto :goto_0

    .line 831
    :sswitch_0
    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    if-lez v7, :cond_2

    .line 832
    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    move v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v4, v7

    goto :goto_1

    .line 834
    :cond_2
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/v7/widget/SearchView;->getPreferredWidth()I

    move-result v7

    move v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v4, v7

    .line 836
    goto :goto_1

    .line 839
    :sswitch_1
    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    if-lez v7, :cond_1

    .line 840
    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    move v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v4, v7

    goto :goto_1

    .line 845
    :sswitch_2
    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    if-lez v7, :cond_3

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    :goto_3
    move v4, v7

    goto :goto_1

    :cond_3
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/v7/widget/SearchView;->getPreferredWidth()I

    move-result v7

    goto :goto_3

    .line 855
    :sswitch_3
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/v7/widget/SearchView;->getPreferredHeight()I

    move-result v7

    move v8, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v6, v7

    .line 856
    goto :goto_2

    .line 858
    :sswitch_4
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/v7/widget/SearchView;->getPreferredHeight()I

    move-result v7

    move v6, v7

    goto :goto_2

    .line 828
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_1
    .end sparse-switch

    .line 853
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_3
        0x0 -> :sswitch_4
    .end sparse-switch
.end method

.method onQueryRefine(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 1024
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    .line 1025
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    .prologue
    .line 1400
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    instance-of v3, v3, Landroid/support/v7/widget/SearchView$SavedState;

    if-nez v3, :cond_0

    .line 1401
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1408
    :goto_0
    return-void

    .line 1404
    :cond_0
    move-object v3, v1

    check-cast v3, Landroid/support/v7/widget/SearchView$SavedState;

    move-object v2, v3

    .line 1405
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Landroid/support/v7/widget/SearchView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {v3, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1406
    move-object v3, v0

    move-object v4, v2

    iget-boolean v4, v4, Landroid/support/v7/widget/SearchView$SavedState;->isIconified:Z

    invoke-direct {v3, v4}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1407
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView;->requestLayout()V

    .line 1408
    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    .line 1392
    move-object v0, p0

    move-object v3, v0

    invoke-super {v3}, Landroid/support/v7/widget/LinearLayoutCompat;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    move-object v1, v3

    .line 1393
    new-instance v3, Landroid/support/v7/widget/SearchView$SavedState;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/v7/widget/SearchView$SavedState;-><init>(Landroid/os/Parcelable;)V

    move-object v2, v3

    .line 1394
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v4

    iput-boolean v4, v3, Landroid/support/v7/widget/SearchView$SavedState;->isIconified:Z

    .line 1395
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method onSearchClicked()V
    .locals 3

    .prologue
    .line 1277
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1278
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    move-result v1

    .line 1279
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    .line 1280
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    .line 1281
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1283
    :cond_0
    return-void
.end method

.method onSubmitQuery()V
    .locals 6

    .prologue
    .line 1239
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    move-object v1, v2

    .line 1240
    move-object v2, v1

    if-eqz v2, :cond_2

    move-object v2, v1

    invoke-static {v2}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v2

    if-lez v2, :cond_2

    .line 1241
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mOnQueryChangeListener:Landroid/support/v7/widget/SearchView$OnQueryTextListener;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mOnQueryChangeListener:Landroid/support/v7/widget/SearchView$OnQueryTextListener;

    move-object v3, v1

    .line 1242
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/support/v7/widget/SearchView$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1243
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v2, :cond_1

    .line 1244
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v1

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v7/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    .line 1246
    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    .line 1247
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/SearchView;->dismissSuggestions()V

    .line 1250
    :cond_2
    return-void
.end method

.method onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 9

    .prologue
    .line 1094
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v5, :cond_0

    .line 1095
    const/4 v5, 0x0

    move v0, v5

    .line 1133
    :goto_0
    return v0

    .line 1097
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    if-nez v5, :cond_1

    .line 1098
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 1100
    :cond_1
    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_7

    move-object v5, v3

    invoke-static {v5}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1103
    move v5, v2

    const/16 v6, 0x42

    if-eq v5, v6, :cond_2

    move v5, v2

    const/16 v6, 0x54

    if-eq v5, v6, :cond_2

    move v5, v2

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_3

    .line 1105
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v5

    move v4, v5

    .line 1106
    move-object v5, v0

    move v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v7/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result v5

    move v0, v5

    goto :goto_0

    .line 1111
    :cond_3
    move v5, v2

    const/16 v6, 0x15

    if-eq v5, v6, :cond_4

    move v5, v2

    const/16 v6, 0x16

    if-ne v5, v6, :cond_6

    .line 1116
    :cond_4
    move v5, v2

    const/16 v6, 0x15

    if-ne v5, v6, :cond_5

    const/4 v5, 0x0

    .line 1117
    :goto_1
    move v4, v5

    .line 1118
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move v6, v4

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 1119
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setListSelection(I)V

    .line 1120
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->clearListSelection()V

    .line 1121
    sget-object v5, Landroid/support/v7/widget/SearchView;->HIDDEN_METHOD_INVOKER:Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->ensureImeVisible(Landroid/widget/AutoCompleteTextView;Z)V

    .line 1123
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 1116
    :cond_5
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    .line 1117
    invoke-virtual {v5}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->length()I

    move-result v5

    goto :goto_1

    .line 1127
    :cond_6
    move v5, v2

    const/16 v6, 0x13

    if-ne v5, v6, :cond_7

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v6}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v6

    if-ne v5, v6, :cond_7

    .line 1130
    const/4 v5, 0x0

    move v0, v5

    goto/16 :goto_0

    .line 1133
    :cond_7
    const/4 v5, 0x0

    move v0, v5

    goto/16 :goto_0
.end method

.method onTextChanged(Ljava/lang/CharSequence;)V
    .locals 6

    .prologue
    .line 1225
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v4

    move-object v2, v4

    .line 1226
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroid/support/v7/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 1227
    move-object v4, v2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    move v3, v4

    .line 1228
    move-object v4, v0

    move v5, v3

    invoke-direct {v4, v5}, Landroid/support/v7/widget/SearchView;->updateSubmitButton(Z)V

    .line 1229
    move-object v4, v0

    move v5, v3

    if-nez v5, :cond_2

    const/4 v5, 0x1

    :goto_1
    invoke-direct {v4, v5}, Landroid/support/v7/widget/SearchView;->updateVoiceButton(Z)V

    .line 1230
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/SearchView;->updateCloseButton()V

    .line 1231
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/SearchView;->updateSubmitArea()V

    .line 1232
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView;->mOnQueryChangeListener:Landroid/support/v7/widget/SearchView$OnQueryTextListener;

    if-eqz v4, :cond_0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SearchView;->mOldQueryText:Ljava/lang/CharSequence;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1233
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView;->mOnQueryChangeListener:Landroid/support/v7/widget/SearchView$OnQueryTextListener;

    move-object v5, v1

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/support/v7/widget/SearchView$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    move-result v4

    .line 1235
    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/support/v7/widget/SearchView;->mOldQueryText:Ljava/lang/CharSequence;

    .line 1236
    return-void

    .line 1227
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1229
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method onTextFocusChanged()V
    .locals 3

    .prologue
    .line 1309
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1312
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/SearchView;->postUpdateFocusedState()V

    .line 1313
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1314
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView;->forceSuggestionQuery()V

    .line 1316
    :cond_0
    return-void
.end method

.method onVoiceClicked()V
    .locals 6

    .prologue
    .line 1287
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v3, :cond_0

    .line 1306
    :goto_0
    return-void

    .line 1290
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    move-object v1, v3

    .line 1292
    move-object v3, v1

    :try_start_0
    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1293
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/SearchView;->createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v3

    move-object v2, v3

    .line 1295
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1306
    :cond_1
    :goto_1
    goto :goto_0

    .line 1296
    :cond_2
    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1297
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/SearchView;->createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v3

    move-object v2, v3

    .line 1299
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1301
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1304
    const-string v3, "SearchView"

    const-string v4, "Could not find voice search activity"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .prologue
    .line 1320
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->onWindowFocusChanged(Z)V

    .line 1322
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/SearchView;->postUpdateFocusedState()V

    .line 1323
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 7

    .prologue
    .line 517
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/widget/SearchView;->mClearingFocus:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    move v0, v4

    .line 528
    :goto_0
    return v0

    .line 519
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/SearchView;->isFocusable()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 521
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v4

    if-nez v4, :cond_3

    .line 522
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v4

    move v3, v4

    .line 523
    move v4, v3

    if-eqz v4, :cond_2

    .line 524
    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 526
    :cond_2
    move v4, v3

    move v0, v4

    goto :goto_0

    .line 528
    :cond_3
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Landroid/support/v7/widget/LinearLayoutCompat;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .locals 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 466
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    .line 467
    return-void
.end method

.method public setIconified(Z)V
    .locals 3

    .prologue
    .line 706
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    .line 707
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView;->onCloseClicked()V

    .line 711
    :goto_0
    return-void

    .line 709
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView;->onSearchClicked()V

    goto :goto_0
.end method

.method public setIconifiedByDefault(Z)V
    .locals 4

    .prologue
    .line 679
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    move v3, v1

    if-ne v2, v3, :cond_0

    .line 683
    :goto_0
    return-void

    .line 680
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    .line 681
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 682
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/SearchView;->updateQueryHint()V

    .line 683
    goto :goto_0
.end method

.method public setImeOptions(I)V
    .locals 4

    .prologue
    .line 478
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 479
    return-void
.end method

.method setImeVisibility(Z)V
    .locals 6

    .prologue
    .line 1007
    move-object v0, p0

    move v1, p1

    move v3, v1

    if-eqz v3, :cond_1

    .line 1008
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    move-result v3

    .line 1018
    :cond_0
    :goto_0
    return-void

    .line 1010
    :cond_1
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v3

    .line 1011
    move-object v3, v0

    .line 1012
    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    move-object v2, v3

    .line 1014
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 1015
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v3

    goto :goto_0
.end method

.method public setInputType(I)V
    .locals 4

    .prologue
    .line 501
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 502
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 4

    .prologue
    .line 801
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    .line 803
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView;->requestLayout()V

    .line 804
    return-void
.end method

.method public setOnCloseListener(Landroid/support/v7/widget/SearchView$OnCloseListener;)V
    .locals 4

    .prologue
    .line 557
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/SearchView;->mOnCloseListener:Landroid/support/v7/widget/SearchView$OnCloseListener;

    .line 558
    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 4

    .prologue
    .line 566
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 567
    return-void
.end method

.method public setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V
    .locals 4

    .prologue
    .line 548
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/SearchView;->mOnQueryChangeListener:Landroid/support/v7/widget/SearchView$OnQueryTextListener;

    .line 549
    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .locals 4

    .prologue
    .line 587
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    .line 588
    return-void
.end method

.method public setOnSuggestionListener(Landroid/support/v7/widget/SearchView$OnSuggestionListener;)V
    .locals 4

    .prologue
    .line 575
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/SearchView;->mOnSuggestionListener:Landroid/support/v7/widget/SearchView$OnSuggestionListener;

    .line 576
    return-void
.end method

.method public setQuery(Ljava/lang/CharSequence;Z)V
    .locals 5

    .prologue
    .line 608
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 609
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 610
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 611
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 615
    :cond_0
    move v3, v2

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 616
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView;->onSubmitQuery()V

    .line 618
    :cond_1
    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 631
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 632
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/SearchView;->updateQueryHint()V

    .line 633
    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .locals 4

    .prologue
    .line 760
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/SearchView;->mQueryRefinement:Z

    .line 761
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    instance-of v2, v2, Landroid/support/v7/widget/SuggestionsAdapter;

    if-eqz v2, :cond_0

    .line 762
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    check-cast v2, Landroid/support/v7/widget/SuggestionsAdapter;

    move v3, v1

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    :goto_0
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    .line 765
    :cond_0
    return-void

    .line 762
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .locals 4

    .prologue
    .line 443
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    .line 444
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v2, :cond_0

    .line 445
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/SearchView;->updateSearchAutoComplete()V

    .line 446
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/SearchView;->updateQueryHint()V

    .line 449
    :cond_0
    move-object v2, v0

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/widget/SearchView;->hasVoiceSearch()Z

    move-result v3

    iput-boolean v3, v2, Landroid/support/v7/widget/SearchView;->mVoiceButtonEnabled:Z

    .line 451
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v2, :cond_1

    .line 454
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v3, "nm"

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 456
    :cond_1
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 457
    return-void
.end method

.method public setSubmitButtonEnabled(Z)V
    .locals 4

    .prologue
    .line 732
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/SearchView;->mSubmitButtonEnabled:Z

    .line 733
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    .line 734
    return-void
.end method

.method public setSuggestionsAdapter(Landroid/support/v4/widget/CursorAdapter;)V
    .locals 4

    .prologue
    .line 782
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    .line 784
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 785
    return-void
.end method

.method updateFocusedState()V
    .locals 7

    .prologue
    .line 986
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v5

    move v1, v5

    .line 987
    move v5, v1

    if-eqz v5, :cond_2

    sget-object v5, Landroid/support/v7/widget/SearchView;->FOCUSED_STATE_SET:[I

    :goto_0
    move-object v2, v5

    .line 988
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v3, v5

    .line 989
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 990
    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v5

    .line 992
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v4, v5

    .line 993
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 994
    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v5

    .line 996
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/SearchView;->invalidate()V

    .line 997
    return-void

    .line 987
    :cond_2
    sget-object v5, Landroid/support/v7/widget/SearchView;->EMPTY_STATE_SET:[I

    goto :goto_0
.end method
