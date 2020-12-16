.class public Landroid/support/v7/widget/AppCompatImageHelper;
.super Ljava/lang/Object;
.source "AppCompatImageHelper.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final mView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 4

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 38
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    .line 39
    return-void
.end method


# virtual methods
.method hasOverlappingRendering()Z
    .locals 4

    .prologue
    .line 84
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, v2

    .line 85
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    move-object v2, v1

    instance-of v2, v2, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_0

    .line 89
    const/4 v2, 0x0

    move v0, v2

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method public loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 12

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v7, 0x0

    move-object v3, v7

    .line 44
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object v4, v7

    .line 46
    move-object v7, v4

    if-nez v7, :cond_0

    .line 47
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v7

    move-object v8, v1

    sget-object v9, Landroid/support/v7/appcompat/R$styleable;->AppCompatImageView:[I

    move v10, v2

    const/4 v11, 0x0

    invoke-static {v7, v8, v9, v10, v11}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v7

    move-object v3, v7

    .line 52
    move-object v7, v3

    sget v8, Landroid/support/v7/appcompat/R$styleable;->AppCompatImageView_srcCompat:I

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v7

    move v5, v7

    .line 53
    move v7, v5

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 54
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v7

    move v8, v5

    invoke-static {v7, v8}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object v4, v7

    .line 55
    move-object v7, v4

    if-eqz v7, :cond_0

    .line 56
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    :cond_0
    move-object v7, v4

    if-eqz v7, :cond_1

    .line 62
    move-object v7, v4

    invoke-static {v7}, Landroid/support/v7/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_1
    move-object v7, v3

    if-eqz v7, :cond_2

    .line 66
    move-object v7, v3

    invoke-virtual {v7}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 69
    :cond_2
    return-void

    .line 65
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v3

    if-eqz v7, :cond_3

    .line 66
    move-object v7, v3

    invoke-virtual {v7}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    :cond_3
    move-object v7, v6

    throw v7
.end method

.method public setImageResource(I)V
    .locals 5

    .prologue
    .line 72
    move-object v0, p0

    move v1, p1

    move v3, v1

    if-eqz v3, :cond_1

    .line 73
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v2, v3

    .line 74
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 75
    move-object v3, v2

    invoke-static {v3}, Landroid/support/v7/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
