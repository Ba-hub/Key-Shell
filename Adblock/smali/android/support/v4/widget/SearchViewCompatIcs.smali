.class Landroid/support/v4/widget/SearchViewCompatIcs;
.super Ljava/lang/Object;
.source "SearchViewCompatIcs.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SearchViewCompatIcs$MySearchView;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static newSearchView(Landroid/content/Context;)Landroid/view/View;
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    new-instance v1, Landroid/support/v4/widget/SearchViewCompatIcs$MySearchView;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroid/support/v4/widget/SearchViewCompatIcs$MySearchView;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    return-object v0
.end method

.method public static setImeOptions(Landroid/view/View;I)V
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/widget/SearchView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setImeOptions(I)V

    .line 53
    return-void
.end method

.method public static setInputType(Landroid/view/View;I)V
    .locals 4

    .prologue
    .line 56
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/widget/SearchView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setInputType(I)V

    .line 57
    return-void
.end method
