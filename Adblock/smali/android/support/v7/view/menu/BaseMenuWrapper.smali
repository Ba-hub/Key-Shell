.class abstract Landroid/support/v7/view/menu/BaseMenuWrapper;
.super Landroid/support/v7/view/menu/BaseWrapper;
.source "BaseMenuWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/view/menu/BaseWrapper",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field private mMenuItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/support/v4/internal/view/SupportMenuItem;",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSubMenus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/support/v4/internal/view/SupportSubMenu;",
            "Landroid/view/SubMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroid/support/v7/view/menu/BaseWrapper;-><init>(Ljava/lang/Object;)V

    .line 38
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/view/menu/BaseMenuWrapper;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method


# virtual methods
.method final getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 8

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    instance-of v4, v4, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v4, :cond_2

    .line 43
    move-object v4, v1

    check-cast v4, Landroid/support/v4/internal/view/SupportMenuItem;

    move-object v2, v4

    .line 46
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;

    if-nez v4, :cond_0

    .line 47
    move-object v4, v0

    new-instance v5, Landroid/support/v4/util/ArrayMap;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v5, v4, Landroid/support/v7/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;

    .line 51
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/MenuItem;

    move-object v3, v4

    .line 53
    const/4 v4, 0x0

    move-object v5, v3

    if-ne v4, v5, :cond_1

    .line 55
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/BaseMenuWrapper;->mContext:Landroid/content/Context;

    move-object v5, v2

    invoke-static {v4, v5}, Landroid/support/v7/view/menu/MenuWrapperFactory;->wrapSupportMenuItem(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenuItem;)Landroid/view/MenuItem;

    move-result-object v4

    move-object v3, v4

    .line 56
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;

    move-object v5, v2

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 59
    :cond_1
    move-object v4, v3

    move-object v0, v4

    .line 61
    :goto_0
    return-object v0

    :cond_2
    move-object v4, v1

    move-object v0, v4

    goto :goto_0
.end method

.method final getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;
    .locals 8

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    instance-of v4, v4, Landroid/support/v4/internal/view/SupportSubMenu;

    if-eqz v4, :cond_2

    .line 66
    move-object v4, v1

    check-cast v4, Landroid/support/v4/internal/view/SupportSubMenu;

    move-object v2, v4

    .line 69
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/Map;

    if-nez v4, :cond_0

    .line 70
    move-object v4, v0

    new-instance v5, Landroid/support/v4/util/ArrayMap;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v5, v4, Landroid/support/v7/view/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/Map;

    .line 73
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/Map;

    move-object v5, v2

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/SubMenu;

    move-object v3, v4

    .line 75
    const/4 v4, 0x0

    move-object v5, v3

    if-ne v4, v5, :cond_1

    .line 76
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/BaseMenuWrapper;->mContext:Landroid/content/Context;

    move-object v5, v2

    invoke-static {v4, v5}, Landroid/support/v7/view/menu/MenuWrapperFactory;->wrapSupportSubMenu(Landroid/content/Context;Landroid/support/v4/internal/view/SupportSubMenu;)Landroid/view/SubMenu;

    move-result-object v4

    move-object v3, v4

    .line 77
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/Map;

    move-object v5, v2

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 79
    :cond_1
    move-object v4, v3

    move-object v0, v4

    .line 81
    :goto_0
    return-object v0

    :cond_2
    move-object v4, v1

    move-object v0, v4

    goto :goto_0
.end method

.method final internalClear()V
    .locals 2

    .prologue
    .line 86
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 87
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 89
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 90
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 92
    :cond_1
    return-void
.end method

.method final internalRemoveGroup(I)V
    .locals 6

    .prologue
    .line 95
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;

    if-nez v4, :cond_0

    .line 108
    :goto_0
    return-void

    .line 99
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    .line 102
    :cond_1
    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 103
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/MenuItem;

    move-object v3, v4

    .line 104
    move v4, v1

    move-object v5, v3

    invoke-interface {v5}, Landroid/view/MenuItem;->getGroupId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 105
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 108
    :cond_2
    goto :goto_0
.end method

.method final internalRemoveItem(I)V
    .locals 6

    .prologue
    .line 111
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;

    if-nez v4, :cond_0

    .line 125
    :goto_0
    return-void

    .line 115
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    .line 118
    :cond_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 119
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/MenuItem;

    move-object v3, v4

    .line 120
    move v4, v1

    move-object v5, v3

    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 121
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 125
    :cond_2
    goto :goto_0
.end method
