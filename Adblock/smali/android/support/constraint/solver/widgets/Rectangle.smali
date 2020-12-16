.class public Landroid/support/constraint/solver/widgets/Rectangle;
.super Ljava/lang/Object;
.source "Rectangle.java"


# instance fields
.field public height:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(II)Z
    .locals 6

    .prologue
    .line 46
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/widgets/Rectangle;->x:I

    if-lt v3, v4, :cond_0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/widgets/Rectangle;->x:I

    move-object v5, v0

    iget v5, v5, Landroid/support/constraint/solver/widgets/Rectangle;->width:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/widgets/Rectangle;->y:I

    if-lt v3, v4, :cond_0

    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/widgets/Rectangle;->y:I

    move-object v5, v0

    iget v5, v5, Landroid/support/constraint/solver/widgets/Rectangle;->height:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getCenterX()I
    .locals 3

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/widgets/Rectangle;->x:I

    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/Rectangle;->width:I

    add-int/2addr v1, v2

    const/4 v2, 0x2

    div-int/lit8 v1, v1, 0x2

    move v0, v1

    return v0
.end method

.method public getCenterY()I
    .locals 3

    .prologue
    .line 51
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/widgets/Rectangle;->y:I

    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/Rectangle;->height:I

    add-int/2addr v1, v2

    const/4 v2, 0x2

    div-int/lit8 v1, v1, 0x2

    move v0, v1

    return v0
.end method

.method grow(II)V
    .locals 8

    .prologue
    .line 34
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Landroid/support/constraint/solver/widgets/Rectangle;->x:I

    move v5, v1

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/support/constraint/solver/widgets/Rectangle;->x:I

    .line 35
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Landroid/support/constraint/solver/widgets/Rectangle;->y:I

    move v5, v2

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/support/constraint/solver/widgets/Rectangle;->y:I

    .line 36
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Landroid/support/constraint/solver/widgets/Rectangle;->width:I

    const/4 v5, 0x2

    move v6, v1

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v3, Landroid/support/constraint/solver/widgets/Rectangle;->width:I

    .line 37
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Landroid/support/constraint/solver/widgets/Rectangle;->height:I

    const/4 v5, 0x2

    move v6, v2

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v3, Landroid/support/constraint/solver/widgets/Rectangle;->height:I

    .line 38
    return-void
.end method

.method intersects(Landroid/support/constraint/solver/widgets/Rectangle;)Z
    .locals 5

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/Rectangle;->x:I

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/solver/widgets/Rectangle;->x:I

    if-lt v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/Rectangle;->x:I

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/solver/widgets/Rectangle;->x:I

    move-object v4, v1

    iget v4, v4, Landroid/support/constraint/solver/widgets/Rectangle;->width:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/Rectangle;->y:I

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/solver/widgets/Rectangle;->y:I

    if-lt v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/Rectangle;->y:I

    move-object v3, v1

    iget v3, v3, Landroid/support/constraint/solver/widgets/Rectangle;->y:I

    move-object v4, v1

    iget v4, v4, Landroid/support/constraint/solver/widgets/Rectangle;->height:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setBounds(IIII)V
    .locals 7

    .prologue
    .line 28
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroid/support/constraint/solver/widgets/Rectangle;->x:I

    .line 29
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroid/support/constraint/solver/widgets/Rectangle;->y:I

    .line 30
    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroid/support/constraint/solver/widgets/Rectangle;->width:I

    .line 31
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroid/support/constraint/solver/widgets/Rectangle;->height:I

    .line 32
    return-void
.end method
