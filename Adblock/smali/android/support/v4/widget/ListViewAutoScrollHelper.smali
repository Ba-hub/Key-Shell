.class public Landroid/support/v4/widget/ListViewAutoScrollHelper;
.super Landroid/support/v4/widget/AutoScrollHelper;
.source "ListViewAutoScrollHelper.java"


# instance fields
.field private final mTarget:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/widget/ListView;)V
    .locals 4

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v4/widget/AutoScrollHelper;-><init>(Landroid/view/View;)V

    .line 32
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/widget/ListViewAutoScrollHelper;->mTarget:Landroid/widget/ListView;

    .line 33
    return-void
.end method


# virtual methods
.method public canTargetScrollHorizontally(I)Z
    .locals 3

    .prologue
    .line 43
    move-object v0, p0

    move v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public canTargetScrollVertically(I)Z
    .locals 11

    .prologue
    .line 48
    move-object v0, p0

    move v1, p1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/ListViewAutoScrollHelper;->mTarget:Landroid/widget/ListView;

    move-object v2, v8

    .line 49
    move-object v8, v2

    invoke-virtual {v8}, Landroid/widget/ListView;->getCount()I

    move-result v8

    move v3, v8

    .line 50
    move v8, v3

    if-nez v8, :cond_0

    .line 51
    const/4 v8, 0x0

    move v0, v8

    .line 80
    :goto_0
    return v0

    .line 54
    :cond_0
    move-object v8, v2

    invoke-virtual {v8}, Landroid/widget/ListView;->getChildCount()I

    move-result v8

    move v4, v8

    .line 55
    move-object v8, v2

    invoke-virtual {v8}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v8

    move v5, v8

    .line 56
    move v8, v5

    move v9, v4

    add-int/2addr v8, v9

    move v6, v8

    .line 58
    move v8, v1

    if-lez v8, :cond_2

    .line 60
    move v8, v6

    move v9, v3

    if-lt v8, v9, :cond_1

    .line 61
    move-object v8, v2

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v7, v8

    .line 62
    move-object v8, v7

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    move-object v9, v2

    invoke-virtual {v9}, Landroid/widget/ListView;->getHeight()I

    move-result v9

    if-gt v8, v9, :cond_1

    .line 63
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 80
    :cond_1
    :goto_1
    const/4 v8, 0x1

    move v0, v8

    goto :goto_0

    .line 66
    :cond_2
    move v8, v1

    if-gez v8, :cond_4

    .line 68
    move v8, v5

    if-gtz v8, :cond_1

    .line 69
    move-object v8, v2

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v7, v8

    .line 70
    move-object v8, v7

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    if-ltz v8, :cond_3

    .line 71
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 73
    :cond_3
    goto :goto_1

    .line 77
    :cond_4
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0
.end method

.method public scrollTargetBy(II)V
    .locals 5

    .prologue
    .line 37
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/ListViewAutoScrollHelper;->mTarget:Landroid/widget/ListView;

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/widget/ListViewCompat;->scrollListBy(Landroid/widget/ListView;I)V

    .line 38
    return-void
.end method
