.class public final Landroid/support/v4/util/ArraySet;
.super Ljava/lang/Object;
.source "ArraySet.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final DEBUG:Z = false

.field private static final INT:[I

.field private static final OBJECT:[Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "ArraySet"

.field static sBaseCache:[Ljava/lang/Object;

.field static sBaseCacheSize:I

.field static sTwiceBaseCache:[Ljava/lang/Object;

.field static sTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field mCollections:Landroid/support/v4/util/MapCollections;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/MapCollections",
            "<TE;TE;>;"
        }
    .end annotation
.end field

.field mHashes:[I

.field final mIdentityHashCode:Z

.field mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroid/support/v4/util/ArraySet;->INT:[I

    .line 50
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/support/v4/util/ArraySet;->OBJECT:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 236
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/support/v4/util/ArraySet;-><init>(IZ)V

    .line 237
    return-void
.end method

.method public constructor <init>(I)V
    .locals 5

    .prologue
    .line 243
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v4/util/ArraySet;-><init>(IZ)V

    .line 244
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 5

    .prologue
    .line 247
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 248
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Landroid/support/v4/util/ArraySet;->mIdentityHashCode:Z

    .line 249
    move v3, v1

    if-nez v3, :cond_0

    .line 250
    move-object v3, v0

    sget-object v4, Landroid/support/v4/util/ArraySet;->INT:[I

    iput-object v4, v3, Landroid/support/v4/util/ArraySet;->mHashes:[I

    .line 251
    move-object v3, v0

    sget-object v4, Landroid/support/v4/util/ArraySet;->OBJECT:[Ljava/lang/Object;

    iput-object v4, v3, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 255
    :goto_0
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/v4/util/ArraySet;->mSize:I

    .line 256
    return-void

    .line 253
    :cond_0
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/v4/util/ArraySet;->allocArrays(I)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/support/v4/util/ArraySet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArraySet",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 262
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/util/ArraySet;-><init>()V

    .line 263
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 264
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/util/ArraySet;->addAll(Landroid/support/v4/util/ArraySet;)V

    .line 266
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 270
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/util/ArraySet;-><init>()V

    .line 271
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 272
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    move-result v2

    .line 274
    :cond_0
    return-void
.end method

.method private allocArrays(I)V
    .locals 15

    .prologue
    .line 157
    move-object v0, p0

    move/from16 v1, p1

    move v6, v1

    const/16 v7, 0x8

    if-ne v6, v7, :cond_2

    .line 158
    const-class v6, Landroid/support/v4/util/ArraySet;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v2, v7

    monitor-enter v6

    .line 159
    :try_start_0
    sget-object v6, Landroid/support/v4/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 160
    sget-object v6, Landroid/support/v4/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    move-object v3, v6

    .line 161
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 162
    move-object v6, v3

    const/4 v7, 0x0

    aget-object v6, v6, v7

    check-cast v6, [Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    sput-object v6, Landroid/support/v4/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    .line 163
    move-object v6, v0

    move-object v7, v3

    const/4 v8, 0x1

    aget-object v7, v7, v8

    check-cast v7, [I

    check-cast v7, [I

    iput-object v7, v6, Landroid/support/v4/util/ArraySet;->mHashes:[I

    .line 164
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

    .line 165
    sget v6, Landroid/support/v4/util/ArraySet;->sTwiceBaseCacheSize:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    sput v6, Landroid/support/v4/util/ArraySet;->sTwiceBaseCacheSize:I

    .line 170
    move-object v6, v2

    monitor-exit v6

    .line 193
    :goto_0
    return-void

    .line 172
    :cond_0
    move-object v6, v2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :cond_1
    :goto_1
    move-object v6, v0

    move v7, v1

    new-array v7, v7, [I

    iput-object v7, v6, Landroid/support/v4/util/ArraySet;->mHashes:[I

    .line 192
    move-object v6, v0

    move v7, v1

    new-array v7, v7, [Ljava/lang/Object;

    iput-object v7, v6, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 193
    goto :goto_0

    .line 172
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

    .line 173
    :cond_2
    move v6, v1

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    .line 174
    const-class v6, Landroid/support/v4/util/ArraySet;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v2, v7

    monitor-enter v6

    .line 175
    :try_start_2
    sget-object v6, Landroid/support/v4/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    if-eqz v6, :cond_3

    .line 176
    sget-object v6, Landroid/support/v4/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    move-object v3, v6

    .line 177
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 178
    move-object v6, v3

    const/4 v7, 0x0

    aget-object v6, v6, v7

    check-cast v6, [Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    sput-object v6, Landroid/support/v4/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    .line 179
    move-object v6, v0

    move-object v7, v3

    const/4 v8, 0x1

    aget-object v7, v7, v8

    check-cast v7, [I

    check-cast v7, [I

    iput-object v7, v6, Landroid/support/v4/util/ArraySet;->mHashes:[I

    .line 180
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

    .line 181
    sget v6, Landroid/support/v4/util/ArraySet;->sBaseCacheSize:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    sput v6, Landroid/support/v4/util/ArraySet;->sBaseCacheSize:I

    .line 186
    move-object v6, v2

    monitor-exit v6

    goto :goto_0

    .line 188
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
    .line 196
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v7, v0

    array-length v7, v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_3

    .line 197
    const-class v7, Landroid/support/v4/util/ArraySet;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v3, v8

    monitor-enter v7

    .line 198
    :try_start_0
    sget v7, Landroid/support/v4/util/ArraySet;->sTwiceBaseCacheSize:I

    const/16 v8, 0xa

    if-ge v7, v8, :cond_1

    .line 199
    move-object v7, v1

    const/4 v8, 0x0

    sget-object v9, Landroid/support/v4/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    aput-object v9, v7, v8

    .line 200
    move-object v7, v1

    const/4 v8, 0x1

    move-object v9, v0

    aput-object v9, v7, v8

    .line 201
    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v4, v7

    :goto_0
    move v7, v4

    const/4 v8, 0x2

    if-lt v7, v8, :cond_0

    .line 202
    move-object v7, v1

    move v8, v4

    const/4 v9, 0x0

    aput-object v9, v7, v8

    .line 201
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 204
    :cond_0
    move-object v7, v1

    sput-object v7, Landroid/support/v4/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    .line 205
    sget v7, Landroid/support/v4/util/ArraySet;->sTwiceBaseCacheSize:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    sput v7, Landroid/support/v4/util/ArraySet;->sTwiceBaseCacheSize:I

    .line 211
    :cond_1
    move-object v7, v3

    monitor-exit v7

    .line 229
    :cond_2
    :goto_1
    return-void

    .line 211
    :catchall_0
    move-exception v7

    move-object v5, v7

    move-object v7, v3

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v5

    throw v7

    .line 212
    :cond_3
    move-object v7, v0

    array-length v7, v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    .line 213
    const-class v7, Landroid/support/v4/util/ArraySet;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v3, v8

    monitor-enter v7

    .line 214
    :try_start_1
    sget v7, Landroid/support/v4/util/ArraySet;->sBaseCacheSize:I

    const/16 v8, 0xa

    if-ge v7, v8, :cond_5

    .line 215
    move-object v7, v1

    const/4 v8, 0x0

    sget-object v9, Landroid/support/v4/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    aput-object v9, v7, v8

    .line 216
    move-object v7, v1

    const/4 v8, 0x1

    move-object v9, v0

    aput-object v9, v7, v8

    .line 217
    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v4, v7

    :goto_2
    move v7, v4

    const/4 v8, 0x2

    if-lt v7, v8, :cond_4

    .line 218
    move-object v7, v1

    move v8, v4

    const/4 v9, 0x0

    aput-object v9, v7, v8

    .line 217
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 220
    :cond_4
    move-object v7, v1

    sput-object v7, Landroid/support/v4/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    .line 221
    sget v7, Landroid/support/v4/util/ArraySet;->sBaseCacheSize:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    sput v7, Landroid/support/v4/util/ArraySet;->sBaseCacheSize:I

    .line 227
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

.method private getCollection()Landroid/support/v4/util/MapCollections;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/MapCollections",
            "<TE;TE;>;"
        }
    .end annotation

    .prologue
    .line 659
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/util/ArraySet;->mCollections:Landroid/support/v4/util/MapCollections;

    if-nez v1, :cond_0

    .line 660
    move-object v1, v0

    new-instance v2, Landroid/support/v4/util/ArraySet$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/v4/util/ArraySet$1;-><init>(Landroid/support/v4/util/ArraySet;)V

    iput-object v2, v1, Landroid/support/v4/util/ArraySet;->mCollections:Landroid/support/v4/util/MapCollections;

    .line 707
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/util/ArraySet;->mCollections:Landroid/support/v4/util/MapCollections;

    move-object v0, v1

    return-object v0
.end method

.method private indexOf(Ljava/lang/Object;I)I
    .locals 10

    .prologue
    .line 81
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/util/ArraySet;->mSize:I

    move v3, v7

    .line 84
    move v7, v3

    if-nez v7, :cond_0

    .line 85
    const/4 v7, -0x1

    move v0, v7

    .line 115
    :goto_0
    return v0

    .line 88
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/ArraySet;->mHashes:[I

    move v8, v3

    move v9, v2

    invoke-static {v7, v8, v9}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([III)I

    move-result v7

    move v4, v7

    .line 91
    move v7, v4

    if-gez v7, :cond_1

    .line 92
    move v7, v4

    move v0, v7

    goto :goto_0

    .line 96
    :cond_1
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    move v9, v4

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 97
    move v7, v4

    move v0, v7

    goto :goto_0

    .line 102
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

    iget-object v7, v7, Landroid/support/v4/util/ArraySet;->mHashes:[I

    move v8, v5

    aget v7, v7, v8

    move v8, v2

    if-ne v7, v8, :cond_4

    .line 103
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    move v9, v5

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v5

    move v0, v7

    goto :goto_0

    .line 102
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 107
    :cond_4
    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v6, v7

    :goto_2
    move v7, v6

    if-ltz v7, :cond_6

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/ArraySet;->mHashes:[I

    move v8, v6

    aget v7, v7, v8

    move v8, v2

    if-ne v7, v8, :cond_6

    .line 108
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    move v9, v6

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v6

    move v0, v7

    goto :goto_0

    .line 107
    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 115
    :cond_6
    move v7, v5

    const/4 v8, -0x1

    xor-int/lit8 v7, v7, -0x1

    move v0, v7

    goto :goto_0
.end method

.method private indexOfNull()I
    .locals 8

    .prologue
    .line 119
    move-object v0, p0

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/util/ArraySet;->mSize:I

    move v1, v5

    .line 122
    move v5, v1

    if-nez v5, :cond_0

    .line 123
    const/4 v5, -0x1

    move v0, v5

    .line 153
    :goto_0
    return v0

    .line 126
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/util/ArraySet;->mHashes:[I

    move v6, v1

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([III)I

    move-result v5

    move v2, v5

    .line 129
    move v5, v2

    if-gez v5, :cond_1

    .line 130
    move v5, v2

    move v0, v5

    goto :goto_0

    .line 134
    :cond_1
    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    move v7, v2

    aget-object v6, v6, v7

    if-ne v5, v6, :cond_2

    .line 135
    move v5, v2

    move v0, v5

    goto :goto_0

    .line 140
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

    iget-object v5, v5, Landroid/support/v4/util/ArraySet;->mHashes:[I

    move v6, v3

    aget v5, v5, v6

    if-nez v5, :cond_4

    .line 141
    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    move v7, v3

    aget-object v6, v6, v7

    if-ne v5, v6, :cond_3

    move v5, v3

    move v0, v5

    goto :goto_0

    .line 140
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 145
    :cond_4
    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    :goto_2
    move v5, v4

    if-ltz v5, :cond_6

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/util/ArraySet;->mHashes:[I

    move v6, v4

    aget v5, v5, v6

    if-nez v5, :cond_6

    .line 146
    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    move v7, v4

    aget-object v6, v6, v7

    if-ne v5, v6, :cond_5

    move v5, v4

    move v0, v5

    goto :goto_0

    .line 145
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 153
    :cond_6
    move v5, v3

    const/4 v6, -0x1

    xor-int/lit8 v5, v5, -0x1

    move v0, v5

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 358
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    if-nez v7, :cond_0

    .line 359
    const/4 v7, 0x0

    move v2, v7

    .line 360
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/v4/util/ArraySet;->indexOfNull()I

    move-result v7

    move v3, v7

    .line 365
    :goto_0
    move v7, v3

    if-ltz v7, :cond_2

    .line 366
    const/4 v7, 0x0

    move v0, v7

    .line 400
    :goto_1
    return v0

    .line 362
    :cond_0
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v4/util/ArraySet;->mIdentityHashCode:Z

    if-eqz v7, :cond_1

    move-object v7, v1

    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    :goto_2
    move v2, v7

    .line 363
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    invoke-direct {v7, v8, v9}, Landroid/support/v4/util/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v7

    move v3, v7

    goto :goto_0

    .line 362
    :cond_1
    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_2

    .line 369
    :cond_2
    move v7, v3

    const/4 v8, -0x1

    xor-int/lit8 v7, v7, -0x1

    move v3, v7

    .line 370
    move-object v7, v0

    iget v7, v7, Landroid/support/v4/util/ArraySet;->mSize:I

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/ArraySet;->mHashes:[I

    array-length v8, v8

    if-lt v7, v8, :cond_4

    .line 371
    move-object v7, v0

    iget v7, v7, Landroid/support/v4/util/ArraySet;->mSize:I

    const/16 v8, 0x8

    if-lt v7, v8, :cond_6

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/util/ArraySet;->mSize:I

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/util/ArraySet;->mSize:I

    const/4 v9, 0x1

    shr-int/lit8 v8, v8, 0x1

    add-int/2addr v7, v8

    :goto_3
    move v4, v7

    .line 376
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/ArraySet;->mHashes:[I

    move-object v5, v7

    .line 377
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    move-object v6, v7

    .line 378
    move-object v7, v0

    move v8, v4

    invoke-direct {v7, v8}, Landroid/support/v4/util/ArraySet;->allocArrays(I)V

    .line 380
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/ArraySet;->mHashes:[I

    array-length v7, v7

    if-lez v7, :cond_3

    .line 382
    move-object v7, v5

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/util/ArraySet;->mHashes:[I

    const/4 v10, 0x0

    move-object v11, v5

    array-length v11, v11

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 383
    move-object v7, v6

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v10, 0x0

    move-object v11, v6

    array-length v11, v11

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 386
    :cond_3
    move-object v7, v5

    move-object v8, v6

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/util/ArraySet;->mSize:I

    invoke-static {v7, v8, v9}, Landroid/support/v4/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 389
    :cond_4
    move v7, v3

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/util/ArraySet;->mSize:I

    if-ge v7, v8, :cond_5

    .line 393
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/ArraySet;->mHashes:[I

    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/util/ArraySet;->mHashes:[I

    move v10, v3

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move-object v11, v0

    iget v11, v11, Landroid/support/v4/util/ArraySet;->mSize:I

    move v12, v3

    sub-int/2addr v11, v12

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 394
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    move v10, v3

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move-object v11, v0

    iget v11, v11, Landroid/support/v4/util/ArraySet;->mSize:I

    move v12, v3

    sub-int/2addr v11, v12

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 397
    :cond_5
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/ArraySet;->mHashes:[I

    move v8, v3

    move v9, v2

    aput v9, v7, v8

    .line 398
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    move v8, v3

    move-object v9, v1

    aput-object v9, v7, v8

    .line 399
    move-object v7, v0

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    iget v8, v8, Landroid/support/v4/util/ArraySet;->mSize:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Landroid/support/v4/util/ArraySet;->mSize:I

    .line 400
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_1

    .line 371
    :cond_6
    move-object v7, v0

    iget v7, v7, Landroid/support/v4/util/ArraySet;->mSize:I

    const/4 v8, 0x4

    if-lt v7, v8, :cond_7

    const/16 v7, 0x8

    goto/16 :goto_3

    :cond_7
    const/4 v7, 0x4

    goto/16 :goto_3
.end method

.method public addAll(Landroid/support/v4/util/ArraySet;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArraySet",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 437
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    iget v4, v4, Landroid/support/v4/util/ArraySet;->mSize:I

    move v2, v4

    .line 438
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/util/ArraySet;->mSize:I

    move v6, v2

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/support/v4/util/ArraySet;->ensureCapacity(I)V

    .line 439
    move-object v4, v0

    iget v4, v4, Landroid/support/v4/util/ArraySet;->mSize:I

    if-nez v4, :cond_1

    .line 440
    move v4, v2

    if-lez v4, :cond_0

    .line 441
    move-object v4, v1

    iget-object v4, v4, Landroid/support/v4/util/ArraySet;->mHashes:[I

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/util/ArraySet;->mHashes:[I

    const/4 v7, 0x0

    move v8, v2

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 442
    move-object v4, v1

    iget-object v4, v4, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v7, 0x0

    move v8, v2

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 443
    move-object v4, v0

    move v5, v2

    iput v5, v4, Landroid/support/v4/util/ArraySet;->mSize:I

    .line 450
    :cond_0
    return-void

    .line 446
    :cond_1
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 447
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v4/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 446
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 745
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/util/ArraySet;->mSize:I

    move-object v7, v1

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/support/v4/util/ArraySet;->ensureCapacity(I)V

    .line 746
    const/4 v5, 0x0

    move v2, v5

    .line 747
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 748
    move v5, v2

    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    move v2, v5

    .line 749
    goto :goto_0

    .line 750
    :cond_0
    move v5, v2

    move v0, v5

    return v0
.end method

.method public append(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 409
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/util/ArraySet;->mSize:I

    move v2, v4

    .line 410
    move-object v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 411
    :goto_0
    move v3, v4

    .line 412
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/util/ArraySet;->mHashes:[I

    array-length v5, v5

    if-lt v4, v5, :cond_2

    .line 413
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Array is full"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 410
    :cond_0
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/util/ArraySet;->mIdentityHashCode:Z

    if-eqz v4, :cond_1

    move-object v4, v1

    .line 411
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    goto :goto_0

    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_0

    .line 415
    :cond_2
    move v4, v2

    if-lez v4, :cond_3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/util/ArraySet;->mHashes:[I

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    move v5, v3

    if-le v4, v5, :cond_3

    .line 424
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 430
    :goto_1
    return-void

    .line 427
    :cond_3
    move-object v4, v0

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/support/v4/util/ArraySet;->mSize:I

    .line 428
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/util/ArraySet;->mHashes:[I

    move v5, v2

    move v6, v3

    aput v6, v4, v5

    .line 429
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    move v5, v2

    move-object v6, v1

    aput-object v6, v4, v5

    .line 430
    goto :goto_1
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 281
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/util/ArraySet;->mSize:I

    if-eqz v1, :cond_0

    .line 282
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/util/ArraySet;->mHashes:[I

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/util/ArraySet;->mSize:I

    invoke-static {v1, v2, v3}, Landroid/support/v4/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 283
    move-object v1, v0

    sget-object v2, Landroid/support/v4/util/ArraySet;->INT:[I

    iput-object v2, v1, Landroid/support/v4/util/ArraySet;->mHashes:[I

    .line 284
    move-object v1, v0

    sget-object v2, Landroid/support/v4/util/ArraySet;->OBJECT:[Ljava/lang/Object;

    iput-object v2, v1, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 285
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v4/util/ArraySet;->mSize:I

    .line 287
    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 314
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/util/ArraySet;->indexOf(Ljava/lang/Object;)I

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

.method public containsAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 730
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v3

    .line 731
    :cond_0
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 732
    move-object v3, v0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 733
    const/4 v3, 0x0

    move v0, v3

    .line 736
    :goto_0
    return v0

    :cond_1
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public ensureCapacity(I)V
    .locals 9

    .prologue
    .line 294
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/util/ArraySet;->mHashes:[I

    array-length v4, v4

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 295
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/util/ArraySet;->mHashes:[I

    move-object v2, v4

    .line 296
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    move-object v3, v4

    .line 297
    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Landroid/support/v4/util/ArraySet;->allocArrays(I)V

    .line 298
    move-object v4, v0

    iget v4, v4, Landroid/support/v4/util/ArraySet;->mSize:I

    if-lez v4, :cond_0

    .line 299
    move-object v4, v2

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/util/ArraySet;->mHashes:[I

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/util/ArraySet;->mSize:I

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/util/ArraySet;->mSize:I

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    :cond_0
    move-object v4, v2

    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/util/ArraySet;->mSize:I

    invoke-static {v4, v5, v6}, Landroid/support/v4/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 304
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 584
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    move-object v6, v1

    if-ne v5, v6, :cond_0

    .line 585
    const/4 v5, 0x1

    move v0, v5

    .line 607
    :goto_0
    return v0

    .line 587
    :cond_0
    move-object v5, v1

    instance-of v5, v5, Ljava/util/Set;

    if-eqz v5, :cond_4

    .line 588
    move-object v5, v1

    check-cast v5, Ljava/util/Set;

    move-object v2, v5

    .line 589
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/util/ArraySet;->size()I

    move-result v5

    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 590
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 594
    :cond_1
    const/4 v5, 0x0

    move v3, v5

    :goto_1
    move v5, v3

    move-object v6, v0

    :try_start_0
    iget v6, v6, Landroid/support/v4/util/ArraySet;->mSize:I

    if-ge v5, v6, :cond_3

    .line 595
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v4/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 596
    move-object v5, v2

    move-object v6, v4

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-nez v5, :cond_2

    .line 597
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 594
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 605
    :cond_3
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 600
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 601
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 602
    :catch_1
    move-exception v5

    move-object v3, v5

    .line 603
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 607
    :cond_4
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    .line 615
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/util/ArraySet;->mHashes:[I

    move-object v1, v5

    .line 616
    const/4 v5, 0x0

    move v2, v5

    .line 617
    const/4 v5, 0x0

    move v3, v5

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/util/ArraySet;->mSize:I

    move v4, v5

    :goto_0
    move v5, v3

    move v6, v4

    if-ge v5, v6, :cond_0

    .line 618
    move v5, v2

    move-object v6, v1

    move v7, v3

    aget v6, v6, v7

    add-int/2addr v5, v6

    move v2, v5

    .line 617
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 620
    :cond_0
    move v5, v2

    move v0, v5

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 5

    .prologue
    .line 324
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/util/ArraySet;->indexOfNull()I

    move-result v2

    .line 325
    :goto_0
    move v0, v2

    return v0

    .line 324
    :cond_0
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/util/ArraySet;->mIdentityHashCode:Z

    if-eqz v4, :cond_1

    move-object v4, v1

    .line 325
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    :goto_1
    invoke-direct {v2, v3, v4}, Landroid/support/v4/util/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v2

    goto :goto_0

    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 342
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/util/ArraySet;->mSize:I

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 719
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/util/ArraySet;->getCollection()Landroid/support/v4/util/MapCollections;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/util/MapCollections;->getKeySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 460
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v3

    move v2, v3

    .line 461
    move v3, v2

    if-ltz v3, :cond_0

    .line 462
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 463
    const/4 v3, 0x1

    move v0, v3

    .line 465
    :goto_0
    return v0

    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public removeAll(Landroid/support/v4/util/ArraySet;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArraySet",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 533
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    iget v5, v5, Landroid/support/v4/util/ArraySet;->mSize:I

    move v2, v5

    .line 537
    move-object v5, v0

    iget v5, v5, Landroid/support/v4/util/ArraySet;->mSize:I

    move v3, v5

    .line 538
    const/4 v5, 0x0

    move v4, v5

    :goto_0
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 539
    move-object v5, v0

    move-object v6, v1

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/support/v4/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 538
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 541
    :cond_0
    move v5, v3

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/util/ArraySet;->mSize:I

    if-eq v5, v6, :cond_1

    const/4 v5, 0x1

    :goto_1
    move v0, v5

    return v0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 760
    move-object v0, p0

    move-object v1, p1

    const/4 v5, 0x0

    move v2, v5

    .line 761
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 762
    move v5, v2

    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/support/v4/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    move v2, v5

    .line 763
    goto :goto_0

    .line 764
    :cond_0
    move v5, v2

    move v0, v5

    return v0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 474
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    move v7, v1

    aget-object v6, v6, v7

    move-object v2, v6

    .line 475
    move-object v6, v0

    iget v6, v6, Landroid/support/v4/util/ArraySet;->mSize:I

    const/4 v7, 0x1

    if-gt v6, v7, :cond_0

    .line 478
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/util/ArraySet;->mHashes:[I

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/util/ArraySet;->mSize:I

    invoke-static {v6, v7, v8}, Landroid/support/v4/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 479
    move-object v6, v0

    sget-object v7, Landroid/support/v4/util/ArraySet;->INT:[I

    iput-object v7, v6, Landroid/support/v4/util/ArraySet;->mHashes:[I

    .line 480
    move-object v6, v0

    sget-object v7, Landroid/support/v4/util/ArraySet;->OBJECT:[Ljava/lang/Object;

    iput-object v7, v6, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 481
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroid/support/v4/util/ArraySet;->mSize:I

    .line 521
    :goto_0
    move-object v6, v2

    move-object v0, v6

    return-object v0

    .line 483
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/util/ArraySet;->mHashes:[I

    array-length v6, v6

    const/16 v7, 0x8

    if-le v6, v7, :cond_4

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/util/ArraySet;->mSize:I

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/ArraySet;->mHashes:[I

    array-length v7, v7

    const/4 v8, 0x3

    div-int/lit8 v7, v7, 0x3

    if-ge v6, v7, :cond_4

    .line 487
    move-object v6, v0

    iget v6, v6, Landroid/support/v4/util/ArraySet;->mSize:I

    const/16 v7, 0x8

    if-le v6, v7, :cond_3

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/util/ArraySet;->mSize:I

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/util/ArraySet;->mSize:I

    const/4 v8, 0x1

    shr-int/lit8 v7, v7, 0x1

    add-int/2addr v6, v7

    :goto_1
    move v3, v6

    .line 491
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/util/ArraySet;->mHashes:[I

    move-object v4, v6

    .line 492
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    move-object v5, v6

    .line 493
    move-object v6, v0

    move v7, v3

    invoke-direct {v6, v7}, Landroid/support/v4/util/ArraySet;->allocArrays(I)V

    .line 495
    move-object v6, v0

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget v7, v7, Landroid/support/v4/util/ArraySet;->mSize:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Landroid/support/v4/util/ArraySet;->mSize:I

    .line 496
    move v6, v1

    if-lez v6, :cond_1

    .line 498
    move-object v6, v4

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/ArraySet;->mHashes:[I

    const/4 v9, 0x0

    move v10, v1

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 499
    move-object v6, v5

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v9, 0x0

    move v10, v1

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 501
    :cond_1
    move v6, v1

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/util/ArraySet;->mSize:I

    if-ge v6, v7, :cond_2

    .line 506
    move-object v6, v4

    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/ArraySet;->mHashes:[I

    move v9, v1

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/util/ArraySet;->mSize:I

    move v11, v1

    sub-int/2addr v10, v11

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 507
    move-object v6, v5

    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    move v9, v1

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/util/ArraySet;->mSize:I

    move v11, v1

    sub-int/2addr v10, v11

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 509
    :cond_2
    goto :goto_0

    .line 487
    :cond_3
    const/16 v6, 0x8

    goto :goto_1

    .line 510
    :cond_4
    move-object v6, v0

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    iget v7, v7, Landroid/support/v4/util/ArraySet;->mSize:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Landroid/support/v4/util/ArraySet;->mSize:I

    .line 511
    move v6, v1

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/util/ArraySet;->mSize:I

    if-ge v6, v7, :cond_5

    .line 515
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/util/ArraySet;->mHashes:[I

    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/ArraySet;->mHashes:[I

    move v9, v1

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/util/ArraySet;->mSize:I

    move v11, v1

    sub-int/2addr v10, v11

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 516
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    move v9, v1

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/util/ArraySet;->mSize:I

    move v11, v1

    sub-int/2addr v10, v11

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 518
    :cond_5
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/util/ArraySet;->mSize:I

    const/4 v8, 0x0

    aput-object v8, v6, v7

    goto/16 :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 775
    move-object v0, p0

    move-object v1, p1

    const/4 v4, 0x0

    move v2, v4

    .line 776
    move-object v4, v0

    iget v4, v4, Landroid/support/v4/util/ArraySet;->mSize:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v3, v4

    :goto_0
    move v4, v3

    if-ltz v4, :cond_1

    .line 777
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    move v6, v3

    aget-object v5, v5, v6

    invoke-interface {v4, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 778
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v4/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 779
    const/4 v4, 0x1

    move v2, v4

    .line 776
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 782
    :cond_1
    move v4, v2

    move v0, v4

    return v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 549
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/util/ArraySet;->mSize:I

    move v0, v1

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 7

    .prologue
    .line 554
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/util/ArraySet;->mSize:I

    new-array v2, v2, [Ljava/lang/Object;

    move-object v1, v2

    .line 555
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v3, 0x0

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/util/ArraySet;->mSize:I

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 556
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 561
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    array-length v3, v3

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/util/ArraySet;->mSize:I

    if-ge v3, v4, :cond_0

    .line 562
    move-object v3, v1

    .line 563
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/util/ArraySet;->mSize:I

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    .line 564
    move-object v3, v2

    move-object v1, v3

    .line 566
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v4, 0x0

    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/util/ArraySet;->mSize:I

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 567
    move-object v3, v1

    array-length v3, v3

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/util/ArraySet;->mSize:I

    if-le v3, v4, :cond_1

    .line 568
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/util/ArraySet;->mSize:I

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 570
    :cond_1
    move-object v3, v1

    move-object v0, v3

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 632
    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/util/ArraySet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 633
    const-string v4, "{}"

    move-object v0, v4

    .line 650
    :goto_0
    return-object v0

    .line 636
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/util/ArraySet;->mSize:I

    const/16 v7, 0xe

    mul-int/lit8 v6, v6, 0xe

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v4

    .line 637
    move-object v4, v1

    const/16 v5, 0x7b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 638
    const/4 v4, 0x0

    move v2, v4

    :goto_1
    move v4, v2

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/util/ArraySet;->mSize:I

    if-ge v4, v5, :cond_3

    .line 639
    move v4, v2

    if-lez v4, :cond_1

    .line 640
    move-object v4, v1

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 642
    :cond_1
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v4/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 643
    move-object v4, v3

    move-object v5, v0

    if-eq v4, v5, :cond_2

    .line 644
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 638
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 646
    :cond_2
    move-object v4, v1

    const-string v5, "(this Set)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_2

    .line 649
    :cond_3
    move-object v4, v1

    const/16 v5, 0x7d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 650
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

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
    .line 334
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    return-object v0
.end method
