.class Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable;
.super Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
.source "RoundedBitmapDrawableFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultRoundedBitmapDrawable"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 6

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 39
    return-void
.end method


# virtual methods
.method gravityCompatApply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 12

    .prologue
    .line 57
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move v6, v1

    move v7, v2

    move v8, v3

    move-object v9, v4

    move-object v10, v5

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Landroid/support/v4/view/GravityCompat;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 59
    return-void
.end method

.method public hasMipMap()Z
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/support/v4/graphics/BitmapCompat;->hasMipMap(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMipMap(Z)V
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 44
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    move v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/graphics/BitmapCompat;->setHasMipMap(Landroid/graphics/Bitmap;Z)V

    .line 45
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable;->invalidateSelf()V

    .line 47
    :cond_0
    return-void
.end method
