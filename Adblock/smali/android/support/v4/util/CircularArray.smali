.class public final Landroid/support/v4/util/CircularArray;
.super Ljava/lang/Object;
.source "CircularArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCapacityBitmask:I

.field private mElements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private mHead:I

.field private mTail:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Landroid/support/v4/util/CircularArray;-><init>(I)V

    .line 48
    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    .prologue
    .line 56
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 57
    move v3, v1

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    .line 58
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "capacity must be >= 1"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 60
    :cond_0
    move v3, v1

    const/high16 v4, 0x40000000    # 2.0f

    if-le v3, v4, :cond_1

    .line 61
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "capacity must be <= 2^30"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 67
    :cond_1
    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 68
    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v3

    const/4 v4, 0x1

    shl-int/lit8 v3, v3, 0x1

    move v2, v3

    .line 73
    :goto_0
    move-object v3, v0

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    .line 74
    move-object v3, v0

    move v4, v2

    new-array v4, v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    iput-object v4, v3, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    .line 75
    return-void

    .line 70
    :cond_2
    move v3, v1

    move v2, v3

    goto :goto_0
.end method

.method private doubleCapacity()V
    .locals 11

    .prologue
    .line 28
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    array-length v5, v5

    move v1, v5

    .line 29
    move v5, v1

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/util/CircularArray;->mHead:I

    sub-int/2addr v5, v6

    move v2, v5

    .line 30
    move v5, v1

    const/4 v6, 0x1

    shl-int/lit8 v5, v5, 0x1

    move v3, v5

    .line 31
    move v5, v3

    if-gez v5, :cond_0

    .line 32
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string v7, "Max array capacity exceeded"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 34
    :cond_0
    move v5, v3

    new-array v5, v5, [Ljava/lang/Object;

    move-object v4, v5

    .line 35
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/util/CircularArray;->mHead:I

    move-object v7, v4

    const/4 v8, 0x0

    move v9, v2

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    const/4 v6, 0x0

    move-object v7, v4

    move v8, v2

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/util/CircularArray;->mHead:I

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    move-object v5, v0

    move-object v6, v4

    check-cast v6, [Ljava/lang/Object;

    iput-object v6, v5, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    .line 38
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/v4/util/CircularArray;->mHead:I

    .line 39
    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroid/support/v4/util/CircularArray;->mTail:I

    .line 40
    move-object v5, v0

    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    .line 41
    return-void
.end method


# virtual methods
.method public addFirst(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/util/CircularArray;->mHead:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    and-int/2addr v3, v4

    iput v3, v2, Landroid/support/v4/util/CircularArray;->mHead:I

    .line 83
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/util/CircularArray;->mHead:I

    move-object v4, v1

    aput-object v4, v2, v3

    .line 84
    move-object v2, v0

    iget v2, v2, Landroid/support/v4/util/CircularArray;->mHead:I

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/util/CircularArray;->mTail:I

    if-ne v2, v3, :cond_0

    .line 85
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/util/CircularArray;->doubleCapacity()V

    .line 87
    :cond_0
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 94
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/util/CircularArray;->mTail:I

    move-object v4, v1

    aput-object v4, v2, v3

    .line 95
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/util/CircularArray;->mTail:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    and-int/2addr v3, v4

    iput v3, v2, Landroid/support/v4/util/CircularArray;->mTail:I

    .line 96
    move-object v2, v0

    iget v2, v2, Landroid/support/v4/util/CircularArray;->mTail:I

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/util/CircularArray;->mHead:I

    if-ne v2, v3, :cond_0

    .line 97
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/util/CircularArray;->doubleCapacity()V

    .line 99
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 136
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/util/CircularArray;->removeFromStart(I)V

    .line 137
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 238
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 239
    :cond_0
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 241
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/util/CircularArray;->mHead:I

    move v4, v1

    add-int/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    and-int/2addr v3, v4

    aget-object v2, v2, v3

    move-object v0, v2

    return-object v0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 213
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/util/CircularArray;->mHead:I

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/util/CircularArray;->mTail:I

    if-ne v1, v2, :cond_0

    .line 214
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 216
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/util/CircularArray;->mHead:I

    aget-object v1, v1, v2

    move-object v0, v1

    return-object v0
.end method

.method public getLast()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 225
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/util/CircularArray;->mHead:I

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/util/CircularArray;->mTail:I

    if-ne v1, v2, :cond_0

    .line 226
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 228
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/util/CircularArray;->mTail:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    and-int/2addr v2, v3

    aget-object v1, v1, v2

    move-object v0, v1

    return-object v0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .line 257
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/util/CircularArray;->mHead:I

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/util/CircularArray;->mTail:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public popFirst()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 107
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/util/CircularArray;->mHead:I

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/util/CircularArray;->mTail:I

    if-ne v2, v3, :cond_0

    .line 108
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 110
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/util/CircularArray;->mHead:I

    aget-object v2, v2, v3

    move-object v1, v2

    .line 111
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/util/CircularArray;->mHead:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 112
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/util/CircularArray;->mHead:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    and-int/2addr v3, v4

    iput v3, v2, Landroid/support/v4/util/CircularArray;->mHead:I

    .line 113
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public popLast()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 122
    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/util/CircularArray;->mHead:I

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/util/CircularArray;->mTail:I

    if-ne v3, v4, :cond_0

    .line 123
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v3

    .line 125
    :cond_0
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/util/CircularArray;->mTail:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    and-int/2addr v3, v4

    move v1, v3

    .line 126
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    move v4, v1

    aget-object v3, v3, v4

    move-object v2, v3

    .line 127
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    move v4, v1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 128
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v4/util/CircularArray;->mTail:I

    .line 129
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public removeFromEnd(I)V
    .locals 10

    .prologue
    .line 180
    move-object v0, p0

    move v1, p1

    move v6, v1

    if-gtz v6, :cond_0

    .line 205
    :goto_0
    return-void

    .line 183
    :cond_0
    move v6, v1

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v7

    if-le v6, v7, :cond_1

    .line 184
    new-instance v6, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v6

    .line 186
    :cond_1
    const/4 v6, 0x0

    move v2, v6

    .line 187
    move v6, v1

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/util/CircularArray;->mTail:I

    if-ge v6, v7, :cond_2

    .line 188
    move-object v6, v0

    iget v6, v6, Landroid/support/v4/util/CircularArray;->mTail:I

    move v7, v1

    sub-int/2addr v6, v7

    move v2, v6

    .line 190
    :cond_2
    move v6, v2

    move v3, v6

    :goto_1
    move v6, v3

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/util/CircularArray;->mTail:I

    if-ge v6, v7, :cond_3

    .line 191
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    move v7, v3

    const/4 v8, 0x0

    aput-object v8, v6, v7

    .line 190
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 193
    :cond_3
    move-object v6, v0

    iget v6, v6, Landroid/support/v4/util/CircularArray;->mTail:I

    move v7, v2

    sub-int/2addr v6, v7

    move v3, v6

    .line 194
    move v6, v1

    move v7, v3

    sub-int/2addr v6, v7

    move v1, v6

    .line 195
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/util/CircularArray;->mTail:I

    move v8, v3

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/support/v4/util/CircularArray;->mTail:I

    .line 196
    move v6, v1

    if-lez v6, :cond_5

    .line 198
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    array-length v7, v7

    iput v7, v6, Landroid/support/v4/util/CircularArray;->mTail:I

    .line 199
    move-object v6, v0

    iget v6, v6, Landroid/support/v4/util/CircularArray;->mTail:I

    move v7, v1

    sub-int/2addr v6, v7

    move v4, v6

    .line 200
    move v6, v4

    move v5, v6

    :goto_2
    move v6, v5

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/util/CircularArray;->mTail:I

    if-ge v6, v7, :cond_4

    .line 201
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    move v7, v5

    const/4 v8, 0x0

    aput-object v8, v6, v7

    .line 200
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 203
    :cond_4
    move-object v6, v0

    move v7, v4

    iput v7, v6, Landroid/support/v4/util/CircularArray;->mTail:I

    .line 205
    :cond_5
    goto :goto_0
.end method

.method public removeFromStart(I)V
    .locals 9

    .prologue
    .line 147
    move-object v0, p0

    move v1, p1

    move v5, v1

    if-gtz v5, :cond_0

    .line 170
    :goto_0
    return-void

    .line 150
    :cond_0
    move v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v6

    if-le v5, v6, :cond_1

    .line 151
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v5

    .line 153
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    array-length v5, v5

    move v2, v5

    .line 154
    move v5, v1

    move v6, v2

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/util/CircularArray;->mHead:I

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_2

    .line 155
    move-object v5, v0

    iget v5, v5, Landroid/support/v4/util/CircularArray;->mHead:I

    move v6, v1

    add-int/2addr v5, v6

    move v2, v5

    .line 157
    :cond_2
    move-object v5, v0

    iget v5, v5, Landroid/support/v4/util/CircularArray;->mHead:I

    move v3, v5

    :goto_1
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_3

    .line 158
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    move v6, v3

    const/4 v7, 0x0

    aput-object v7, v5, v6

    .line 157
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 160
    :cond_3
    move v5, v2

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/util/CircularArray;->mHead:I

    sub-int/2addr v5, v6

    move v3, v5

    .line 161
    move v5, v1

    move v6, v3

    sub-int/2addr v5, v6

    move v1, v5

    .line 162
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/util/CircularArray;->mHead:I

    move v7, v3

    add-int/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    and-int/2addr v6, v7

    iput v6, v5, Landroid/support/v4/util/CircularArray;->mHead:I

    .line 163
    move v5, v1

    if-lez v5, :cond_5

    .line 165
    const/4 v5, 0x0

    move v4, v5

    :goto_2
    move v5, v4

    move v6, v1

    if-ge v5, v6, :cond_4

    .line 166
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/util/CircularArray;->mElements:[Ljava/lang/Object;

    move v6, v4

    const/4 v7, 0x0

    aput-object v7, v5, v6

    .line 165
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 168
    :cond_4
    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroid/support/v4/util/CircularArray;->mHead:I

    .line 170
    :cond_5
    goto :goto_0
.end method

.method public size()I
    .locals 3

    .prologue
    .line 249
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/util/CircularArray;->mTail:I

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/util/CircularArray;->mHead:I

    sub-int/2addr v1, v2

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/util/CircularArray;->mCapacityBitmask:I

    and-int/2addr v1, v2

    move v0, v1

    return v0
.end method
