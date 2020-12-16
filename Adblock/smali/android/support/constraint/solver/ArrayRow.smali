.class public Landroid/support/constraint/solver/ArrayRow;
.super Ljava/lang/Object;
.source "ArrayRow.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field constantValue:F

.field isSimpleDefinition:Z

.field used:Z

.field variable:Landroid/support/constraint/solver/SolverVariable;

.field final variables:Landroid/support/constraint/solver/ArrayLinkedVariables;


# direct methods
.method public constructor <init>(Landroid/support/constraint/solver/Cache;)V
    .locals 8

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 22
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    .line 23
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 24
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/constraint/solver/ArrayRow;->used:Z

    .line 28
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    .line 31
    move-object v2, v0

    new-instance v3, Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroid/support/constraint/solver/ArrayLinkedVariables;-><init>(Landroid/support/constraint/solver/ArrayRow;Landroid/support/constraint/solver/Cache;)V

    iput-object v3, v2, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    .line 32
    return-void
.end method


# virtual methods
.method public addError(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/ArrayRow;
    .locals 6

    .prologue
    .line 284
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v4, v1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v5}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 285
    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v4, v2

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v3, v4, v5}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 286
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method addSingleError(Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;
    .locals 6

    .prologue
    .line 155
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v4, v1

    move v5, v2

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 156
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method createRowCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;
    .locals 13

    .prologue
    .line 238
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object v8, v2

    move-object v9, v5

    if-ne v8, v9, :cond_0

    .line 242
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v9, v1

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9, v10}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 243
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v9, v6

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9, v10}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 244
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v9, v2

    const/high16 v10, -0x40000000    # -2.0f

    invoke-virtual {v8, v9, v10}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 245
    move-object v8, v0

    move-object v0, v8

    .line 280
    :goto_0
    return-object v0

    .line 247
    :cond_0
    move v8, v4

    const/high16 v9, 0x3f000000    # 0.5f

    cmpl-float v8, v8, v9

    if-nez v8, :cond_3

    .line 254
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v9, v1

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9, v10}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 255
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v9, v2

    const/high16 v10, -0x40800000    # -1.0f

    invoke-virtual {v8, v9, v10}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 256
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v9, v5

    const/high16 v10, -0x40800000    # -1.0f

    invoke-virtual {v8, v9, v10}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 257
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v9, v6

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9, v10}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 258
    move v8, v3

    if-gtz v8, :cond_1

    move v8, v7

    if-lez v8, :cond_2

    .line 259
    :cond_1
    move-object v8, v0

    move v9, v3

    neg-int v9, v9

    move v10, v7

    add-int/2addr v9, v10

    int-to-float v9, v9

    iput v9, v8, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 280
    :cond_2
    :goto_1
    move-object v8, v0

    move-object v0, v8

    goto :goto_0

    .line 261
    :cond_3
    move v8, v4

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_4

    .line 263
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v9, v1

    const/high16 v10, -0x40800000    # -1.0f

    invoke-virtual {v8, v9, v10}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 264
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v9, v2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9, v10}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 265
    move-object v8, v0

    move v9, v3

    int-to-float v9, v9

    iput v9, v8, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    goto :goto_1

    .line 266
    :cond_4
    move v8, v4

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_5

    .line 268
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v9, v5

    const/high16 v10, -0x40800000    # -1.0f

    invoke-virtual {v8, v9, v10}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 269
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v9, v6

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9, v10}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 270
    move-object v8, v0

    move v9, v7

    int-to-float v9, v9

    iput v9, v8, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    goto :goto_1

    .line 272
    :cond_5
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v9, v1

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    move v12, v4

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 273
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v9, v2

    const/high16 v10, -0x40800000    # -1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    move v12, v4

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 274
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v9, v5

    const/high16 v10, -0x40800000    # -1.0f

    move v11, v4

    mul-float/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 275
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v9, v6

    const/high16 v10, 0x3f800000    # 1.0f

    move v11, v4

    mul-float/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 276
    move v8, v3

    if-gtz v8, :cond_6

    move v8, v7

    if-lez v8, :cond_2

    .line 277
    :cond_6
    move-object v8, v0

    move v9, v3

    neg-int v9, v9

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    move v11, v4

    sub-float/2addr v10, v11

    mul-float/2addr v9, v10

    move v10, v7

    int-to-float v10, v10

    move v11, v4

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iput v9, v8, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    goto/16 :goto_1
.end method

