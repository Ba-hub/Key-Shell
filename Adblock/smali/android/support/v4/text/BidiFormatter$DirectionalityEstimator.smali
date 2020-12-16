.class Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/text/BidiFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectionalityEstimator"
.end annotation


# static fields
.field private static final DIR_TYPE_CACHE:[B

.field private static final DIR_TYPE_CACHE_SIZE:I = 0x700


# instance fields
.field private charIndex:I

.field private final isHtml:Z

.field private lastChar:C

.field private final length:I

.field private final text:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 583
    const/16 v1, 0x700

    new-array v1, v1, [B

    sput-object v1, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    .line 584
    const/4 v1, 0x0

    move v0, v1

    :goto_0
    move v1, v0

    const/16 v2, 0x700

    if-ge v1, v2, :cond_0

    .line 585
    sget-object v1, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    move v2, v0

    move v3, v0

    invoke-static {v3}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v3

    aput-byte v3, v1, v2

    .line 584
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 587
    :cond_0
    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;Z)V
    .locals 5

    .prologue
    .line 627
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 628
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    .line 629
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    .line 630
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iput v4, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    .line 631
    return-void
.end method

.method private static getCachedDirectionality(C)B
    .locals 3

    .prologue
    .line 802
    move v0, p0

    move v1, v0

    const/16 v2, 0x700

    if-ge v1, v2, :cond_0

    sget-object v1, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    move v2, v0

    aget-byte v1, v1, v2

    :goto_0
    move v0, v1

    return v0

    :cond_0
    move v1, v0

    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v1

    goto :goto_0
.end method

.method private skipEntityBackward()B
    .locals 9

    .prologue
    .line 943
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move v1, v2

    .line 944
    :cond_0
    move-object v2, v0

    iget v2, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v2, :cond_2

    .line 945
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move-object v7, v4

    move v8, v5

    move v4, v8

    move-object v5, v7

    move v6, v8

    iput v6, v5, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    iput-char v3, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 946
    move-object v2, v0

    iget-char v2, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x26

    if-ne v2, v3, :cond_1

    .line 947
    const/16 v2, 0xc

    move v0, v2

    .line 955
    :goto_0
    return v0

    .line 949
    :cond_1
    move-object v2, v0

    iget-char v2, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_0

    .line 953
    :cond_2
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 954
    move-object v2, v0

    const/16 v3, 0x3b

    iput-char v3, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 955
    const/16 v2, 0xd

    move v0, v2

    goto :goto_0
.end method

.method private skipEntityForward()B
    .locals 9

    .prologue
    .line 928
    move-object v0, p0

    :goto_0
    move-object v1, v0

    iget v1, v1, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v1, v2, :cond_0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    move-object v7, v1

    move v8, v2

    move v1, v8

    move-object v2, v7

    move v3, v8

    iput-char v3, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 929
    :cond_0
    const/16 v1, 0xc

    move v0, v1

    return v0
.end method

.method private skipTagBackward()B
    .locals 10

    .prologue
    .line 900
    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move v1, v3

    .line 901
    :cond_0
    :goto_0
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v3, :cond_2

    .line 902
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    iget v6, v6, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move-object v8, v5

    move v9, v6

    move v5, v9

    move-object v6, v8

    move v7, v9

    iput v7, v6, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    iput-char v4, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 903
    move-object v3, v0

    iget-char v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v4, 0x3c

    if-ne v3, v4, :cond_1

    .line 905
    const/16 v3, 0xc

    move v0, v3

    .line 919
    :goto_1
    return v0

    .line 907
    :cond_1
    move-object v3, v0

    iget-char v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_3

    .line 917
    :cond_2
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 918
    move-object v3, v0

    const/16 v4, 0x3e

    iput-char v4, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 919
    const/16 v3, 0xd

    move v0, v3

    goto :goto_1

    .line 910
    :cond_3
    move-object v3, v0

    iget-char v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v4, 0x22

    if-eq v3, v4, :cond_4

    move-object v3, v0

    iget-char v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v4, 0x27

    if-ne v3, v4, :cond_0

    .line 912
    :cond_4
    move-object v3, v0

    iget-char v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    move v2, v3

    .line 913
    :goto_2
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v3, :cond_5

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    iget v6, v6, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move-object v8, v5

    move v9, v6

    move v5, v9

    move-object v6, v8

    move v7, v9

    iput v7, v6, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput-char v5, v4, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    move v4, v2

    if-eq v3, v4, :cond_5

    goto :goto_2

    .line 914
    :cond_5
    goto :goto_0
.end method

.method private skipTagForward()B
    .locals 11

    .prologue
    .line 871
    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move v1, v3

    .line 872
    :cond_0
    :goto_0
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v3, v4, :cond_4

    .line 873
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    iput-char v4, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 874
    move-object v3, v0

    iget-char v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_1

    .line 876
    const/16 v3, 0xc

    move v0, v3

    .line 887
    :goto_1
    return v0

    .line 878
    :cond_1
    move-object v3, v0

    iget-char v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v4, 0x22

    if-eq v3, v4, :cond_2

    move-object v3, v0

    iget-char v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v4, 0x27

    if-ne v3, v4, :cond_0

    .line 880
    :cond_2
    move-object v3, v0

    iget-char v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    move v2, v3

    .line 881
    :goto_2
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v3, v4, :cond_3

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    move-object v9, v3

    move v10, v4

    move v3, v10

    move-object v4, v9

    move v5, v10

    iput-char v5, v4, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    move v4, v2

    if-eq v3, v4, :cond_3

    goto :goto_2

    .line 882
    :cond_3
    goto :goto_0

    .line 885
    :cond_4
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 886
    move-object v3, v0

    const/16 v4, 0x3c

    iput-char v4, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 887
    const/16 v3, 0xd

    move v0, v3

    goto :goto_1
.end method


# virtual methods
.method dirTypeBackward()B
    .locals 7

    .prologue
    .line 845
    move-object v0, p0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    iput-char v3, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 846
    move-object v2, v0

    iget-char v2, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 847
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v2, v3}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    move v1, v2

    .line 848
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move v4, v1

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 849
    move v2, v1

    invoke-static {v2}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v2

    move v0, v2

    .line 861
    :goto_0
    return v0

    .line 851
    :cond_0
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 852
    move-object v2, v0

    iget-char v2, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v2

    move v1, v2

    .line 853
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-eqz v2, :cond_1

    .line 855
    move-object v2, v0

    iget-char v2, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_2

    .line 856
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipTagBackward()B

    move-result v2

    move v1, v2

    .line 861
    :cond_1
    :goto_1
    move v2, v1

    move v0, v2

    goto :goto_0

    .line 857
    :cond_2
    move-object v2, v0

    iget-char v2, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_1

    .line 858
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipEntityBackward()B

    move-result v2

    move v1, v2

    goto :goto_1
