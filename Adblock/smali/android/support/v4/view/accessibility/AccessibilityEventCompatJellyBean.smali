.class Landroid/support/v4/view/accessibility/AccessibilityEventCompatJellyBean;
.super Ljava/lang/Object;
.source "AccessibilityEventCompatJellyBean.java"


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
    .line 25
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAction(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getAction()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getMovementGranularity(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getMovementGranularity()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static setAction(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 4

    .prologue
    .line 35
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    .line 36
    return-void
.end method

.method public static setMovementGranularity(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 4

    .prologue
    .line 27
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setMovementGranularity(I)V

    .line 28
    return-void
.end method
