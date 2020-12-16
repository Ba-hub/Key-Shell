.class public Landroid/support/v4/widget/Space;
.super Landroid/view/View;
.source "Space.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v4/widget/Space;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v4/widget/Space;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/widget/Space;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 33
    move-object v4, v0

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/Space;->setVisibility(I)V

    .line 35
    :cond_0
    return-void
.end method

.method private static getDefaultSize2(II)I
    .locals 7

    .prologue
    .line 60
    move v0, p0

    move v1, p1

    move v5, v0

    move v2, v5

    .line 61
    move v5, v1

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    move v3, v5

    .line 62
    move v5, v1

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    move v4, v5

    .line 64
    move v5, v3

    sparse-switch v5, :sswitch_data_0

    .line 75
    :goto_0
    move v5, v2

    move v0, v5

    return v0

    .line 66
    :sswitch_0
    move v5, v0

    move v2, v5

    .line 67
    goto :goto_0

    .line 69
    :sswitch_1
    move v5, v0

    move v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v2, v5

    .line 70
    goto :goto_0

    .line 72
    :sswitch_2
    move v5, v4

    move v2, v5

    goto :goto_0

    .line 64
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .prologue
    .line 80
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v0

    .line 81
    invoke-virtual {v4}, Landroid/support/v4/widget/Space;->getSuggestedMinimumWidth()I

    move-result v4

    move v5, v1

    invoke-static {v4, v5}, Landroid/support/v4/widget/Space;->getDefaultSize2(II)I

    move-result v4

    move-object v5, v0

    .line 82
    invoke-virtual {v5}, Landroid/support/v4/widget/Space;->getSuggestedMinimumHeight()I

    move-result v5

    move v6, v2

    invoke-static {v5, v6}, Landroid/support/v4/widget/Space;->getDefaultSize2(II)I

    move-result v5

    .line 80
    invoke-virtual {v3, v4, v5}, Landroid/support/v4/widget/Space;->setMeasuredDimension(II)V

    .line 83
    return-void
.end method
