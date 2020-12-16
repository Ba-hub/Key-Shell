.class public Landroid/support/constraint/solver/ArrayLinkedVariables;
.super Ljava/lang/Object;
.source "ArrayLinkedVariables.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final NONE:I = -0x1


# instance fields
.field private ROW_SIZE:I

.field private candidate:Landroid/support/constraint/solver/SolverVariable;

.field currentSize:I

.field private mArrayIndices:[I

.field private mArrayNextIndices:[I

.field private mArrayValues:[F

.field private final mCache:Landroid/support/constraint/solver/Cache;

.field private mDidFillOnce:Z

.field private mHead:I

.field private mLast:I

.field private final mRow:Landroid/support/constraint/solver/ArrayRow;


# direct methods
.method constructor <init>(Landroid/support/constraint/solver/ArrayRow;Landroid/support/constraint/solver/Cache;)V
    .locals 5

    .prologue
    .line 99
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 42
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    .line 47
    move-object v3, v0

    const/16 v4, 0x8

    iput v4, v3, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    .line 49
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/support/constraint/solver/ArrayLinkedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    .line 52
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    new-array v4, v4, [I

    iput-object v4, v3, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 55
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    new-array v4, v4, [I

    iput-object v4, v3, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 58
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    new-array v4, v4, [F

    iput-object v4, v3, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    .line 61
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 77
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 80
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 100
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/constraint/solver/ArrayLinkedVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    .line 101
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    .line 107
    return-void
.end method


# virtual methods
.method public final add(Landroid/support/constraint/solver/SolverVariable;F)V
    .locals 14

    .prologue
    .line 212
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move v8, v2

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_0

    .line 311
    :goto_0
    return-void

    .line 216
    :cond_0
    move-object v8, v0

    iget v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    .line 217
    move-object v8, v0

    const/4 v9, 0x0

    iput v9, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 218
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    move-object v9, v0

    iget v9, v9, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    move v10, v2

    aput v10, v8, v9

    .line 219
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move-object v9, v0

    iget v9, v9, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    move-object v10, v1

    iget v10, v10, Landroid/support/constraint/solver/SolverVariable;->id:I

    aput v10, v8, v9

    .line 220
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move-object v9, v0

    iget v9, v9, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v10, -0x1

    aput v10, v8, v9

    .line 221
    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    .line 222
    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez v8, :cond_1

    .line 224
    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 226
    :cond_1
    goto :goto_0

    .line 228
    :cond_2
    move-object v8, v0

    iget v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    move v3, v8

    .line 229
    const/4 v8, -0x1

    move v4, v8

    .line 230
    const/4 v8, 0x0

    move v5, v8

    .line 231
    :goto_1
    move v8, v3

    const/4 v9, -0x1

    if-eq v8, v9, :cond_8

    move v8, v5

    move-object v9, v0

    iget v9, v9, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v8, v9, :cond_8

    .line 232
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move v9, v3

    aget v8, v8, v9

    move v6, v8

    .line 233
    move v8, v6

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ne v8, v9, :cond_6

    .line 234
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    move v9, v3

    move-object v12, v8

    move v13, v9

    move-object v8, v12

    move v9, v13

    move-object v10, v12

    move v11, v13

    aget v10, v10, v11

    move v11, v2

    add-float/2addr v10, v11

    aput v10, v8, v9

    .line 236
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    move v9, v3

    aget v8, v8, v9

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_4

    .line 237
    move v8, v3

    move-object v9, v0

    iget v9, v9, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    if-ne v8, v9, :cond_5

    .line 238
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v10, v3

    aget v9, v9, v10

    iput v9, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 242
    :goto_2
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v8, v8, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    move v9, v6

    aget-object v8, v8, v9

    move-object v9, v0

    iget-object v9, v9, Landroid/support/constraint/solver/ArrayLinkedVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {v8, v9}, Landroid/support/constraint/solver/SolverVariable;->removeClientEquation(Landroid/support/constraint/solver/ArrayRow;)V

    .line 243
    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v8, :cond_3

    .line 245
    move-object v8, v0

    move v9, v3

    iput v9, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 247
    :cond_3
    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    .line 249
    :cond_4
    goto/16 :goto_0

    .line 240
    :cond_5
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v9, v4

    move-object v10, v0

    iget-object v10, v10, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v11, v3

    aget v10, v10, v11

    aput v10, v8, v9

    goto :goto_2

    .line 251
    :cond_6
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move v9, v3

    aget v8, v8, v9

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ge v8, v9, :cond_7

    .line 252
    move v8, v3

    move v4, v8

    .line 254
    :cond_7
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v9, v3

    aget v8, v8, v9

    move v3, v8

    add-int/lit8 v5, v5, 0x1

    .line 255
    goto/16 :goto_1

    .line 260
    :cond_8
    move-object v8, v0

    iget v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v6, v8

    .line 261
    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v8, :cond_9

    .line 264
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move-object v9, v0

    iget v9, v9, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    aget v8, v8, v9

    const/4 v9, -0x1

    if-ne v8, v9, :cond_e

    .line 265
    move-object v8, v0

    iget v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    move v6, v8

    .line 270
    :cond_9
    :goto_3
    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v9, v9

    if-lt v8, v9, :cond_a

    .line 271
    move-object v8, v0

    iget v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    move-object v9, v0

    iget-object v9, v9, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v9, v9

    if-ge v8, v9, :cond_a

    .line 273
    const/4 v8, 0x0

    move v7, v8

    :goto_4
    move v8, v7

    move-object v9, v0

    iget-object v9, v9, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v9, v9

    if-ge v8, v9, :cond_a

    .line 274
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move v9, v7

    aget v8, v8, v9

    const/4 v9, -0x1

    if-ne v8, v9, :cond_f

    .line 275
    move v8, v7

    move v6, v8

    .line 282
    :cond_a
    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v9, v9

    if-lt v8, v9, :cond_b

    .line 283
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v8, v8

    move v6, v8

    .line 284
    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    const/4 v10, 0x2

    mul-int/lit8 v9, v9, 0x2

    iput v9, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    .line 285
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 286
    move-object v8, v0

    move v9, v6

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 287
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    move-object v10, v0

    iget v10, v10, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v9

    iput-object v9, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    .line 288
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move-object v10, v0

    iget v10, v10, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v9

    iput-object v9, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 289
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move-object v10, v0

    iget v10, v10, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v9

    iput-object v9, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 293
    :cond_b
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move v9, v6

    move-object v10, v1

    iget v10, v10, Landroid/support/constraint/solver/SolverVariable;->id:I

    aput v10, v8, v9

    .line 294
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    move v9, v6

    move v10, v2

    aput v10, v8, v9

    .line 295
    move v8, v4

    const/4 v9, -0x1

    if-eq v8, v9, :cond_10

    .line 296
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v9, v6

    move-object v10, v0

    iget-object v10, v10, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v11, v4

    aget v10, v10, v11

    aput v10, v8, v9

    .line 297
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v9, v4

    move v10, v6

    aput v10, v8, v9

    .line 302
    :goto_5
    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    .line 303
    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez v8, :cond_c

    .line 305
    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 307
    :cond_c
    move-object v8, v0

    iget v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    move-object v9, v0

    iget-object v9, v9, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v9, v9

    if-lt v8, v9, :cond_d

    .line 308
    move-object v8, v0

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 309
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v9, v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 311
    :cond_d
    goto/16 :goto_0

    .line 267
    :cond_e
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v8, v8

    move v6, v8

    goto/16 :goto_3

    .line 273
    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    .line 299
    :cond_10
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v9, v6

    move-object v10, v0

    iget v10, v10, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    aput v10, v8, v9

    .line 300
    move-object v8, v0

    move v9, v6

    iput v9, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    goto :goto_5
.end method

.method public final clear()V
    .locals 3

    .prologue
    .line 356
    move-object v0, p0

    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 357
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 358
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 359
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    .line 360
    return-void
.end method

.method final containsKey(Landroid/support/constraint/solver/SolverVariable;)Z
    .locals 6

    .prologue
    .line 369
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 370
    const/4 v4, 0x0

    move v0, v4

    .line 380
    :goto_0
    return v0

    .line 372
    :cond_0
    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    move v2, v4

    .line 373
    const/4 v4, 0x0

    move v3, v4

    .line 374
    :goto_1
    move v4, v2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    move v4, v3

    move-object v5, v0

    iget v5, v5, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v4, v5, :cond_2

    .line 375
    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move v5, v2

    aget v4, v4, v5

    move-object v5, v1

    iget v5, v5, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ne v4, v5, :cond_1

    .line 376
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 378
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v5, v2

    aget v4, v4, v5

    move v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 380
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public display()V
    .locals 9

    .prologue
    .line 662
    move-object v0, p0

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    move v1, v4

    .line 663
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "{ "

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 664
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 665
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/constraint/solver/ArrayLinkedVariables;->getVariable(I)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    move-object v3, v4

    .line 666
    move-object v4, v3

    if-nez v4, :cond_0

    .line 664
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 669
    :cond_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    move v7, v2

    invoke-virtual {v6, v7}, Landroid/support/constraint/solver/ArrayLinkedVariables;->getVariableValue(I)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 671
    :cond_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, " }"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 672
    return-void
.end method

.method divideByAmount(F)V
    .locals 10

    .prologue
    .line 419
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    move v2, v4

    .line 420
    const/4 v4, 0x0

    move v3, v4

    .line 421
    :goto_0
    move v4, v2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    move v4, v3

    move-object v5, v0

    iget v5, v5, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v4, v5, :cond_0

    .line 422
    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    move v5, v2

    move-object v8, v4

    move v9, v5

    move-object v4, v8

    move v5, v9

    move-object v6, v8

    move v7, v9

    aget v6, v6, v7

    move v7, v1

    div-float/2addr v6, v7

    aput v6, v4, v5

    .line 423
    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v5, v2

    aget v4, v4, v5

    move v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 425
    :cond_0
    return-void
.end method

.method public final get(Landroid/support/constraint/solver/SolverVariable;)F
    .locals 6

    .prologue
    .line 642
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    move v2, v4

    .line 643
    const/4 v4, 0x0

    move v3, v4

    .line 644
    :goto_0
    move v4, v2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    move v4, v3

    move-object v5, v0

    iget v5, v5, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v4, v5, :cond_1

    .line 645
    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move v5, v2

    aget v4, v4, v5

    move-object v5, v1

    iget v5, v5, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ne v4, v5, :cond_0

    .line 646
    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    move v5, v2

    aget v4, v4, v5

    move v0, v4

    .line 650
    :goto_1
    return v0

    .line 648
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v5, v2

    aget v4, v4, v5

    move v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 650
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method getPivotCandidate()Landroid/support/constraint/solver/SolverVariable;
    .locals 8

    .prologue
    .line 578
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/constraint/solver/ArrayLinkedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    if-nez v5, :cond_3

    .line 580
    move-object v5, v0

    iget v5, v5, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    move v1, v5

    .line 581
    const/4 v5, 0x0

    move v2, v5

    .line 582
    const/4 v5, 0x0

    move-object v3, v5

    .line 583
    :goto_0
    move v5, v1

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    move v5, v2

    move-object v6, v0

    iget v6, v6, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v5, v6, :cond_2

    .line 584
    move-object v5, v0

    iget-object v5, v5, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    move v6, v1

    aget v5, v5, v6

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 588
    move-object v5, v0

    iget-object v5, v5, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v5, v5, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move v7, v1

    aget v6, v6, v7

    aget-object v5, v5, v6

    move-object v4, v5

    .line 589
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v3

    iget v5, v5, Landroid/support/constraint/solver/SolverVariable;->strength:I

    move-object v6, v4

    iget v6, v6, Landroid/support/constraint/solver/SolverVariable;->strength:I

    if-ge v5, v6, :cond_1

    .line 590
    :cond_0
    move-object v5, v4

    move-object v3, v5

    .line 593
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v6, v1

    aget v5, v5, v6

    move v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 595
    :cond_2
    move-object v5, v3

    move-object v0, v5

    .line 597
    :goto_1
    return-object v0

    :cond_3
    move-object v5, v0

    iget-object v5, v5, Landroid/support/constraint/solver/ArrayLinkedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    move-object v0, v5

    goto :goto_1
.end method

.method final getVariable(I)Landroid/support/constraint/solver/SolverVariable;
    .locals 7

    .prologue
    .line 607
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    move v2, v4

    .line 608
    const/4 v4, 0x0

    move v3, v4

    .line 609
    :goto_0
    move v4, v2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    move v4, v3

    move-object v5, v0

    iget v5, v5, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v4, v5, :cond_1

    .line 610
    move v4, v3

    move v5, v1

    if-ne v4, v5, :cond_0

    .line 611
    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v4, v4, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move v6, v2

    aget v5, v5, v6

    aget-object v4, v4, v5

    move-object v0, v4

    .line 615
    :goto_1
    return-object v0

    .line 613
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v5, v2

    aget v4, v4, v5

    move v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 615
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method final getVariableValue(I)F
    .locals 6

    .prologue
    .line 625
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    move v2, v4

    .line 626
    const/4 v4, 0x0

    move v3, v4

    .line 627
    :goto_0
    move v4, v2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    move v4, v3

    move-object v5, v0

    iget v5, v5, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v4, v5, :cond_1

    .line 628
    move v4, v3

    move v5, v1

    if-ne v4, v5, :cond_0

    .line 629
    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    move v5, v2

    aget v4, v4, v5

    move v0, v4

    .line 633
    :goto_1
    return v0

    .line 631
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v5, v2

    aget v4, v4, v5

    move v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 633
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method hasAtLeastOnePositiveVariable()Z
    .locals 5

    .prologue
    .line 389
    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    move v1, v3

    .line 390
    const/4 v3, 0x0

    move v2, v3

    .line 391
    :goto_0
    move v3, v1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v3, v4, :cond_1

    .line 392
    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    move v4, v1

    aget v3, v3, v4

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 393
    const/4 v3, 0x1

    move v0, v3

    .line 397
    :goto_1
    return v0

    .line 395
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v4, v1

    aget v3, v3, v4

    move v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 397
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method invert()V
    .locals 9

    .prologue
    .line 404
    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    move v1, v3

    .line 405
    const/4 v3, 0x0

    move v2, v3

    .line 406
    :goto_0
    move v3, v1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v3, v4, :cond_0

    .line 407
    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    move v4, v1

    move-object v7, v3

    move v8, v4

    move-object v3, v7

    move v4, v8

    move-object v5, v7

    move v6, v8

    aget v5, v5, v6

    const/high16 v6, -0x40800000    # -1.0f

    mul-float/2addr v5, v6

    aput v5, v3, v4

    .line 408
    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v4, v1

    aget v3, v3, v4

    move v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 410
    :cond_0
    return-void
.end method

.method pickPivotCandidate()Landroid/support/constraint/solver/SolverVariable;
    .locals 11

    .prologue
    .line 448
    move-object v0, p0

    const/4 v8, 0x0

    move-object v1, v8

    .line 449
    const/4 v8, 0x0

    move-object v2, v8

    .line 450
    move-object v8, v0

    iget v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    move v3, v8

    .line 451
    const/4 v8, 0x0

    move v4, v8

    .line 452
    :goto_0
    move v8, v3

    const/4 v9, -0x1

    if-eq v8, v9, :cond_6

    move v8, v4

    move-object v9, v0

    iget v9, v9, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v8, v9, :cond_6

    .line 453
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    move v9, v3

    aget v8, v8, v9

    move v5, v8

    .line 454
    const v8, 0x3a83126f    # 0.001f

    move v6, v8

    .line 455
    move v8, v5

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    .line 456
    move v8, v5

    move v9, v6

    neg-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    .line 457
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    move v9, v3

    const/4 v10, 0x0

    aput v10, v8, v9

    .line 458
    const/4 v8, 0x0

    move v5, v8

    .line 466
    :cond_0
    :goto_1
    move v8, v5

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_3

    .line 467
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v8, v8, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    move-object v9, v0

    iget-object v9, v9, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move v10, v3

    aget v9, v9, v10

    aget-object v8, v8, v9

    move-object v7, v8

    .line 468
    move-object v8, v7

    iget-object v8, v8, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v9, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    if-ne v8, v9, :cond_4

    .line 469
    move v8, v5

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 470
    move-object v8, v7

    move-object v0, v8

    .line 483
    :goto_2
    return-object v0

    .line 461
    :cond_1
    move v8, v5

    move v9, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    .line 462
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    move v9, v3

    const/4 v10, 0x0

    aput v10, v8, v9

    .line 463
    const/4 v8, 0x0

    move v5, v8

    goto :goto_1

    .line 471
    :cond_2
    move-object v8, v2

    if-nez v8, :cond_3

    .line 472
    move-object v8, v7

    move-object v2, v8

    .line 478
    :cond_3
    :goto_3
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v9, v3

    aget v8, v8, v9

    move v3, v8

    add-int/lit8 v4, v4, 0x1

    .line 479
    goto :goto_0

    .line 474
    :cond_4
    move v8, v5

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    move-object v8, v1

    if-eqz v8, :cond_5

    move-object v8, v7

    iget v8, v8, Landroid/support/constraint/solver/SolverVariable;->strength:I

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/solver/SolverVariable;->strength:I

    if-ge v8, v9, :cond_3

    .line 475
    :cond_5
    move-object v8, v7

    move-object v1, v8

    goto :goto_3

    .line 480
    :cond_6
    move-object v8, v2

    if-eqz v8, :cond_7

    .line 481
    move-object v8, v2

    move-object v0, v8

    goto :goto_2

    .line 483
    :cond_7
    move-object v8, v1

    move-object v0, v8

    goto :goto_2
.end method

.method public final put(Landroid/support/constraint/solver/SolverVariable;F)V
    .locals 13

    .prologue
    .line 116
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v8, v2

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_0

    .line 117
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/support/constraint/solver/ArrayLinkedVariables;->remove(Landroid/support/constraint/solver/SolverVariable;)F

    move-result v8

    .line 200
    :goto_0
    return-void

    .line 121
    :cond_0
    move-object v8, v0

    iget v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    .line 122
    move-object v8, v0

    const/4 v9, 0x0

    iput v9, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 123
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    move-object v9, v0

    iget v9, v9, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    move v10, v2

    aput v10, v8, v9

    .line 124
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move-object v9, v0

    iget v9, v9, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    move-object v10, v1

    iget v10, v10, Landroid/support/constraint/solver/SolverVariable;->id:I

    aput v10, v8, v9

    .line 125
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move-object v9, v0

    iget v9, v9, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v10, -0x1

    aput v10, v8, v9

    .line 126
    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    .line 127
    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez v8, :cond_1

    .line 129
    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 131
    :cond_1
    goto :goto_0

    .line 133
    :cond_2
    move-object v8, v0

    iget v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    move v3, v8

    .line 134
    const/4 v8, -0x1

    move v4, v8

    .line 135
    const/4 v8, 0x0

    move v5, v8

    .line 136
    :goto_1
    move v8, v3

    const/4 v9, -0x1

    if-eq v8, v9, :cond_5

    move v8, v5

    move-object v9, v0

    iget v9, v9, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v8, v9, :cond_5

    .line 137
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move v9, v3

    aget v8, v8, v9

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ne v8, v9, :cond_3

    .line 138
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    move v9, v3

    move v10, v2

    aput v10, v8, v9

    .line 139
    goto :goto_0

    .line 141
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move v9, v3

    aget v8, v8, v9

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ge v8, v9, :cond_4

    .line 142
    move v8, v3

    move v4, v8

    .line 144
    :cond_4
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v9, v3

    aget v8, v8, v9

    move v3, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 150
    :cond_5
    move-object v8, v0

    iget v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v6, v8

    .line 151
    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v8, :cond_6

    .line 154
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move-object v9, v0

    iget v9, v9, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    aget v8, v8, v9

    const/4 v9, -0x1

    if-ne v8, v9, :cond_b

    .line 155
    move-object v8, v0

    iget v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    move v6, v8

    .line 160
    :cond_6
    :goto_2
    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v9, v9

    if-lt v8, v9, :cond_7

    .line 161
    move-object v8, v0

    iget v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    move-object v9, v0

    iget-object v9, v9, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v9, v9

    if-ge v8, v9, :cond_7

    .line 163
    const/4 v8, 0x0

    move v7, v8

    :goto_3
    move v8, v7

    move-object v9, v0

    iget-object v9, v9, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v9, v9

    if-ge v8, v9, :cond_7

    .line 164
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move v9, v7

    aget v8, v8, v9

    const/4 v9, -0x1

    if-ne v8, v9, :cond_c

    .line 165
    move v8, v7

    move v6, v8

    .line 172
    :cond_7
    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v9, v9

    if-lt v8, v9, :cond_8

    .line 173
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v8, v8

    move v6, v8

    .line 174
    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    const/4 v10, 0x2

    mul-int/lit8 v9, v9, 0x2

    iput v9, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    .line 175
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 176
    move-object v8, v0

    move v9, v6

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 177
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    move-object v10, v0

    iget v10, v10, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v9

    iput-object v9, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    .line 178
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move-object v10, v0

    iget v10, v10, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v9

    iput-object v9, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    .line 179
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move-object v10, v0

    iget v10, v10, Landroid/support/constraint/solver/ArrayLinkedVariables;->ROW_SIZE:I

    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v9

    iput-object v9, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    .line 183
    :cond_8
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move v9, v6

    move-object v10, v1

    iget v10, v10, Landroid/support/constraint/solver/SolverVariable;->id:I

    aput v10, v8, v9

    .line 184
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    move v9, v6

    move v10, v2

    aput v10, v8, v9

    .line 185
    move v8, v4

    const/4 v9, -0x1

    if-eq v8, v9, :cond_d

    .line 186
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v9, v6

    move-object v10, v0

    iget-object v10, v10, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v11, v4

    aget v10, v10, v11

    aput v10, v8, v9

    .line 187
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v9, v4

    move v10, v6

    aput v10, v8, v9

    .line 192
    :goto_4
    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    .line 193
    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-nez v8, :cond_9

    .line 195
    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 197
    :cond_9
    move-object v8, v0

    iget v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    move-object v9, v0

    iget-object v9, v9, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v9, v9

    if-lt v8, v9, :cond_a

    .line 198
    move-object v8, v0

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    .line 200
    :cond_a
    goto/16 :goto_0

    .line 157
    :cond_b
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v8, v8

    move v6, v8

    goto/16 :goto_2

    .line 163
    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 189
    :cond_d
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v9, v6

    move-object v10, v0

    iget v10, v10, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    aput v10, v8, v9

    .line 190
    move-object v8, v0

    move v9, v6

    iput v9, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    goto :goto_4
.end method

.method public final remove(Landroid/support/constraint/solver/SolverVariable;)F
    .locals 11

    .prologue
    .line 320
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/constraint/solver/ArrayLinkedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    move-object v7, v1

    if-ne v6, v7, :cond_0

    .line 321
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Landroid/support/constraint/solver/ArrayLinkedVariables;->candidate:Landroid/support/constraint/solver/SolverVariable;

    .line 323
    :cond_0
    move-object v6, v0

    iget v6, v6, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 324
    const/4 v6, 0x0

    move v0, v6

    .line 349
    :goto_0
    return v0

    .line 326
    :cond_1
    move-object v6, v0

    iget v6, v6, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    move v2, v6

    .line 327
    const/4 v6, -0x1

    move v3, v6

    .line 328
    const/4 v6, 0x0

    move v4, v6

    .line 329
    :goto_1
    move v6, v2

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5

    move v6, v4

    move-object v7, v0

    iget v7, v7, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v6, v7, :cond_5

    .line 330
    move-object v6, v0

    iget-object v6, v6, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move v7, v2

    aget v6, v6, v7

    move v5, v6

    .line 331
    move v6, v5

    move-object v7, v1

    iget v7, v7, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ne v6, v7, :cond_4

    .line 332
    move v6, v2

    move-object v7, v0

    iget v7, v7, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    if-ne v6, v7, :cond_3

    .line 333
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v8, v2

    aget v7, v7, v8

    iput v7, v6, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    .line 337
    :goto_2
    move-object v6, v0

    iget-object v6, v6, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v6, v6, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    move v7, v5

    aget-object v6, v6, v7

    move-object v7, v0

    iget-object v7, v7, Landroid/support/constraint/solver/ArrayLinkedVariables;->mRow:Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {v6, v7}, Landroid/support/constraint/solver/SolverVariable;->removeClientEquation(Landroid/support/constraint/solver/ArrayRow;)V

    .line 338
    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    .line 339
    move-object v6, v0

    iget-object v6, v6, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move v7, v2

    const/4 v8, -0x1

    aput v8, v6, v7

    .line 340
    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/constraint/solver/ArrayLinkedVariables;->mDidFillOnce:Z

    if-eqz v6, :cond_2

    .line 342
    move-object v6, v0

    move v7, v2

    iput v7, v6, Landroid/support/constraint/solver/ArrayLinkedVariables;->mLast:I

    .line 344
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    move v7, v2

    aget v6, v6, v7

    move v0, v6

    goto :goto_0

    .line 335
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v9, v2

    aget v8, v8, v9

    aput v8, v6, v7

    goto :goto_2

    .line 346
    :cond_4
    move v6, v2

    move v3, v6

    .line 347
    move-object v6, v0

    iget-object v6, v6, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v7, v2

    aget v6, v6, v7

    move v2, v6

    add-int/lit8 v4, v4, 0x1

    .line 348
    goto :goto_1

    .line 349
    :cond_5
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method

.method sizeInBytes()I
    .locals 6

    .prologue
    .line 655
    move-object v0, p0

    const/4 v2, 0x0

    move v1, v2

    .line 656
    move v2, v1

    const/4 v3, 0x3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    array-length v4, v4

    const/4 v5, 0x4

    mul-int/lit8 v4, v4, 0x4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    move v1, v2

    .line 657
    add-int/lit8 v1, v1, 0x24

    .line 658
    move v2, v1

    move v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 681
    move-object v0, p0

    const-string v4, ""

    move-object v1, v4

    .line 682
    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    move v2, v4

    .line 683
    const/4 v4, 0x0

    move v3, v4

    .line 684
    :goto_0
    move v4, v2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    move v4, v3

    move-object v5, v0

    iget v5, v5, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v4, v5, :cond_0

    .line 685
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 686
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    move v6, v2

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 687
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v5, v5, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move v7, v2

    aget v6, v6, v7

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 688
    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v5, v2

    aget v4, v4, v5

    move v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 690
    :cond_0
    move-object v4, v1

    move-object v0, v4

    return-object v0
.end method

.method updateClientEquations(Landroid/support/constraint/solver/ArrayRow;)V
    .locals 7

    .prologue
    .line 434
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    move v2, v4

    .line 435
    const/4 v4, 0x0

    move v3, v4

    .line 436
    :goto_0
    move v4, v2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    move v4, v3

    move-object v5, v0

    iget v5, v5, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v4, v5, :cond_0

    .line 437
    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v4, v4, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move v6, v2

    aget v5, v5, v6

    aget-object v4, v4, v5

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/constraint/solver/SolverVariable;->addClientEquation(Landroid/support/constraint/solver/ArrayRow;)V

    .line 438
    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v5, v2

    aget v4, v4, v5

    move v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 440
    :cond_0
    return-void
.end method

.method updateFromRow(Landroid/support/constraint/solver/ArrayRow;Landroid/support/constraint/solver/ArrayRow;)V
    .locals 16

    .prologue
    .line 496
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v11, v0

    iget v11, v11, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    move v3, v11

    .line 497
    const/4 v11, 0x0

    move v4, v11

    .line 498
    :goto_0
    move v11, v3

    const/4 v12, -0x1

    if-eq v11, v12, :cond_2

    move v11, v4

    move-object v12, v0

    iget v12, v12, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v11, v12, :cond_2

    .line 499
    move-object v11, v0

    iget-object v11, v11, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move v12, v3

    aget v11, v11, v12

    move-object v12, v2

    iget-object v12, v12, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    iget v12, v12, Landroid/support/constraint/solver/SolverVariable;->id:I

    if-ne v11, v12, :cond_1

    .line 500
    move-object v11, v0

    iget-object v11, v11, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    move v12, v3

    aget v11, v11, v12

    move v5, v11

    .line 501
    move-object v11, v0

    move-object v12, v2

    iget-object v12, v12, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v11, v12}, Landroid/support/constraint/solver/ArrayLinkedVariables;->remove(Landroid/support/constraint/solver/SolverVariable;)F

    move-result v11

    .line 503
    move-object v11, v2

    iget-object v11, v11, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v6, v11

    .line 504
    move-object v11, v6

    iget v11, v11, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    move v7, v11

    .line 505
    const/4 v11, 0x0

    move v8, v11

    .line 506
    :goto_1
    move v11, v7

    const/4 v12, -0x1

    if-eq v11, v12, :cond_0

    move v11, v8

    move-object v12, v6

    iget v12, v12, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v11, v12, :cond_0

    .line 507
    move-object v11, v0

    iget-object v11, v11, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v11, v11, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    move-object v12, v6

    iget-object v12, v12, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move v13, v7

    aget v12, v12, v13

    aget-object v11, v11, v12

    move-object v9, v11

    .line 509
    move-object v11, v6

    iget-object v11, v11, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    move v12, v7

    aget v11, v11, v12

    move v10, v11

    .line 510
    move-object v11, v0

    move-object v12, v9

    move v13, v10

    move v14, v5

    mul-float/2addr v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/support/constraint/solver/ArrayLinkedVariables;->add(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 511
    move-object v11, v6

    iget-object v11, v11, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v12, v7

    aget v11, v11, v12

    move v7, v11

    add-int/lit8 v8, v8, 0x1

    .line 512
    goto :goto_1

    .line 513
    :cond_0
    move-object v11, v1

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    iget v12, v12, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    move-object v13, v2

    iget v13, v13, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    move v14, v5

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    iput v12, v11, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 514
    move-object v11, v2

    iget-object v11, v11, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    move-object v12, v1

    invoke-virtual {v11, v12}, Landroid/support/constraint/solver/SolverVariable;->removeClientEquation(Landroid/support/constraint/solver/ArrayRow;)V

    .line 519
    move-object v11, v0

    iget v11, v11, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    move v3, v11

    .line 520
    const/4 v11, 0x0

    move v4, v11

    .line 521
    goto :goto_0

    .line 523
    :cond_1
    move-object v11, v0

    iget-object v11, v11, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v12, v3

    aget v11, v11, v12

    move v3, v11

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 525
    :cond_2
    return-void
.end method

.method updateFromSystem(Landroid/support/constraint/solver/ArrayRow;[Landroid/support/constraint/solver/ArrayRow;)V
    .locals 18

    .prologue
    .line 537
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v13, v0

    iget v13, v13, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    move v3, v13

    .line 538
    const/4 v13, 0x0

    move v4, v13

    .line 539
    :goto_0
    move v13, v3

    const/4 v14, -0x1

    if-eq v13, v14, :cond_2

    move v13, v4

    move-object v14, v0

    iget v14, v14, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v13, v14, :cond_2

    .line 540
    move-object v13, v0

    iget-object v13, v13, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v13, v13, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    move-object v14, v0

    iget-object v14, v14, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move v15, v3

    aget v14, v14, v15

    aget-object v13, v13, v14

    move-object v5, v13

    .line 541
    move-object v13, v5

    iget v13, v13, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_1

    .line 542
    move-object v13, v0

    iget-object v13, v13, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    move v14, v3

    aget v13, v13, v14

    move v6, v13

    .line 543
    move-object v13, v0

    move-object v14, v5

    invoke-virtual {v13, v14}, Landroid/support/constraint/solver/ArrayLinkedVariables;->remove(Landroid/support/constraint/solver/SolverVariable;)F

    move-result v13

    .line 545
    move-object v13, v2

    move-object v14, v5

    iget v14, v14, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    aget-object v13, v13, v14

    move-object v7, v13

    .line 546
    move-object v13, v7

    iget-boolean v13, v13, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    if-nez v13, :cond_0

    .line 547
    move-object v13, v7

    iget-object v13, v13, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v8, v13

    .line 548
    move-object v13, v8

    iget v13, v13, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    move v9, v13

    .line 549
    const/4 v13, 0x0

    move v10, v13

    .line 550
    :goto_1
    move v13, v9

    const/4 v14, -0x1

    if-eq v13, v14, :cond_0

    move v13, v10

    move-object v14, v8

    iget v14, v14, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-ge v13, v14, :cond_0

    .line 551
    move-object v13, v0

    iget-object v13, v13, Landroid/support/constraint/solver/ArrayLinkedVariables;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v13, v13, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    move-object v14, v8

    iget-object v14, v14, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayIndices:[I

    move v15, v9

    aget v14, v14, v15

    aget-object v13, v13, v14

    move-object v11, v13

    .line 553
    move-object v13, v8

    iget-object v13, v13, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayValues:[F

    move v14, v9

    aget v13, v13, v14

    move v12, v13

    .line 554
    move-object v13, v0

    move-object v14, v11

    move v15, v12

    move/from16 v16, v6

    mul-float v15, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/support/constraint/solver/ArrayLinkedVariables;->add(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 555
    move-object v13, v8

    iget-object v13, v13, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v14, v9

    aget v13, v13, v14

    move v9, v13

    .line 556
    add-int/lit8 v10, v10, 0x1

    .line 557
    goto :goto_1

    .line 559
    :cond_0
    move-object v13, v1

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    iget v14, v14, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    move-object v15, v7

    iget v15, v15, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    move/from16 v16, v6

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    iput v14, v13, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 560
    move-object v13, v7

    iget-object v13, v13, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    move-object v14, v1

    invoke-virtual {v13, v14}, Landroid/support/constraint/solver/SolverVariable;->removeClientEquation(Landroid/support/constraint/solver/ArrayRow;)V

    .line 565
    move-object v13, v0

    iget v13, v13, Landroid/support/constraint/solver/ArrayLinkedVariables;->mHead:I

    move v3, v13

    .line 566
    const/4 v13, 0x0

    move v4, v13

    .line 567
    goto/16 :goto_0

    .line 569
    :cond_1
    move-object v13, v0

    iget-object v13, v13, Landroid/support/constraint/solver/ArrayLinkedVariables;->mArrayNextIndices:[I

    move v14, v3

    aget v13, v13, v14

    move v3, v13

    add-int/lit8 v4, v4, 0x1

    .line 570
    goto/16 :goto_0

    .line 571
    :cond_2
    return-void
.end method
