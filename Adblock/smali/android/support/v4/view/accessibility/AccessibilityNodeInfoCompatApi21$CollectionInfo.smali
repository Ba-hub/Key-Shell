.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi21$CollectionInfo;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CollectionInfo"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 87
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSelectionMode(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getSelectionMode()I

    move-result v1

    move v0, v1

    return v0
.end method