.end method

.method dirTypeForward()B
    .locals 6

    .prologue
    .line 815
    move-object v0, p0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    iput-char v3, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 816
    move-object v2, v0

    iget-char v2, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 817
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v2, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    move v1, v2

    .line 818
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move v4, v1

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 819
    move v2, v1

    invoke-static {v2}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v2

    move v0, v2

    .line 831
    :goto_0
    return v0

    .line 821
    :cond_0
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 822
    move-object v2, v0

    iget-char v2, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v2

    move v1, v2

    .line 823
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-eqz v2, :cond_1

    .line 825
    move-object v2, v0

    iget-char v2, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_2

    .line 826
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipTagForward()B

    move-result v2

    move v1, v2

    .line 831
    :cond_1
    :goto_1
    move v2, v1

    move v0, v2

    goto :goto_0

    .line 827
    :cond_2
    move-object v2, v0

    iget-char v2, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x26

    if-ne v2, v3, :cond_1

    .line 828
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipEntityForward()B

    move-result v2

    move v1, v2

    goto :goto_1
.end method

.method getEntryDir()I
    .locals 6

    .prologue
    .line 645
    move-object v0, p0

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 646
    const/4 v4, 0x0

    move v1, v4

    .line 647
    const/4 v4, 0x0

    move v2, v4

    .line 648
    const/4 v4, 0x0

    move v3, v4

    .line 649
    :goto_0
    move-object v4, v0

    iget v4, v4, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v4, v5, :cond_2

    move v4, v3

    if-nez v4, :cond_2

    .line 650
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->dirTypeForward()B

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 684
    :pswitch_0
    move v4, v1

    move v3, v4

    .line 685
    goto :goto_0

    .line 653
    :pswitch_1
    add-int/lit8 v1, v1, 0x1

    .line 654
    const/4 v4, -0x1

    move v2, v4

    .line 655
    goto :goto_0

    .line 658
    :pswitch_2
    add-int/lit8 v1, v1, 0x1

    .line 659
    const/4 v4, 0x1

    move v2, v4

    .line 660
    goto :goto_0

    .line 662
    :pswitch_3
    add-int/lit8 v1, v1, -0x1

    .line 666
    const/4 v4, 0x0

    move v2, v4

    .line 667
    goto :goto_0

    .line 669
    :pswitch_4
    goto :goto_0

    .line 671
    :pswitch_5
    move v4, v1

    if-nez v4, :cond_0

    .line 672
    const/4 v4, -0x1

    move v0, v4

    .line 727
    :goto_1
    return v0

    .line 674
    :cond_0
    move v4, v1

    move v3, v4

    .line 675
    goto :goto_0

    .line 678
    :pswitch_6
    move v4, v1

    if-nez v4, :cond_1

    .line 679
    const/4 v4, 0x1

    move v0, v4

    goto :goto_1

    .line 681
    :cond_1
    move v4, v1

    move v3, v4

    .line 682
    goto :goto_0

    .line 691
    :cond_2
    move v4, v3

    if-nez v4, :cond_3

    .line 694
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1

    .line 698
    :cond_3
    move v4, v2

    if-eqz v4, :cond_4

    .line 700
    move v4, v2

    move v0, v4

    goto :goto_1

    .line 705
    :cond_4
    :goto_2
    move-object v4, v0

    iget v4, v4, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v4, :cond_7

    .line 706
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 723
    :goto_3
    goto :goto_2

    .line 709
    :pswitch_7
    move v4, v3

    move v5, v1

    if-ne v4, v5, :cond_5

    .line 710
    const/4 v4, -0x1

    move v0, v4

    goto :goto_1

    .line 712
    :cond_5
    add-int/lit8 v1, v1, -0x1

    .line 713
    goto :goto_3

    .line 716
    :pswitch_8
    move v4, v3

    move v5, v1

    if-ne v4, v5, :cond_6

    .line 717
    const/4 v4, 0x1

    move v0, v4

    goto :goto_1

    .line 719
    :cond_6
    add-int/lit8 v1, v1, -0x1

    .line 720
    goto :goto_3

    .line 722
    :pswitch_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 727
    :cond_7
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1

    .line 650
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 706
    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method getExitDir()I
    .locals 5

    .prologue
    .line 743
    move-object v0, p0

    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    iput v4, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 744
    const/4 v3, 0x0

    move v1, v3

    .line 745
    const/4 v3, 0x0

    move v2, v3

    .line 746
    :cond_0
    :goto_0
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v3, :cond_5

    .line 747
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 785
    :pswitch_0
    move v3, v2

    if-nez v3, :cond_0

    .line 786
    move v3, v1

    move v2, v3

    goto :goto_0

    .line 749
    :pswitch_1
    move v3, v1

    if-nez v3, :cond_1

    .line 750
    const/4 v3, -0x1

    move v0, v3

    .line 791
    :goto_1
    return v0

    .line 752
    :cond_1
    move v3, v2

    if-nez v3, :cond_0

    .line 753
    move v3, v1

    move v2, v3

    goto :goto_0

    .line 758
    :pswitch_2
    move v3, v2

    move v4, v1

    if-ne v3, v4, :cond_2

    .line 759
    const/4 v3, -0x1

    move v0, v3

    goto :goto_1

    .line 761
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 762
    goto :goto_0

    .line 765
    :pswitch_3
    move v3, v1

    if-nez v3, :cond_3

    .line 766
    const/4 v3, 0x1

    move v0, v3

    goto :goto_1

    .line 768
    :cond_3
    move v3, v2

    if-nez v3, :cond_0

    .line 769
    move v3, v1

    move v2, v3

    goto :goto_0

    .line 774
    :pswitch_4
    move v3, v2

    move v4, v1

    if-ne v3, v4, :cond_4

    .line 775
    const/4 v3, 0x1

    move v0, v3

    goto :goto_1

    .line 777
    :cond_4
    add-int/lit8 v1, v1, -0x1

    .line 778
    goto :goto_0

    .line 780
    :pswitch_5
    add-int/lit8 v1, v1, 0x1

    .line 781
    goto :goto_0

    .line 783
    :pswitch_6
    goto :goto_0

    .line 791
    :cond_5
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1

    .line 747
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
