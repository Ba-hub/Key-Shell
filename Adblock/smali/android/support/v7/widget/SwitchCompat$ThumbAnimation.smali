.class Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;
.super Landroid/view/animation/Animation;
.source "SwitchCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SwitchCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbAnimation"
.end annotation


# instance fields
.field final mDiff:F

.field final mEndPosition:F

.field final mStartPosition:F

.field final synthetic this$0:Landroid/support/v7/widget/SwitchCompat;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SwitchCompat;FF)V
    .locals 7

    .prologue
    .line 1428
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->this$0:Landroid/support/v7/widget/SwitchCompat;

    move-object v4, v0

    invoke-direct {v4}, Landroid/view/animation/Animation;-><init>()V

    .line 1429
    move-object v4, v0

    move v5, v2

    iput v5, v4, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->mStartPosition:F

    .line 1430
    move-object v4, v0

    move v5, v3

    iput v5, v4, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->mEndPosition:F

    .line 1431
    move-object v4, v0

    move v5, v3

    move v6, v2

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->mDiff:F

    .line 1432
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 7

    .prologue
    .line 1436
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->this$0:Landroid/support/v7/widget/SwitchCompat;

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->mStartPosition:F

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->mDiff:F

    move v6, v1

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/SwitchCompat;->setThumbPosition(F)V

    .line 1437
    return-void
.end method
