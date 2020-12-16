.class Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StubApi21"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V
    .locals 4

    .prologue
    .line 672
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 673
    return-void
.end method


# virtual methods
.method applyOptions(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 705
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v1

    if-nez v7, :cond_0

    .line 706
    const/4 v7, 0x0

    move-object v0, v7

    .line 721
    :goto_0
    return-object v0

    .line 708
    :cond_0
    move-object v7, v2

    const-string v8, "android.media.browse.extra.PAGE"

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    move v3, v7

    .line 709
    move-object v7, v2

    const-string v8, "android.media.browse.extra.PAGE_SIZE"

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    move v4, v7

    .line 710
    move v7, v3

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    move v7, v4

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 711
    move-object v7, v1

    move-object v0, v7

    goto :goto_0

    .line 713
    :cond_1
    move v7, v4

    move v8, v3

    mul-int/2addr v7, v8

    move v5, v7

    .line 714
    move v7, v5

    move v8, v4

    add-int/2addr v7, v8

    move v6, v7

    .line 715
    move v7, v3

    if-ltz v7, :cond_2

    move v7, v4

    const/4 v8, 0x1

    if-lt v7, v8, :cond_2

    move v7, v5

    move-object v8, v1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt v7, v8, :cond_3

    .line 716
    :cond_2
    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v0, v7

    goto :goto_0

    .line 718
    :cond_3
    move v7, v6

    move-object v8, v1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-le v7, v8, :cond_4

    .line 719
    move-object v7, v1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move v6, v7

    .line 721
    :cond_4
    move-object v7, v1

    move v8, v5

    move v9, v6

    invoke-interface {v7, v8, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    move-object v0, v7

    goto :goto_0
.end method

.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V
    .locals 14
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 677
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    iget-object v9, v9, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->mSubscriptionRef:Ljava/lang/ref/WeakReference;

    if-nez v9, :cond_1

    const/4 v9, 0x0

    :goto_0
    move-object v3, v9

    .line 678
    move-object v9, v3

    if-nez v9, :cond_2

    .line 679
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    move-object v10, v1

    move-object v11, v2

    .line 680
    invoke-static {v11}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->fromMediaItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 679
    invoke-virtual {v9, v10, v11}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V

    .line 696
    :cond_0
    return-void

    .line 677
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    iget-object v9, v9, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->mSubscriptionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/media/MediaBrowserCompat$Subscription;

    goto :goto_0

    .line 682
    :cond_2
    move-object v9, v2

    .line 683
    invoke-static {v9}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->fromMediaItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    move-object v4, v9

    .line 684
    move-object v9, v3

    invoke-virtual {v9}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->getCallbacks()Ljava/util/List;

    move-result-object v9

    move-object v5, v9

    .line 685
    move-object v9, v3

    invoke-virtual {v9}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->getOptionsList()Ljava/util/List;

    move-result-object v9

    move-object v6, v9

    .line 686
    const/4 v9, 0x0

    move v7, v9

    :goto_1
    move v9, v7

    move-object v10, v5

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 687
    move-object v9, v6

    move v10, v7

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    move-object v8, v9

    .line 688
    move-object v9, v8

    if-nez v9, :cond_3

    .line 689
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    move-object v10, v1

    move-object v11, v4

    invoke-virtual {v9, v10, v11}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V

    .line 686
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 691
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    move-object v10, v1

    move-object v11, v0

    move-object v12, v4

    move-object v13, v8

    .line 692
    invoke-virtual {v11, v12, v13}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->applyOptions(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v11

    move-object v12, v8

    .line 691
    invoke-virtual {v9, v10, v11, v12}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_2
.end method

.method public onError(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 700
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onError(Ljava/lang/String;)V

    .line 701
    return-void
.end method
