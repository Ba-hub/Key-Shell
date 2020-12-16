.class public Landroid/support/v7/widget/ShareActionProvider;
.super Landroid/support/v4/view/ActionProvider;
.source "ShareActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ShareActionProvider$ShareActivityChooserModelPolicy;,
        Landroid/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;,
        Landroid/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_ACTIVITY_COUNT:I = 0x4

.field public static final DEFAULT_SHARE_HISTORY_FILE_NAME:Ljava/lang/String; = "share_history.xml"


# instance fields
.field final mContext:Landroid/content/Context;

.field private mMaxShownActivityCount:I

.field private mOnChooseActivityListener:Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;

.field private final mOnMenuItemClickListener:Landroid/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

.field mOnShareTargetSelectedListener:Landroid/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;

.field mShareHistoryFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 196
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v4/view/ActionProvider;-><init>(Landroid/content/Context;)V

    .line 163
    move-object v2, v0

    const/4 v3, 0x4

    iput v3, v2, Landroid/support/v7/widget/ShareActionProvider;->mMaxShownActivityCount:I

    .line 168
    move-object v2, v0

    new-instance v3, Landroid/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;-><init>(Landroid/support/v7/widget/ShareActionProvider;)V

    iput-object v3, v2, Landroid/support/v7/widget/ShareActionProvider;->mOnMenuItemClickListener:Landroid/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

    .line 184
    move-object v2, v0

    const-string v3, "share_history.xml"

    iput-object v3, v2, Landroid/support/v7/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    .line 197
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    .line 198
    return-void
.end method

.method private setActivityChooserPolicyIfNeeded()V
    .locals 7

    .prologue
    .line 382
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ShareActionProvider;->mOnShareTargetSelectedListener:Landroid/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;

    if-nez v2, :cond_0

    .line 390
    :goto_0
    return-void

    .line 385
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ShareActionProvider;->mOnChooseActivityListener:Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;

    if-nez v2, :cond_1

    .line 386
    move-object v2, v0

    new-instance v3, Landroid/support/v7/widget/ShareActionProvider$ShareActivityChooserModelPolicy;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/v7/widget/ShareActionProvider$ShareActivityChooserModelPolicy;-><init>(Landroid/support/v7/widget/ShareActionProvider;)V

    iput-object v3, v2, Landroid/support/v7/widget/ShareActionProvider;->mOnChooseActivityListener:Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;

    .line 388
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/support/v7/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v7/widget/ActivityChooserModel;

    move-result-object v2

    move-object v1, v2

    .line 389
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ShareActionProvider;->mOnChooseActivityListener:Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActivityChooserModel;->setOnChooseActivityListener(Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;)V

    .line 390
    goto :goto_0
.end method


# virtual methods
.method public hasSubMenu()Z
    .locals 2

    .prologue
    .line 248
    move-object v0, p0

    const/4 v1, 0x1

    move v0, v1

    return v0
.end method

.method public onCreateActionView()Landroid/view/View;
    .locals 9

    .prologue
    .line 221
    move-object v0, p0

    new-instance v4, Landroid/support/v7/widget/ActivityChooserView;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/support/v7/widget/ActivityChooserView;-><init>(Landroid/content/Context;)V

    move-object v1, v4

    .line 222
    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v7/widget/ActivityChooserView;->isInEditMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 223
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/support/v7/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v7/widget/ActivityChooserModel;

    move-result-object v4

    move-object v2, v4

    .line 224
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ActivityChooserView;->setActivityChooserModel(Landroid/support/v7/widget/ActivityChooserModel;)V

    .line 228
    :cond_0
    new-instance v4, Landroid/util/TypedValue;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    move-object v2, v4

    .line 229
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$attr;->actionModeShareDrawable:I

    move-object v6, v2

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    .line 230
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    move-object v5, v2

    iget v5, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v4, v5}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v3, v4

    .line 231
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ActivityChooserView;->setExpandActivityOverflowButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 232
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ActivityChooserView;->setProvider(Landroid/support/v4/view/ActionProvider;)V

    .line 235
    move-object v4, v1

    sget v5, Landroid/support/v7/appcompat/R$string;->abc_shareactionprovider_share_with_application:I

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ActivityChooserView;->setDefaultActionButtonContentDescription(I)V

    .line 237
    move-object v4, v1

    sget v5, Landroid/support/v7/appcompat/R$string;->abc_shareactionprovider_share_with:I

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ActivityChooserView;->setExpandActivityOverflowButtonContentDescription(I)V

    .line 240
    move-object v4, v1

    move-object v0, v4

    return-object v0
