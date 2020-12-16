.class public Landroid/support/v4/widget/SimpleCursorAdapter;
.super Landroid/support/v4/widget/ResourceCursorAdapter;
.source "SimpleCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SimpleCursorAdapter$CursorToStringConverter;,
        Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;
    }
.end annotation


# instance fields
.field private mCursorToStringConverter:Landroid/support/v4/widget/SimpleCursorAdapter$CursorToStringConverter;

.field protected mFrom:[I
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field mOriginalFrom:[Ljava/lang/String;

.field private mStringConversionColumn:I

.field protected mTo:[I
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field private mViewBinder:Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Landroid/support/v4/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 52
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroid/support/v4/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    .line 69
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Landroid/support/v4/widget/SimpleCursorAdapter;->mTo:[I

    .line 70
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Landroid/support/v4/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    .line 71
    move-object v6, v0

    move-object v7, v3

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Landroid/support/v4/widget/SimpleCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V
    .locals 12

    .prologue
    .line 94
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move-object v10, v3

    move v11, v6

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/support/v4/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;I)V

    .line 52
    move-object v7, v0

    const/4 v8, -0x1

    iput v8, v7, Landroid/support/v4/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    .line 95
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Landroid/support/v4/widget/SimpleCursorAdapter;->mTo:[I

    .line 96
    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Landroid/support/v4/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    .line 97
    move-object v7, v0

    move-object v8, v3

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Landroid/support/v4/widget/SimpleCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method private findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 315
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v1

    if-eqz v5, :cond_3

    .line 317
    move-object v5, v2

    array-length v5, v5

    move v4, v5

    .line 318
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/SimpleCursorAdapter;->mFrom:[I

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/SimpleCursorAdapter;->mFrom:[I

    array-length v5, v5

    move v6, v4

    if-eq v5, v6, :cond_1

    .line 319
    :cond_0
    move-object v5, v0

    move v6, v4

    new-array v6, v6, [I

    iput-object v6, v5, Landroid/support/v4/widget/SimpleCursorAdapter;->mFrom:[I

    .line 321
    :cond_1
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v4

    if-ge v5, v6, :cond_2

    .line 322
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/SimpleCursorAdapter;->mFrom:[I

    move v6, v3

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    aget-object v8, v8, v9

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v6

    .line 321
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 327
    :cond_2
    :goto_1
    return-void

    .line 325
    :cond_3
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/support/v4/widget/SimpleCursorAdapter;->mFrom:[I

    goto :goto_1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 18

    .prologue
    .line 125
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/SimpleCursorAdapter;->mViewBinder:Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;

    move-object v4, v12

    .line 126
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/SimpleCursorAdapter;->mTo:[I

    array-length v12, v12

    move v5, v12

    .line 127
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/SimpleCursorAdapter;->mFrom:[I

    move-object v6, v12

    .line 128
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/widget/SimpleCursorAdapter;->mTo:[I

    move-object v7, v12

    .line 130
    const/4 v12, 0x0

    move v8, v12

    :goto_0
    move v12, v8

    move v13, v5

    if-ge v12, v13, :cond_5

    .line 131
    move-object v12, v1

    move-object v13, v7

    move v14, v8

    aget v13, v13, v14

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    move-object v9, v12

    .line 132
    move-object v12, v9

    if-eqz v12, :cond_2

    .line 133
    const/4 v12, 0x0

    move v10, v12

    .line 134
    move-object v12, v4

    if-eqz v12, :cond_0

    .line 135
    move-object v12, v4

    move-object v13, v9

    move-object v14, v3

    move-object v15, v6

    move/from16 v16, v8

    aget v15, v15, v16

    invoke-interface {v12, v13, v14, v15}, Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;->setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z

    move-result v12

    move v10, v12

    .line 138
    :cond_0
    move v12, v10

    if-nez v12, :cond_2

    .line 139
    move-object v12, v3

    move-object v13, v6

    move v14, v8

    aget v13, v13, v14

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object v11, v12

    .line 140
    move-object v12, v11

    if-nez v12, :cond_1

    .line 141
    const-string v12, ""

    move-object v11, v12

    .line 144
    :cond_1
    move-object v12, v9

    instance-of v12, v12, Landroid/widget/TextView;

    if-eqz v12, :cond_3

    .line 145
    move-object v12, v0

    move-object v13, v9

    check-cast v13, Landroid/widget/TextView;

    move-object v14, v11

    invoke-virtual {v12, v13, v14}, Landroid/support/v4/widget/SimpleCursorAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 130
    :cond_2
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 146
    :cond_3
    move-object v12, v9

    instance-of v12, v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_4

    .line 147
    move-object v12, v0

    move-object v13, v9

    check-cast v13, Landroid/widget/ImageView;

    move-object v14, v11

    invoke-virtual {v12, v13, v14}, Landroid/support/v4/widget/SimpleCursorAdapter;->setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_1

    .line 149
    :cond_4
    new-instance v12, Ljava/lang/IllegalStateException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v9

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " is not a "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " view that can be bounds by this SimpleCursorAdapter"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 155
    :cond_5
    return-void
.end method

.method public changeCursorAndColumns(Landroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 7

    .prologue
    .line 350
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroid/support/v4/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    .line 351
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroid/support/v4/widget/SimpleCursorAdapter;->mTo:[I

    .line 355
    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/support/v4/widget/SimpleCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 356
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroid/support/v4/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 357
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 298
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SimpleCursorAdapter;->mCursorToStringConverter:Landroid/support/v4/widget/SimpleCursorAdapter$CursorToStringConverter;

    if-eqz v2, :cond_0

    .line 299
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/SimpleCursorAdapter;->mCursorToStringConverter:Landroid/support/v4/widget/SimpleCursorAdapter$CursorToStringConverter;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/support/v4/widget/SimpleCursorAdapter$CursorToStringConverter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    .line 304
    :goto_0
    return-object v0

    .line 300
    :cond_0
    move-object v2, v0

    iget v2, v2, Landroid/support/v4/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_1

    .line 301
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 304
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v4/widget/ResourceCursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public getCursorToStringConverter()Landroid/support/v4/widget/SimpleCursorAdapter$CursorToStringConverter;
    .locals 2

    .prologue
    .line 266
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/SimpleCursorAdapter;->mCursorToStringConverter:Landroid/support/v4/widget/SimpleCursorAdapter$CursorToStringConverter;

    move-object v0, v1

    return-object v0
.end method

.method public getStringConversionColumn()I
    .locals 2

    .prologue
    .line 232
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    move v0, v1

    return v0
.end method

.method public getViewBinder()Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;
    .locals 2

    .prologue
    .line 166
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/SimpleCursorAdapter;->mViewBinder:Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;

    move-object v0, v1

    return-object v0
.end method

.method public setCursorToStringConverter(Landroid/support/v4/widget/SimpleCursorAdapter$CursorToStringConverter;)V
    .locals 4

    .prologue
    .line 282
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/widget/SimpleCursorAdapter;->mCursorToStringConverter:Landroid/support/v4/widget/SimpleCursorAdapter$CursorToStringConverter;

    .line 283
    return-void
.end method

.method public setStringConversionColumn(I)V
    .locals 4

    .prologue
    .line 250
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    .line 251
    return-void
.end method

.method public setViewBinder(Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;)V
    .locals 4

    .prologue
    .line 179
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/widget/SimpleCursorAdapter;->mViewBinder:Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;

    .line 180
    return-void
.end method

.method public setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 199
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    move-object v5, v2

    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 201
    move-object v4, v1

    move-object v5, v2

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 217
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 5

    .prologue
    .line 334
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/support/v4/widget/SimpleCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 335
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v4/widget/ResourceCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method
