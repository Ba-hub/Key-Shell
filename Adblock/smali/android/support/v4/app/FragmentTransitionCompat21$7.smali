.class final Landroid/support/v4/app/FragmentTransitionCompat21$7;
.super Ljava/lang/Object;
.source "FragmentTransitionCompat21.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/FragmentTransitionCompat21;->scheduleNameReset(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$nameOverrides:Ljava/util/Map;

.field final synthetic val$sharedElementsIn:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 5

    .prologue
    .line 562
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/app/FragmentTransitionCompat21$7;->val$sharedElementsIn:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v4/app/FragmentTransitionCompat21$7;->val$nameOverrides:Ljava/util/Map;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 565
    move-object v0, p0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentTransitionCompat21$7;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v1, v6

    .line 566
    const/4 v6, 0x0

    move v2, v6

    :goto_0
    move v6, v2

    move v7, v1

    if-ge v6, v7, :cond_0

    .line 567
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentTransitionCompat21$7;->val$sharedElementsIn:Ljava/util/ArrayList;

    move v7, v2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    move-object v3, v6

    .line 568
    move-object v6, v3

    invoke-virtual {v6}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 569
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentTransitionCompat21$7;->val$nameOverrides:Ljava/util/Map;

    move-object v7, v4

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v5, v6

    .line 570
    move-object v6, v3

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 566
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 572
    :cond_0
    return-void
.end method