.method createRowDefinition(Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;
    .locals 5

    .prologue
    .line 116
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    .line 117
    move-object v3, v1

    move v4, v2

    int-to-float v4, v4

    iput v4, v3, Landroid/support/constraint/solver/SolverVariable;->computedValue:F

    .line 118
    move-object v3, v0

    move v4, v2

    int-to-float v4, v4

    iput v4, v3, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 119
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    .line 120
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method createRowDimensionPercent(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;F)Landroid/support/constraint/solver/ArrayRow;
    .locals 9

    .prologue
    .line 291
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v6, v1

    const/high16 v7, -0x40800000    # -1.0f

    invoke-virtual {v5, v6, v7}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 292
    move-object v5, v0

    iget-object v5, v5, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v6, v2

    const/high16 v7, 0x3f800000    # 1.0f

    move v8, v4

    sub-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 293
    move-object v5, v0

    iget-object v5, v5, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v6, v3

    move v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 294
    move-object v5, v0

    move-object v0, v5

    return-object v0
.end method

.method public createRowDimensionRatio(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;F)Landroid/support/constraint/solver/ArrayRow;
    .locals 9

    .prologue
    .line 311
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v7, v1

    const/high16 v8, -0x40800000    # -1.0f

    invoke-virtual {v6, v7, v8}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 312
    move-object v6, v0

    iget-object v6, v6, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v7, v2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7, v8}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 313
    move-object v6, v0

    iget-object v6, v6, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v7, v3

    move v8, v5

    invoke-virtual {v6, v7, v8}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 314
    move-object v6, v0

    iget-object v6, v6, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v7, v4

    move v8, v5

    neg-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 315
    move-object v6, v0

    move-object v0, v6

    return-object v0
.end method

.method public createRowEqualDimension(FFFLandroid/support/constraint/solver/SolverVariable;ILandroid/support/constraint/solver/SolverVariable;ILandroid/support/constraint/solver/SolverVariable;ILandroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;
    .locals 21

    .prologue
    .line 211
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    move/from16 v17, v4

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_0

    move/from16 v17, v3

    move/from16 v18, v5

    cmpl-float v17, v17, v18

    if-nez v17, :cond_1

    .line 215
    :cond_0
    move-object/from16 v17, v2

    move/from16 v18, v7

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v19, v9

    sub-int v18, v18, v19

    move/from16 v19, v11

    add-int v18, v18, v19

    move/from16 v19, v13

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 216
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object/from16 v17, v0

    move-object/from16 v18, v6

    const/high16 v19, 0x3f800000    # 1.0f

    invoke-virtual/range {v17 .. v19}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 217
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object/from16 v17, v0

    move-object/from16 v18, v8

    const/high16 v19, -0x40800000    # -1.0f

    invoke-virtual/range {v17 .. v19}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 218
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object/from16 v17, v0

    move-object/from16 v18, v12

    const/high16 v19, 0x3f800000    # 1.0f

    invoke-virtual/range {v17 .. v19}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 219
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object/from16 v17, v0

    move-object/from16 v18, v10

    const/high16 v19, -0x40800000    # -1.0f

    invoke-virtual/range {v17 .. v19}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 233
    :goto_0
    move-object/from16 v17, v2

    move-object/from16 v2, v17

    return-object v2

    .line 221
    :cond_1
    move/from16 v17, v3

    move/from16 v18, v4

    div-float v17, v17, v18

    move/from16 v14, v17

    .line 222
    move/from16 v17, v5

    move/from16 v18, v4

    div-float v17, v17, v18

    move/from16 v15, v17

    .line 223
    move/from16 v17, v14

    move/from16 v18, v15

    div-float v17, v17, v18

    move/from16 v16, v17

    .line 227
    move-object/from16 v17, v2

    move/from16 v18, v7

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v19, v9

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v16

    move/from16 v20, v11

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v19, v16

    move/from16 v20, v13

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 228
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object/from16 v17, v0

    move-object/from16 v18, v6

    const/high16 v19, 0x3f800000    # 1.0f

    invoke-virtual/range {v17 .. v19}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 229
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object/from16 v17, v0

    move-object/from16 v18, v8

    const/high16 v19, -0x40800000    # -1.0f

    invoke-virtual/range {v17 .. v19}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 230
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object/from16 v17, v0

    move-object/from16 v18, v12

    move/from16 v19, v16

    invoke-virtual/range {v17 .. v19}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 231
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object/from16 v17, v0

    move-object/from16 v18, v10

    move/from16 v19, v16

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    goto/16 :goto_0
.end method

.method public createRowEquals(Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;
    .locals 6

    .prologue
    .line 124
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, v2

    if-gez v3, :cond_0

    .line 125
    move-object v3, v0

    const/4 v4, -0x1

    move v5, v2

    mul-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, v3, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 126
    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v4, v1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v5}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 131
    :goto_0
    move-object v3, v0

    move-object v0, v3

    return-object v0

    .line 128
    :cond_0
    move-object v3, v0

    move v4, v2

    int-to-float v4, v4

    iput v4, v3, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 129
    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v4, v1

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v3, v4, v5}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    goto :goto_0
.end method

