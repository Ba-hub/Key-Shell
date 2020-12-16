.class Landroid/support/v4/view/WindowInsetsCompatApi21;
.super Ljava/lang/Object;
.source "WindowInsetsCompatApi21.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static consumeStableInsets(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getStableInsetBottom(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getStableInsetLeft(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getStableInsetRight(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getStableInsetTop(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static hasStableInsets(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->hasStableInsets()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isConsumed(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static replaceSystemWindowInsets(Ljava/lang/Object;Landroid/graphics/Rect;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/WindowInsets;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method
