.class Landroid/support/v4/widget/SearchViewCompatHoneycomb;
.super Ljava/lang/Object;
.source "SearchViewCompatHoneycomb.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;,
        Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static checkIfLegalArg(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, v0

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "searchView must be non-null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 41
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Landroid/widget/SearchView;

    if-nez v1, :cond_1

    .line 42
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "searchView must be an instance ofandroid.widget.SearchView"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_1
    return-void
.end method

.method public static getQuery(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static isIconified(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 115
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->isIconified()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isQueryRefinementEnabled(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 131
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->isQueryRefinementEnabled()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isSubmitButtonEnabled(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 123
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->isSubmitButtonEnabled()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static newOnCloseListener(Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 86
    move-object v0, p0

    new-instance v1, Landroid/support/v4/widget/SearchViewCompatHoneycomb$2;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroid/support/v4/widget/SearchViewCompatHoneycomb$2;-><init>(Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;)V

    move-object v0, v1

    return-object v0
.end method

.method public static newOnQueryTextListener(Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 68
    move-object v0, p0

    new-instance v1, Landroid/support/v4/widget/SearchViewCompatHoneycomb$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroid/support/v4/widget/SearchViewCompatHoneycomb$1;-><init>(Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;)V

    move-object v0, v1

    return-object v0
.end method

.method public static newSearchView(Landroid/content/Context;)Landroid/view/View;
    .locals 5

    .prologue
    .line 57
    move-object v0, p0

    new-instance v1, Landroid/widget/SearchView;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    return-object v0
.end method

.method public static setIconified(Landroid/view/View;Z)V
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/widget/SearchView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 112
    return-void
.end method

.method public static setMaxWidth(Landroid/view/View;I)V
    .locals 4

    .prologue
    .line 135
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/widget/SearchView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setMaxWidth(I)V

    .line 136
    return-void
.end method

.method public static setOnCloseListener(Landroid/view/View;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 95
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    check-cast v2, Landroid/widget/SearchView;

    move-object v3, v1

    check-cast v3, Landroid/widget/SearchView$OnCloseListener;

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 96
    return-void
.end method

.method public static setOnQueryTextListener(Landroid/view/View;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 82
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    check-cast v2, Landroid/widget/SearchView;

    move-object v3, v1

    check-cast v3, Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 83
    return-void
.end method

.method public static setQuery(Landroid/view/View;Ljava/lang/CharSequence;Z)V
    .locals 6

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    check-cast v3, Landroid/widget/SearchView;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 104
    return-void
.end method

.method public static setQueryHint(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 107
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    check-cast v2, Landroid/widget/SearchView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method

.method public static setQueryRefinementEnabled(Landroid/view/View;Z)V
    .locals 4

    .prologue
    .line 127
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/widget/SearchView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setQueryRefinementEnabled(Z)V

    .line 128
    return-void
.end method

.method public static setSearchableInfo(Landroid/view/View;Landroid/content/ComponentName;)V
    .locals 7

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    check-cast v4, Landroid/widget/SearchView;

    move-object v2, v4

    .line 62
    move-object v4, v2

    .line 63
    invoke-virtual {v4}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "search"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SearchManager;

    move-object v3, v4

    .line 64
    move-object v4, v2

    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 65
    return-void
.end method

.method public static setSubmitButtonEnabled(Landroid/view/View;Z)V
    .locals 4

    .prologue
    .line 119
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/widget/SearchView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setSubmitButtonEnabled(Z)V

    .line 120
    return-void
.end method
