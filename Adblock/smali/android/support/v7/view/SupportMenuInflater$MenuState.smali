.class Landroid/support/v7/view/SupportMenuInflater$MenuState;
.super Ljava/lang/Object;
.source "SupportMenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/SupportMenuInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuState"
.end annotation


# static fields
.field private static final defaultGroupId:I = 0x0

.field private static final defaultItemCategory:I = 0x0

.field private static final defaultItemCheckable:I = 0x0

.field private static final defaultItemChecked:Z = false

.field private static final defaultItemEnabled:Z = true

.field private static final defaultItemId:I = 0x0

.field private static final defaultItemOrder:I = 0x0

.field private static final defaultItemVisible:Z = true


# instance fields
.field private groupCategory:I

.field private groupCheckable:I

.field private groupEnabled:Z

.field private groupId:I

.field private groupOrder:I

.field private groupVisible:Z

.field itemActionProvider:Landroid/support/v4/view/ActionProvider;

.field private itemActionProviderClassName:Ljava/lang/String;

.field private itemActionViewClassName:Ljava/lang/String;

.field private itemActionViewLayout:I

.field private itemAdded:Z

.field private itemAlphabeticShortcut:C

.field private itemCategoryOrder:I

.field private itemCheckable:I

.field private itemChecked:Z

.field private itemEnabled:Z

.field private itemIconResId:I

.field private itemId:I

.field private itemListenerMethodName:Ljava/lang/String;

.field private itemNumericShortcut:C

.field private itemShowAsAction:I

.field private itemTitle:Ljava/lang/CharSequence;

.field private itemTitleCondensed:Ljava/lang/CharSequence;

.field private itemVisible:Z

.field private menu:Landroid/view/Menu;

.field final synthetic this$0:Landroid/support/v7/view/SupportMenuInflater;


# direct methods
.method public constructor <init>(Landroid/support/v7/view/SupportMenuInflater;Landroid/view/Menu;)V
    .locals 5

    .prologue
    .line 333
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 334
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v7/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    .line 336
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->resetGroup()V

    .line 337
    return-void
.end method

