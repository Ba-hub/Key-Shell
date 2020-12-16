.class Landroid/support/v4/media/RatingCompatKitkat;
.super Ljava/lang/Object;
.source "RatingCompatKitkat.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x13
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

.method public static getPercentRating(Ljava/lang/Object;)F
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/media/Rating;

    invoke-virtual {v1}, Landroid/media/Rating;->getPercentRating()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getRatingStyle(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/media/Rating;

    invoke-virtual {v1}, Landroid/media/Rating;->getRatingStyle()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getStarRating(Ljava/lang/Object;)F
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/media/Rating;

    invoke-virtual {v1}, Landroid/media/Rating;->getStarRating()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public static hasHeart(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/media/Rating;

    invoke-virtual {v1}, Landroid/media/Rating;->hasHeart()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isRated(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/media/Rating;

    invoke-virtual {v1}, Landroid/media/Rating;->isRated()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isThumbUp(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/media/Rating;

    invoke-virtual {v1}, Landroid/media/Rating;->isThumbUp()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static newHeartRating(Z)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 31
    move v0, p0

    move v1, v0

    invoke-static {v1}, Landroid/media/Rating;->newHeartRating(Z)Landroid/media/Rating;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static newPercentageRating(F)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 43
    move v0, p0

    move v1, v0

    invoke-static {v1}, Landroid/media/Rating;->newPercentageRating(F)Landroid/media/Rating;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static newStarRating(IF)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 39
    move v0, p0

    move v1, p1

    move v2, v0

    move v3, v1

    invoke-static {v2, v3}, Landroid/media/Rating;->newStarRating(IF)Landroid/media/Rating;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static newThumbRating(Z)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 35
    move v0, p0

    move v1, v0

    invoke-static {v1}, Landroid/media/Rating;->newThumbRating(Z)Landroid/media/Rating;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static newUnratedRating(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 27
    move v0, p0

    move v1, v0

    invoke-static {v1}, Landroid/media/Rating;->newUnratedRating(I)Landroid/media/Rating;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
