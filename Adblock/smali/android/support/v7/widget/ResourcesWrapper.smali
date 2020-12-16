.class Landroid/support/v7/widget/ResourcesWrapper;
.super Landroid/content/res/Resources;
.source "ResourcesWrapper.java"


# instance fields
.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 6

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 47
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    .line 48
    return-void
.end method


# virtual methods
.method public getAnimation(I)Landroid/content/res/XmlResourceParser;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 178
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getBoolean(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 163
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public getColor(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 153
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 158
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 2

    .prologue
    .line 239
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getDimension(I)F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 108
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    move v0, v2

    return v0
.end method

.method public getDimensionPixelOffset(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 113
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getDimensionPixelSize(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 118
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 2

    .prologue
    .line 234
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 128
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 133
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 138
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 8

    .prologue
    .line 143
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public getFraction(III)F
    .locals 8

    .prologue
    .line 123
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v4

    move v0, v4

    return v0
.end method

.method public getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    .prologue
    .line 244
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v0, v4

    return v0
.end method

.method public getIntArray(I)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 98
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getInteger(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 168
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getLayout(I)Landroid/content/res/XmlResourceParser;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 173
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getMovie(I)Landroid/graphics/Movie;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 148
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getMovie(I)Landroid/graphics/Movie;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getQuantityString(II)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 78
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public varargs getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public getQuantityText(II)Ljava/lang/CharSequence;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public getResourceEntryName(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 264
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getResourceName(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 249
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getResourcePackageName(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 254
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getResourceTypeName(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 259
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 83
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getValue(ILandroid/util/TypedValue;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 204
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    move v5, v1

    move-object v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 205
    return-void
.end method

.method public getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 216
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V

    .line 217
    return-void
.end method

.method public getValueForDensity(IILandroid/util/TypedValue;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 210
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    move v6, v1

    move v7, v2

    move-object v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/content/res/Resources;->getValueForDensity(IILandroid/util/TypedValue;Z)V

    .line 211
    return-void
.end method

.method public getXml(I)Landroid/content/res/XmlResourceParser;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 183
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 6

    .prologue
    .line 221
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public obtainTypedArray(I)Landroid/content/res/TypedArray;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 103
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public openRawResource(I)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 188
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 193
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 198
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 276
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 277
    return-void
.end method

.method public parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V

    .line 271
    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    .locals 6

    .prologue
    .line 226
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 227
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    if-eqz v3, :cond_0

    .line 228
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 230
    :cond_0
    return-void
.end method
