.class Landroid/support/v4/view/ViewGroupCompatHC;
.super Ljava/lang/Object;
.source "ViewGroupCompatHC.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xb
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static setMotionEventSplittingEnabled(Landroid/view/ViewGroup;Z)V
    .locals 4

    .prologue
    .line 31
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 32
    return-void
.end method
