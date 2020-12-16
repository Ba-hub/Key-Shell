.class final Landroid/support/v4/util/MapCollections$ArrayIterator;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/util/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ArrayIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field mCanRemove:Z

.field mIndex:I

.field final mOffset:I

.field mSize:I

.field final synthetic this$0:Landroid/support/v4/util/MapCollections;


# direct methods
.method constructor <init>(Landroid/support/v4/util/MapCollections;I)V
    .locals 5

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/util/MapCollections$ArrayIterator;->this$0:Landroid/support/v4/util/MapCollections;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 38
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v4/util/MapCollections$ArrayIterator;->mCanRemove:Z

    .line 41
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/v4/util/MapCollections$ArrayIterator;->mOffset:I

    .line 42
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v4/util/MapCollections;->colGetSize()I

    move-result v4

    iput v4, v3, Landroid/support/v4/util/MapCollections$ArrayIterator;->mSize:I

    .line 43
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/util/MapCollections$ArrayIterator;->mIndex:I

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/util/MapCollections$ArrayIterator;->mSize:I

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/util/MapCollections$ArrayIterator;->this$0:Landroid/support/v4/util/MapCollections;

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/util/MapCollections$ArrayIterator;->mIndex:I

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/util/MapCollections$ArrayIterator;->mOffset:I

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 53
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/support/v4/util/MapCollections$ArrayIterator;->mIndex:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/support/v4/util/MapCollections$ArrayIterator;->mIndex:I

    .line 54
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/util/MapCollections$ArrayIterator;->mCanRemove:Z

    .line 55
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public remove()V
    .locals 5

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/util/MapCollections$ArrayIterator;->mCanRemove:Z

    if-nez v1, :cond_0

    .line 61
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 63
    :cond_0
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Landroid/support/v4/util/MapCollections$ArrayIterator;->mIndex:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroid/support/v4/util/MapCollections$ArrayIterator;->mIndex:I

    .line 64
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Landroid/support/v4/util/MapCollections$ArrayIterator;->mSize:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroid/support/v4/util/MapCollections$ArrayIterator;->mSize:I

    .line 65
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/util/MapCollections$ArrayIterator;->mCanRemove:Z

    .line 66
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/util/MapCollections$ArrayIterator;->this$0:Landroid/support/v4/util/MapCollections;

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/util/MapCollections$ArrayIterator;->mIndex:I

    invoke-virtual {v1, v2}, Landroid/support/v4/util/MapCollections;->colRemoveAt(I)V

    .line 67
    return-void
.end method
