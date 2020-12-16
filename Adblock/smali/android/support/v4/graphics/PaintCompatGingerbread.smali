.class Landroid/support/v4/graphics/PaintCompatGingerbread;
.super Ljava/lang/Object;
.source "PaintCompatGingerbread.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x9
.end annotation


# static fields
.field private static final TOFU_STRING:Ljava/lang/String; = "\udb3f\udffd"

.field private static final sRectThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/support/v4/util/Pair",
            "<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    new-instance v0, Ljava/lang/ThreadLocal;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/v4/graphics/PaintCompatGingerbread;->sRectThreadLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static hasGlyph(Landroid/graphics/Paint;Ljava/lang/String;)Z
    .locals 14
    .param p0    # Landroid/graphics/Paint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, p1

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    move v2, v8

    .line 35
    move v8, v2

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    move-object v8, v1

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 37
    const/4 v8, 0x1

    move v0, v8

    .line 87
    :goto_0
    return v0

    .line 40
    :cond_0
    move-object v8, v0

    const-string v9, "\udb3f\udffd"

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    move v3, v8

    .line 41
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    move v4, v8

    .line 43
    move v8, v4

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_1

    .line 45
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 48
    :cond_1
    move-object v8, v1

    const/4 v9, 0x0

    move-object v10, v1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->codePointCount(II)I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_4

    .line 51
    move v8, v4

    const/high16 v9, 0x40000000    # 2.0f

    move v10, v3

    mul-float/2addr v9, v10

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    .line 52
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 65
    :cond_2
    const/4 v8, 0x0

    move v5, v8

    .line 66
    const/4 v8, 0x0

    move v6, v8

    .line 67
    :goto_1
    move v8, v6

    move v9, v2

    if-ge v8, v9, :cond_3

    .line 68
    move-object v8, v1

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    move v7, v8

    .line 69
    move v8, v5

    move-object v9, v0

    move-object v10, v1

    move v11, v6

    move v12, v6

    move v13, v7

    add-int/2addr v12, v13

    invoke-virtual {v9, v10, v11, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v9

    add-float/2addr v8, v9

    move v5, v8

    .line 70
    move v8, v6

    move v9, v7

    add-int/2addr v8, v9

    move v6, v8

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    move v8, v4

    move v9, v5

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_4

    .line 73
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 77
    :cond_4
    move v8, v4

    move v9, v3

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_5

    .line 79
    const/4 v8, 0x1

    move v0, v8

    goto :goto_0

    .line 84
    :cond_5
    invoke-static {}, Landroid/support/v4/graphics/PaintCompatGingerbread;->obtainEmptyRects()Landroid/support/v4/util/Pair;

    move-result-object v8

    move-object v5, v8

    .line 85
    move-object v8, v0

    const-string v9, "\udb3f\udffd"

    const/4 v10, 0x0

    const-string v11, "\udb3f\udffd"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    move-object v12, v5

    iget-object v12, v12, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Landroid/graphics/Rect;

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 86
    move-object v8, v0

    move-object v9, v1

    const/4 v10, 0x0

    move v11, v2

    move-object v12, v5

    iget-object v12, v12, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Landroid/graphics/Rect;

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 87
    move-object v8, v5

    iget-object v8, v8, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/graphics/Rect;

    move-object v9, v5

    iget-object v9, v9, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const/4 v8, 0x1

    :goto_2
    move v0, v8

    goto/16 :goto_0

    :cond_6
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private static obtainEmptyRects()Landroid/support/v4/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/Pair",
            "<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    sget-object v1, Landroid/support/v4/graphics/PaintCompatGingerbread;->sRectThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/util/Pair;

    move-object v0, v1

    .line 92
    move-object v1, v0

    if-nez v1, :cond_0

    .line 93
    new-instance v1, Landroid/support/v4/util/Pair;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    new-instance v3, Landroid/graphics/Rect;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v2, v3, v4}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 94
    sget-object v1, Landroid/support/v4/graphics/PaintCompatGingerbread;->sRectThreadLocal:Ljava/lang/ThreadLocal;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 99
    :goto_0
    move-object v1, v0

    move-object v0, v1

    return-object v0

    .line 96
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 97
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method
