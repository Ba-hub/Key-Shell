.class final Landroid/support/v4/app/FragmentTransitionCompat21$5;
.super Ljava/lang/Object;
.source "FragmentTransitionCompat21.java"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/FragmentTransitionCompat21;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$enterTransition:Ljava/lang/Object;

.field final synthetic val$enteringViews:Ljava/util/ArrayList;

.field final synthetic val$exitTransition:Ljava/lang/Object;

.field final synthetic val$exitingViews:Ljava/util/ArrayList;

.field final synthetic val$sharedElementTransition:Ljava/lang/Object;

.field final synthetic val$sharedElementsIn:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 9

    .prologue
    .line 442
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Landroid/support/v4/app/FragmentTransitionCompat21$5;->val$enterTransition:Ljava/lang/Object;

    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Landroid/support/v4/app/FragmentTransitionCompat21$5;->val$enteringViews:Ljava/util/ArrayList;

    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Landroid/support/v4/app/FragmentTransitionCompat21$5;->val$exitTransition:Ljava/lang/Object;

    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Landroid/support/v4/app/FragmentTransitionCompat21$5;->val$exitingViews:Ljava/util/ArrayList;

    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Landroid/support/v4/app/FragmentTransitionCompat21$5;->val$sharedElementTransition:Ljava/lang/Object;

    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Landroid/support/v4/app/FragmentTransitionCompat21$5;->val$sharedElementsIn:Ljava/util/ArrayList;

    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0

    .prologue
    .line 462
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 0

    .prologue
    .line 458
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 0

    .prologue
    .line 466
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 0

    .prologue
    .line 470
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 5

    .prologue
    .line 445
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentTransitionCompat21$5;->val$enterTransition:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 446
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentTransitionCompat21$5;->val$enterTransition:Ljava/lang/Object;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentTransitionCompat21$5;->val$enteringViews:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/support/v4/app/FragmentTransitionCompat21;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 448
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentTransitionCompat21$5;->val$exitTransition:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 449
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentTransitionCompat21$5;->val$exitTransition:Ljava/lang/Object;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentTransitionCompat21$5;->val$exitingViews:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/support/v4/app/FragmentTransitionCompat21;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 451
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentTransitionCompat21$5;->val$sharedElementTransition:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 452
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentTransitionCompat21$5;->val$sharedElementTransition:Ljava/lang/Object;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentTransitionCompat21$5;->val$sharedElementsIn:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/support/v4/app/FragmentTransitionCompat21;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 454
    :cond_2
    return-void
.end method
