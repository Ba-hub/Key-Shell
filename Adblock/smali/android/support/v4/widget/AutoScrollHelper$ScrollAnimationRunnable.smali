.class Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/AutoScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollAnimationRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/AutoScrollHelper;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/AutoScrollHelper;)V
    .locals 4

    .prologue
    .line 685
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 686
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 690
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    iget-boolean v4, v4, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    if-nez v4, :cond_0

    .line 718
    :goto_0
    return-void

    .line 694
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    iget-boolean v4, v4, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsReset:Z

    if-eqz v4, :cond_1

    .line 695
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsReset:Z

    .line 696
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    iget-object v4, v4, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v4}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->start()V

    .line 699
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    iget-object v4, v4, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    move-object v1, v4

    .line 700
    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-virtual {v4}, Landroid/support/v4/widget/AutoScrollHelper;->shouldAnimate()Z

    move-result v4

    if-nez v4, :cond_3

    .line 701
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    .line 702
    goto :goto_0

    .line 705
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    iget-boolean v4, v4, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsCancel:Z

    if-eqz v4, :cond_4

    .line 706
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsCancel:Z

    .line 707
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-virtual {v4}, Landroid/support/v4/widget/AutoScrollHelper;->cancelTargetTouch()V

    .line 710
    :cond_4
    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->computeScrollDelta()V

    .line 712
    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->getDeltaX()I

    move-result v4

    move v2, v4

    .line 713
    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->getDeltaY()I

    move-result v4

    move v3, v4

    .line 714
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    move v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/widget/AutoScrollHelper;->scrollTargetBy(II)V

    .line 717
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroid/support/v4/widget/AutoScrollHelper;

    iget-object v4, v4, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    move-object v5, v0

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 718
    goto :goto_0
.end method
