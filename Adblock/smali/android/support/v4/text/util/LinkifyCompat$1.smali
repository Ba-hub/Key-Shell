.class final Landroid/support/v4/text/util/LinkifyCompat$1;
.super Ljava/lang/Object;
.source "LinkifyCompat.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/text/util/LinkifyCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;)I
    .locals 5

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->start:I

    move-object v4, v2

    iget v4, v4, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->start:I

    if-ge v3, v4, :cond_0

    .line 57
    const/4 v3, -0x1

    move v0, v3

    .line 72
    :goto_0
    return v0

    .line 60
    :cond_0
    move-object v3, v1

    iget v3, v3, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->start:I

    move-object v4, v2

    iget v4, v4, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->start:I

    if-le v3, v4, :cond_1

    .line 61
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 64
    :cond_1
    move-object v3, v1

    iget v3, v3, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->end:I

    move-object v4, v2

    iget v4, v4, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->end:I

    if-ge v3, v4, :cond_2

    .line 65
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 68
    :cond_2
    move-object v3, v1

    iget v3, v3, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->end:I

    move-object v4, v2

    iget v4, v4, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->end:I

    if-le v3, v4, :cond_3

    .line 69
    const/4 v3, -0x1

    move v0, v3

    goto :goto_0

    .line 72
    :cond_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;

    move-object v5, v2

    check-cast v5, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/text/util/LinkifyCompat$1;->compare(Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;)I

    move-result v3

    move v0, v3

    return v0
.end method
