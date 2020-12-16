.class final Landroid/support/v4/view/ViewPropertyAnimatorCompatJB$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewPropertyAnimatorCompatJB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/ViewPropertyAnimatorCompatJB;->setListener(Landroid/view/View;Landroid/support/v4/view/ViewPropertyAnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewPropertyAnimatorListener;Landroid/view/View;)V
    .locals 5

    .prologue
    .line 43
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/view/ViewPropertyAnimatorCompatJB$1;->val$listener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v4/view/ViewPropertyAnimatorCompatJB$1;->val$view:Landroid/view/View;

    move-object v3, v0

    invoke-direct {v3}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/ViewPropertyAnimatorCompatJB$1;->val$listener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/ViewPropertyAnimatorCompatJB$1;->val$view:Landroid/view/View;

    invoke-interface {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationCancel(Landroid/view/View;)V

    .line 47
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 51
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/ViewPropertyAnimatorCompatJB$1;->val$listener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/ViewPropertyAnimatorCompatJB$1;->val$view:Landroid/view/View;

    invoke-interface {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    .line 52
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/ViewPropertyAnimatorCompatJB$1;->val$listener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/ViewPropertyAnimatorCompatJB$1;->val$view:Landroid/view/View;

    invoke-interface {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V

    .line 57
    return-void
.end method
