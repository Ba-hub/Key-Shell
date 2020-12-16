.class public final Landroid/support/v4/text/BidiFormatter;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;,
        Landroid/support/v4/text/BidiFormatter$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_FLAGS:I = 0x2

.field private static final DEFAULT_LTR_INSTANCE:Landroid/support/v4/text/BidiFormatter;

.field private static final DEFAULT_RTL_INSTANCE:Landroid/support/v4/text/BidiFormatter;

.field private static DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/support/v4/text/TextDirectionHeuristicCompat; = null

.field private static final DIR_LTR:I = -0x1

.field private static final DIR_RTL:I = 0x1

.field private static final DIR_UNKNOWN:I = 0x0

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final FLAG_STEREO_RESET:I = 0x2

.field private static final LRE:C = '\u202a'

.field private static final LRM:C = '\u200e'

.field private static final LRM_STRING:Ljava/lang/String;

.field private static final PDF:C = '\u202c'

.field private static final RLE:C = '\u202b'

.field private static final RLM:C = '\u200f'

.field private static final RLM_STRING:Ljava/lang/String;


# instance fields
.field private final mDefaultTextDirectionHeuristicCompat:Landroid/support/v4/text/TextDirectionHeuristicCompat;

.field private final mFlags:I

.field private final mIsRtlContext:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 84
    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    sput-object v0, Landroid/support/v4/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    .line 114
    const/16 v0, 0x200e

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    .line 119
    const/16 v0, 0x200f

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    .line 216
    new-instance v0, Landroid/support/v4/text/BidiFormatter;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x0

    const/4 v3, 0x2

    sget-object v4, Landroid/support/v4/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    invoke-direct {v1, v2, v3, v4}, Landroid/support/v4/text/BidiFormatter;-><init>(ZILandroid/support/v4/text/TextDirectionHeuristicCompat;)V

    sput-object v0, Landroid/support/v4/text/BidiFormatter;->DEFAULT_LTR_INSTANCE:Landroid/support/v4/text/BidiFormatter;

    .line 221
    new-instance v0, Landroid/support/v4/text/BidiFormatter;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x1

    const/4 v3, 0x2

    sget-object v4, Landroid/support/v4/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    invoke-direct {v1, v2, v3, v4}, Landroid/support/v4/text/BidiFormatter;-><init>(ZILandroid/support/v4/text/TextDirectionHeuristicCompat;)V

    sput-object v0, Landroid/support/v4/text/BidiFormatter;->DEFAULT_RTL_INSTANCE:Landroid/support/v4/text/BidiFormatter;

    return-void
.end method

.method private constructor <init>(ZILandroid/support/v4/text/TextDirectionHeuristicCompat;)V
    .locals 6

    .prologue
    .line 261
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 262
    move-object v4, v0

    move v5, v1

    iput-boolean v5, v4, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    .line 263
    move-object v4, v0

    move v5, v2

    iput v5, v4, Landroid/support/v4/text/BidiFormatter;->mFlags:I

    .line 264
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroid/support/v4/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    .line 265
    return-void
.end method

.method synthetic constructor <init>(ZILandroid/support/v4/text/TextDirectionHeuristicCompat;Landroid/support/v4/text/BidiFormatter$1;)V
    .locals 9

    .prologue
    .line 79
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move v6, v1

    move v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroid/support/v4/text/BidiFormatter;-><init>(ZILandroid/support/v4/text/TextDirectionHeuristicCompat;)V

    return-void
.end method