.method private getShortcut(Ljava/lang/String;)C
    .locals 4

    .prologue
    .line 421
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    .line 422
    const/4 v2, 0x0

    move v0, v2

    .line 424
    :goto_0
    return v0

    :cond_0
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method private newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 501
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;

    iget-object v6, v6, Landroid/support/v7/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    move-object v4, v6

    .line 502
    move-object v6, v4

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    move-object v5, v6

    .line 503
    move-object v6, v5

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 504
    move-object v6, v5

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v0, v6

    .line 508
    :goto_0
    return-object v0

    .line 505
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 506
    const-string v6, "SupportMenuInflater"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot instantiate class: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v4

    invoke-static {v6, v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    .line 508
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0
.end method

.method private setItem(Landroid/view/MenuItem;)V
    .locals 11

    .prologue
    .line 429
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemChecked:Z

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v5

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemVisible:Z

    .line 430
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v5

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemEnabled:Z

    .line 431
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemCheckable:I

    const/4 v7, 0x1

    if-lt v6, v7, :cond_1

    const/4 v6, 0x1

    .line 432
    :goto_0
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    .line 433
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconResId:I

    .line 434
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    move-object v6, v0

    iget-char v6, v6, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemAlphabeticShortcut:C

    .line 435
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v5

    move-object v6, v0

    iget-char v6, v6, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemNumericShortcut:C

    .line 436
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    move-result-object v5

    .line 438
    move-object v5, v0

    iget v5, v5, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemShowAsAction:I

    if-ltz v5, :cond_0

    .line 439
    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemShowAsAction:I

    invoke-static {v5, v6}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 442
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 443
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;

    iget-object v5, v5, Landroid/support/v7/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->isRestricted()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 444
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string v7, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 431
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 447
    :cond_2
    move-object v5, v1

    new-instance v6, Landroid/support/v7/view/SupportMenuInflater$InflatedOnMenuItemClickListener;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;

    .line 448
    invoke-virtual {v8}, Landroid/support/v7/view/SupportMenuInflater;->getRealOwner()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/support/v7/view/SupportMenuInflater$InflatedOnMenuItemClickListener;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 447
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v5

    .line 451
    :cond_3
    move-object v5, v1

    instance-of v5, v5, Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v5, :cond_8

    move-object v5, v1

    check-cast v5, Landroid/support/v7/view/menu/MenuItemImpl;

    :goto_1
    move-object v2, v5

    .line 452
    move-object v5, v0

    iget v5, v5, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemCheckable:I

    const/4 v6, 0x2

    if-lt v5, v6, :cond_4

    .line 453
    move-object v5, v1

    instance-of v5, v5, Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v5, :cond_9

    .line 454
    move-object v5, v1

    check-cast v5, Landroid/support/v7/view/menu/MenuItemImpl;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v7/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 460
    :cond_4
    :goto_2
    const/4 v5, 0x0

    move v3, v5

    .line 461
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 462
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    sget-object v7, Landroid/support/v7/view/SupportMenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;

    iget-object v8, v8, Landroid/support/v7/view/SupportMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    move-object v4, v5

    .line 464
    move-object v5, v1

    move-object v6, v4

    invoke-static {v5, v6}, Landroid/support/v4/view/MenuItemCompat;->setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object v5

    .line 465
    const/4 v5, 0x1

    move v3, v5

    .line 467
    :cond_5
    move-object v5, v0

    iget v5, v5, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    if-lez v5, :cond_6

    .line 468
    move v5, v3

    if-nez v5, :cond_a

    .line 469
    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    invoke-static {v5, v6}, Landroid/support/v4/view/MenuItemCompat;->setActionView(Landroid/view/MenuItem;I)Landroid/view/MenuItem;

    move-result-object v5

    .line 470
    const/4 v5, 0x1

    move v3, v5

    .line 476
    :cond_6
    :goto_3
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v5, :cond_7

    .line 477
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    invoke-static {v5, v6}, Landroid/support/v4/view/MenuItemCompat;->setActionProvider(Landroid/view/MenuItem;Landroid/support/v4/view/ActionProvider;)Landroid/view/MenuItem;

    move-result-object v5

    .line 479
    :cond_7
    return-void

    .line 451
    :cond_8
    const/4 v5, 0x0

    goto :goto_1

    .line 455
    :cond_9
    move-object v5, v1

    instance-of v5, v5, Landroid/support/v7/view/menu/MenuItemWrapperICS;

    if-eqz v5, :cond_4

    .line 456
    move-object v5, v1

    check-cast v5, Landroid/support/v7/view/menu/MenuItemWrapperICS;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v7/view/menu/MenuItemWrapperICS;->setExclusiveCheckable(Z)V

    goto :goto_2

    .line 472
    :cond_a
    const-string v5, "SupportMenuInflater"

    const-string v6, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_3
.end method


# virtual methods
.method public addItem()V
    .locals 7

    .prologue
    .line 482
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 483
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupId:I

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemId:I

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v2, v3, v4, v5, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    .line 484
    return-void
.end method

.method public addSubMenuItem()Landroid/view/SubMenu;
    .locals 7

    .prologue
    .line 487
    move-object v0, p0

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 488
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupId:I

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemId:I

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v2, v3, v4, v5, v6}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v2

    move-object v1, v2

    .line 489
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    .line 490
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public hasAddedItem()Z
    .locals 2

    .prologue
    .line 494
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemAdded:Z

    move v0, v1

    return v0
.end method

