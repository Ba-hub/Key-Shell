.class Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$1;
.super Ljava/lang/Object;
.source "AnimatedVectorDrawableCompat.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;


# direct methods
.method constructor <init>(Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;)V
    .locals 4

    .prologue
    .line 640
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$1;->this$0:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 643
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$1;->this$0:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v2}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->invalidateSelf()V

    .line 644
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 9

    .prologue
    .line 648
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$1;->this$0:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    move-object v6, v2

    move-wide v7, v3

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 649
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 5

    .prologue
    .line 653
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$1;->this$0:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 654
    return-void
.end method