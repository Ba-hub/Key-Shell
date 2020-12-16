.class final Landroid/support/v4/app/FragmentTransitionCompat21$3;
.super Ljava/lang/Object;
.source "FragmentTransitionCompat21.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/FragmentTransitionCompat21;->setNameOverridesOptimized(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$inNames:Ljava/util/ArrayList;

.field final synthetic val$numSharedElements:I

.field final synthetic val$outNames:Ljava/util/ArrayList;

.field final synthetic val$sharedElementsIn:Ljava/util/ArrayList;

.field final synthetic val$sharedElementsOut:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8

    .prologue
    .line 345
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, v0

    move v7, v1

    iput v7, v6, Landroid/support/v4/app/FragmentTransitionCompat21$3;->val$numSharedElements:I

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Landroid/support/v4/app/FragmentTransitionCompat21$3;->val$sharedElementsIn:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Landroid/support/v4/app/FragmentTransitionCompat21$3;->val$inNames:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Landroid/support/v4/app/FragmentTransitionCompat21$3;->val$sharedElementsOut:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Landroid/support/v4/app/FragmentTransitionCompat21$3;->val$outNames:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 348
    move-object v0, p0

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/app/FragmentTransitionCompat21$3;->val$numSharedElements:I

    if-ge v2, v3, :cond_0

    .line 349
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentTransitionCompat21$3;->val$sharedElementsIn:Ljava/util/ArrayList;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentTransitionCompat21$3;->val$inNames:Ljava/util/ArrayList;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 350
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentTransitionCompat21$3;->val$sharedElementsOut:Ljava/util/ArrayList;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentTransitionCompat21$3;->val$outNames:Ljava/util/ArrayList;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 348
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 352
    :cond_0
    return-void
.end method