.method public createRowEquals(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;
    .locals 9

    .prologue
    .line 135
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    const/4 v6, 0x0

    move v4, v6

    .line 136
    move v6, v3

    if-eqz v6, :cond_1

    .line 137
    move v6, v3

    move v5, v6

    .line 138
    move v6, v5

    if-gez v6, :cond_0

    .line 139
    const/4 v6, -0x1

    move v7, v5

    mul-int/2addr v6, v7

    move v5, v6

    .line 140
    const/4 v6, 0x1

    move v4, v6

    .line 142
    :cond_0
    move-object v6, v0

    move v7, v5

    int-to-float v7, v7

    iput v7, v6, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 144
    :cond_1
    move v6, v4

    if-nez v6, :cond_2

    .line 145
    move-object v6, v0

    iget-object v6, v6, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v7, v1

    const/high16 v8, -0x40800000    # -1.0f

    invoke-virtual {v6, v7, v8}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 146
    move-object v6, v0

    iget-object v6, v6, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v7, v2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7, v8}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 151
    :goto_0
    move-object v6, v0

    move-object v0, v6

    return-object v0

    .line 148
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v7, v1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7, v8}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 149
    move-object v6, v0

    iget-object v6, v6, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v7, v2

    const/high16 v8, -0x40800000    # -1.0f

    invoke-virtual {v6, v7, v8}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    goto :goto_0
.end method

.method public createRowGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;
    .locals 10

    .prologue
    .line 162
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    const/4 v7, 0x0

    move v5, v7

    .line 163
    move v7, v4

    if-eqz v7, :cond_1

    .line 164
    move v7, v4

    move v6, v7

    .line 165
    move v7, v6

    if-gez v7, :cond_0

    .line 166
    const/4 v7, -0x1

    move v8, v6

    mul-int/2addr v7, v8

    move v6, v7

    .line 167
    const/4 v7, 0x1

    move v5, v7

    .line 169
    :cond_0
    move-object v7, v0

    move v8, v6

    int-to-float v8, v8

    iput v8, v7, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 171
    :cond_1
    move v7, v5

    if-nez v7, :cond_2

    .line 172
    move-object v7, v0

    iget-object v7, v7, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v8, v1

    const/high16 v9, -0x40800000    # -1.0f

    invoke-virtual {v7, v8, v9}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 173
    move-object v7, v0

    iget-object v7, v7, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v8, v2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8, v9}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 174
    move-object v7, v0

    iget-object v7, v7, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v8, v3

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8, v9}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 180
    :goto_0
    move-object v7, v0

    move-object v0, v7

    return-object v0

    .line 176
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v8, v1

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8, v9}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 177
    move-object v7, v0

    iget-object v7, v7, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v8, v2

    const/high16 v9, -0x40800000    # -1.0f

    invoke-virtual {v7, v8, v9}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 178
    move-object v7, v0

    iget-object v7, v7, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v8, v3

    const/high16 v9, -0x40800000    # -1.0f

    invoke-virtual {v7, v8, v9}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    goto :goto_0
