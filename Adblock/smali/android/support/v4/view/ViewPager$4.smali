.class Landroid/support/v4/view/ViewPager$4;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Landroid/support/v4/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/ViewPager;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/support/v4/view/ViewPager;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .locals 6

    .prologue
    .line 428
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/view/ViewPager$4;->this$0:Landroid/support/v4/view/ViewPager;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 429
    move-object v2, v0

    new-instance v3, Landroid/graphics/Rect;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v2, Landroid/support/v4/view/ViewPager$4;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 13

    .prologue
    .line 435
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, v1

    move-object v9, v2

    .line 436
    invoke-static {v8, v9}, Landroid/support/v4/view/ViewCompat;->onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v8

    move-object v3, v8

    .line 437
    move-object v8, v3

    invoke-virtual {v8}, Landroid/support/v4/view/WindowInsetsCompat;->isConsumed()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 439
    move-object v8, v3

    move-object v0, v8

    .line 471
    :goto_0
    return-object v0

    .line 449
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/view/ViewPager$4;->mTempRect:Landroid/graphics/Rect;

    move-object v4, v8

    .line 450
    move-object v8, v4

    move-object v9, v3

    invoke-virtual {v9}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v9

    iput v9, v8, Landroid/graphics/Rect;->left:I

    .line 451
    move-object v8, v4

    move-object v9, v3

    invoke-virtual {v9}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v9

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 452
    move-object v8, v4

    move-object v9, v3

    invoke-virtual {v9}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v9

    iput v9, v8, Landroid/graphics/Rect;->right:I

    .line 453
    move-object v8, v4

    move-object v9, v3

    invoke-virtual {v9}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v9

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    .line 455
    const/4 v8, 0x0

    move v5, v8

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/view/ViewPager$4;->this$0:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v8}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v8

    move v6, v8

    :goto_1
    move v8, v5

    move v9, v6

    if-ge v8, v9, :cond_1

    .line 456
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/view/ViewPager$4;->this$0:Landroid/support/v4/view/ViewPager;

    move v9, v5

    .line 457
    invoke-virtual {v8, v9}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v9, v3

    invoke-static {v8, v9}, Landroid/support/v4/view/ViewCompat;->dispatchApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v8

    move-object v7, v8

    .line 460
    move-object v8, v4

    move-object v9, v7

    invoke-virtual {v9}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v9

    move-object v10, v4

    iget v10, v10, Landroid/graphics/Rect;->left:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, v8, Landroid/graphics/Rect;->left:I

    .line 462
    move-object v8, v4

    move-object v9, v7

    invoke-virtual {v9}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v9

    move-object v10, v4

    iget v10, v10, Landroid/graphics/Rect;->top:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 464
    move-object v8, v4

    move-object v9, v7

    invoke-virtual {v9}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v9

    move-object v10, v4

    iget v10, v10, Landroid/graphics/Rect;->right:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, v8, Landroid/graphics/Rect;->right:I

    .line 466
    move-object v8, v4

    move-object v9, v7

    invoke-virtual {v9}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v9

    move-object v10, v4

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    .line 455
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 471
    :cond_1
    move-object v8, v3

    move-object v9, v4

    iget v9, v9, Landroid/graphics/Rect;->left:I

    move-object v10, v4

    iget v10, v10, Landroid/graphics/Rect;->top:I

    move-object v11, v4

    iget v11, v11, Landroid/graphics/Rect;->right:I

    move-object v12, v4

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/support/v4/view/WindowInsetsCompat;->replaceSystemWindowInsets(IIII)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v8

    move-object v0, v8

    goto/16 :goto_0
.end method
