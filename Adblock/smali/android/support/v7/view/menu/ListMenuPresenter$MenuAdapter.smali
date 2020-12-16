.class Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/ListMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field private mExpandedIndex:I

.field final synthetic this$0:Landroid/support/v7/view/menu/ListMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/support/v7/view/menu/ListMenuPresenter;)V
    .locals 4

    .prologue
    .line 231
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Landroid/support/v7/view/menu/ListMenuPresenter;

    move-object v2, v0

    invoke-direct {v2}, Landroid/widget/BaseAdapter;-><init>()V

    .line 229
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    .line 232
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->findExpandedIndex()V

    .line 233
    return-void
.end method


# virtual methods
.method findExpandedIndex()V
    .locals 8

    .prologue
    .line 270
    move-object v0, p0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Landroid/support/v7/view/menu/ListMenuPresenter;

    iget-object v6, v6, Landroid/support/v7/view/menu/ListMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuBuilder;->getExpandedItem()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v6

    move-object v1, v6

    .line 271
    move-object v6, v1

    if-eqz v6, :cond_1

    .line 272
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Landroid/support/v7/view/menu/ListMenuPresenter;

    iget-object v6, v6, Landroid/support/v7/view/menu/ListMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v6

    move-object v2, v6

    .line 273
    move-object v6, v2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 274
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 275
    move-object v6, v2

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v5, v6

    .line 276
    move-object v6, v5

    move-object v7, v1

    if-ne v6, v7, :cond_0

    .line 277
    move-object v6, v0

    move v7, v4

    iput v7, v6, Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    .line 283
    :goto_1
    return-void

    .line 274
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 282
    :cond_1
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    .line 283
    goto :goto_1
.end method

.method public getCount()I
    .locals 5

    .prologue
    .line 236
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Landroid/support/v7/view/menu/ListMenuPresenter;

    iget-object v3, v3, Landroid/support/v7/view/menu/ListMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v3

    move-object v1, v3

    .line 237
    move-object v3, v1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Landroid/support/v7/view/menu/ListMenuPresenter;

    iget v4, v4, Landroid/support/v7/view/menu/ListMenuPresenter;->mItemIndexOffset:I

    sub-int/2addr v3, v4

    move v2, v3

    .line 238
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    if-gez v3, :cond_0

    .line 239
    move v3, v2

    move v0, v3

    .line 241
    :goto_0
    return v0

    :cond_0
    move v3, v2

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v0, v3

    goto :goto_0
.end method

.method public getItem(I)Landroid/support/v7/view/menu/MenuItemImpl;
    .locals 5

    .prologue
    .line 245
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Landroid/support/v7/view/menu/ListMenuPresenter;

    iget-object v3, v3, Landroid/support/v7/view/menu/ListMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v3

    move-object v2, v3

    .line 246
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Landroid/support/v7/view/menu/ListMenuPresenter;

    iget v4, v4, Landroid/support/v7/view/menu/ListMenuPresenter;->mItemIndexOffset:I

    add-int/2addr v3, v4

    move v1, v3

    .line 247
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    if-ltz v3, :cond_0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    if-lt v3, v4, :cond_0

    .line 248
    add-int/lit8 v1, v1, 0x1

    .line 250
    :cond_0
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/MenuItemImpl;

    move-object v0, v3

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 228
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4

    .prologue
    .line 256
    move-object v0, p0

    move v1, p1

    move v2, v1

    int-to-long v2, v2

    move-wide v0, v2

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    .line 260
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v2

    if-nez v5, :cond_0

    .line 261
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Landroid/support/v7/view/menu/ListMenuPresenter;

    iget-object v5, v5, Landroid/support/v7/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Landroid/support/v7/view/menu/ListMenuPresenter;

    iget v6, v6, Landroid/support/v7/view/menu/ListMenuPresenter;->mItemLayoutRes:I

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    move-object v2, v5

    .line 264
    :cond_0
    move-object v5, v2

    check-cast v5, Landroid/support/v7/view/menu/MenuView$ItemView;

    move-object v4, v5

    .line 265
    move-object v5, v4

    move-object v6, v0

    move v7, v1

    invoke-virtual {v6, v7}, Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/support/v7/view/menu/MenuView$ItemView;->initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V

    .line 266
    move-object v5, v2

    move-object v0, v5

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 287
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->findExpandedIndex()V

    .line 288
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 289
    return-void
.end method
