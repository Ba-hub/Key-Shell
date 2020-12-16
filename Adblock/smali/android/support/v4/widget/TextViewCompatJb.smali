.class Landroid/support/v4/widget/TextViewCompatJb;
.super Ljava/lang/Object;
.source "TextViewCompatJb.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x10
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

.method static getMaxLines(Landroid/widget/TextView;)I
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getMaxLines()I

    move-result v1

    move v0, v1

    return v0
.end method

.method static getMinLines(Landroid/widget/TextView;)I
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getMinLines()I

    move-result v1

    move v0, v1

    return v0
.end method
