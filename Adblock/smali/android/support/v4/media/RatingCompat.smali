.class public final Landroid/support/v4/media/RatingCompat;
.super Ljava/lang/Object;
.source "RatingCompat.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/RatingCompat$StarStyle;,
        Landroid/support/v4/media/RatingCompat$Style;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/media/RatingCompat;",
            ">;"
        }
    .end annotation
.end field

.field public static final RATING_3_STARS:I = 0x3

.field public static final RATING_4_STARS:I = 0x4

.field public static final RATING_5_STARS:I = 0x5

.field public static final RATING_HEART:I = 0x1

.field public static final RATING_NONE:I = 0x0

.field private static final RATING_NOT_RATED:F = -1.0f

.field public static final RATING_PERCENTAGE:I = 0x6

.field public static final RATING_THUMB_UP_DOWN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Rating"


# instance fields
.field private mRatingObj:Ljava/lang/Object;

.field private final mRatingStyle:I

.field private final mRatingValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 126
    new-instance v0, Landroid/support/v4/media/RatingCompat$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/media/RatingCompat$1;-><init>()V

    sput-object v0, Landroid/support/v4/media/RatingCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IF)V
    .locals 5

    .prologue
    .line 104
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 105
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    .line 106
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    .line 107
    return-void
.end method