.method public readGroup(Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 352
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;

    iget-object v3, v3, Landroid/support/v7/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    move-object v4, v1

    sget-object v5, Landroid/support/v7/appcompat/R$styleable;->MenuGroup:[I

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    move-object v2, v3

    .line 354
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_id:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v3, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupId:I

    .line 355
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_menuCategory:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v3, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupCategory:I

    .line 357
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_orderInCategory:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v3, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupOrder:I

    .line 358
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_checkableBehavior:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v3, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupCheckable:I

    .line 360
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_visible:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v3, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupVisible:Z

    .line 361
    move-object v3, v0

    move-object v4, v2

    sget v5, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_enabled:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v3, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    .line 363
    move-object v3, v2

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 364
    return-void
.end method

.method public readItem(Landroid/util/AttributeSet;)V
    .locals 11

    .prologue
    .line 370
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;

    iget-object v6, v6, Landroid/support/v7/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    move-object v7, v1

    sget-object v8, Landroid/support/v7/appcompat/R$styleable;->MenuItem:[I

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    move-object v2, v6

    .line 373
    move-object v6, v0

    move-object v7, v2

    sget v8, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_id:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v6, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemId:I

    .line 374
    move-object v6, v2

    sget v7, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_menuCategory:I

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupCategory:I

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    move v3, v6

    .line 375
    move-object v6, v2

    sget v7, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_orderInCategory:I

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupOrder:I

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    move v4, v6

    .line 376
    move-object v6, v0

    move v7, v3

    const/high16 v8, -0x10000

    and-int/2addr v7, v8

    move v8, v4

    const v9, 0xffff

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    iput v7, v6, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    .line 378
    move-object v6, v0

    move-object v7, v2

    sget v8, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_title:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v6, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    .line 379
    move-object v6, v0

    move-object v7, v2

    sget v8, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_titleCondensed:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v6, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    .line 380
    move-object v6, v0

    move-object v7, v2

    sget v8, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_icon:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v6, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconResId:I

    .line 381
    move-object v6, v0

    move-object v7, v0

    move-object v8, v2

    sget v9, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_alphabeticShortcut:I

    .line 382
    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v7

    iput-char v7, v6, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemAlphabeticShortcut:C

    .line 383
    move-object v6, v0

    move-object v7, v0

    move-object v8, v2

    sget v9, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_numericShortcut:I

    .line 384
    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v7

    iput-char v7, v6, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemNumericShortcut:C

    .line 385
    move-object v6, v2

    sget v7, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_checkable:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 387
    move-object v6, v0

    move-object v7, v2

    sget v8, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_checkable:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    iput v7, v6, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemCheckable:I

    .line 393
    :goto_1
    move-object v6, v0

    move-object v7, v2

    sget v8, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_checked:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v6, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemChecked:Z

    .line 394
    move-object v6, v0

    move-object v7, v2

    sget v8, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_visible:I

    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupVisible:Z

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v6, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemVisible:Z

    .line 395
    move-object v6, v0

    move-object v7, v2

    sget v8, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_enabled:I

    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v6, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemEnabled:Z

    .line 396
    move-object v6, v0

    move-object v7, v2

    sget v8, Landroid/support/v7/appcompat/R$styleable;->MenuItem_showAsAction:I

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v6, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemShowAsAction:I

    .line 397
    move-object v6, v0

    move-object v7, v2

    sget v8, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_onClick:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    .line 398
    move-object v6, v0

    move-object v7, v2

    sget v8, Landroid/support/v7/appcompat/R$styleable;->MenuItem_actionLayout:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v6, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    .line 399
    move-object v6, v0

    move-object v7, v2

    sget v8, Landroid/support/v7/appcompat/R$styleable;->MenuItem_actionViewClass:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    .line 400
    move-object v6, v0

    move-object v7, v2

    sget v8, Landroid/support/v7/appcompat/R$styleable;->MenuItem_actionProviderClass:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    .line 402
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    move v5, v6

    .line 403
    move v6, v5

    if-eqz v6, :cond_3

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    if-nez v6, :cond_3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-nez v6, :cond_3

    .line 404
    move-object v6, v0

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    sget-object v9, Landroid/support/v7/view/SupportMenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;

    iget-object v10, v10, Landroid/support/v7/view/SupportMenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    invoke-direct {v7, v8, v9, v10}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/view/ActionProvider;

    iput-object v7, v6, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    .line 415
    :goto_3
    move-object v6, v2

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 417
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 418
    return-void

    .line 387
    :cond_0
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 391
    :cond_1
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupCheckable:I

    iput v7, v6, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemCheckable:I

    goto/16 :goto_1

    .line 402
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 408
    :cond_3
    move v6, v5

    if-eqz v6, :cond_4

    .line 409
    const-string v6, "SupportMenuInflater"

    const-string v7, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 412
    :cond_4
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    goto :goto_3
.end method

.method public resetGroup()V
    .locals 3

    .prologue
    .line 340
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupId:I

    .line 341
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupCategory:I

    .line 342
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupOrder:I

    .line 343
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupCheckable:I

    .line 344
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupVisible:Z

    .line 345
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    .line 346
    return-void
.end method
