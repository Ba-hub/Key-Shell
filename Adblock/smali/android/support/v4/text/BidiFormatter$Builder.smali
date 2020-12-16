.class public final Landroid/support/v4/text/BidiFormatter$Builder;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/text/BidiFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mFlags:I

.field private mIsRtlContext:Z

.field private mTextDirectionHeuristicCompat:Landroid/support/v4/text/TextDirectionHeuristicCompat;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 138
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 139
    move-object v1, v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/text/BidiFormatter;->access$000(Ljava/util/Locale;)Z

    move-result v2

    invoke-direct {v1, v2}, Landroid/support/v4/text/BidiFormatter$Builder;->initialize(Z)V

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 4

    .prologue
    .line 156
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 157
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v4/text/BidiFormatter;->access$000(Ljava/util/Locale;)Z

    move-result v3

    invoke-direct {v2, v3}, Landroid/support/v4/text/BidiFormatter$Builder;->initialize(Z)V

    .line 158
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4

    .prologue
    .line 147
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 148
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v4/text/BidiFormatter$Builder;->initialize(Z)V

    .line 149
    return-void
.end method

.method private static getDefaultInstanceFromContext(Z)Landroid/support/v4/text/BidiFormatter;
    .locals 2

    .prologue
    .line 197
    move v0, p0

    move v1, v0

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/support/v4/text/BidiFormatter;->access$200()Landroid/support/v4/text/BidiFormatter;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    invoke-static {}, Landroid/support/v4/text/BidiFormatter;->access$300()Landroid/support/v4/text/BidiFormatter;

    move-result-object v1

    goto :goto_0
.end method

.method private initialize(Z)V
    .locals 4

    .prologue
    .line 166
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v4/text/BidiFormatter$Builder;->mIsRtlContext:Z

    .line 167
    move-object v2, v0

    invoke-static {}, Landroid/support/v4/text/BidiFormatter;->access$100()Landroid/support/v4/text/TextDirectionHeuristicCompat;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    .line 168
    move-object v2, v0

    const/4 v3, 0x2

    iput v3, v2, Landroid/support/v4/text/BidiFormatter$Builder;->mFlags:I

    .line 169
    return-void
.end method


# virtual methods
.method public build()Landroid/support/v4/text/BidiFormatter;
    .locals 8

    .prologue
    .line 204
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/text/BidiFormatter$Builder;->mFlags:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    .line 205
    invoke-static {}, Landroid/support/v4/text/BidiFormatter;->access$100()Landroid/support/v4/text/TextDirectionHeuristicCompat;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 206
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/text/BidiFormatter$Builder;->mIsRtlContext:Z

    invoke-static {v1}, Landroid/support/v4/text/BidiFormatter$Builder;->getDefaultInstanceFromContext(Z)Landroid/support/v4/text/BidiFormatter;

    move-result-object v1

    move-object v0, v1

    .line 208
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/support/v4/text/BidiFormatter;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/text/BidiFormatter$Builder;->mIsRtlContext:Z

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/text/BidiFormatter$Builder;->mFlags:I

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/support/v4/text/BidiFormatter;-><init>(ZILandroid/support/v4/text/TextDirectionHeuristicCompat;Landroid/support/v4/text/BidiFormatter$1;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public setTextDirectionHeuristic(Landroid/support/v4/text/TextDirectionHeuristicCompat;)Landroid/support/v4/text/BidiFormatter$Builder;
    .locals 4

    .prologue
    .line 192
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    .line 193
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public stereoReset(Z)Landroid/support/v4/text/BidiFormatter$Builder;
    .locals 6

    .prologue
    .line 176
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    .line 177
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/support/v4/text/BidiFormatter$Builder;->mFlags:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/support/v4/text/BidiFormatter$Builder;->mFlags:I

    .line 181
    :goto_0
    move-object v2, v0

    move-object v0, v2

    return-object v0

    .line 179
    :cond_0
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/support/v4/text/BidiFormatter$Builder;->mFlags:I

    const/4 v4, -0x3

    and-int/lit8 v3, v3, -0x3

    iput v3, v2, Landroid/support/v4/text/BidiFormatter$Builder;->mFlags:I

    goto :goto_0
.end method