.end method

.method public onPrepareSubMenu(Landroid/view/SubMenu;)V
    .locals 15

    .prologue
    .line 257
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v9, v1

    invoke-interface {v9}, Landroid/view/SubMenu;->clear()V

    .line 259
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v9, v10}, Landroid/support/v7/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v7/widget/ActivityChooserModel;

    move-result-object v9

    move-object v2, v9

    .line 260
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    move-object v3, v9

    .line 262
    move-object v9, v2

    invoke-virtual {v9}, Landroid/support/v7/widget/ActivityChooserModel;->getActivityCount()I

    move-result v9

    move v4, v9

    .line 263
    move v9, v4

    move-object v10, v0

    iget v10, v10, Landroid/support/v7/widget/ShareActionProvider;->mMaxShownActivityCount:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    move v5, v9

    .line 266
    const/4 v9, 0x0

    move v6, v9

    :goto_0
    move v9, v6

    move v10, v5

    if-ge v9, v10, :cond_0

    .line 267
    move-object v9, v2

    move v10, v6

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    move-object v7, v9

    .line 268
    move-object v9, v1

    const/4 v10, 0x0

    move v11, v6

    move v12, v6

    move-object v13, v7

    move-object v14, v3

    invoke-virtual {v13, v14}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v9, v10, v11, v12, v13}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v9

    move-object v10, v7

    move-object v11, v3

    .line 269
    invoke-virtual {v10, v11}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ShareActionProvider;->mOnMenuItemClickListener:Landroid/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

    .line 270
    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v9

    .line 266
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 273
    :cond_0
    move v9, v5

    move v10, v4

    if-ge v9, v10, :cond_1

    .line 275
    move-object v9, v1

    const/4 v10, 0x0

    move v11, v5

    move v12, v5

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    sget v14, Landroid/support/v7/appcompat/R$string;->abc_activity_chooser_view_see_all:I

    .line 277
    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 275
    invoke-interface {v9, v10, v11, v12, v13}, Landroid/view/SubMenu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v9

    move-object v6, v9

    .line 278
    const/4 v9, 0x0

    move v7, v9

    :goto_1
    move v9, v7

    move v10, v4

    if-ge v9, v10, :cond_1

    .line 279
    move-object v9, v2

    move v10, v7

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    move-object v8, v9

    .line 280
    move-object v9, v6

    const/4 v10, 0x0

    move v11, v7

    move v12, v7

    move-object v13, v8

    move-object v14, v3

    invoke-virtual {v13, v14}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v9, v10, v11, v12, v13}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v9

    move-object v10, v8

    move-object v11, v3

    .line 281
    invoke-virtual {v10, v11}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/ShareActionProvider;->mOnMenuItemClickListener:Landroid/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

    .line 282
    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v9

    .line 278
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 285
    :cond_1
    return-void
.end method

.method public setOnShareTargetSelectedListener(Landroid/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;)V
    .locals 4

    .prologue
    .line 211
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ShareActionProvider;->mOnShareTargetSelectedListener:Landroid/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;

    .line 212
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/ShareActionProvider;->setActivityChooserPolicyIfNeeded()V

    .line 213
    return-void
.end method

.method public setShareHistoryFileName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 320
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    .line 321
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/ShareActionProvider;->setActivityChooserPolicyIfNeeded()V

    .line 322
    return-void
.end method

.method public setShareIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 341
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-eqz v3, :cond_1

    .line 342
    move-object v3, v1

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 343
    const-string v3, "android.intent.action.SEND"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.intent.action.SEND_MULTIPLE"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 344
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ShareActionProvider;->updateIntent(Landroid/content/Intent;)V

    .line 347
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/support/v7/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v7/widget/ActivityChooserModel;

    move-result-object v3

    move-object v2, v3

    .line 349
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ActivityChooserModel;->setIntent(Landroid/content/Intent;)V

    .line 350
    return-void
.end method

.method updateIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 410
    move-object v0, p0

    move-object v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 412
    move-object v2, v1

    const/high16 v3, 0x8080000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 418
    :goto_0
    return-void

    .line 416
    :cond_0
    move-object v2, v1

    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    goto :goto_0
.end method