.method public static fromRating(Ljava/lang/Object;)Landroid/support/v4/media/RatingCompat;
    .locals 5

    .prologue
    .line 327
    move-object v0, p0

    move-object v3, v0

    if-eqz v3, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-ge v3, v4, :cond_1

    .line 328
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    .line 357
    :goto_0
    return-object v0

    .line 331
    :cond_1
    move-object v3, v0

    invoke-static {v3}, Landroid/support/v4/media/RatingCompatKitkat;->getRatingStyle(Ljava/lang/Object;)I

    move-result v3

    move v1, v3

    .line 333
    move-object v3, v0

    invoke-static {v3}, Landroid/support/v4/media/RatingCompatKitkat;->isRated(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 334
    move v3, v1

    packed-switch v3, :pswitch_data_0

    .line 351
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 336
    :pswitch_0
    move-object v3, v0

    invoke-static {v3}, Landroid/support/v4/media/RatingCompatKitkat;->hasHeart(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Landroid/support/v4/media/RatingCompat;->newHeartRating(Z)Landroid/support/v4/media/RatingCompat;

    move-result-object v3

    move-object v2, v3

    .line 356
    :goto_1
    move-object v3, v2

    move-object v4, v0

    iput-object v4, v3, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    .line 357
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 339
    :pswitch_1
    move-object v3, v0

    invoke-static {v3}, Landroid/support/v4/media/RatingCompatKitkat;->isThumbUp(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Landroid/support/v4/media/RatingCompat;->newThumbRating(Z)Landroid/support/v4/media/RatingCompat;

    move-result-object v3

    move-object v2, v3

    .line 340
    goto :goto_1

    .line 344
    :pswitch_2
    move v3, v1

    move-object v4, v0

    .line 345
    invoke-static {v4}, Landroid/support/v4/media/RatingCompatKitkat;->getStarRating(Ljava/lang/Object;)F

    move-result v4

    .line 344
    invoke-static {v3, v4}, Landroid/support/v4/media/RatingCompat;->newStarRating(IF)Landroid/support/v4/media/RatingCompat;

    move-result-object v3

    move-object v2, v3

    .line 346
    goto :goto_1

    .line 348
    :pswitch_3
    move-object v3, v0

    invoke-static {v3}, Landroid/support/v4/media/RatingCompatKitkat;->getPercentRating(Ljava/lang/Object;)F

    move-result v3

    invoke-static {v3}, Landroid/support/v4/media/RatingCompat;->newPercentageRating(F)Landroid/support/v4/media/RatingCompat;

    move-result-object v3

    move-object v2, v3

    .line 349
    goto :goto_1

    .line 354
    :cond_2
    move v3, v1

    invoke-static {v3}, Landroid/support/v4/media/RatingCompat;->newUnratedRating(I)Landroid/support/v4/media/RatingCompat;

    move-result-object v3

    move-object v2, v3

    goto :goto_1

    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static newHeartRating(Z)Landroid/support/v4/media/RatingCompat;
    .locals 6

    .prologue
    .line 175
    move v0, p0

    new-instance v1, Landroid/support/v4/media/RatingCompat;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x1

    move v4, v0

    if-eqz v4, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_0
    invoke-direct {v2, v3, v4}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static newPercentageRating(F)Landroid/support/v4/media/RatingCompat;
    .locals 6

    .prologue
    .line 233
    move v0, p0

    move v1, v0

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    move v1, v0

    const/high16 v2, 0x42c80000    # 100.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 234
    :cond_0
    const-string v1, "Rating"

    const-string v2, "Invalid percentage-based rating value"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 235
    const/4 v1, 0x0

    move-object v0, v1

    .line 237
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Landroid/support/v4/media/RatingCompat;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x6

    move v4, v0

    invoke-direct {v2, v3, v4}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static newStarRating(IF)Landroid/support/v4/media/RatingCompat;
    .locals 8

    .prologue
    .line 203
    move v0, p0

    move v1, p1

    const/high16 v3, -0x40800000    # -1.0f

    move v2, v3

    .line 204
    move v3, v0

    packed-switch v3, :pswitch_data_0

    .line 215
    const-string v3, "Rating"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid rating style ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") for a star rating"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 216
    const/4 v3, 0x0

    move-object v0, v3

    .line 222
    :goto_0
    return-object v0

    .line 206
    :pswitch_0
    const/high16 v3, 0x40400000    # 3.0f

    move v2, v3

    .line 218
    :goto_1
    move v3, v1

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    move v3, v1

    move v4, v2

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 219
    :cond_0
    const-string v3, "Rating"

    const-string v4, "Trying to set out of range star-based rating"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 220
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 209
    :pswitch_1
    const/high16 v3, 0x40800000    # 4.0f

    move v2, v3

    .line 210
    goto :goto_1

    .line 212
    :pswitch_2
    const/high16 v3, 0x40a00000    # 5.0f

    move v2, v3

    .line 213
    goto :goto_1

    .line 222
    :cond_1
    new-instance v3, Landroid/support/v4/media/RatingCompat;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move v5, v0

    move v6, v1

    invoke-direct {v4, v5, v6}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    move-object v0, v3

    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static newThumbRating(Z)Landroid/support/v4/media/RatingCompat;
    .locals 6

    .prologue
    .line 186
    move v0, p0

    new-instance v1, Landroid/support/v4/media/RatingCompat;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x2

    move v4, v0

    if-eqz v4, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_0
    invoke-direct {v2, v3, v4}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static newUnratedRating(I)Landroid/support/v4/media/RatingCompat;
    .locals 6

    .prologue
    .line 154
    move v0, p0

    move v1, v0

    packed-switch v1, :pswitch_data_0

    .line 163
    const/4 v1, 0x0

    move-object v0, v1

    :goto_0
    return-object v0

    .line 161
    :pswitch_0
    new-instance v1, Landroid/support/v4/media/RatingCompat;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move v3, v0

    const/high16 v4, -0x40800000    # -1.0f

    invoke-direct {v2, v3, v4}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    move-object v0, v1

    goto :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .prologue
    .line 117
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    move v0, v1

    return v0
.end method

.method public getPercentRating()F
    .locals 3

    .prologue
    .line 310
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 311
    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    move v0, v1

    .line 313
    :goto_0
    return v0

    :cond_1
    move-object v1, v0

    iget v1, v1, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    move v0, v1

    goto :goto_0
.end method

.method public getRating()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 369
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    if-nez v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_1

    .line 370
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    move-object v0, v1

    .line 394
    :goto_0
    return-object v0

    .line 373
    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 374
    move-object v1, v0

    iget v1, v1, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    packed-switch v1, :pswitch_data_0

    .line 389
    :goto_1
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0

    .line 376
    :pswitch_0
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/media/RatingCompat;->hasHeart()Z

    move-result v2

    invoke-static {v2}, Landroid/support/v4/media/RatingCompatKitkat;->newHeartRating(Z)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    .line 394
    :goto_2
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    move-object v0, v1

    goto :goto_0

    .line 379
    :pswitch_1
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/media/RatingCompat;->isThumbUp()Z

    move-result v2

    invoke-static {v2}, Landroid/support/v4/media/RatingCompatKitkat;->newThumbRating(Z)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    .line 380
    goto :goto_2

    .line 384
    :pswitch_2
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/media/RatingCompat;->getStarRating()F

    move-result v3

    invoke-static {v2, v3}, Landroid/support/v4/media/RatingCompatKitkat;->newStarRating(IF)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    .line 385
    goto :goto_2

    .line 387
    :pswitch_3
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/media/RatingCompat;->getPercentRating()F

    move-result v2

    invoke-static {v2}, Landroid/support/v4/media/RatingCompatKitkat;->newPercentageRating(F)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    goto :goto_1

    .line 392
    :cond_2
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    invoke-static {v2}, Landroid/support/v4/media/RatingCompatKitkat;->newUnratedRating(I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    goto :goto_2

    .line 374
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getRatingStyle()I
    .locals 2

    .prologue
    .line 257
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    move v0, v1

    return v0
.end method

.method public getStarRating()F
    .locals 2

    .prologue
    .line 292
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    packed-switch v1, :pswitch_data_0

    .line 300
    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    move v0, v1

    :goto_0
    return v0

    .line 296
    :pswitch_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    move-object v1, v0

    iget v1, v1, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    move v0, v1

    goto :goto_0

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public hasHeart()Z
    .locals 3

    .prologue
    .line 266
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 267
    const/4 v1, 0x0

    move v0, v1

    .line 269
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget v1, v1, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isRated()Z
    .locals 3

    .prologue
    .line 246
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isThumbUp()Z
    .locals 3

    .prologue
    .line 279
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 280
    const/4 v1, 0x0

    move v0, v1

    .line 282
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget v1, v1, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 111
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rating:style="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rating="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    const-string v2, "unrated"

    .line 112
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0

    .line 111
    :cond_0
    move-object v2, v0

    iget v2, v2, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    .line 112
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    .line 122
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 124
    return-void
.end method
