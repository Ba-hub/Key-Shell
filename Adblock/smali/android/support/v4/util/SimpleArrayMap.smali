.class public Landroid/support/v4/util/SimpleArrayMap;
.super Ljava/lang/Object;
.source "SimpleArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ArrayMap"

.field static mBaseCache:[Ljava/lang/Object;

.field static mBaseCacheSize:I

.field static mTwiceBaseCache:[Ljava/lang/Object;

.field static mTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field mHashes:[I

.field mSize:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 208
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 209
    move-object v1, v0

    sget-object v2, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v2, v1, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 210
    move-object v1, v0

    sget-object v2, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v2, v1, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 211
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 212
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 217
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 218
    move v2, v1

    if-nez v2, :cond_0

    .line 219
    move-object v2, v0

    sget-object v3, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v3, v2, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 220
    move-object v2, v0

    sget-object v3, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v3, v2, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 224
    :goto_0
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 225
    return-void

    .line 222
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v4/util/SimpleArrayMap;->allocArrays(I)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/support/v4/util/SimpleArrayMap;)V
    .locals 4

    .prologue
    .line 231
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    .line 232
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 233
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/util/SimpleArrayMap;->putAll(Landroid/support/v4/util/SimpleArrayMap;)V

    .line 235
    :cond_0
    return-void
.end method

.method private allocArrays(I)V
    .locals 15

    .prologue
    .line 138
    move-object v0, p0

    move/from16 v1, p1

    move v6, v1

    const/16 v7, 0x8

    if-ne v6, v7, :cond_2

    .line 139
    const-class v6, Landroid/support/v4/util/ArrayMap;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v2, v7

    monitor-enter v6

    .line 140
    :try_start_0
    sget-object v6, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 141
    sget-object v6, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    move-object v3, v6

    .line 142
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 143
    move-object v6, v3

    const/4 v7, 0x0

    aget-object v6, v6, v7

    check-cast v6, [Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    sput-object v6, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 144
    move-object v6, v0

    move-object v7, v3

    const/4 v8, 0x1

    aget-object v7, v7, v8

    check-cast v7, [I

    check-cast v7, [I

    iput-object v7, v6, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 145
    move-object v6, v3

    const/4 v7, 0x0

    move-object v8, v3

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v12, v8

    move v13, v9

    move-object v14, v10

    move-object v8, v14

    move-object v9, v12

    move v10, v13

    move-object v11, v14

    aput-object v11, v9, v10

    aput-object v8, v6, v7

    .line 146
    sget v6, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    sput v6, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    .line 149
    move-object v6, v2

    monitor-exit v6

    .line 170
    :goto_0
    return-void

    .line 151
    :cond_0
    move-object v6, v2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :cond_1
    :goto_1
    move-object v6, v0

    move v7, v1

    new-array v7, v7, [I

    iput-object v7, v6, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 169
    move-object v6, v0

    move v7, v1

    const/4 v8, 0x1

    shl-int/lit8 v7, v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iput-object v7, v6, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 170
    goto :goto_0

    .line 151
    :catchall_0
    move-exception v6

    move-object v4, v6

    move-object v6, v2

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v4

    throw v6

    .line 152
    :cond_2
    move v6, v1

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    .line 153
    const-class v6, Landroid/support/v4/util/ArrayMap;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v2, v7

    monitor-enter v6

    .line 154
    :try_start_2
    sget-object v6, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    if-eqz v6, :cond_3

    .line 155
    sget-object v6, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    move-object v3, v6

    .line 156
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 157
    move-object v6, v3

    const/4 v7, 0x0

    aget-object v6, v6, v7

    check-cast v6, [Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    sput-object v6, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 158
    move-object v6, v0

    move-object v7, v3

    const/4 v8, 0x1

    aget-object v7, v7, v8

    check-cast v7, [I

    check-cast v7, [I

    iput-object v7, v6, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 159
    move-object v6, v3

    const/4 v7, 0x0

    move-object v8, v3

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v12, v8

    move v13, v9

    move-object v14, v10

    move-object v8, v14

    move-object v9, v12

    move v10, v13

    move-object v11, v14

    aput-object v11, v9, v10

    aput-object v8, v6, v7

    .line 160
    sget v6, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    sput v6, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    .line 163
    move-object v6, v2

    monitor-exit v6

    goto :goto_0

    .line 165
    :cond_3
    move-object v6, v2

    monitor-exit v6

    goto :goto_1

    :catchall_1
    move-exception v6

    move-object v5, v6

    move-object v6, v2

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v6, v5

    throw v6
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .locals 11

    .prologue
    .line 173
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v7, v0

    array-length v7, v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_3

    .line 174
    const-class v7, Landroid/support/v4/util/ArrayMap;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v3, v8

    monitor-enter v7

    .line 175
    :try_start_0
    sget v7, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    const/16 v8, 0xa

    if-ge v7, v8, :cond_1

    .line 176
    move-object v7, v1

    const/4 v8, 0x0

    sget-object v9, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    aput-object v9, v7, v8

    .line 177
    move-object v7, v1

    const/4 v8, 0x1

    move-object v9, v0

    aput-object v9, v7, v8

    .line 178
    move v7, v2

    const/4 v8, 0x1

    shl-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v4, v7

    :goto_0
    move v7, v4

    const/4 v8, 0x2

    if-lt v7, v8, :cond_0

    .line 179
    move-object v7, v1

    move v8, v4

    const/4 v9, 0x0

    aput-object v9, v7, v8

    .line 178
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 181
    :cond_0
    move-object v7, v1

    sput-object v7, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 182
    sget v7, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    sput v7, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    .line 186
    :cond_1
    move-object v7, v3

    monitor-exit v7

    .line 202
    :cond_2
    :goto_1
    return-void

    .line 186
    :catchall_0
    move-exception v7

    move-object v5, v7

    move-object v7, v3

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v5

    throw v7

    .line 187
    :cond_3
    move-object v7, v0

    array-length v7, v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    .line 188
    const-class v7, Landroid/support/v4/util/ArrayMap;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v3, v8

    monitor-enter v7

    .line 189
    :try_start_1
    sget v7, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    const/16 v8, 0xa

    if-ge v7, v8, :cond_5

    .line 190
    move-object v7, v1

    const/4 v8, 0x0

    sget-object v9, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    aput-object v9, v7, v8

    .line 191
    move-object v7, v1

    const/4 v8, 0x1

    move-object v9, v0

    aput-object v9, v7, v8

    .line 192
    move v7, v2

    const/4 v8, 0x1

    shl-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v4, v7

    :goto_2
    move v7, v4

    const/4 v8, 0x2

    if-lt v7, v8, :cond_4

    .line 193
    move-object v7, v1

    move v8, v4

    const/4 v9, 0x0

    aput-object v9, v7, v8

    .line 192
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 195
    :cond_4
    move-object v7, v1

    sput-object v7, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 196
    sget v7, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    sput v7, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    .line 200
    :cond_5
    move-object v7, v3

    monitor-exit v7

    goto :goto_1

    :catchall_1
    move-exception v7

    move-object v6, v7

    move-object v7, v3

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v7, v6

    throw v7
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 241
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-eqz v1, :cond_0

    .line 242
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    invoke-static {v1, v2, v3}, Landroid/support/v4/util/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 243
    move-object v1, v0

    sget-object v2, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v2, v1, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 244
    move-object v1, v0

    sget-object v2, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v2, v1, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 245
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 247
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 273
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/util/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 313
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/util/SimpleArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public ensureCapacity(I)V
    .locals 10

    .prologue
    .line 254
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v4, v4

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 255
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    move-object v2, v4

    .line 256
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move-object v3, v4

    .line 257
    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Landroid/support/v4/util/SimpleArrayMap;->allocArrays(I)V

    .line 258
    move-object v4, v0

    iget v4, v4, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-lez v4, :cond_0

    .line 259
    move-object v4, v2

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    const/4 v9, 0x1

    shl-int/lit8 v8, v8, 0x1

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 262
    :cond_0
    move-object v4, v2

    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    invoke-static {v4, v5, v6}, Landroid/support/v4/util/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 264
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9

    .prologue
    .line 532
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    move-object v8, v1

    if-ne v7, v8, :cond_0

    .line 533
    const/4 v7, 0x1

    move v0, v7

    .line 586
    :goto_0
    return v0

    .line 535
    :cond_0
    move-object v7, v1

    instance-of v7, v7, Landroid/support/v4/util/SimpleArrayMap;

    if-eqz v7, :cond_6

    .line 536
    move-object v7, v1

    check-cast v7, Landroid/support/v4/util/SimpleArrayMap;

    move-object v2, v7

    .line 537
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v7

    move-object v8, v2

    invoke-virtual {v8}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v8

    if-eq v7, v8, :cond_1

    .line 538
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 542
    :cond_1
    const/4 v7, 0x0

    move v3, v7

    :goto_1
    move v7, v3

    move-object v8, v0

    :try_start_0
    iget v8, v8, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-ge v7, v8, :cond_5

    .line 543
    move-object v7, v0

    move v8, v3

    invoke-virtual {v7, v8}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    .line 544
    move-object v7, v0

    move v8, v3

    invoke-virtual {v7, v8}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    .line 545
    move-object v7, v2

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 546
    move-object v7, v5

    if-nez v7, :cond_3

    .line 547
    move-object v7, v6

    if-nez v7, :cond_2

    move-object v7, v2

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 548
    :cond_2
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 550
    :cond_3
    move-object v7, v5

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-nez v7, :cond_4

    .line 551
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 542
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 559
    :cond_5
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 554
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 555
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 556
    :catch_1
    move-exception v7

    move-object v3, v7

    .line 557
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 560
    :cond_6
    move-object v7, v1

    instance-of v7, v7, Ljava/util/Map;

    if-eqz v7, :cond_c

    .line 561
    move-object v7, v1

    check-cast v7, Ljava/util/Map;

    move-object v2, v7

    .line 562
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v7

    move-object v8, v2

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    if-eq v7, v8, :cond_7

    .line 563
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 567
    :cond_7
    const/4 v7, 0x0

    move v3, v7

    :goto_2
    move v7, v3

    move-object v8, v0

    :try_start_1
    iget v8, v8, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-ge v7, v8, :cond_b

    .line 568
    move-object v7, v0

    move v8, v3

    invoke-virtual {v7, v8}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    .line 569
    move-object v7, v0

    move v8, v3

    invoke-virtual {v7, v8}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    .line 570
    move-object v7, v2

    move-object v8, v4

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 571
    move-object v7, v5

    if-nez v7, :cond_9

    .line 572
    move-object v7, v6

    if-nez v7, :cond_8

    move-object v7, v2

    move-object v8, v4

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 573
    :cond_8
    const/4 v7, 0x0

    move v0, v7

    goto/16 :goto_0

    .line 575
    :cond_9
    move-object v7, v5

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v7

    if-nez v7, :cond_a

    .line 576
    const/4 v7, 0x0

    move v0, v7

    goto/16 :goto_0

    .line 567
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 584
    :cond_b
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 579
    :catch_2
    move-exception v7

    move-object v3, v7

    .line 580
    const/4 v7, 0x0

    move v0, v7

    goto/16 :goto_0

    .line 581
    :catch_3
    move-exception v7

    move-object v3, v7

    .line 582
    const/4 v7, 0x0

    move v0, v7

    goto/16 :goto_0

    .line 586
    :cond_c
    const/4 v7, 0x0

    move v0, v7

    goto/16 :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 323
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/util/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v3

    move v2, v3

    .line 324
    move v3, v2

    if-ltz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v4, v2

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    :goto_0
    move-object v0, v3

    return-object v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 11

    .prologue
    .line 594
    move-object v0, p0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    move-object v1, v8

    .line 595
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move-object v2, v8

    .line 596
    const/4 v8, 0x0

    move v3, v8

    .line 597
    const/4 v8, 0x0

    move v4, v8

    const/4 v8, 0x1

    move v5, v8

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    move v6, v8

    :goto_0
    move v8, v4

    move v9, v6

    if-ge v8, v9, :cond_1

    .line 598
    move-object v8, v2

    move v9, v5

    aget-object v8, v8, v9

    move-object v7, v8

    .line 599
    move v8, v3

    move-object v9, v1

    move v10, v4

    aget v9, v9, v10

    move-object v10, v7

    if-nez v10, :cond_0

    const/4 v10, 0x0

    :goto_1
    xor-int/2addr v9, v10

    add-int/2addr v8, v9

    move v3, v8

    .line 597
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 599
    :cond_0
    move-object v10, v7

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v10

    goto :goto_1

    .line 601
    :cond_1
    move v8, v3

    move v0, v8

    return v0
.end method

.method indexOf(Ljava/lang/Object;I)I
    .locals 11

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    move v3, v7

    .line 65
    move v7, v3

    if-nez v7, :cond_0

    .line 66
    const/4 v7, -0x1

    move v0, v7

    .line 96
    :goto_0
    return v0

    .line 69
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    move v8, v3

    move v9, v2

    invoke-static {v7, v8, v9}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([III)I

    move-result v7

    move v4, v7

    .line 72
    move v7, v4

    if-gez v7, :cond_1

    .line 73
    move v7, v4

    move v0, v7

    goto :goto_0

    .line 77
    :cond_1
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v9, v4

    const/4 v10, 0x1

    shl-int/lit8 v9, v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 78
    move v7, v4

    move v0, v7

    goto :goto_0

    .line 83
    :cond_2
    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v5, v7

    :goto_1
    move v7, v5

    move v8, v3

    if-ge v7, v8, :cond_4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    move v8, v5

    aget v7, v7, v8

    move v8, v2

    if-ne v7, v8, :cond_4

    .line 84
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v9, v5

    const/4 v10, 0x1

    shl-int/lit8 v9, v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v5

    move v0, v7

    goto :goto_0

    .line 83
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 88
    :cond_4
    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v6, v7

    :goto_2
    move v7, v6

    if-ltz v7, :cond_6

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    move v8, v6

    aget v7, v7, v8

    move v8, v2

    if-ne v7, v8, :cond_6

    .line 89
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v9, v6

    const/4 v10, 0x1

    shl-int/lit8 v9, v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v6

    move v0, v7

    goto :goto_0

    .line 88
    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 96
    :cond_6
    move v7, v5

    const/4 v8, -0x1

    xor-int/lit8 v7, v7, -0x1

    move v0, v7

    goto :goto_0
.end method

.method public indexOfKey(Ljava/lang/Object;)I
    .locals 5

    .prologue
    .line 283
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/util/SimpleArrayMap;->indexOfNull()I

    move-result v2

    :goto_0
    move v0, v2

    return v0

    :cond_0
    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/util/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v2

    goto :goto_0
.end method

.method indexOfNull()I
    .locals 9

    .prologue
    .line 100
    move-object v0, p0

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    move v1, v5

    .line 103
    move v5, v1

    if-nez v5, :cond_0

    .line 104
    const/4 v5, -0x1

    move v0, v5

    .line 134
    :goto_0
    return v0

    .line 107
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    move v6, v1

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([III)I

    move-result v5

    move v2, v5

    .line 110
    move v5, v2

    if-gez v5, :cond_1

    .line 111
    move v5, v2

    move v0, v5

    goto :goto_0

    .line 115
    :cond_1
    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v7, v2

    const/4 v8, 0x1

    shl-int/lit8 v7, v7, 0x1

    aget-object v6, v6, v7

    if-ne v5, v6, :cond_2

    .line 116
    move v5, v2

    move v0, v5

    goto :goto_0

    .line 121
    :cond_2
    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v3, v5

    :goto_1
    move v5, v3

    move v6, v1

    if-ge v5, v6, :cond_4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    move v6, v3

    aget v5, v5, v6

    if-nez v5, :cond_4

    .line 122
    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v7, v3

    const/4 v8, 0x1

    shl-int/lit8 v7, v7, 0x1

    aget-object v6, v6, v7

    if-ne v5, v6, :cond_3

    move v5, v3

    move v0, v5

    goto :goto_0

    .line 121
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 126
    :cond_4
    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    :goto_2
    move v5, v4

    if-ltz v5, :cond_6

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    move v6, v4

    aget v5, v5, v6

    if-nez v5, :cond_6

    .line 127
    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v7, v4

    const/4 v8, 0x1

    shl-int/lit8 v7, v7, 0x1

    aget-object v6, v6, v7

    if-ne v5, v6, :cond_5

    move v5, v4

    move v0, v5

    goto :goto_0

    .line 126
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 134
    :cond_6
    move v5, v3

    const/4 v6, -0x1

    xor-int/lit8 v5, v5, -0x1

    move v0, v5

    goto :goto_0
.end method

.method indexOfValue(Ljava/lang/Object;)I
    .locals 8

    .prologue
    .line 287
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    move v2, v5

    .line 288
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move-object v3, v5

    .line 289
    move-object v5, v1

    if-nez v5, :cond_2

    .line 290
    const/4 v5, 0x1

    move v4, v5

    :goto_0
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_1

    .line 291
    move-object v5, v3

    move v6, v4

    aget-object v5, v5, v6

    if-nez v5, :cond_0

    .line 292
    move v5, v4

    const/4 v6, 0x1

    shr-int/lit8 v5, v5, 0x1

    move v0, v5

    .line 302
    :goto_1
    return v0

    .line 290
    :cond_0
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 302
    :cond_1
    const/4 v5, -0x1

    move v0, v5

    goto :goto_1

    .line 296
    :cond_2
    const/4 v5, 0x1

    move v4, v5

    :goto_2
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_1

    .line 297
    move-object v5, v1

    move-object v6, v3

    move v7, v4

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 298
    move v5, v4

    const/4 v6, 0x1

    shr-int/lit8 v5, v5, 0x1

    move v0, v5

    goto :goto_1

    .line 296
    :cond_3
    add-int/lit8 v4, v4, 0x2

    goto :goto_2
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 362
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keyAt(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .prologue
    .line 333
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v3, v1

    const/4 v4, 0x1

    shl-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    move-object v0, v2

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 376
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v8, v1

    if-nez v8, :cond_0

    .line 377
    const/4 v8, 0x0

    move v3, v8

    .line 378
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v4/util/SimpleArrayMap;->indexOfNull()I

    move-result v8

    move v4, v8

    .line 383
    :goto_0
    move v8, v4

    if-ltz v8, :cond_1

    .line 384
    move v8, v4

    const/4 v9, 0x1

    shl-int/lit8 v8, v8, 0x1

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v4, v8

    .line 385
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v9, v4

    aget-object v8, v8, v9

    move-object v5, v8

    .line 386
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v9, v4

    move-object v10, v2

    aput-object v10, v8, v9

    .line 387
    move-object v8, v5

    move-object v0, v8

    .line 421
    :goto_1
    return-object v0

    .line 380
    :cond_0
    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    move v3, v8

    .line 381
    move-object v8, v0

    move-object v9, v1

    move v10, v3

    invoke-virtual {v8, v9, v10}, Landroid/support/v4/util/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v8

    move v4, v8

    goto :goto_0

    .line 390
    :cond_1
    move v8, v4

    const/4 v9, -0x1

    xor-int/lit8 v8, v8, -0x1

    move v4, v8

    .line 391
    move-object v8, v0

    iget v8, v8, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v9, v9

    if-lt v8, v9, :cond_3

    .line 392
    move-object v8, v0

    iget v8, v8, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    const/16 v9, 0x8

    if-lt v8, v9, :cond_5

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    const/4 v10, 0x1

    shr-int/lit8 v9, v9, 0x1

    add-int/2addr v8, v9

    :goto_2
    move v5, v8

    .line 397
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    move-object v6, v8

    .line 398
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move-object v7, v8

    .line 399
    move-object v8, v0

    move v9, v5

    invoke-direct {v8, v9}, Landroid/support/v4/util/SimpleArrayMap;->allocArrays(I)V

    .line 401
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v8, v8

    if-lez v8, :cond_2

    .line 403
    move-object v8, v6

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    const/4 v11, 0x0

    move-object v12, v6

    array-length v12, v12

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    move-object v8, v7

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v11, 0x0

    move-object v12, v7

    array-length v12, v12

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 407
    :cond_2
    move-object v8, v6

    move-object v9, v7

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    invoke-static {v8, v9, v10}, Landroid/support/v4/util/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 410
    :cond_3
    move v8, v4

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-ge v8, v9, :cond_4

    .line 413
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    move v9, v4

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    move v11, v4

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    move-object v12, v0

    iget v12, v12, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    move v13, v4

    sub-int/2addr v12, v13

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 414
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v9, v4

    const/4 v10, 0x1

    shl-int/lit8 v9, v9, 0x1

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v11, v4

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x1

    shl-int/lit8 v11, v11, 0x1

    move-object v12, v0

    iget v12, v12, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    move v13, v4

    sub-int/2addr v12, v13

    const/4 v13, 0x1

    shl-int/lit8 v12, v12, 0x1

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    :cond_4
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    move v9, v4

    move v10, v3

    aput v10, v8, v9

    .line 418
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v9, v4

    const/4 v10, 0x1

    shl-int/lit8 v9, v9, 0x1

    move-object v10, v1

    aput-object v10, v8, v9

    .line 419
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v9, v4

    const/4 v10, 0x1

    shl-int/lit8 v9, v9, 0x1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move-object v10, v2

    aput-object v10, v8, v9

    .line 420
    move-object v8, v0

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    iget v9, v9, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 421
    const/4 v8, 0x0

    move-object v0, v8

    goto/16 :goto_1

    .line 392
    :cond_5
    move-object v8, v0

    iget v8, v8, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    const/4 v9, 0x4

    if-lt v8, v9, :cond_6

    const/16 v8, 0x8

    goto/16 :goto_2

    :cond_6
    const/4 v8, 0x4

    goto/16 :goto_2
.end method

.method public putAll(Landroid/support/v4/util/SimpleArrayMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 429
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    iget v4, v4, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    move v2, v4

    .line 430
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    move v6, v2

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/support/v4/util/SimpleArrayMap;->ensureCapacity(I)V

    .line 431
    move-object v4, v0

    iget v4, v4, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-nez v4, :cond_1

    .line 432
    move v4, v2

    if-lez v4, :cond_0

    .line 433
    move-object v4, v1

    iget-object v4, v4, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    const/4 v7, 0x0

    move v8, v2

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 434
    move-object v4, v1

    iget-object v4, v4, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v7, 0x0

    move v8, v2

    const/4 v9, 0x1

    shl-int/lit8 v8, v8, 0x1

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 435
    move-object v4, v0

    move v5, v2

    iput v5, v4, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 442
    :cond_0
    return-void

    .line 438
    :cond_1
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 439
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 438
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 451
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/util/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v3

    move v2, v3

    .line 452
    move v3, v2

    if-ltz v3, :cond_0

    .line 453
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/util/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .line 456
    :goto_0
    return-object v0

    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 465
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v7, v1

    const/4 v8, 0x1

    shl-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aget-object v6, v6, v7

    move-object v2, v6

    .line 466
    move-object v6, v0

    iget v6, v6, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    const/4 v7, 0x1

    if-gt v6, v7, :cond_0

    .line 469
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    invoke-static {v6, v7, v8}, Landroid/support/v4/util/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 470
    move-object v6, v0

    sget-object v7, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v7, v6, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 471
    move-object v6, v0

    sget-object v7, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v7, v6, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 472
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 512
    :goto_0
    move-object v6, v2

    move-object v0, v6

    return-object v0

    .line 474
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v6, v6

    const/16 v7, 0x8

    if-le v6, v7, :cond_4

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v7, v7

    const/4 v8, 0x3

    div-int/lit8 v7, v7, 0x3

    if-ge v6, v7, :cond_4

    .line 478
    move-object v6, v0

    iget v6, v6, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    const/16 v7, 0x8

    if-le v6, v7, :cond_3

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    const/4 v8, 0x1

    shr-int/lit8 v7, v7, 0x1

    add-int/2addr v6, v7

    :goto_1
    move v3, v6

    .line 482
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    move-object v4, v6

    .line 483
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move-object v5, v6

    .line 484
    move-object v6, v0

    move v7, v3

    invoke-direct {v6, v7}, Landroid/support/v4/util/SimpleArrayMap;->allocArrays(I)V

    .line 486
    move-object v6, v0

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget v7, v7, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 487
    move v6, v1

    if-lez v6, :cond_1

    .line 489
    move-object v6, v4

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    const/4 v9, 0x0

    move v10, v1

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 490
    move-object v6, v5

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v9, 0x0

    move v10, v1

    const/4 v11, 0x1

    shl-int/lit8 v10, v10, 0x1

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 492
    :cond_1
    move v6, v1

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-ge v6, v7, :cond_2

    .line 495
    move-object v6, v4

    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    move v9, v1

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    move v11, v1

    sub-int/2addr v10, v11

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 496
    move-object v6, v5

    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    shl-int/lit8 v7, v7, 0x1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v9, v1

    const/4 v10, 0x1

    shl-int/lit8 v9, v9, 0x1

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    move v11, v1

    sub-int/2addr v10, v11

    const/4 v11, 0x1

    shl-int/lit8 v10, v10, 0x1

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 499
    :cond_2
    goto/16 :goto_0

    .line 478
    :cond_3
    const/16 v6, 0x8

    goto :goto_1

    .line 500
    :cond_4
    move-object v6, v0

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget v7, v7, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 501
    move v6, v1

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-ge v6, v7, :cond_5

    .line 504
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    move v9, v1

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    move v11, v1

    sub-int/2addr v10, v11

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 505
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    shl-int/lit8 v7, v7, 0x1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v9, v1

    const/4 v10, 0x1

    shl-int/lit8 v9, v9, 0x1

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    move v11, v1

    sub-int/2addr v10, v11

    const/4 v11, 0x1

    shl-int/lit8 v10, v10, 0x1

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 508
    :cond_5
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    const/4 v8, 0x1

    shl-int/lit8 v7, v7, 0x1

    const/4 v8, 0x0

    aput-object v8, v6, v7

    .line 509
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    const/4 v8, 0x1

    shl-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x0

    aput-object v8, v6, v7

    goto/16 :goto_0
.end method

.method public setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 352
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, v1

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v1, v4

    .line 353
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v5, v1

    aget-object v4, v4, v5

    move-object v3, v4

    .line 354
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v5, v1

    move-object v6, v2

    aput-object v6, v4, v5

    .line 355
    move-object v4, v3

    move-object v0, v4

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 519
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    move v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 613
    move-object v0, p0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/util/SimpleArrayMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 614
    const-string v5, "{}"

    move-object v0, v5

    .line 638
    :goto_0
    return-object v0

    .line 617
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    const/16 v8, 0x1c

    mul-int/lit8 v7, v7, 0x1c

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v5

    .line 618
    move-object v5, v1

    const/16 v6, 0x7b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 619
    const/4 v5, 0x0

    move v2, v5

    :goto_1
    move v5, v2

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-ge v5, v6, :cond_4

    .line 620
    move v5, v2

    if-lez v5, :cond_1

    .line 621
    move-object v5, v1

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 623
    :cond_1
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 624
    move-object v5, v3

    move-object v6, v0

    if-eq v5, v6, :cond_2

    .line 625
    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 629
    :goto_2
    move-object v5, v1

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 630
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 631
    move-object v5, v4

    move-object v6, v0

    if-eq v5, v6, :cond_3

    .line 632
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 619
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 627
    :cond_2
    move-object v5, v1

    const-string v6, "(this Map)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    goto :goto_2

    .line 634
    :cond_3
    move-object v5, v1

    const-string v6, "(this Map)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    goto :goto_3

    .line 637
    :cond_4
    move-object v5, v1

    const/16 v6, 0x7d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 638
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 342
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    move v3, v1

    const/4 v4, 0x1

    shl-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    move-object v0, v2

    return-object v0
.end method