.method static synthetic access$000(Ljava/util/Locale;)Z
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/text/BidiFormatter;->isRtlLocale(Ljava/util/Locale;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic access$100()Landroid/support/v4/text/TextDirectionHeuristicCompat;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Landroid/support/v4/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    return-object v0
.end method

.method static synthetic access$200()Landroid/support/v4/text/BidiFormatter;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Landroid/support/v4/text/BidiFormatter;->DEFAULT_RTL_INSTANCE:Landroid/support/v4/text/BidiFormatter;

    return-object v0
.end method

.method static synthetic access$300()Landroid/support/v4/text/BidiFormatter;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Landroid/support/v4/text/BidiFormatter;->DEFAULT_LTR_INSTANCE:Landroid/support/v4/text/BidiFormatter;

    return-object v0
.end method

.method private static getEntryDir(Ljava/lang/CharSequence;)I
    .locals 6

    .prologue
    .line 557
    move-object v0, p0

    new-instance v1, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;-><init>(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v1}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->getEntryDir()I

    move-result v1

    move v0, v1

    return v0
.end method

.method private static getExitDir(Ljava/lang/CharSequence;)I
    .locals 6

    .prologue
    .line 540
    move-object v0, p0

    new-instance v1, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;-><init>(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v1}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->getExitDir()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getInstance()Landroid/support/v4/text/BidiFormatter;
    .locals 3

    .prologue
    .line 235
    new-instance v0, Landroid/support/v4/text/BidiFormatter$Builder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/text/BidiFormatter$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/support/v4/text/BidiFormatter$Builder;->build()Landroid/support/v4/text/BidiFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/support/v4/text/BidiFormatter;
    .locals 5

    .prologue
    .line 253
    move-object v0, p0

    new-instance v1, Landroid/support/v4/text/BidiFormatter$Builder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroid/support/v4/text/BidiFormatter$Builder;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v1}, Landroid/support/v4/text/BidiFormatter$Builder;->build()Landroid/support/v4/text/BidiFormatter;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getInstance(Z)Landroid/support/v4/text/BidiFormatter;
    .locals 5

    .prologue
    .line 244
    move v0, p0

    new-instance v1, Landroid/support/v4/text/BidiFormatter$Builder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move v3, v0

    invoke-direct {v2, v3}, Landroid/support/v4/text/BidiFormatter$Builder;-><init>(Z)V

    invoke-virtual {v1}, Landroid/support/v4/text/BidiFormatter$Builder;->build()Landroid/support/v4/text/BidiFormatter;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method private static isRtlLocale(Ljava/util/Locale;)Z
    .locals 3

    .prologue
    .line 515
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private markAfter(Ljava/lang/CharSequence;Landroid/support/v4/text/TextDirectionHeuristicCompat;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 299
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v2

    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v1

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-interface {v4, v5, v6, v7}, Landroid/support/v4/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v4

    move v3, v4

    .line 301
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    if-nez v4, :cond_1

    move v4, v3

    if-nez v4, :cond_0

    move-object v4, v1

    invoke-static {v4}, Landroid/support/v4/text/BidiFormatter;->getExitDir(Ljava/lang/CharSequence;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 302
    :cond_0
    sget-object v4, Landroid/support/v4/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    move-object v0, v4

    .line 307
    :goto_0
    return-object v0

    .line 304
    :cond_1
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    if-eqz v4, :cond_3

    move v4, v3

    if-eqz v4, :cond_2

    move-object v4, v1

    invoke-static {v4}, Landroid/support/v4/text/BidiFormatter;->getExitDir(Ljava/lang/CharSequence;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 305
    :cond_2
    sget-object v4, Landroid/support/v4/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    move-object v0, v4

    goto :goto_0

    .line 307
    :cond_3
    const-string v4, ""

    move-object v0, v4

    goto :goto_0
.end method

.method private markBefore(Ljava/lang/CharSequence;Landroid/support/v4/text/TextDirectionHeuristicCompat;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 327
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v2

    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v1

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-interface {v4, v5, v6, v7}, Landroid/support/v4/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v4

    move v3, v4

    .line 329
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    if-nez v4, :cond_1

    move v4, v3

    if-nez v4, :cond_0

    move-object v4, v1

    invoke-static {v4}, Landroid/support/v4/text/BidiFormatter;->getEntryDir(Ljava/lang/CharSequence;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 330
    :cond_0
    sget-object v4, Landroid/support/v4/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    move-object v0, v4

    .line 335
    :goto_0
    return-object v0

    .line 332
    :cond_1
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    if-eqz v4, :cond_3

    move v4, v3

    if-eqz v4, :cond_2

    move-object v4, v1

    invoke-static {v4}, Landroid/support/v4/text/BidiFormatter;->getEntryDir(Ljava/lang/CharSequence;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 333
    :cond_2
    sget-object v4, Landroid/support/v4/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    move-object v0, v4

    goto :goto_0

    .line 335
    :cond_3
    const-string v4, ""

    move-object v0, v4

    goto :goto_0
.end method


# virtual methods
.method public getStereoReset()Z
    .locals 3

    .prologue
    .line 279
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/text/BidiFormatter;->mFlags:I

    const/4 v2, 0x2

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRtl(Ljava/lang/CharSequence;)Z
    .locals 6

    .prologue
    .line 357
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Landroid/support/v4/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public isRtl(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 346
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/text/BidiFormatter;->isRtl(Ljava/lang/CharSequence;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public isRtlContext()Z
    .locals 2

    .prologue
    .line 271
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    move v0, v1

    return v0
.end method

.method public unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 505
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroid/support/v4/text/TextDirectionHeuristicCompat;Z)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public unicodeWrap(Ljava/lang/CharSequence;Landroid/support/v4/text/TextDirectionHeuristicCompat;)Ljava/lang/CharSequence;
    .locals 7

    .prologue
    .line 455
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroid/support/v4/text/TextDirectionHeuristicCompat;Z)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public unicodeWrap(Ljava/lang/CharSequence;Landroid/support/v4/text/TextDirectionHeuristicCompat;Z)Ljava/lang/CharSequence;
    .locals 11

    .prologue
    .line 410
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v1

    if-nez v6, :cond_0

    const/4 v6, 0x0

    move-object v0, v6

    .line 428
    :goto_0
    return-object v0

    .line 411
    :cond_0
    move-object v6, v2

    move-object v7, v1

    const/4 v8, 0x0

    move-object v9, v1

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-interface {v6, v7, v8, v9}, Landroid/support/v4/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v6

    move v4, v6

    .line 412
    new-instance v6, Landroid/text/SpannableStringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    move-object v5, v6

    .line 413
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v4/text/BidiFormatter;->getStereoReset()Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v3

    if-eqz v6, :cond_1

    .line 414
    move-object v6, v5

    move-object v7, v0

    move-object v8, v1

    move v9, v4

    if-eqz v9, :cond_3

    sget-object v9, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->RTL:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    :goto_1
    invoke-direct {v7, v8, v9}, Landroid/support/v4/text/BidiFormatter;->markBefore(Ljava/lang/CharSequence;Landroid/support/v4/text/TextDirectionHeuristicCompat;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    .line 417
    :cond_1
    move v6, v4

    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    if-eq v6, v7, :cond_5

    .line 418
    move-object v6, v5

    move v7, v4

    if-eqz v7, :cond_4

    const/16 v7, 0x202b

    :goto_2
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    .line 419
    move-object v6, v5

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    .line 420
    move-object v6, v5

    const/16 v7, 0x202c

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    .line 424
    :goto_3
    move v6, v3

    if-eqz v6, :cond_2

    .line 425
    move-object v6, v5

    move-object v7, v0

    move-object v8, v1

    move v9, v4

    if-eqz v9, :cond_6

    sget-object v9, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->RTL:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    :goto_4
    invoke-direct {v7, v8, v9}, Landroid/support/v4/text/BidiFormatter;->markAfter(Ljava/lang/CharSequence;Landroid/support/v4/text/TextDirectionHeuristicCompat;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    .line 428
    :cond_2
    move-object v6, v5

    move-object v0, v6

    goto :goto_0

    .line 414
    :cond_3
    sget-object v9, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    goto :goto_1

    .line 418
    :cond_4
    const/16 v7, 0x202a

    goto :goto_2

    .line 422
    :cond_5
    move-object v6, v5

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    goto :goto_3

    .line 425
    :cond_6
    sget-object v9, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    goto :goto_4
.end method

.method public unicodeWrap(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 7

    .prologue
    .line 482
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroid/support/v4/text/TextDirectionHeuristicCompat;Z)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public unicodeWrap(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 493
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;Z)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public unicodeWrap(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 440
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;Z)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public unicodeWrap(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;Z)Ljava/lang/String;
    .locals 8

    .prologue
    .line 390
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    .line 391
    :goto_0
    return-object v0

    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroid/support/v4/text/TextDirectionHeuristicCompat;Z)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public unicodeWrap(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7

    .prologue
    .line 468
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;Z)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method
