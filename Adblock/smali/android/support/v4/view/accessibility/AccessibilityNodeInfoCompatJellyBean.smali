.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompatJellyBean.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x10
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addChild(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 6

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 35
    return-void
.end method

.method public static findFocus(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 66
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static focusSearch(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 70
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->focusSearch(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static getMovementGranularities(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getMovementGranularities()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isAccessibilityFocused(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isVisibleToUser(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static obtain(Landroid/view/View;I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static performAction(Ljava/lang/Object;ILandroid/os/Bundle;)Z
    .locals 6

    .prologue
    .line 50
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public static setAccesibilityFocused(Ljava/lang/Object;Z)V
    .locals 4

    .prologue
    .line 82
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 83
    return-void
.end method

.method public static setMovementGranularities(Ljava/lang/Object;I)V
    .locals 4

    .prologue
    .line 54
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 55
    return-void
.end method

.method public static setParent(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 6

    .prologue
    .line 74
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    .line 75
    return-void
.end method

.method public static setSource(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 6

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 39
    return-void
.end method

.method public static setVisibleToUser(Ljava/lang/Object;Z)V
    .locals 4

    .prologue
    .line 46
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 47
    return-void
.end method
