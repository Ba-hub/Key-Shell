.class Landroid/support/v4/widget/TextViewCompatJbMr1;
.super Ljava/lang/Object;
.source "TextViewCompatJbMr1.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x11
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

.method public static getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 54
    move-object v0, p0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    :goto_0
    move v1, v5

    .line 55
    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v2, v5

    .line 56
    move v5, v1

    if-eqz v5, :cond_0

    .line 58
    move-object v5, v2

    const/4 v6, 0x2

    aget-object v5, v5, v6

    move-object v3, v5

    .line 59
    move-object v5, v2

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object v4, v5

    .line 60
    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v3

    aput-object v7, v5, v6

    .line 61
    move-object v5, v2

    const/4 v6, 0x2

    move-object v7, v4

    aput-object v7, v5, v6

    .line 63
    :cond_0
    move-object v5, v2

    move-object v0, v5

    return-object v0

    .line 54
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 11
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    :goto_0
    move v5, v6

    .line 35
    move-object v6, v0

    move v7, v5

    if-eqz v7, :cond_1

    move-object v7, v3

    :goto_1
    move-object v8, v2

    move v9, v5

    if-eqz v9, :cond_2

    move-object v9, v1

    :goto_2
    move-object v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 36
    return-void

    .line 34
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 35
    :cond_1
    move-object v7, v1

    goto :goto_1

    :cond_2
    move-object v9, v3

    goto :goto_2
.end method

.method public static setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;IIII)V
    .locals 11
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 48
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    :goto_0
    move v5, v6

    .line 49
    move-object v6, v0

    move v7, v5

    if-eqz v7, :cond_1

    move v7, v3

    :goto_1
    move v8, v2

    move v9, v5

    if-eqz v9, :cond_2

    move v9, v1

    :goto_2
    move v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 51
    return-void

    .line 48
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 49
    :cond_1
    move v7, v1

    goto :goto_1

    :cond_2
    move v9, v3

    goto :goto_2
.end method

.method public static setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 11
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    :goto_0
    move v5, v6

    .line 42
    move-object v6, v0

    move v7, v5

    if-eqz v7, :cond_1

    move-object v7, v3

    :goto_1
    move-object v8, v2

    move v9, v5

    if-eqz v9, :cond_2

    move-object v9, v1

    :goto_2
    move-object v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 44
    return-void

    .line 41
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 42
    :cond_1
    move-object v7, v1

    goto :goto_1

    :cond_2
    move-object v9, v3

    goto :goto_2
.end method