.end method

.method public createRowLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;
    .locals 10

    .prologue
    .line 185
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    const/4 v7, 0x0

    move v5, v7

    .line 186
    move v7, v4

    if-eqz v7, :cond_1

    .line 187
    move v7, v4

    move v6, v7

    .line 188
    move v7, v6

    if-gez v7, :cond_0

    .line 189
    const/4 v7, -0x1

    move v8, v6

    mul-int/2addr v7, v8

    move v6, v7

    .line 190
    const/4 v7, 0x1

    move v5, v7

    .line 192
    :cond_0
    move-object v7, v0

    move v8, v6

    int-to-float v8, v8

    iput v8, v7, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 194
    :cond_1
    move v7, v5

    if-nez v7, :cond_2

    .line 195
    move-object v7, v0

    iget-object v7, v7, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v8, v1

    const/high16 v9, -0x40800000    # -1.0f

    invoke-virtual {v7, v8, v9}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 196
    move-object v7, v0

    iget-object v7, v7, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v8, v2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8, v9}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 197
    move-object v7, v0

    iget-object v7, v7, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v8, v3

    const/high16 v9, -0x40800000    # -1.0f

    invoke-virtual {v7, v8, v9}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 203
    :goto_0
    move-object v7, v0

    move-object v0, v7

    return-object v0

    .line 199
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v8, v1

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8, v9}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 200
    move-object v7, v0

    iget-object v7, v7, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v8, v2

    const/high16 v9, -0x40800000    # -1.0f

    invoke-virtual {v7, v8, v9}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 201
    move-object v7, v0

    iget-object v7, v7, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v8, v3

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8, v9}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    goto :goto_0
.end method

.method ensurePositiveConstant()V
    .locals 5

    .prologue
    .line 337
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 339
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v2, v3

    iput v2, v1, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 340
    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->invert()V

    .line 342
    :cond_0
    return-void
.end method

.method hasAtLeastOnePositiveVariable()Z
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->hasAtLeastOnePositiveVariable()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method hasKeyVariable()Z
    .locals 3

    .prologue
    .line 43
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v1, v1, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v2, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method hasVariable(Landroid/support/constraint/solver/SolverVariable;)Z
    .locals 4

    .prologue
    .line 112
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->containsKey(Landroid/support/constraint/solver/SolverVariable;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method pickRowVariable()V
    .locals 4

    .prologue
    .line 345
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v2}, Landroid/support/constraint/solver/ArrayLinkedVariables;->pickPivotCandidate()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    move-object v1, v2

    .line 346
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 347
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/ArrayRow;->pivot(Landroid/support/constraint/solver/SolverVariable;)V

    .line 349
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    iget v2, v2, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-nez v2, :cond_1

    .line 350
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    .line 352
    :cond_1
    return-void
.end method

.method pivot(Landroid/support/constraint/solver/SolverVariable;)V
    .locals 6

    .prologue
    .line 355
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    if-eqz v3, :cond_0

    .line 357
    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v3, v4, v5}, Landroid/support/constraint/solver/ArrayLinkedVariables;->put(Landroid/support/constraint/solver/SolverVariable;F)V

    .line 358
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    .line 361
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/ArrayLinkedVariables;->remove(Landroid/support/constraint/solver/SolverVariable;)F

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    mul-float/2addr v3, v4

    move v2, v3

    .line 362
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    .line 363
    move v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    .line 368
    :goto_0
    return-void

    .line 366
    :cond_1
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    move v5, v2

    div-float/2addr v4, v5

    iput v4, v3, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 367
    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/ArrayLinkedVariables;->divideByAmount(F)V

    .line 368
    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 105
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    .line 106
    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v1}, Landroid/support/constraint/solver/ArrayLinkedVariables;->clear()V

    .line 107
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 108
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    .line 109
    return-void
