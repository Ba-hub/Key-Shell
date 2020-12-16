.class public final Landroid/support/v4/text/util/LinkifyCompat;
.super Ljava/lang/Object;
.source "LinkifyCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;,
        Landroid/support/v4/text/util/LinkifyCompat$LinkifyMask;
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_STRING:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/support/v4/text/util/LinkifyCompat;->EMPTY_STRING:[Ljava/lang/String;

    .line 53
    new-instance v0, Landroid/support/v4/text/util/LinkifyCompat$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/text/util/LinkifyCompat$1;-><init>()V

    sput-object v0, Landroid/support/v4/text/util/LinkifyCompat;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 495
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addLinkMovementMethod(Landroid/widget/TextView;)V
    .locals 4
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 340
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v2

    move-object v1, v2

    .line 342
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Landroid/text/method/LinkMovementMethod;

    if-nez v2, :cond_1

    .line 343
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 344
    move-object v2, v0

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 347
    :cond_1
    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .locals 9
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/regex/Pattern;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 195
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/support/v4/text/util/LinkifyCompat;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 196
    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 11
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/regex/Pattern;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/text/util/Linkify$MatchFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/text/util/Linkify$TransformFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 215
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x0

    move-object v9, v3

    move-object v10, v4

    invoke-static/range {v5 .. v10}, Landroid/support/v4/text/util/LinkifyCompat;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 216
    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 14
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/regex/Pattern;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/text/util/Linkify$MatchFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/text/util/Linkify$TransformFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 238
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v8, v0

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v8

    move-object v6, v8

    .line 240
    move-object v8, v6

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    invoke-static/range {v8 .. v13}, Landroid/support/v4/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v8

    move v7, v8

    .line 242
    move v8, v7

    if-eqz v8, :cond_0

    .line 243
    move-object v8, v0

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    move-object v8, v0

    invoke-static {v8}, Landroid/support/v4/text/util/LinkifyCompat;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 246
    :cond_0
    return-void
.end method

.method public static final addLinks(Landroid/text/Spannable;I)Z
    .locals 15
    .param p0    # Landroid/text/Spannable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 94
    move-object v0, p0

    move/from16 v1, p1

    move v7, v1

    if-nez v7, :cond_0

    .line 95
    const/4 v7, 0x0

    move v0, v7

    .line 140
    :goto_0
    return v0

    .line 98
    :cond_0
    move-object v7, v0

    const/4 v8, 0x0

    move-object v9, v0

    invoke-interface {v9}, Landroid/text/Spannable;->length()I

    move-result v9

    const-class v10, Landroid/text/style/URLSpan;

    invoke-interface {v7, v8, v9, v10}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/URLSpan;

    move-object v2, v7

    .line 100
    move-object v7, v2

    array-length v7, v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v3, v7

    :goto_1
    move v7, v3

    if-ltz v7, :cond_1

    .line 101
    move-object v7, v0

    move-object v8, v2

    move v9, v3

    aget-object v8, v8, v9

    invoke-interface {v7, v8}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 100
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 105
    :cond_1
    const/4 v7, 0x0

    move v3, v7

    .line 106
    move v7, v1

    const/4 v8, 0x4

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_2

    .line 107
    move-object v7, v0

    const/4 v8, 0x4

    invoke-static {v7, v8}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v7

    move v3, v7

    .line 110
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v7

    .line 112
    move v7, v1

    const/4 v8, 0x1

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3

    .line 113
    move-object v7, v4

    move-object v8, v0

    sget-object v9, Landroid/support/v4/util/PatternsCompat;->AUTOLINK_WEB_URL:Ljava/util/regex/Pattern;

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    const-string v13, "http://"

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    const-string v13, "https://"

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x2

    const-string v13, "rtsp://"

    aput-object v13, v11, v12

    sget-object v11, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Landroid/support/v4/text/util/LinkifyCompat;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 118
    :cond_3
    move v7, v1

    const/4 v8, 0x2

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_4

    .line 119
    move-object v7, v4

    move-object v8, v0

    sget-object v9, Landroid/support/v4/util/PatternsCompat;->AUTOLINK_EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    const-string v13, "mailto:"

    aput-object v13, v11, v12

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Landroid/support/v4/text/util/LinkifyCompat;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 124
    :cond_4
    move v7, v1

    const/16 v8, 0x8

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_5

    .line 125
    move-object v7, v4

    move-object v8, v0

    invoke-static {v7, v8}, Landroid/support/v4/text/util/LinkifyCompat;->gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 128
    :cond_5
    move-object v7, v4

    move-object v8, v0

    invoke-static {v7, v8}, Landroid/support/v4/text/util/LinkifyCompat;->pruneOverlaps(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 130
    move-object v7, v4

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_6

    .line 131
    const/4 v7, 0x0

    move v0, v7

    goto/16 :goto_0

    .line 134
    :cond_6
    move-object v7, v4

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v7

    :goto_2
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;

    move-object v6, v7

    .line 135
    move-object v7, v6

    iget-object v7, v7, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->frameworkAddedSpan:Landroid/text/style/URLSpan;

    if-nez v7, :cond_7

    .line 136
    move-object v7, v6

    iget-object v7, v7, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->url:Ljava/lang/String;

    move-object v8, v6

    iget v8, v8, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->start:I

    move-object v9, v6

    iget v9, v9, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->end:I

    move-object v10, v0

    invoke-static {v7, v8, v9, v10}, Landroid/support/v4/text/util/LinkifyCompat;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    .line 138
    :cond_7
    goto :goto_2

    .line 140
    :cond_8
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    .locals 9
    .param p0    # Landroid/text/Spannable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/regex/Pattern;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 259
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/support/v4/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
    .locals 11
    .param p0    # Landroid/text/Spannable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/regex/Pattern;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/text/util/Linkify$MatchFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/text/util/Linkify$TransformFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 280
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x0

    move-object v9, v3

    move-object v10, v4

    invoke-static/range {v5 .. v10}, Landroid/support/v4/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v5

    move v0, v5

    return v0
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
    .locals 17
    .param p0    # Landroid/text/Spannable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/regex/Pattern;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/text/util/Linkify$MatchFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/text/util/Linkify$TransformFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 304
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v13, v2

    if-nez v13, :cond_0

    const-string v13, ""

    move-object v2, v13

    .line 305
    :cond_0
    move-object v13, v3

    if-eqz v13, :cond_1

    move-object v13, v3

    array-length v13, v13

    const/4 v14, 0x1

    if-ge v13, v14, :cond_2

    .line 306
    :cond_1
    sget-object v13, Landroid/support/v4/text/util/LinkifyCompat;->EMPTY_STRING:[Ljava/lang/String;

    move-object v3, v13

    .line 309
    :cond_2
    move-object v13, v3

    array-length v13, v13

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    move-object v6, v13

    .line 310
    move-object v13, v6

    const/4 v14, 0x0

    move-object v15, v2

    sget-object v16, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 311
    const/4 v13, 0x0

    move v7, v13

    :goto_0
    move v13, v7

    move-object v14, v3

    array-length v14, v14

    if-ge v13, v14, :cond_4

    .line 312
    move-object v13, v3

    move v14, v7

    aget-object v13, v13, v14

    move-object v8, v13

    .line 313
    move-object v13, v6

    move v14, v7

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    move-object v15, v8

    if-nez v15, :cond_3

    const-string v15, ""

    :goto_1
    aput-object v15, v13, v14

    .line 311
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 313
    :cond_3
    move-object v15, v8

    sget-object v16, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    goto :goto_1

    .line 316
    :cond_4
    const/4 v13, 0x0

    move v7, v13

    .line 317
    move-object v13, v1

    move-object v14, v0

    invoke-virtual {v13, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    move-object v8, v13

    .line 319
    :goto_2
    move-object v13, v8

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 320
    move-object v13, v8

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->start()I

    move-result v13

    move v9, v13

    .line 321
    move-object v13, v8

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v13

    move v10, v13

    .line 322
    const/4 v13, 0x1

    move v11, v13

    .line 324
    move-object v13, v4

    if-eqz v13, :cond_5

    .line 325
    move-object v13, v4

    move-object v14, v0

    move v15, v9

    move/from16 v16, v10

    invoke-interface/range {v13 .. v16}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v13

    move v11, v13

    .line 328
    :cond_5
    move v13, v11

    if-eqz v13, :cond_6

    .line 329
    move-object v13, v8

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    move-object v14, v6

    move-object v15, v8

    move-object/from16 v16, v5

    invoke-static/range {v13 .. v16}, Landroid/support/v4/text/util/LinkifyCompat;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v13

    move-object v12, v13

    .line 331
    move-object v13, v12

    move v14, v9

    move v15, v10

    move-object/from16 v16, v0

    invoke-static/range {v13 .. v16}, Landroid/support/v4/text/util/LinkifyCompat;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    .line 332
    const/4 v13, 0x1

    move v7, v13

    .line 334
    :cond_6
    goto :goto_2

    .line 336
    :cond_7
    move v13, v7

    move v0, v13

    return v0
.end method

.method public static final addLinks(Landroid/widget/TextView;I)Z
    .locals 6
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 155
    move-object v0, p0

    move v1, p1

    move v4, v1

    if-nez v4, :cond_0

    .line 156
    const/4 v4, 0x0

    move v0, v4

    .line 178
    :goto_0
    return v0

    .line 159
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    move-object v2, v4

    .line 161
    move-object v4, v2

    instance-of v4, v4, Landroid/text/Spannable;

    if-eqz v4, :cond_2

    .line 162
    move-object v4, v2

    check-cast v4, Landroid/text/Spannable;

    move v5, v1

    invoke-static {v4, v5}, Landroid/support/v4/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 163
    move-object v4, v0

    invoke-static {v4}, Landroid/support/v4/text/util/LinkifyCompat;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 164
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 167
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 169
    :cond_2
    move-object v4, v2

    invoke-static {v4}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v4

    move-object v3, v4

    .line 171
    move-object v4, v3

    move v5, v1

    invoke-static {v4, v5}, Landroid/support/v4/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 172
    move-object v4, v0

    invoke-static {v4}, Landroid/support/v4/text/util/LinkifyCompat;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 173
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 178
    :cond_3
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method private static applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V
    .locals 11

    .prologue
    .line 400
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    new-instance v5, Landroid/text/style/URLSpan;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    .line 402
    move-object v5, v3

    move-object v6, v4

    move v7, v1

    move v8, v2

    const/16 v9, 0x21

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 403
    return-void
.end method

.method private static gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 380
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v11, v2

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    move-object v6, v11

    .line 382
    :goto_0
    move-object v11, v6

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 383
    move-object v11, v6

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    move v7, v11

    .line 384
    move-object v11, v6

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->end()I

    move-result v11

    move v8, v11

    .line 386
    move-object v11, v4

    if-eqz v11, :cond_0

    move-object v11, v4

    move-object v12, v1

    move v13, v7

    move v14, v8

    invoke-interface {v11, v12, v13, v14}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 387
    :cond_0
    new-instance v11, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;-><init>()V

    move-object v9, v11

    .line 388
    move-object v11, v6

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    move-object v12, v3

    move-object v13, v6

    move-object v14, v5

    invoke-static {v11, v12, v13, v14}, Landroid/support/v4/text/util/LinkifyCompat;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 390
    move-object v11, v9

    move-object v12, v10

    iput-object v12, v11, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->url:Ljava/lang/String;

    .line 391
    move-object v11, v9

    move v12, v7

    iput v12, v11, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->start:I

    .line 392
    move-object v11, v9

    move v12, v8

    iput v12, v11, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->end:I

    .line 394
    move-object v11, v0

    move-object v12, v9

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 396
    :cond_1
    goto :goto_0

    .line 397
    :cond_2
    return-void
.end method

.method private static final gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 406
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v11, v1

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v2, v11

    .line 408
    const/4 v11, 0x0

    move v4, v11

    .line 411
    :goto_0
    move-object v11, v2

    :try_start_0
    invoke-static {v11}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    move-object v3, v12

    if-eqz v11, :cond_0

    .line 412
    move-object v11, v2

    move-object v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    move v5, v11

    .line 414
    move v11, v5

    if-gez v11, :cond_1

    .line 444
    :cond_0
    :goto_1
    return-void

    .line 418
    :cond_1
    new-instance v11, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;-><init>()V

    move-object v6, v11

    .line 419
    move-object v11, v3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    move v7, v11

    .line 420
    move v11, v5

    move v12, v7

    add-int/2addr v11, v12

    move v8, v11

    .line 422
    move-object v11, v6

    move v12, v4

    move v13, v5

    add-int/2addr v12, v13

    iput v12, v11, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->start:I

    .line 423
    move-object v11, v6

    move v12, v4

    move v13, v8

    add-int/2addr v12, v13

    iput v12, v11, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->end:I

    .line 424
    move-object v11, v2

    move v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    move-object v2, v11

    .line 425
    move v11, v4

    move v12, v8

    add-int/2addr v11, v12

    move v4, v11

    .line 427
    const/4 v11, 0x0

    move-object v9, v11

    .line 430
    move-object v11, v3

    :try_start_1
    const-string v12, "UTF-8"

    invoke-static {v11, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    move-object v9, v11

    .line 435
    move-object v11, v6

    :try_start_2
    new-instance v12, Ljava/lang/StringBuilder;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "geo:0,0?q="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v9

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->url:Ljava/lang/String;

    .line 436
    move-object v11, v0

    move-object v12, v6

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v11

    .line 437
    goto :goto_0

    .line 431
    :catch_0
    move-exception v11

    move-object v10, v11

    .line 432
    goto :goto_0

    .line 438
    :catch_1
    move-exception v11

    move-object v5, v11

    .line 442
    goto :goto_1
.end method

.method private static makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;
    .locals 14
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/text/util/Linkify$TransformFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 351
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v6, v3

    if-eqz v6, :cond_0

    .line 352
    move-object v6, v3

    move-object v7, v2

    move-object v8, v0

    invoke-interface {v6, v7, v8}, Landroid/text/util/Linkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 355
    :cond_0
    const/4 v6, 0x0

    move v4, v6

    .line 357
    const/4 v6, 0x0

    move v5, v6

    :goto_0
    move v6, v5

    move-object v7, v1

    array-length v7, v7

    if-ge v6, v7, :cond_1

    .line 358
    move-object v6, v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v9, v1

    move v10, v5

    aget-object v9, v9, v10

    const/4 v10, 0x0

    move-object v11, v1

    move v12, v5

    aget-object v11, v11, v12

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual/range {v6 .. v11}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 359
    const/4 v6, 0x1

    move v4, v6

    .line 362
    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v1

    move v10, v5

    aget-object v9, v9, v10

    const/4 v10, 0x0

    move-object v11, v1

    move v12, v5

    aget-object v11, v11, v12

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual/range {v6 .. v11}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_1

    .line 363
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v1

    move v8, v5

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    move-object v8, v1

    move v9, v5

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 370
    :cond_1
    move v6, v4

    if-nez v6, :cond_2

    move-object v6, v1

    array-length v6, v6

    if-lez v6, :cond_2

    .line 371
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v1

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 374
    :cond_2
    move-object v6, v0

    move-object v0, v6

    return-object v0

    .line 357
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private static final pruneOverlaps(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 448
    move-object v0, p0

    move-object v1, p1

    move-object v9, v1

    const/4 v10, 0x0

    move-object v11, v1

    invoke-interface {v11}, Landroid/text/Spannable;->length()I

    move-result v11

    const-class v12, Landroid/text/style/URLSpan;

    invoke-interface {v9, v10, v11, v12}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/URLSpan;

    move-object v2, v9

    .line 449
    const/4 v9, 0x0

    move v3, v9

    :goto_0
    move v9, v3

    move-object v10, v2

    array-length v10, v10

    if-ge v9, v10, :cond_0

    .line 450
    new-instance v9, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;-><init>()V

    move-object v4, v9

    .line 451
    move-object v9, v4

    move-object v10, v2

    move v11, v3

    aget-object v10, v10, v11

    iput-object v10, v9, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->frameworkAddedSpan:Landroid/text/style/URLSpan;

    .line 452
    move-object v9, v4

    move-object v10, v1

    move-object v11, v2

    move v12, v3

    aget-object v11, v11, v12

    invoke-interface {v10, v11}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    iput v10, v9, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->start:I

    .line 453
    move-object v9, v4

    move-object v10, v1

    move-object v11, v2

    move v12, v3

    aget-object v11, v11, v12

    invoke-interface {v10, v11}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    iput v10, v9, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->end:I

    .line 454
    move-object v9, v0

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 449
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 457
    :cond_0
    move-object v9, v0

    sget-object v10, Landroid/support/v4/text/util/LinkifyCompat;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 459
    move-object v9, v0

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v3, v9

    .line 460
    const/4 v9, 0x0

    move v4, v9

    .line 462
    :goto_1
    move v9, v4

    move v10, v3

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    if-ge v9, v10, :cond_6

    .line 463
    move-object v9, v0

    move v10, v4

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;

    move-object v5, v9

    .line 464
    move-object v9, v0

    move v10, v4

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;

    move-object v6, v9

    .line 465
    const/4 v9, -0x1

    move v7, v9

    .line 467
    move-object v9, v5

    iget v9, v9, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->start:I

    move-object v10, v6

    iget v10, v10, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->start:I

    if-gt v9, v10, :cond_5

    move-object v9, v5

    iget v9, v9, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->end:I

    move-object v10, v6

    iget v10, v10, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->start:I

    if-le v9, v10, :cond_5

    .line 468
    move-object v9, v6

    iget v9, v9, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->end:I

    move-object v10, v5

    iget v10, v10, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->end:I

    if-gt v9, v10, :cond_3

    .line 469
    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v7, v9

    .line 476
    :cond_1
    :goto_2
    move v9, v7

    const/4 v10, -0x1

    if-eq v9, v10, :cond_5

    .line 477
    move-object v9, v0

    move v10, v7

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;

    iget-object v9, v9, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->frameworkAddedSpan:Landroid/text/style/URLSpan;

    move-object v8, v9

    .line 478
    move-object v9, v8

    if-eqz v9, :cond_2

    .line 479
    move-object v9, v1

    move-object v10, v8

    invoke-interface {v9, v10}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 481
    :cond_2
    move-object v9, v0

    move v10, v7

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    .line 482
    add-int/lit8 v3, v3, -0x1

    .line 483
    goto :goto_1

    .line 470
    :cond_3
    move-object v9, v5

    iget v9, v9, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->end:I

    move-object v10, v5

    iget v10, v10, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->start:I

    sub-int/2addr v9, v10

    move-object v10, v6

    iget v10, v10, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->end:I

    move-object v11, v6

    iget v11, v11, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->start:I

    sub-int/2addr v10, v11

    if-le v9, v10, :cond_4

    .line 471
    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v7, v9

    goto :goto_2

    .line 472
    :cond_4
    move-object v9, v5

    iget v9, v9, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->end:I

    move-object v10, v5

    iget v10, v10, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->start:I

    sub-int/2addr v9, v10

    move-object v10, v6

    iget v10, v10, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->end:I

    move-object v11, v6

    iget v11, v11, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->start:I

    sub-int/2addr v10, v11

    if-ge v9, v10, :cond_1

    .line 473
    move v9, v4

    move v7, v9

    goto :goto_2

    .line 488
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 489
    goto/16 :goto_1

    .line 490
    :cond_6
    return-void
.end method
