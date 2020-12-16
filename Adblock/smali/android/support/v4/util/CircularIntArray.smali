.class public final Landroid/support/v4/util/CircularIntArray;
.super Ljava/lang/Object;
.source "CircularIntArray.java"


# instance fields
.field private mCapacityBitmask:I

.field private mElements:[I

.field private mHead:I

.field private mTail:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, v0

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Landroid/support/v4/util/CircularIntArray;-><init>(I)V

    .line 49
    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    .prologue
    .line 57
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 58
    move v3, v1

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    .line 59
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "capacity must be >= 1"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 61
    :cond_0
    move v3, v1

    const/high16 v4, 0x40000000    # 2.0f

    if-le v3, v4, :cond_1

    .line 62
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "capacity must be <= 2^30"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 68
    :cond_1
    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 69
    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v3

    const/4 v4, 0x1

    shl-int/lit8 v3, v3, 0x1

    move v2, v3

    .line 74
    :goto_0
    move-object v3, v0

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    .line 75
    move-object v3, v0

    move v4, v2

    new-array v4, v4, [I

    iput-object v4, v3, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    .line 76
    return-void

    .line 71
    :cond_2
    move v3, v1

    move v2, v3

    goto :goto_0
.end method

.method private doubleCapacity()V
    .locals 11

    .prologue
    .line 29
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    array-length v5, v5

    move v1, v5

    .line 30
    move v5, v1

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/util/CircularIntArray;->mHead:I

    sub-int/2addr v5, v6

    move v2, v5

    .line 31
    move v5, v1

    const/4 v6, 0x1

    shl-int/lit8 v5, v5, 0x1

    move v3, v5

    .line 32
    move v5, v3

    if-gez v5, :cond_0

    .line 33
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string v7, "Max array capacity exceeded"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 35
    :cond_0
    move v5, v3

    new-array v5, v5, [I

    move-object v4, v5

    .line 36
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/util/CircularIntArray;->mHead:I

    move-object v7, v4

    const/4 v8, 0x0

    move v9, v2

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    const/4 v6, 0x0

    move-object v7, v4

    move v8, v2

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/util/CircularIntArray;->mHead:I

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    .line 39
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/v4/util/CircularIntArray;->mHead:I

    .line 40
    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroid/support/v4/util/CircularIntArray;->mTail:I

    .line 41
    move-object v5, v0

    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    .line 42
    return-void
.end method


# virtual methods
.method public addFirst(I)V
    .locals 5

    .prologue
    .line 83
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/util/CircularIntArray;->mHead:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v3, v4

    iput v3, v2, Landroid/support/v4/util/CircularIntArray;->mHead:I

    .line 84
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/util/CircularIntArray;->mHead:I

    move v4, v1

    aput v4, v2, v3

    .line 85
    move-object v2, v0

    iget v2, v2, Landroid/support/v4/util/CircularIntArray;->mHead:I

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/util/CircularIntArray;->mTail:I

    if-ne v2, v3, :cond_0

    .line 86
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/util/CircularIntArray;->doubleCapacity()V

    .line 88
    :cond_0
    return-void
.end method

.method public addLast(I)V
    .locals 5

    .prologue
    .line 95
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/util/CircularIntArray;->mTail:I

    move v4, v1

    aput v4, v2, v3

    .line 96
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/util/CircularIntArray;->mTail:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v3, v4

    iput v3, v2, Landroid/support/v4/util/CircularIntArray;->mTail:I

    .line 97
    move-object v2, v0

    iget v2, v2, Landroid/support/v4/util/CircularIntArray;->mTail:I

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/util/CircularIntArray;->mHead:I

    if-ne v2, v3, :cond_0

    .line 98
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/util/CircularIntArray;->doubleCapacity()V

    .line 100
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 131
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/util/CircularIntArray;->mHead:I

    iput v2, v1, Landroid/support/v4/util/CircularIntArray;->mTail:I

    .line 132
    return-void
.end method

.method public get(I)I
    .locals 6

    .prologue
    .line 195
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/util/CircularIntArray;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 196
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/util/CircularIntArray;->mHead:I

    move v4, v1

    add-int/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v3, v4

    aget v2, v2, v3

    move v0, v2

    return v0
.end method

.method public getFirst()I
    .locals 4

    .prologue
    .line 174
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/util/CircularIntArray;->mHead:I

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/util/CircularIntArray;->mTail:I

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 175
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/util/CircularIntArray;->mHead:I

    aget v1, v1, v2

    move v0, v1

    return v0
.end method

.method public getLast()I
    .locals 5

    .prologue
    .line 184
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/util/CircularIntArray;->mHead:I

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/util/CircularIntArray;->mTail:I

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 185
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/util/CircularIntArray;->mTail:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v2, v3

    aget v1, v1, v2

    move v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .line 212
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/util/CircularIntArray;->mHead:I

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/util/CircularIntArray;->mTail:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public popFirst()I
    .locals 6

    .prologue
    .line 108
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/util/CircularIntArray;->mHead:I

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/util/CircularIntArray;->mTail:I

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 109
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/util/CircularIntArray;->mHead:I

    aget v2, v2, v3

    move v1, v2

    .line 110
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/util/CircularIntArray;->mHead:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v3, v4

    iput v3, v2, Landroid/support/v4/util/CircularIntArray;->mHead:I

    .line 111
    move v2, v1

    move v0, v2

    return v0
.end method

.method public popLast()I
    .locals 6

    .prologue
    .line 120
    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/util/CircularIntArray;->mHead:I

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/util/CircularIntArray;->mTail:I

    if-ne v3, v4, :cond_0

    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v3

    .line 121
    :cond_0
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/util/CircularIntArray;->mTail:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v3, v4

    move v1, v3

    .line 122
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/util/CircularIntArray;->mElements:[I

    move v4, v1

    aget v3, v3, v4

    move v2, v3

    .line 123
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v4/util/CircularIntArray;->mTail:I

    .line 124
    move v3, v2

    move v0, v3

    return v0
.end method

.method public removeFromEnd(I)V
    .locals 6

    .prologue
    .line 159
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-gtz v2, :cond_0

    .line 166
    :goto_0
    return-void

    .line 162
    :cond_0
    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/util/CircularIntArray;->size()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 163
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 165
    :cond_1
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/util/CircularIntArray;->mTail:I

    move v4, v1

    sub-int/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v3, v4

    iput v3, v2, Landroid/support/v4/util/CircularIntArray;->mTail:I

    .line 166
    goto :goto_0
.end method

.method public removeFromStart(I)V
    .locals 6

    .prologue
    .line 142
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-gtz v2, :cond_0

    .line 149
    :goto_0
    return-void

    .line 145
    :cond_0
    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/util/CircularIntArray;->size()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 146
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 148
    :cond_1
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/util/CircularIntArray;->mHead:I

    move v4, v1

    add-int/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v3, v4

    iput v3, v2, Landroid/support/v4/util/CircularIntArray;->mHead:I

    .line 149
    goto :goto_0
.end method

.method public size()I
    .locals 3

    .prologue
    .line 204
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/util/CircularIntArray;->mTail:I

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/util/CircularIntArray;->mHead:I

    sub-int/2addr v1, v2

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/util/CircularIntArray;->mCapacityBitmask:I

    and-int/2addr v1, v2

    move v0, v1

    return v0
.end method
