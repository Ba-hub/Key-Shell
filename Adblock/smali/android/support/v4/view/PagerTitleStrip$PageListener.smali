.class Landroid/support/v4/view/PagerTitleStrip$PageListener;
.super Landroid/database/DataSetObserver;
.source "PagerTitleStrip.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/PagerTitleStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageListener"
.end annotation


# instance fields
.field private mScrollState:I

.field final synthetic this$0:Landroid/support/v4/view/PagerTitleStrip;


# direct methods
.method constructor <init>(Landroid/support/v4/view/PagerTitleStrip;)V
    .locals 4

    .prologue
    .line 484
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    move-object v2, v0

    invoke-direct {v2}, Landroid/database/DataSetObserver;-><init>()V

    .line 485
    return-void
.end method


# virtual methods
.method public onAdapterChanged(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V
    .locals 7

    .prologue
    .line 515
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/view/PagerTitleStrip;->updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    .line 516
    return-void
.end method

.method public onChanged()V
    .locals 6

    .prologue
    .line 520
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v3, v3, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v4, v4, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/view/PagerTitleStrip;->updateText(ILandroid/support/v4/view/PagerAdapter;)V

    .line 522
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    iget v2, v2, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    iget v2, v2, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    :goto_0
    move v1, v2

    .line 523
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v3, v3, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    move v4, v1

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/view/PagerTitleStrip;->updateTextPositions(IFZ)V

    .line 524
    return-void

    .line 522
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 4

    .prologue
    .line 509
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/view/PagerTitleStrip$PageListener;->mScrollState:I

    .line 510
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 8

    .prologue
    .line 489
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, v2

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 491
    add-int/lit8 v1, v1, 0x1

    .line 493
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    move v5, v1

    move v6, v2

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v4/view/PagerTitleStrip;->updateTextPositions(IFZ)V

    .line 494
    return-void
.end method

.method public onPageSelected(I)V
    .locals 7

    .prologue
    .line 498
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/view/PagerTitleStrip$PageListener;->mScrollState:I

    if-nez v3, :cond_0

    .line 500
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v4, v4, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v5, v5, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/view/PagerTitleStrip;->updateText(ILandroid/support/v4/view/PagerAdapter;)V

    .line 502
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    iget v3, v3, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    iget v3, v3, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    :goto_0
    move v2, v3

    .line 503
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/view/PagerTitleStrip$PageListener;->this$0:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v4, v4, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    move v5, v2

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/view/PagerTitleStrip;->updateTextPositions(IFZ)V

    .line 505
    :cond_0
    return-void

    .line 502
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
