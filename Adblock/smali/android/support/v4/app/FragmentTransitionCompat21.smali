.class Landroid/support/v4/app/FragmentTransitionCompat21;
.super Ljava/lang/Object;
.source "FragmentTransitionCompat21.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/app/FragmentTransitionCompat21;->findKeyForValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static addTarget(Ljava/lang/Object;Landroid/view/View;)V
    .locals 5

    .prologue
    .line 525
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    if-eqz v3, :cond_0

    .line 526
    move-object v3, v0

    check-cast v3, Landroid/transition/Transition;

    move-object v2, v3

    .line 527
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    move-result-object v3

    .line 529
    :cond_0
    return-void
.end method

.method public static addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    check-cast v7, Landroid/transition/Transition;

    move-object v2, v7

    .line 157
    move-object v7, v2

    if-nez v7, :cond_0

    .line 177
    :goto_0
    return-void

    .line 160
    :cond_0
    move-object v7, v2

    instance-of v7, v7, Landroid/transition/TransitionSet;

    if-eqz v7, :cond_2

    .line 161
    move-object v7, v2

    check-cast v7, Landroid/transition/TransitionSet;

    move-object v3, v7

    .line 162
    move-object v7, v3

    invoke-virtual {v7}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v7

    move v4, v7

    .line 163
    const/4 v7, 0x0

    move v5, v7

    :goto_1
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_1

    .line 164
    move-object v7, v3

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v7

    move-object v6, v7

    .line 165
    move-object v7, v6

    move-object v8, v1

    invoke-static {v7, v8}, Landroid/support/v4/app/FragmentTransitionCompat21;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 163
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 177
    :cond_1
    goto :goto_0

    .line 167
    :cond_2
    move-object v7, v2

    invoke-static {v7}, Landroid/support/v4/app/FragmentTransitionCompat21;->hasSimpleTarget(Landroid/transition/Transition;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 168
    move-object v7, v2

    invoke-virtual {v7}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v7

    move-object v3, v7

    .line 169
    move-object v7, v3

    invoke-static {v7}, Landroid/support/v4/app/FragmentTransitionCompat21;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 171
    move-object v7, v1

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v4, v7

    .line 172
    const/4 v7, 0x0

    move v5, v7

    :goto_2
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_1

    .line 173
    move-object v7, v2

    move-object v8, v1

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    move-result-object v7

    .line 172
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method public static beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 294
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/transition/Transition;

    invoke-static {v2, v3}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 295
    return-void
.end method

.method private static bfsAddViewChildren(Ljava/util/List;Landroid/view/View;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    move-object v1, p1

    move-object v9, v0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move v2, v9

    .line 87
    move-object v9, v0

    move-object v10, v1

    move v11, v2

    invoke-static {v9, v10, v11}, Landroid/support/v4/app/FragmentTransitionCompat21;->containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 104
    :goto_0
    return-void

    .line 90
    :cond_0
    move-object v9, v0

    move-object v10, v1

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 91
    move v9, v2

    move v3, v9

    :goto_1
    move v9, v3

    move-object v10, v0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 92
    move-object v9, v0

    move v10, v3

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    move-object v4, v9

    .line 93
    move-object v9, v4

    instance-of v9, v9, Landroid/view/ViewGroup;

    if-eqz v9, :cond_2

    .line 94
    move-object v9, v4

    check-cast v9, Landroid/view/ViewGroup;

    move-object v5, v9

    .line 95
    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    move v6, v9

    .line 96
    const/4 v9, 0x0

    move v7, v9

    :goto_2
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_2

    .line 97
    move-object v9, v5

    move v10, v7

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v8, v9

    .line 98
    move-object v9, v0

    move-object v10, v8

    move v11, v2

    invoke-static {v9, v10, v11}, Landroid/support/v4/app/FragmentTransitionCompat21;->containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 99
    move-object v9, v0

    move-object v10, v8

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 96
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 91
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 104
    :cond_3
    goto :goto_0
.end method

.method public static captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 364
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 365
    move-object v6, v1

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_2

    .line 366
    move-object v6, v1

    check-cast v6, Landroid/view/ViewGroup;

    move-object v2, v6

    .line 367
    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 368
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v3, v6

    .line 371
    const/4 v6, 0x0

    move v4, v6

    :goto_1
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    .line 372
    move-object v6, v2

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    .line 373
    move-object v6, v0

    move-object v7, v5

    invoke-static {v6, v7}, Landroid/support/v4/app/FragmentTransitionCompat21;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 371
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 377
    :cond_2
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_0
.end method

.method public static cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 40
    move-object v0, p0

    const/4 v2, 0x0

    move-object v1, v2

    .line 41
    move-object v2, v0

    if-eqz v2, :cond_0

    .line 42
    move-object v2, v0

    check-cast v2, Landroid/transition/Transition;

    invoke-virtual {v2}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v2

    move-object v1, v2

    .line 44
    :cond_0
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method private static containedBeforeIndex(Ljava/util/List;Landroid/view/View;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "I)Z"
        }
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 112
    move-object v4, v0

    move v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v1

    if-ne v4, v5, :cond_0

    .line 113
    const/4 v4, 0x1

    move v0, v4

    .line 116
    :goto_1
    return v0

    .line 111
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 116
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method private static findKeyForValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 425
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v3, v4

    .line 426
    move-object v4, v1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 427
    move-object v4, v3

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v0, v4

    .line 430
    :goto_1
    return-object v0

    .line 429
    :cond_0
    goto :goto_0

    .line 430
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method public static findNamedViews(Ljava/util/Map;Landroid/view/View;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 387
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 388
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 389
    move-object v7, v2

    if-eqz v7, :cond_0

    .line 390
    move-object v7, v0

    move-object v8, v2

    move-object v9, v1

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 392
    :cond_0
    move-object v7, v1

    instance-of v7, v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_1

    .line 393
    move-object v7, v1

    check-cast v7, Landroid/view/ViewGroup;

    move-object v3, v7

    .line 394
    move-object v7, v3

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    move v4, v7

    .line 395
    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_1

    .line 396
    move-object v7, v3

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v6, v7

    .line 397
    move-object v7, v0

    move-object v8, v6

    invoke-static {v7, v8}, Landroid/support/v4/app/FragmentTransitionCompat21;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 395
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 401
    :cond_1
    return-void
.end method

.method public static getBoundsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 9

    .prologue
    .line 142
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x2

    new-array v3, v3, [I

    move-object v2, v3

    .line 143
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 144
    move-object v3, v1

    move-object v4, v2

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object v5, v2

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object v6, v2

    const/4 v7, 0x0

    aget v6, v6, v7

    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    move-object v7, v2

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 145
    return-void
.end method

.method private static hasSimpleTarget(Landroid/transition/Transition;)Z
    .locals 2

    .prologue
    .line 183
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/transition/Transition;->getTargetIds()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 184
    invoke-virtual {v1}, Landroid/transition/Transition;->getTargetNames()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 185
    invoke-virtual {v1}, Landroid/transition/Transition;->getTargetTypes()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isNullOrEmpty(Ljava/util/List;)Z
    .locals 2

    .prologue
    .line 192
    move-object v0, p0

    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

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

.method public static mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .prologue
    .line 264
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v8, 0x0

    move-object v3, v8

    .line 265
    move-object v8, v0

    check-cast v8, Landroid/transition/Transition;

    move-object v4, v8

    .line 266
    move-object v8, v1

    check-cast v8, Landroid/transition/Transition;

    move-object v5, v8

    .line 267
    move-object v8, v2

    check-cast v8, Landroid/transition/Transition;

    move-object v6, v8

    .line 268
    move-object v8, v4

    if-eqz v8, :cond_2

    move-object v8, v5

    if-eqz v8, :cond_2

    .line 269
    new-instance v8, Landroid/transition/TransitionSet;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Landroid/transition/TransitionSet;-><init>()V

    move-object v9, v4

    .line 270
    invoke-virtual {v8, v9}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v8

    move-object v9, v5

    .line 271
    invoke-virtual {v8, v9}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v8

    const/4 v9, 0x1

    .line 272
    invoke-virtual {v8, v9}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    move-result-object v8

    move-object v3, v8

    .line 278
    :cond_0
    :goto_0
    move-object v8, v6

    if-eqz v8, :cond_4

    .line 279
    new-instance v8, Landroid/transition/TransitionSet;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Landroid/transition/TransitionSet;-><init>()V

    move-object v7, v8

    .line 280
    move-object v8, v3

    if-eqz v8, :cond_1

    .line 281
    move-object v8, v7

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v8

    .line 283
    :cond_1
    move-object v8, v7

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v8

    .line 284
    move-object v8, v7

    move-object v0, v8

    .line 286
    :goto_1
    return-object v0

    .line 273
    :cond_2
    move-object v8, v4

    if-eqz v8, :cond_3

    .line 274
    move-object v8, v4

    move-object v3, v8

    goto :goto_0

    .line 275
    :cond_3
    move-object v8, v5

    if-eqz v8, :cond_0

    .line 276
    move-object v8, v5

    move-object v3, v8

    goto :goto_0

    .line 286
    :cond_4
    move-object v8, v3

    move-object v0, v8

    goto :goto_1
.end method

.method public static mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 202
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v4, Landroid/transition/TransitionSet;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/transition/TransitionSet;-><init>()V

    move-object v3, v4

    .line 203
    move-object v4, v0

    if-eqz v4, :cond_0

    .line 204
    move-object v4, v3

    move-object v5, v0

    check-cast v5, Landroid/transition/Transition;

    invoke-virtual {v4, v5}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v4

    .line 206
    :cond_0
    move-object v4, v1

    if-eqz v4, :cond_1

    .line 207
    move-object v4, v3

    move-object v5, v1

    check-cast v5, Landroid/transition/Transition;

    invoke-virtual {v4, v5}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v4

    .line 209
    :cond_1
    move-object v4, v2

    if-eqz v4, :cond_2

    .line 210
    move-object v4, v3

    move-object v5, v2

    check-cast v5, Landroid/transition/Transition;

    invoke-virtual {v4, v5}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v4

    .line 212
    :cond_2
    move-object v4, v3

    move-object v0, v4

    return-object v0
.end method

.method public static prepareSetNameOverridesOptimized(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 306
    move-object v0, p0

    new-instance v5, Ljava/util/ArrayList;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v5

    .line 307
    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v5

    .line 308
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 309
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    move-object v4, v5

    .line 310
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v6}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 311
    move-object v5, v4

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 308
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 313
    :cond_0
    move-object v5, v1

    move-object v0, v5

    return-object v0
.end method

.method public static removeTarget(Ljava/lang/Object;Landroid/view/View;)V
    .locals 5

    .prologue
    .line 535
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    if-eqz v3, :cond_0

    .line 536
    move-object v3, v0

    check-cast v3, Landroid/transition/Transition;

    move-object v2, v3

    .line 537
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    move-result-object v3

    .line 539
    :cond_0
    return-void
.end method

.method public static replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 497
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, v0

    check-cast v8, Landroid/transition/Transition;

    move-object v3, v8

    .line 498
    move-object v8, v3

    instance-of v8, v8, Landroid/transition/TransitionSet;

    if-eqz v8, :cond_1

    .line 499
    move-object v8, v3

    check-cast v8, Landroid/transition/TransitionSet;

    move-object v4, v8

    .line 500
    move-object v8, v4

    invoke-virtual {v8}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v8

    move v5, v8

    .line 501
    const/4 v8, 0x0

    move v6, v8

    :goto_0
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_0

    .line 502
    move-object v8, v4

    move v9, v6

    invoke-virtual {v8, v9}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v8

    move-object v7, v8

    .line 503
    move-object v8, v7

    move-object v9, v1

    move-object v10, v2

    invoke-static {v8, v9, v10}, Landroid/support/v4/app/FragmentTransitionCompat21;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 501
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 519
    :cond_0
    return-void

    .line 505
    :cond_1
    move-object v8, v3

    invoke-static {v8}, Landroid/support/v4/app/FragmentTransitionCompat21;->hasSimpleTarget(Landroid/transition/Transition;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 506
    move-object v8, v3

    invoke-virtual {v8}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v8

    move-object v4, v8

    .line 507
    move-object v8, v4

    if-eqz v8, :cond_0

    move-object v8, v4

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move-object v9, v1

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v8, v9, :cond_0

    move-object v8, v4

    move-object v9, v1

    .line 508
    invoke-interface {v8, v9}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 510
    move-object v8, v2

    if-nez v8, :cond_2

    const/4 v8, 0x0

    :goto_1
    move v5, v8

    .line 511
    const/4 v8, 0x0

    move v6, v8

    :goto_2
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_3

    .line 512
    move-object v8, v3

    move-object v9, v2

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    move-result-object v8

    .line 511
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 510
    :cond_2
    move-object v8, v2

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    goto :goto_1

    .line 514
    :cond_3
    move-object v8, v1

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v6, v8

    :goto_3
    move v8, v6

    if-ltz v8, :cond_0

    .line 515
    move-object v8, v3

    move-object v9, v1

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    move-result-object v8

    .line 514
    add-int/lit8 v6, v6, -0x1

    goto :goto_3
.end method

.method public static scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    check-cast v4, Landroid/transition/Transition;

    move-object v3, v4

    .line 222
    move-object v4, v3

    new-instance v5, Landroid/support/v4/app/FragmentTransitionCompat21$2;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Landroid/support/v4/app/FragmentTransitionCompat21$2;-><init>(Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    move-result-object v4

    .line 249
    return-void
.end method

.method public static scheduleNameReset(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 562
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    new-instance v4, Landroid/support/v4/app/FragmentTransitionCompat21$7;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroid/support/v4/app/FragmentTransitionCompat21$7;-><init>(Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-static {v3, v4}, Landroid/support/v4/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/OneShotPreDrawListener;

    move-result-object v3

    .line 574
    return-void
.end method

.method public static scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 441
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v8, v0

    check-cast v8, Landroid/transition/Transition;

    move-object v7, v8

    .line 442
    move-object v8, v7

    new-instance v9, Landroid/support/v4/app/FragmentTransitionCompat21$5;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    move-object v11, v1

    move-object v12, v2

    move-object v13, v3

    move-object v14, v4

    move-object v15, v5

    move-object/from16 v16, v6

    invoke-direct/range {v10 .. v16}, Landroid/support/v4/app/FragmentTransitionCompat21$5;-><init>(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {v8, v9}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    move-result-object v8

    .line 472
    return-void
.end method

.method public static setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 8

    .prologue
    .line 546
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    if-eqz v3, :cond_0

    .line 547
    move-object v3, v0

    check-cast v3, Landroid/transition/Transition;

    move-object v2, v3

    .line 548
    move-object v3, v2

    new-instance v4, Landroid/support/v4/app/FragmentTransitionCompat21$6;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Landroid/support/v4/app/FragmentTransitionCompat21$6;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v4}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 558
    :cond_0
    return-void
.end method

.method public static setEpicenter(Ljava/lang/Object;Landroid/view/View;)V
    .locals 9

    .prologue
    .line 123
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    if-eqz v4, :cond_0

    .line 124
    move-object v4, v0

    check-cast v4, Landroid/transition/Transition;

    move-object v2, v4

    .line 125
    new-instance v4, Landroid/graphics/Rect;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object v3, v4

    .line 126
    move-object v4, v1

    move-object v5, v3

    invoke-static {v4, v5}, Landroid/support/v4/app/FragmentTransitionCompat21;->getBoundsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 128
    move-object v4, v2

    new-instance v5, Landroid/support/v4/app/FragmentTransitionCompat21$1;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v3

    invoke-direct {v6, v7}, Landroid/support/v4/app/FragmentTransitionCompat21$1;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v5}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 135
    :cond_0
    return-void
.end method

.method public static setNameOverridesOptimized(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 325
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v12, v2

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v5, v12

    .line 326
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v12

    .line 328
    const/4 v12, 0x0

    move v7, v12

    :goto_0
    move v12, v7

    move v13, v5

    if-ge v12, v13, :cond_3

    .line 329
    move-object v12, v1

    move v13, v7

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    move-object v8, v12

    .line 330
    move-object v12, v8

    invoke-virtual {v12}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v12

    move-object v9, v12

    .line 331
    move-object v12, v6

    move-object v13, v9

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 332
    move-object v12, v9

    if-nez v12, :cond_1

    .line 328
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 335
    :cond_1
    move-object v12, v8

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 336
    move-object v12, v4

    move-object v13, v9

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object v10, v12

    .line 337
    const/4 v12, 0x0

    move v11, v12

    :goto_2
    move v12, v11

    move v13, v5

    if-ge v12, v13, :cond_0

    .line 338
    move-object v12, v10

    move-object v13, v3

    move v14, v11

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 339
    move-object v12, v2

    move v13, v11

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    move-object v13, v9

    invoke-virtual {v12, v13}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 340
    goto :goto_1

    .line 337
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 345
    :cond_3
    move-object v12, v0

    new-instance v13, Landroid/support/v4/app/FragmentTransitionCompat21$3;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    move v15, v5

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v1

    move-object/from16 v19, v6

    invoke-direct/range {v14 .. v19}, Landroid/support/v4/app/FragmentTransitionCompat21$3;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v12, v13}, Landroid/support/v4/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/OneShotPreDrawListener;

    move-result-object v12

    .line 354
    return-void
.end method

.method public static setNameOverridesUnoptimized(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 405
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    new-instance v4, Landroid/support/v4/app/FragmentTransitionCompat21$4;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroid/support/v4/app/FragmentTransitionCompat21$4;-><init>(Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-static {v3, v4}, Landroid/support/v4/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/OneShotPreDrawListener;

    move-result-object v3

    .line 419
    return-void
.end method

.method public static setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, v0

    check-cast v8, Landroid/transition/TransitionSet;

    move-object v3, v8

    .line 69
    move-object v8, v3

    invoke-virtual {v8}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v8

    move-object v4, v8

    .line 70
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 71
    move-object v8, v2

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v5, v8

    .line 72
    const/4 v8, 0x0

    move v6, v8

    :goto_0
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_0

    .line 73
    move-object v8, v2

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    move-object v7, v8

    .line 74
    move-object v8, v4

    move-object v9, v7

    invoke-static {v8, v9}, Landroid/support/v4/app/FragmentTransitionCompat21;->bfsAddViewChildren(Ljava/util/List;Landroid/view/View;)V

    .line 72
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 76
    :cond_0
    move-object v8, v4

    move-object v9, v1

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 77
    move-object v8, v2

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 78
    move-object v8, v3

    move-object v9, v2

    invoke-static {v8, v9}, Landroid/support/v4/app/FragmentTransitionCompat21;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 79
    return-void
.end method

.method public static swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 480
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    check-cast v4, Landroid/transition/TransitionSet;

    move-object v3, v4

    .line 481
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 482
    move-object v4, v3

    invoke-virtual {v4}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 483
    move-object v4, v3

    invoke-virtual {v4}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v4

    move-object v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v4

    .line 484
    move-object v4, v3

    move-object v5, v1

    move-object v6, v2

    invoke-static {v4, v5, v6}, Landroid/support/v4/app/FragmentTransitionCompat21;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 486
    :cond_0
    return-void
.end method

.method public static wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 52
    move-object v0, p0

    move-object v2, v0

    if-nez v2, :cond_0

    .line 53
    const/4 v2, 0x0

    move-object v0, v2

    .line 57
    :goto_0
    return-object v0

    .line 55
    :cond_0
    new-instance v2, Landroid/transition/TransitionSet;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/transition/TransitionSet;-><init>()V

    move-object v1, v2

    .line 56
    move-object v2, v1

    move-object v3, v0

    check-cast v3, Landroid/transition/Transition;

    invoke-virtual {v2, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v2

    .line 57
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method
