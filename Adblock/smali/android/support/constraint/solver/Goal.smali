.class public Landroid/support/constraint/solver/Goal;
.super Ljava/lang/Object;
.source "Goal.java"


# instance fields
.field variables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/solver/SolverVariable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 26
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 28
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/constraint/solver/Goal;->variables:Ljava/util/ArrayList;

    return-void
.end method

.method private initFromSystemErrors(Landroid/support/constraint/solver/LinearSystem;)V
    .locals 8

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/constraint/solver/Goal;->variables:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 67
    const/4 v5, 0x1

    move v2, v5

    :goto_0
    move v5, v2

    move-object v6, v1

    iget v6, v6, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    if-ge v5, v6, :cond_2

    .line 68
    move-object v5, v1

    iget-object v5, v5, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v5, v5, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    move v6, v2

    aget-object v5, v5, v6

    move-object v3, v5

    .line 69
    const/4 v5, 0x0

    move v4, v5

    :goto_1
    move v5, v4

    const/4 v6, 0x6

    if-ge v5, v6, :cond_0

    .line 70
    move-object v5, v3

    iget-object v5, v5, Landroid/support/constraint/solver/SolverVariable;->strengthVector:[F

    move v6, v4

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 69
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 72
    :cond_0
    move-object v5, v3

    iget-object v5, v5, Landroid/support/constraint/solver/SolverVariable;->strengthVector:[F

    move-object v6, v3

    iget v6, v6, Landroid/support/constraint/solver/SolverVariable;->strength:I

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v5, v6

    .line 73
    move-object v5, v3

    iget-object v5, v5, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v6, Landroid/support/constraint/solver/SolverVariable$Type;->ERROR:Landroid/support/constraint/solver/SolverVariable$Type;

    if-eq v5, v6, :cond_1

    .line 67
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/constraint/solver/Goal;->variables:Ljava/util/ArrayList;

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_2

    .line 78
    :cond_2
    return-void
.end method


# virtual methods
.method getPivotCandidate()Landroid/support/constraint/solver/SolverVariable;
    .locals 10

    .prologue
    .line 37
    move-object v0, p0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/Goal;->variables:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v1, v8

    .line 38
    const/4 v8, 0x0

    move-object v2, v8

    .line 39
    const/4 v8, 0x0

    move v3, v8

    .line 42
    const/4 v8, 0x0

    move v4, v8

    :goto_0
    move v8, v4

    move v9, v1

    if-ge v8, v9, :cond_3

    .line 43
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/Goal;->variables:Ljava/util/ArrayList;

    move v9, v4

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/constraint/solver/SolverVariable;

    move-object v5, v8

    .line 44
    const/4 v8, 0x5

    move v6, v8

    :goto_1
    move v8, v6

    if-ltz v8, :cond_2

    .line 45
    move-object v8, v5

    iget-object v8, v8, Landroid/support/constraint/solver/SolverVariable;->strengthVector:[F

    move v9, v6

    aget v8, v8, v9

    move v7, v8

    .line 46
    move-object v8, v2

    if-nez v8, :cond_0

    move v8, v7

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    move v8, v6

    move v9, v3

    if-lt v8, v9, :cond_0

    .line 47
    move v8, v6

    move v3, v8

    .line 48
    move-object v8, v5

    move-object v2, v8

    .line 50
    :cond_0
    move v8, v7

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    move v8, v6

    move v9, v3

    if-le v8, v9, :cond_1

    .line 51
    move v8, v6

    move v3, v8

    .line 52
    const/4 v8, 0x0

    move-object v2, v8

    .line 44
    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 42
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 56
    :cond_3
    move-object v8, v2

    move-object v0, v8

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 119
    move-object v0, p0

    const-string v5, "Goal: "

    move-object v1, v5

    .line 120
    move-object v5, v0

    iget-object v5, v5, Landroid/support/constraint/solver/Goal;->variables:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v5

    .line 122
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 123
    move-object v5, v0

    iget-object v5, v5, Landroid/support/constraint/solver/Goal;->variables:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/SolverVariable;

    move-object v4, v5

    .line 124
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v4

    invoke-virtual {v6}, Landroid/support/constraint/solver/SolverVariable;->strengthsToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 122
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    :cond_0
    move-object v5, v1

    move-object v0, v5

    return-object v0
.end method

.method updateFromSystem(Landroid/support/constraint/solver/LinearSystem;)V
    .locals 19

    .prologue
    .line 86
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v12, v0

    move-object v13, v1

    invoke-direct {v12, v13}, Landroid/support/constraint/solver/Goal;->initFromSystemErrors(Landroid/support/constraint/solver/LinearSystem;)V

    .line 87
    move-object v12, v0

    iget-object v12, v12, Landroid/support/constraint/solver/Goal;->variables:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v2, v12

    .line 88
    const/4 v12, 0x0

    move v3, v12

    :goto_0
    move v12, v3

    move v13, v2

    if-ge v12, v13, :cond_5

    .line 89
    move-object v12, v0

    iget-object v12, v12, Landroid/support/constraint/solver/Goal;->variables:Ljava/util/ArrayList;

    move v13, v3

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/constraint/solver/SolverVariable;

    move-object v4, v12

    .line 90
    move-object v12, v4

    iget v12, v12, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_4

    .line 91
    move-object v12, v1

    move-object v13, v4

    iget v13, v13, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    invoke-virtual {v12, v13}, Landroid/support/constraint/solver/LinearSystem;->getRow(I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v12

    move-object v5, v12

    .line 92
    move-object v12, v5

    iget-object v12, v12, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v6, v12

    .line 93
    move-object v12, v6

    iget v12, v12, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    move v7, v12

    .line 94
    const/4 v12, 0x0

    move v8, v12

    :goto_1
    move v12, v8

    move v13, v7

    if-ge v12, v13, :cond_3

    .line 95
    move-object v12, v6

    move v13, v8

    invoke-virtual {v12, v13}, Landroid/support/constraint/solver/ArrayLinkedVariables;->getVariable(I)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v12

    move-object v9, v12

    .line 96
    move-object v12, v9

    if-nez v12, :cond_1

    .line 94
    :cond_0
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 99
    :cond_1
    move-object v12, v6

    move v13, v8

    invoke-virtual {v12, v13}, Landroid/support/constraint/solver/ArrayLinkedVariables;->getVariableValue(I)F

    move-result v12

    move v10, v12

    .line 100
    const/4 v12, 0x0

    move v11, v12

    :goto_3
    move v12, v11

    const/4 v13, 0x6

    if-ge v12, v13, :cond_2

    .line 101
    move-object v12, v9

    iget-object v12, v12, Landroid/support/constraint/solver/SolverVariable;->strengthVector:[F

    move v13, v11

    move-object/from16 v17, v12

    move/from16 v18, v13

    move-object/from16 v12, v17

    move/from16 v13, v18

    move-object/from16 v14, v17

    move/from16 v15, v18

    aget v14, v14, v15

    move-object v15, v4

    iget-object v15, v15, Landroid/support/constraint/solver/SolverVariable;->strengthVector:[F

    move/from16 v16, v11

    aget v15, v15, v16

    move/from16 v16, v10

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    aput v14, v12, v13

    .line 100
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 103
    :cond_2
    move-object v12, v0

    iget-object v12, v12, Landroid/support/constraint/solver/Goal;->variables:Ljava/util/ArrayList;

    move-object v13, v9

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 104
    move-object v12, v0

    iget-object v12, v12, Landroid/support/constraint/solver/Goal;->variables:Ljava/util/ArrayList;

    move-object v13, v9

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v12

    goto :goto_2

    .line 107
    :cond_3
    move-object v12, v4

    invoke-virtual {v12}, Landroid/support/constraint/solver/SolverVariable;->clearStrengths()V

    .line 88
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 110
    :cond_5
    return-void
.end method
