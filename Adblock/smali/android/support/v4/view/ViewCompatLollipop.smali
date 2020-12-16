.class Landroid/support/v4/view/ViewCompatLollipop;
.super Ljava/lang/Object;
.source "ViewCompatLollipop.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/ViewCompatLollipop$OnApplyWindowInsetsListenerBridge;
    }
.end annotation


# static fields
.field private static sThreadLocalRect:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static dispatchApplyWindowInsets(Landroid/view/View;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 140
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    check-cast v4, Landroid/view/WindowInsets;

    move-object v2, v4

    .line 141
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v4

    move-object v3, v4

    .line 142
    move-object v4, v3

    move-object v5, v2

    if-eq v4, v5, :cond_0

    .line 143
    new-instance v4, Landroid/view/WindowInsets;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v3

    invoke-direct {v5, v6}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    move-object v1, v4

    .line 145
    :cond_0
    move-object v4, v1

    move-object v0, v4

    return-object v0
.end method

.method public static dispatchNestedFling(Landroid/view/View;FFZ)Z
    .locals 8

    .prologue
    .line 181
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/View;->dispatchNestedFling(FFZ)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method public static dispatchNestedPreFling(Landroid/view/View;FF)Z
    .locals 6

    .prologue
    .line 185
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->dispatchNestedPreFling(FF)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public static dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z
    .locals 10

    .prologue
    .line 176
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move v6, v1

    move v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->dispatchNestedPreScroll(II[I[I)Z

    move-result v5

    move v0, v5

    return v0
.end method

.method public static dispatchNestedScroll(Landroid/view/View;IIII[I)Z
    .locals 12

    .prologue
    .line 170
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/view/View;->dispatchNestedScroll(IIII[I)Z

    move-result v6

    move v0, v6

    return v0
.end method

.method static getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    .line 87
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .prologue
    .line 109
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getElevation(Landroid/view/View;)F
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getElevation()F

    move-result v1

    move v0, v1

    return v0
.end method

.method private static getEmptyTempRect()Landroid/graphics/Rect;
    .locals 4

    .prologue
    .line 247
    sget-object v1, Landroid/support/v4/view/ViewCompatLollipop;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    if-nez v1, :cond_0

    .line 248
    new-instance v1, Ljava/lang/ThreadLocal;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v1, Landroid/support/v4/view/ViewCompatLollipop;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    .line 250
    :cond_0
    sget-object v1, Landroid/support/v4/view/ViewCompatLollipop;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    move-object v0, v1

    .line 251
    move-object v1, v0

    if-nez v1, :cond_1

    .line 252
    new-instance v1, Landroid/graphics/Rect;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object v0, v1

    .line 253
    sget-object v1, Landroid/support/v4/view/ViewCompatLollipop;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 255
    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 256
    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public static getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getTranslationZ(Landroid/view/View;)F
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getTranslationZ()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getZ(Landroid/view/View;)F
    .locals 2

    .prologue
    .line 189
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getZ()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public static hasNestedScrollingParent(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 165
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->hasNestedScrollingParent()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isImportantForAccessibility(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 83
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->isImportantForAccessibility()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isNestedScrollingEnabled(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 153
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method static offsetLeftAndRight(Landroid/view/View;I)V
    .locals 11

    .prologue
    .line 222
    move-object v0, p0

    move v1, p1

    invoke-static {}, Landroid/support/v4/view/ViewCompatLollipop;->getEmptyTempRect()Landroid/graphics/Rect;

    move-result-object v6

    move-object v2, v6

    .line 223
    const/4 v6, 0x0

    move v3, v6

    .line 225
    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    move-object v4, v6

    .line 226
    move-object v6, v4

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_0

    .line 227
    move-object v6, v4

    check-cast v6, Landroid/view/View;

    move-object v5, v6

    .line 228
    move-object v6, v2

    move-object v7, v5

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    move-object v10, v5

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 231
    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    move-object v9, v0

    .line 232
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    .line 231
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :goto_0
    move v3, v6

    .line 236
    :cond_0
    move-object v6, v0

    move v7, v1

    invoke-static {v6, v7}, Landroid/support/v4/view/ViewCompatHC;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 240
    move v6, v3

    if-eqz v6, :cond_1

    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    move-object v9, v0

    .line 241
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    .line 240
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 242
    move-object v6, v4

    check-cast v6, Landroid/view/View;

    move-object v7, v2

    invoke-virtual {v6, v7}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 244
    :cond_1
    return-void

    .line 231
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method static offsetTopAndBottom(Landroid/view/View;I)V
    .locals 11

    .prologue
    .line 197
    move-object v0, p0

    move v1, p1

    invoke-static {}, Landroid/support/v4/view/ViewCompatLollipop;->getEmptyTempRect()Landroid/graphics/Rect;

    move-result-object v6

    move-object v2, v6

    .line 198
    const/4 v6, 0x0

    move v3, v6

    .line 200
    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    move-object v4, v6

    .line 201
    move-object v6, v4

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_0

    .line 202
    move-object v6, v4

    check-cast v6, Landroid/view/View;

    move-object v5, v6

    .line 203
    move-object v6, v2

    move-object v7, v5

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    move-object v10, v5

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 206
    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    move-object v9, v0

    .line 207
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    .line 206
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :goto_0
    move v3, v6

    .line 211
    :cond_0
    move-object v6, v0

    move v7, v1

    invoke-static {v6, v7}, Landroid/support/v4/view/ViewCompatHC;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 215
    move v6, v3

    if-eqz v6, :cond_1

    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    move-object v9, v0

    .line 216
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    .line 215
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 217
    move-object v6, v4

    check-cast v6, Landroid/view/View;

    move-object v7, v2

    invoke-virtual {v6, v7}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 219
    :cond_1
    return-void

    .line 206
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static onApplyWindowInsets(Landroid/view/View;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 131
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    check-cast v4, Landroid/view/WindowInsets;

    move-object v2, v4

    .line 132
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v4

    move-object v3, v4

    .line 133
    move-object v4, v3

    move-object v5, v2

    if-eq v4, v5, :cond_0

    .line 134
    new-instance v4, Landroid/view/WindowInsets;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v3

    invoke-direct {v5, v6}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    move-object v1, v4

    .line 136
    :cond_0
    move-object v4, v1

    move-object v0, v4

    return-object v0
.end method

.method public static requestApplyInsets(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->requestApplyInsets()V

    .line 50
    return-void
.end method

.method static setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 6

    .prologue
    .line 91
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 93
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ne v4, v5, :cond_1

    .line 96
    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v2, v4

    .line 97
    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object v4, v0

    .line 98
    invoke-virtual {v4}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    move v3, v4

    .line 99
    move-object v4, v2

    if-eqz v4, :cond_1

    move v4, v3

    if-eqz v4, :cond_1

    .line 100
    move-object v4, v2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    move-object v4, v2

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->getDrawableState()[I

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    .line 103
    :cond_0
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 106
    :cond_1
    return-void

    .line 98
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 6

    .prologue
    .line 113
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 115
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ne v4, v5, :cond_1

    .line 118
    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v2, v4

    .line 119
    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object v4, v0

    .line 120
    invoke-virtual {v4}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    move v3, v4

    .line 121
    move-object v4, v2

    if-eqz v4, :cond_1

    move v4, v3

    if-eqz v4, :cond_1

    .line 122
    move-object v4, v2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 123
    move-object v4, v2

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->getDrawableState()[I

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    .line 125
    :cond_0
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 128
    :cond_1
    return-void

    .line 120
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static setElevation(Landroid/view/View;F)V
    .locals 4

    .prologue
    .line 53
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setElevation(F)V

    .line 54
    return-void
.end method

.method public static setNestedScrollingEnabled(Landroid/view/View;Z)V
    .locals 4

    .prologue
    .line 149
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    .line 150
    return-void
.end method

.method public static setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/ViewCompatLollipop$OnApplyWindowInsetsListenerBridge;)V
    .locals 7

    .prologue
    .line 70
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    .line 71
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 80
    :goto_0
    return-void

    .line 73
    :cond_0
    move-object v2, v0

    new-instance v3, Landroid/support/v4/view/ViewCompatLollipop$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/v4/view/ViewCompatLollipop$1;-><init>(Landroid/support/v4/view/ViewCompatLollipop$OnApplyWindowInsetsListenerBridge;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    goto :goto_0
.end method

.method public static setTransitionName(Landroid/view/View;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static setTranslationZ(Landroid/view/View;F)V
    .locals 4

    .prologue
    .line 61
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationZ(F)V

    .line 62
    return-void
.end method

.method public static setZ(Landroid/view/View;F)V
    .locals 4

    .prologue
    .line 193
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setZ(F)V

    .line 194
    return-void
.end method

.method public static startNestedScroll(Landroid/view/View;I)Z
    .locals 4

    .prologue
    .line 157
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->startNestedScroll(I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public static stopNestedScroll(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 161
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/View;->stopNestedScroll()V

    .line 162
    return-void
.end method
