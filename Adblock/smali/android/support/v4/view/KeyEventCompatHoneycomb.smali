.class Landroid/support/v4/view/KeyEventCompatHoneycomb;
.super Ljava/lang/Object;
.source "KeyEventCompatHoneycomb.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xb
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCtrlPressed(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static metaStateHasModifiers(II)Z
    .locals 4

    .prologue
    .line 35
    move v0, p0

    move v1, p1

    move v2, v0

    move v3, v1

    invoke-static {v2, v3}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public static metaStateHasNoModifiers(I)Z
    .locals 2

    .prologue
    .line 39
    move v0, p0

    move v1, v0

    invoke-static {v1}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static normalizeMetaState(I)I
    .locals 2

    .prologue
    .line 31
    move v0, p0

    move v1, v0

    invoke-static {v1}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v1

    move v0, v1

    return v0
.end method