.end method

.method sizeInBytes()I
    .locals 4

    .prologue
    .line 319
    move-object v0, p0

    const/4 v2, 0x0

    move v1, v2

    .line 320
    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    if-eqz v2, :cond_0

    .line 321
    add-int/lit8 v1, v1, 0x4

    .line 323
    :cond_0
    add-int/lit8 v1, v1, 0x4

    .line 324
    add-int/lit8 v1, v1, 0x4

    .line 326
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    invoke-virtual {v3}, Landroid/support/constraint/solver/ArrayLinkedVariables;->sizeInBytes()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 327
    move v2, v1

    move v0, v2

    return v0
.end method

.method toReadableString()Ljava/lang/String;
    .locals 11

    .prologue
    .line 55
    move-object v0, p0

    const-string v8, ""

    move-object v1, v8

    .line 56
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    if-nez v8, :cond_1

    .line 57
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    .line 61
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    .line 62
    const/4 v8, 0x0

    move v2, v8

    .line 63
    move-object v8, v0

    iget v8, v8, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_0

    .line 64
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    iget v9, v9, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    .line 65
    const/4 v8, 0x1

    move v2, v8

    .line 67
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    iget v8, v8, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    move v3, v8

    .line 68
    const/4 v8, 0x0

    move v4, v8

    :goto_1
    move v8, v4

    move v9, v3

    if-ge v8, v9, :cond_7

    .line 69
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move v9, v4

    invoke-virtual {v8, v9}, Landroid/support/constraint/solver/ArrayLinkedVariables;->getVariable(I)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v8

    move-object v5, v8

    .line 70
    move-object v8, v5

    if-nez v8, :cond_2

    .line 68
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 59
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    goto :goto_0

    .line 73
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move v9, v4

    invoke-virtual {v8, v9}, Landroid/support/constraint/solver/ArrayLinkedVariables;->getVariableValue(I)F

    move-result v8

    move v6, v8

    .line 74
    move-object v8, v5

    invoke-virtual {v8}, Landroid/support/constraint/solver/SolverVariable;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 75
    move v8, v2

    if-nez v8, :cond_4

    .line 76
    move v8, v6

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    .line 77
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    .line 78
    move v8, v6

    const/high16 v9, -0x40800000    # -1.0f

    mul-float/2addr v8, v9

    move v6, v8

    .line 88
    :cond_3
    :goto_3
    move v8, v6

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-nez v8, :cond_6

    .line 89
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    .line 93
    :goto_4
    const/4 v8, 0x1

    move v2, v8

    goto :goto_2

    .line 81
    :cond_4
    move v8, v6

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_5

    .line 82
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " + "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    goto :goto_3

    .line 84
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    .line 85
    move v8, v6

    const/high16 v9, -0x40800000    # -1.0f

    mul-float/2addr v8, v9

    move v6, v8

    goto :goto_3

    .line 91
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    goto :goto_4

    .line 95
    :cond_7
    move v8, v2

    if-nez v8, :cond_8

    .line 96
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "0.0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    .line 101
    :cond_8
    move-object v8, v1

    move-object v0, v8

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/constraint/solver/ArrayRow;->toReadableString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method updateClientEquations()V
    .locals 3

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/ArrayLinkedVariables;->updateClientEquations(Landroid/support/constraint/solver/ArrayRow;)V

    .line 36
    return-void
.end method

.method updateRowWithEquation(Landroid/support/constraint/solver/ArrayRow;)Z
    .locals 5

    .prologue
    .line 331
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/support/constraint/solver/ArrayLinkedVariables;->updateFromRow(Landroid/support/constraint/solver/ArrayRow;Landroid/support/constraint/solver/ArrayRow;)V

    .line 332
    const/4 v2, 0x1

    move v0, v2

    return v0
.end method
