.class public Landroid/support/v4/util/SparseArrayCompat;
.super Ljava/lang/Object;
.source "SparseArrayCompat.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[I

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, v0

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Landroid/support/v4/util/SparseArrayCompat;-><init>(I)V

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 25
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    .line 46
    move v2, v1

    if-nez v2, :cond_0

    .line 47
    move-object v2, v0

    sget-object v3, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v3, v2, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    .line 48
    move-object v2, v0

    sget-object v3, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v3, v2, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 54
    :goto_0
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    .line 55
    return-void

    .line 50
    :cond_0
    move v2, v1

    invoke-static {v2}, Landroid/support/v4/util/ContainerHelpers;->idealIntArraySize(I)I

    move-result v2

    move v1, v2

    .line 51
    move-object v2, v0

    move v3, v1

    new-array v3, v3, [I

    iput-object v3, v2, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    .line 52
    move-object v2, v0

    move v3, v1

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, v2, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private gc()V
    .locals 11

    .prologue
    .line 141
    move-object v0, p0

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    move v1, v7

    .line 142
    const/4 v7, 0x0

    move v2, v7

    .line 143
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    move-object v3, v7

    .line 144
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move-object v4, v7

    .line 146
    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move v8, v1

    if-ge v7, v8, :cond_2

    .line 147
    move-object v7, v4

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 149
    move-object v7, v6

    sget-object v8, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-eq v7, v8, :cond_1

    .line 150
    move v7, v5

    move v8, v2

    if-eq v7, v8, :cond_0

    .line 151
    move-object v7, v3

    move v8, v2

    move-object v9, v3

    move v10, v5

    aget v9, v9, v10

    aput v9, v7, v8

    .line 152
    move-object v7, v4

    move v8, v2

    move-object v9, v6

    aput-object v9, v7, v8

    .line 153
    move-object v7, v4

    move v8, v5

    const/4 v9, 0x0

    aput-object v9, v7, v8

    .line 156
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 146
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 160
    :cond_2
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    .line 161
    move-object v7, v0

    move v8, v2

    iput v8, v7, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    .line 164
    return-void
.end method


# virtual methods
.method public append(ILjava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 325
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    if-eqz v7, :cond_0

    move v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    aget v8, v8, v9

    if-gt v7, v8, :cond_0

    .line 326
    move-object v7, v0

    move v8, v1

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 352
    :goto_0
    return-void

    .line 330
    :cond_0
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    if-eqz v7, :cond_1

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    array-length v8, v8

    if-lt v7, v8, :cond_1

    .line 331
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/v4/util/SparseArrayCompat;->gc()V

    .line 334
    :cond_1
    move-object v7, v0

    iget v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    move v3, v7

    .line 335
    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    array-length v8, v8

    if-lt v7, v8, :cond_2

    .line 336
    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Landroid/support/v4/util/ContainerHelpers;->idealIntArraySize(I)I

    move-result v7

    move v4, v7

    .line 338
    move v7, v4

    new-array v7, v7, [I

    move-object v5, v7

    .line 339
    move v7, v4

    new-array v7, v7, [Ljava/lang/Object;

    move-object v6, v7

    .line 342
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    const/4 v8, 0x0

    move-object v9, v5

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    array-length v11, v11

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 343
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v9, v6

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    array-length v11, v11

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 345
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    .line 346
    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 349
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    move v8, v3

    move v9, v1

    aput v9, v7, v8

    .line 350
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v8, v3

    move-object v9, v2

    aput-object v9, v7, v8

    .line 351
    move-object v7, v0

    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    .line 352
    goto :goto_0
.end method

.method public clear()V
    .locals 7

    .prologue
    .line 309
    move-object v0, p0

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    move v1, v4

    .line 310
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move-object v2, v4

    .line 312
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_0

    .line 313
    move-object v4, v2

    move v5, v3

    const/4 v6, 0x0

    aput-object v6, v4, v5

    .line 312
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 316
    :cond_0
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    .line 317
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    .line 318
    return-void
.end method

.method public clone()Landroid/support/v4/util/SparseArrayCompat;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SparseArrayCompat",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    const/4 v3, 0x0

    move-object v1, v3

    .line 62
    move-object v3, v0

    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/util/SparseArrayCompat;

    move-object v1, v3

    .line 63
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    iput-object v4, v3, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    .line 64
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    invoke-virtual {v4}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    iput-object v4, v3, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    move-object v3, v1

    move-object v0, v3

    return-object v0

    .line 65
    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 23
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/util/SparseArrayCompat;->clone()Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public delete(I)V
    .locals 6

    .prologue
    .line 98
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    move v5, v1

    invoke-static {v3, v4, v5}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([III)I

    move-result v3

    move v2, v3

    .line 100
    move v3, v2

    if-ltz v3, :cond_0

    .line 101
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v4, v2

    aget-object v3, v3, v4

    sget-object v4, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-eq v3, v4, :cond_0

    .line 102
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v4, v2

    sget-object v5, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    aput-object v5, v3, v4

    .line 103
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    .line 106
    :cond_0
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/util/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    move v6, v1

    invoke-static {v4, v5, v6}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([III)I

    move-result v4

    move v3, v4

    .line 87
    move v4, v3

    if-ltz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v5, v3

    aget-object v4, v4, v5

    sget-object v5, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-ne v4, v5, :cond_1

    .line 88
    :cond_0
    move-object v4, v2

    move-object v0, v4

    .line 90
    :goto_0
    return-object v0

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v5, v3

    aget-object v4, v4, v5

    move-object v0, v4

    goto :goto_0
.end method

.method public indexOfKey(I)I
    .locals 5

    .prologue
    .line 276
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    if-eqz v2, :cond_0

    .line 277
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/util/SparseArrayCompat;->gc()V

    .line 280
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    move v4, v1

    invoke-static {v2, v3, v4}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([III)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 294
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    if-eqz v3, :cond_0

    .line 295
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v4/util/SparseArrayCompat;->gc()V

    .line 298
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    if-ge v3, v4, :cond_2

    .line 299
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    if-ne v3, v4, :cond_1

    .line 300
    move v3, v2

    move v0, v3

    .line 302
    :goto_1
    return v0

    .line 298
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 302
    :cond_2
    const/4 v3, -0x1

    move v0, v3

    goto :goto_1
.end method

.method public keyAt(I)I
    .locals 4

    .prologue
    .line 236
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    if-eqz v2, :cond_0

    .line 237
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/util/SparseArrayCompat;->gc()V

    .line 240
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    move v3, v1

    aget v2, v2, v3

    move v0, v2

    return v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 172
    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    move v9, v1

    invoke-static {v7, v8, v9}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([III)I

    move-result v7

    move v3, v7

    .line 174
    move v7, v3

    if-ltz v7, :cond_0

    .line 175
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v8, v3

    move-object v9, v2

    aput-object v9, v7, v8

    .line 216
    :goto_0
    return-void

    .line 177
    :cond_0
    move v7, v3

    const/4 v8, -0x1

    xor-int/lit8 v7, v7, -0x1

    move v3, v7

    .line 179
    move v7, v3

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    if-ge v7, v8, :cond_1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v8, v3

    aget-object v7, v7, v8

    sget-object v8, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-ne v7, v8, :cond_1

    .line 180
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    move v8, v3

    move v9, v1

    aput v9, v7, v8

    .line 181
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v8, v3

    move-object v9, v2

    aput-object v9, v7, v8

    .line 182
    goto :goto_0

    .line 185
    :cond_1
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    if-eqz v7, :cond_2

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    array-length v8, v8

    if-lt v7, v8, :cond_2

    .line 186
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/v4/util/SparseArrayCompat;->gc()V

    .line 189
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    move v9, v1

    invoke-static {v7, v8, v9}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([III)I

    move-result v7

    const/4 v8, -0x1

    xor-int/lit8 v7, v7, -0x1

    move v3, v7

    .line 192
    :cond_2
    move-object v7, v0

    iget v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    array-length v8, v8

    if-lt v7, v8, :cond_3

    .line 193
    move-object v7, v0

    iget v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Landroid/support/v4/util/ContainerHelpers;->idealIntArraySize(I)I

    move-result v7

    move v4, v7

    .line 195
    move v7, v4

    new-array v7, v7, [I

    move-object v5, v7

    .line 196
    move v7, v4

    new-array v7, v7, [Ljava/lang/Object;

    move-object v6, v7

    .line 199
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    const/4 v8, 0x0

    move-object v9, v5

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    array-length v11, v11

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v9, v6

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    array-length v11, v11

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    .line 203
    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 206
    :cond_3
    move-object v7, v0

    iget v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    move v8, v3

    sub-int/2addr v7, v8

    if-eqz v7, :cond_4

    .line 208
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    move v10, v3

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move-object v11, v0

    iget v11, v11, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    move v12, v3

    sub-int/2addr v11, v12

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v10, v3

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move-object v11, v0

    iget v11, v11, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    move v12, v3

    sub-int/2addr v11, v12

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    move v8, v3

    move v9, v1

    aput v9, v7, v8

    .line 213
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v8, v3

    move-object v9, v2

    aput-object v9, v7, v8

    .line 214
    move-object v7, v0

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    iget v8, v8, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    goto/16 :goto_0
.end method

.method public remove(I)V
    .locals 4

    .prologue
    .line 112
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/util/SparseArrayCompat;->delete(I)V

    .line 113
    return-void
.end method

.method public removeAt(I)V
    .locals 5

    .prologue
    .line 119
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v3, v1

    aget-object v2, v2, v3

    sget-object v3, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-eq v2, v3, :cond_0

    .line 120
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v3, v1

    sget-object v4, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    aput-object v4, v2, v3

    .line 121
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    .line 123
    :cond_0
    return-void
.end method

.method public removeAtRange(II)V
    .locals 8

    .prologue
    .line 132
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    move v6, v1

    move v7, v2

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v3, v5

    .line 133
    move v5, v1

    move v4, v5

    :goto_0
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 134
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Landroid/support/v4/util/SparseArrayCompat;->removeAt(I)V

    .line 133
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 136
    :cond_0
    return-void
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 263
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    if-eqz v3, :cond_0

    .line 264
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v4/util/SparseArrayCompat;->gc()V

    .line 267
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v4, v1

    move-object v5, v2

    aput-object v5, v3, v4

    .line 268
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 223
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    if-eqz v1, :cond_0

    .line 224
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/util/SparseArrayCompat;->gc()V

    .line 227
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    move v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 363
    move-object v0, p0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v5

    if-gtz v5, :cond_0

    .line 364
    const-string v5, "{}"

    move-object v0, v5

    .line 384
    :goto_0
    return-object v0

    .line 367
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    const/16 v8, 0x1c

    mul-int/lit8 v7, v7, 0x1c

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v5

    .line 368
    move-object v5, v1

    const/16 v6, 0x7b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 369
    const/4 v5, 0x0

    move v2, v5

    :goto_1
    move v5, v2

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    if-ge v5, v6, :cond_3

    .line 370
    move v5, v2

    if-lez v5, :cond_1

    .line 371
    move-object v5, v1

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 373
    :cond_1
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v5

    move v3, v5

    .line 374
    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 375
    move-object v5, v1

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 376
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 377
    move-object v5, v4

    move-object v6, v0

    if-eq v5, v6, :cond_2

    .line 378
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 369
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 380
    :cond_2
    move-object v5, v1

    const-string v6, "(this Map)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    goto :goto_2

    .line 383
    :cond_3
    move-object v5, v1

    const/16 v6, 0x7d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 384
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 250
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    if-eqz v2, :cond_0

    .line 251
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/util/SparseArrayCompat;->gc()V

    .line 254
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    return-object v0
.end method
