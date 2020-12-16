.class Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectLollipopImpl;
.super Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectIcsImpl;
.source "EdgeEffectCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/EdgeEffectCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EdgeEffectLollipopImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 153
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectIcsImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onPull(Ljava/lang/Object;FF)Z
    .locals 7

    .prologue
    .line 156
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v1

    move v5, v2

    move v6, v3

    invoke-static {v4, v5, v6}, Landroid/support/v4/widget/EdgeEffectCompatLollipop;->onPull(Ljava/lang/Object;FF)Z

    move-result v4

    move v0, v4

    return v0
.end method
