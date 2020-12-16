.class public Landroid/support/constraint/solver/LinearSystem;
.super Ljava/lang/Object;
.source "LinearSystem.java"


# static fields
.field private static final DEBUG:Z

.field private static POOL_SIZE:I


# instance fields
.field private TABLE_SIZE:I

.field private mAlreadyTestedCandidates:[Z

.field final mCache:Landroid/support/constraint/solver/Cache;

.field private mGoal:Landroid/support/constraint/solver/Goal;

.field private mMaxColumns:I

.field private mMaxRows:I

.field mNumColumns:I

.field private mNumRows:I

.field private mPoolVariables:[Landroid/support/constraint/solver/SolverVariable;

.field private mPoolVariablesCount:I

.field private mRows:[Landroid/support/constraint/solver/ArrayRow;

.field private mVariables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/constraint/solver/SolverVariable;",
            ">;"
        }
    .end annotation
.end field

.field mVariablesID:I

.field private tempClientsCopy:[Landroid/support/constraint/solver/ArrayRow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0x3e8

    sput v0, Landroid/support/constraint/solver/LinearSystem;->POOL_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 39
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    .line 44
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/constraint/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    .line 49
    move-object v1, v0

    new-instance v2, Landroid/support/constraint/solver/Goal;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/support/constraint/solver/Goal;-><init>()V

    iput-object v2, v1, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/Goal;

    .line 51
    move-object v1, v0

    const/16 v2, 0x20

    iput v2, v1, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    .line 52
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    iput v2, v1, Landroid/support/constraint/solver/LinearSystem;->mMaxColumns:I

    .line 53
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    .line 56
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    new-array v2, v2, [Z

    iput-object v2, v1, Landroid/support/constraint/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    .line 58
    move-object v1, v0

    const/4 v2, 0x1

    iput v2, v1, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    .line 59
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    .line 60
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    iput v2, v1, Landroid/support/constraint/solver/LinearSystem;->mMaxRows:I

    .line 64
    move-object v1, v0

    sget v2, Landroid/support/constraint/solver/LinearSystem;->POOL_SIZE:I

    new-array v2, v2, [Landroid/support/constraint/solver/SolverVariable;

    iput-object v2, v1, Landroid/support/constraint/solver/LinearSystem;->mPoolVariables:[Landroid/support/constraint/solver/SolverVariable;

    .line 65
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/LinearSystem;->mPoolVariablesCount:I

    .line 67
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    new-array v2, v2, [Landroid/support/constraint/solver/ArrayRow;

    iput-object v2, v1, Landroid/support/constraint/solver/LinearSystem;->tempClientsCopy:[Landroid/support/constraint/solver/ArrayRow;

    .line 70
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    new-array v2, v2, [Landroid/support/constraint/solver/ArrayRow;

    iput-object v2, v1, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    .line 71
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/constraint/solver/LinearSystem;->releaseRows()V

    .line 72
    move-object v1, v0

    new-instance v2, Landroid/support/constraint/solver/Cache;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/support/constraint/solver/Cache;-><init>()V

    iput-object v2, v1, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    .line 73
    return-void
.end method

.method private acquireSolverVariable(Landroid/support/constraint/solver/SolverVariable$Type;)Landroid/support/constraint/solver/SolverVariable;
    .locals 10

    .prologue
    .line 235
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v3, v3, Landroid/support/constraint/solver/Cache;->solverVariablePool:Landroid/support/constraint/solver/Pools$Pool;

    invoke-interface {v3}, Landroid/support/constraint/solver/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/SolverVariable;

    move-object v2, v3

    .line 236
    move-object v3, v2

    if-nez v3, :cond_1

    .line 237
    new-instance v3, Landroid/support/constraint/solver/SolverVariable;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/constraint/solver/SolverVariable;-><init>(Landroid/support/constraint/solver/SolverVariable$Type;)V

    move-object v2, v3

    .line 242
    :goto_0
    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/solver/LinearSystem;->mPoolVariablesCount:I

    sget v4, Landroid/support/constraint/solver/LinearSystem;->POOL_SIZE:I

    if-lt v3, v4, :cond_0

    .line 243
    sget v3, Landroid/support/constraint/solver/LinearSystem;->POOL_SIZE:I

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    sput v3, Landroid/support/constraint/solver/LinearSystem;->POOL_SIZE:I

    .line 244
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/LinearSystem;->mPoolVariables:[Landroid/support/constraint/solver/SolverVariable;

    sget v5, Landroid/support/constraint/solver/LinearSystem;->POOL_SIZE:I

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/support/constraint/solver/SolverVariable;

    iput-object v4, v3, Landroid/support/constraint/solver/LinearSystem;->mPoolVariables:[Landroid/support/constraint/solver/SolverVariable;

    .line 246
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/LinearSystem;->mPoolVariables:[Landroid/support/constraint/solver/SolverVariable;

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Landroid/support/constraint/solver/LinearSystem;->mPoolVariablesCount:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Landroid/support/constraint/solver/LinearSystem;->mPoolVariablesCount:I

    move-object v5, v2

    aput-object v5, v3, v4

    .line 247
    move-object v3, v2

    move-object v0, v3

    return-object v0

    .line 239
    :cond_1
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/constraint/solver/SolverVariable;->reset()V

    .line 240
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/SolverVariable;->setType(Landroid/support/constraint/solver/SolverVariable$Type;)V

    goto :goto_0
.end method

.method private addError(Landroid/support/constraint/solver/ArrayRow;)V
    .locals 7

    .prologue
    .line 189
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/constraint/solver/LinearSystem;->createErrorVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    move-object v2, v4

    .line 190
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/constraint/solver/LinearSystem;->createErrorVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    move-object v3, v4

    .line 192
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/constraint/solver/ArrayRow;->addError(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v4

    .line 193
    return-void
.end method

.method private addSingleError(Landroid/support/constraint/solver/ArrayRow;I)V
    .locals 7

    .prologue
    .line 196
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/constraint/solver/LinearSystem;->createErrorVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    move-object v3, v4

    .line 197
    move-object v4, v1

    move-object v5, v3

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/support/constraint/solver/ArrayRow;->addSingleError(Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v4

    .line 198
    return-void
.end method

.method private computeValues()V
    .locals 5

    .prologue
    .line 680
    move-object v0, p0

    const/4 v3, 0x0

    move v1, v3

    :goto_0
    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    if-ge v3, v4, :cond_0

    .line 681
    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    move v4, v1

    aget-object v3, v3, v4

    move-object v2, v3

    .line 682
    move-object v3, v2

    iget-object v3, v3, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    move-object v4, v2

    iget v4, v4, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    iput v4, v3, Landroid/support/constraint/solver/SolverVariable;->computedValue:F

    .line 680
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 684
    :cond_0
    return-void
.end method

.method public static createRowCentering(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/ArrayRow;
    .locals 20

    .prologue
    .line 1015
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v12

    move-object v9, v12

    .line 1016
    move-object v12, v9

    move-object v13, v1

    move-object v14, v2

    move v15, v3

    move/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move/from16 v19, v7

    invoke-virtual/range {v12 .. v19}, Landroid/support/constraint/solver/ArrayRow;->createRowCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v12

    .line 1018
    move v12, v8

    if-eqz v12, :cond_0

    .line 1019
    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/constraint/solver/LinearSystem;->createErrorVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v12

    move-object v10, v12

    .line 1020
    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/constraint/solver/LinearSystem;->createErrorVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v12

    move-object v11, v12

    .line 1021
    move-object v12, v10

    const/4 v13, 0x4

    iput v13, v12, Landroid/support/constraint/solver/SolverVariable;->strength:I

    .line 1022
    move-object v12, v11

    const/4 v13, 0x4

    iput v13, v12, Landroid/support/constraint/solver/SolverVariable;->strength:I

    .line 1023
    move-object v12, v9

    move-object v13, v10

    move-object v14, v11

    invoke-virtual {v12, v13, v14}, Landroid/support/constraint/solver/ArrayRow;->addError(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v12

    .line 1037
    :cond_0
    move-object v12, v9

    move-object v0, v12

    return-object v0
.end method

.method public static createRowDimensionPercent(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;FZ)Landroid/support/constraint/solver/ArrayRow;
    .locals 12

    .prologue
    .line 948
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v7

    move-object v6, v7

    .line 949
    move v7, v5

    if-eqz v7, :cond_0

    .line 950
    move-object v7, v0

    move-object v8, v6

    invoke-direct {v7, v8}, Landroid/support/constraint/solver/LinearSystem;->addError(Landroid/support/constraint/solver/ArrayRow;)V

    .line 952
    :cond_0
    move-object v7, v6

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move v11, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/support/constraint/solver/ArrayRow;->createRowDimensionPercent(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;F)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v7

    move-object v0, v7

    return-object v0
.end method

.method public static createRowEquals(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/ArrayRow;
    .locals 10

    .prologue
    .line 919
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v6

    move-object v5, v6

    .line 920
    move-object v6, v5

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    invoke-virtual {v6, v7, v8, v9}, Landroid/support/constraint/solver/ArrayRow;->createRowEquals(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v6

    .line 921
    move v6, v4

    if-eqz v6, :cond_0

    .line 922
    move-object v6, v0

    move-object v7, v5

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Landroid/support/constraint/solver/LinearSystem;->addSingleError(Landroid/support/constraint/solver/ArrayRow;I)V

    .line 933
    :cond_0
    move-object v6, v5

    move-object v0, v6

    return-object v0
.end method

.method public static createRowGreaterThan(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/ArrayRow;
    .locals 13

    .prologue
    .line 960
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/constraint/solver/LinearSystem;->createSlackVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v8

    move-object v5, v8

    .line 961
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v8

    move-object v6, v8

    .line 962
    move-object v8, v6

    move-object v9, v1

    move-object v10, v2

    move-object v11, v5

    move v12, v3

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/support/constraint/solver/ArrayRow;->createRowGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v8

    .line 963
    move v8, v4

    if-eqz v8, :cond_0

    .line 964
    move-object v8, v6

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroid/support/constraint/solver/ArrayLinkedVariables;->get(Landroid/support/constraint/solver/SolverVariable;)F

    move-result v8

    move v7, v8

    .line 965
    move-object v8, v0

    move-object v9, v6

    const/high16 v10, -0x40800000    # -1.0f

    move v11, v7

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-direct {v8, v9, v10}, Landroid/support/constraint/solver/LinearSystem;->addSingleError(Landroid/support/constraint/solver/ArrayRow;I)V

    .line 978
    :cond_0
    move-object v8, v6

    move-object v0, v8

    return-object v0
.end method

.method public static createRowLowerThan(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/ArrayRow;
    .locals 13

    .prologue
    .line 986
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/constraint/solver/LinearSystem;->createSlackVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v8

    move-object v5, v8

    .line 987
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v8

    move-object v6, v8

    .line 988
    move-object v8, v6

    move-object v9, v1

    move-object v10, v2

    move-object v11, v5

    move v12, v3

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/support/constraint/solver/ArrayRow;->createRowLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v8

    .line 989
    move v8, v4

    if-eqz v8, :cond_0

    .line 990
    move-object v8, v6

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroid/support/constraint/solver/ArrayLinkedVariables;->get(Landroid/support/constraint/solver/SolverVariable;)F

    move-result v8

    move v7, v8

    .line 991
    move-object v8, v0

    move-object v9, v6

    const/high16 v10, -0x40800000    # -1.0f

    move v11, v7

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-direct {v8, v9, v10}, Landroid/support/constraint/solver/LinearSystem;->addSingleError(Landroid/support/constraint/solver/ArrayRow;I)V

    .line 1004
    :cond_0
    move-object v8, v6

    move-object v0, v8

    return-object v0
.end method

.method private createVariable(Ljava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)Landroid/support/constraint/solver/SolverVariable;
    .locals 8

    .prologue
    .line 201
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object v5, v0

    iget v5, v5, Landroid/support/constraint/solver/LinearSystem;->mMaxColumns:I

    if-lt v4, v5, :cond_0

    .line 202
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/constraint/solver/LinearSystem;->increaseTableSize()V

    .line 204
    :cond_0
    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Landroid/support/constraint/solver/LinearSystem;->acquireSolverVariable(Landroid/support/constraint/solver/SolverVariable$Type;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    move-object v3, v4

    .line 205
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/constraint/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 206
    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    .line 207
    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    .line 208
    move-object v4, v3

    move-object v5, v0

    iget v5, v5, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    iput v5, v4, Landroid/support/constraint/solver/SolverVariable;->id:I

    .line 209
    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    if-nez v4, :cond_1

    .line 210
    move-object v4, v0

    new-instance v5, Ljava/util/HashMap;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Landroid/support/constraint/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    .line 212
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 213
    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v4, v4, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    move-object v5, v0

    iget v5, v5, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    move-object v6, v3

    aput-object v6, v4, v5

    .line 214
    move-object v4, v3

    move-object v0, v4

    return-object v0
.end method

.method private displayRows()V
    .locals 7

    .prologue
    .line 692
    move-object v0, p0

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/constraint/solver/LinearSystem;->displaySolverVariables()V

    .line 693
    const-string v3, ""

    move-object v1, v3

    .line 694
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    if-ge v3, v4, :cond_0

    .line 695
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    move v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 696
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 694
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 698
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/Goal;

    iget-object v3, v3, Landroid/support/constraint/solver/Goal;->variables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 699
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/Goal;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 701
    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 702
    return-void
.end method

.method private displaySolverVariables()V
    .locals 7

    .prologue
    .line 778
    move-object v0, p0

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Display Rows ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") :\n\t | C | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 779
    const/4 v4, 0x1

    move v2, v4

    :goto_0
    move v4, v2

    move-object v5, v0

    iget v5, v5, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    if-gt v4, v5, :cond_0

    .line 780
    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v4, v4, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    move v5, v2

    aget-object v4, v4, v5

    move-object v3, v4

    .line 781
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 782
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 779
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 784
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 785
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 786
    return-void
.end method

.method private enforceBFS(Landroid/support/constraint/solver/Goal;)I
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 552
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    const/16 v19, 0x0

    move/from16 v4, v19

    .line 558
    const/16 v19, 0x0

    move/from16 v6, v19

    .line 559
    const/16 v19, 0x0

    move/from16 v7, v19

    :goto_0
    move/from16 v19, v7

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    .line 560
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    move-object/from16 v19, v0

    move/from16 v20, v7

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v19, v0

    move-object/from16 v8, v19

    .line 561
    move-object/from16 v19, v8

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    move-object/from16 v19, v0

    sget-object v20, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 559
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 564
    :cond_1
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    move-object/from16 v19, v0

    move/from16 v20, v7

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    move/from16 v19, v0

    const/16 v20, 0x0

    cmpg-float v19, v19, v20

    if-gez v19, :cond_0

    .line 565
    const/16 v19, 0x1

    move/from16 v6, v19

    .line 571
    :cond_2
    move/from16 v19, v6

    if-eqz v19, :cond_d

    .line 579
    const/16 v19, 0x0

    move/from16 v5, v19

    .line 580
    const/16 v19, 0x0

    move/from16 v4, v19

    .line 581
    :goto_1
    move/from16 v19, v5

    if-nez v19, :cond_d

    .line 582
    add-int/lit8 v4, v4, 0x1

    .line 586
    const v19, 0x7f7fffff    # Float.MAX_VALUE

    move/from16 v7, v19

    .line 587
    const/16 v19, 0x0

    move/from16 v8, v19

    .line 588
    const/16 v19, -0x1

    move/from16 v9, v19

    .line 589
    const/16 v19, -0x1

    move/from16 v10, v19

    .line 591
    const/16 v19, 0x0

    move/from16 v11, v19

    :goto_2
    move/from16 v19, v11

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_a

    .line 592
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    move-object/from16 v19, v0

    move/from16 v20, v11

    aget-object v19, v19, v20

    move-object/from16 v12, v19

    .line 593
    move-object/from16 v19, v12

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v19, v0

    move-object/from16 v13, v19

    .line 594
    move-object/from16 v19, v13

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    move-object/from16 v19, v0

    sget-object v20, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 591
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 599
    :cond_4
    move-object/from16 v19, v12

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    move/from16 v19, v0

    const/16 v20, 0x0

    cmpg-float v19, v19, v20

    if-gez v19, :cond_3

    .line 604
    const/16 v19, 0x1

    move/from16 v14, v19

    :goto_3
    move/from16 v19, v14

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    .line 605
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v19, v0

    move/from16 v20, v14

    aget-object v19, v19, v20

    move-object/from16 v15, v19

    .line 606
    move-object/from16 v19, v12

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object/from16 v19, v0

    move-object/from16 v20, v15

    invoke-virtual/range {v19 .. v20}, Landroid/support/constraint/solver/ArrayLinkedVariables;->get(Landroid/support/constraint/solver/SolverVariable;)F

    move-result v19

    move/from16 v16, v19

    .line 607
    move/from16 v19, v16

    const/16 v20, 0x0

    cmpg-float v19, v19, v20

    if-gtz v19, :cond_6

    .line 604
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 613
    :cond_6
    const/16 v19, 0x0

    move/from16 v17, v19

    :goto_4
    move/from16 v19, v17

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    .line 614
    move-object/from16 v19, v15

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/constraint/solver/SolverVariable;->strengthVector:[F

    move-object/from16 v19, v0

    move/from16 v20, v17

    aget v19, v19, v20

    move/from16 v20, v16

    div-float v19, v19, v20

    move/from16 v18, v19

    .line 615
    move/from16 v19, v18

    move/from16 v20, v7

    cmpg-float v19, v19, v20

    if-gez v19, :cond_7

    move/from16 v19, v17

    move/from16 v20, v8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_8

    :cond_7
    move/from16 v19, v17

    move/from16 v20, v8

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_9

    .line 616
    :cond_8
    move/from16 v19, v18

    move/from16 v7, v19

    .line 617
    move/from16 v19, v11

    move/from16 v9, v19

    .line 618
    move/from16 v19, v14

    move/from16 v10, v19

    .line 619
    move/from16 v19, v17

    move/from16 v8, v19

    .line 613
    :cond_9
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 626
    :cond_a
    move/from16 v19, v9

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_c

    .line 628
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    move-object/from16 v19, v0

    move/from16 v20, v9

    aget-object v19, v19, v20

    move-object/from16 v11, v19

    .line 633
    move-object/from16 v19, v11

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    .line 634
    move-object/from16 v19, v11

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v20, v0

    move/from16 v21, v10

    aget-object v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Landroid/support/constraint/solver/ArrayRow;->pivot(Landroid/support/constraint/solver/SolverVariable;)V

    .line 635
    move-object/from16 v19, v11

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v19, v0

    move/from16 v20, v9

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    .line 637
    const/16 v19, 0x0

    move/from16 v12, v19

    :goto_5
    move/from16 v19, v12

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_b

    .line 638
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    move-object/from16 v19, v0

    move/from16 v20, v12

    aget-object v19, v19, v20

    move-object/from16 v20, v11

    invoke-virtual/range {v19 .. v20}, Landroid/support/constraint/solver/ArrayRow;->updateRowWithEquation(Landroid/support/constraint/solver/ArrayRow;)Z

    move-result v19

    .line 637
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 641
    :cond_b
    move-object/from16 v19, v3

    move-object/from16 v20, v2

    invoke-virtual/range {v19 .. v20}, Landroid/support/constraint/solver/Goal;->updateFromSystem(Landroid/support/constraint/solver/LinearSystem;)V

    .line 649
    :goto_6
    goto/16 :goto_1

    .line 647
    :cond_c
    const/16 v19, 0x1

    move/from16 v5, v19

    goto :goto_6

    .line 659
    :cond_d
    const/16 v19, 0x0

    move/from16 v6, v19

    .line 660
    const/16 v19, 0x0

    move/from16 v7, v19

    :goto_7
    move/from16 v19, v7

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_10

    .line 661
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    move-object/from16 v19, v0

    move/from16 v20, v7

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v19, v0

    move-object/from16 v8, v19

    .line 662
    move-object/from16 v19, v8

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    move-object/from16 v19, v0

    sget-object v20, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 660
    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 665
    :cond_f
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    move-object/from16 v19, v0

    move/from16 v20, v7

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    move/from16 v19, v0

    const/16 v20, 0x0

    cmpg-float v19, v19, v20

    if-gez v19, :cond_e

    .line 667
    const/16 v19, 0x1

    move/from16 v6, v19

    .line 676
    :cond_10
    move/from16 v19, v4

    move/from16 v2, v19

    return v2
.end method

.method private getDisplaySize(I)Ljava/lang/String;
    .locals 8

    .prologue
    .line 789
    move-object v0, p0

    move v1, p1

    move v4, v1

    const/4 v5, 0x4

    mul-int/lit8 v4, v4, 0x4

    const/16 v5, 0x400

    div-int/lit16 v4, v4, 0x400

    const/16 v5, 0x400

    div-int/lit16 v4, v4, 0x400

    move v2, v4

    .line 790
    move v4, v2

    if-lez v4, :cond_0

    .line 791
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Mb"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 797
    :goto_0
    return-object v0

    .line 793
    :cond_0
    move v4, v1

    const/4 v5, 0x4

    mul-int/lit8 v4, v4, 0x4

    const/16 v5, 0x400

    div-int/lit16 v4, v4, 0x400

    move v3, v4

    .line 794
    move v4, v3

    if-lez v4, :cond_1

    .line 795
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Kb"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 797
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    const/4 v6, 0x4

    mul-int/lit8 v5, v5, 0x4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method private increaseTableSize()V
    .locals 5

    .prologue
    .line 83
    move-object v0, p0

    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    .line 84
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/support/constraint/solver/ArrayRow;

    iput-object v2, v1, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    .line 85
    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v2, v2, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/support/constraint/solver/SolverVariable;

    iput-object v2, v1, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    .line 86
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    new-array v2, v2, [Z

    iput-object v2, v1, Landroid/support/constraint/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    .line 87
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    iput v2, v1, Landroid/support/constraint/solver/LinearSystem;->mMaxColumns:I

    .line 88
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    iput v2, v1, Landroid/support/constraint/solver/LinearSystem;->mMaxRows:I

    .line 89
    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/Goal;

    iget-object v1, v1, Landroid/support/constraint/solver/Goal;->variables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 90
    return-void
.end method

.method private optimize(Landroid/support/constraint/solver/Goal;)I
    .locals 16

    .prologue
    .line 437
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v13, 0x0

    move v2, v13

    .line 438
    const/4 v13, 0x0

    move v3, v13

    .line 439
    const/4 v13, 0x0

    move v4, v13

    :goto_0
    move v13, v4

    move-object v14, v0

    iget v14, v14, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    if-ge v13, v14, :cond_0

    .line 440
    move-object v13, v0

    iget-object v13, v13, Landroid/support/constraint/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    move v14, v4

    const/4 v15, 0x0

    aput-boolean v15, v13, v14

    .line 439
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 442
    :cond_0
    const/4 v13, 0x0

    move v4, v13

    .line 444
    :goto_1
    move v13, v2

    if-nez v13, :cond_9

    .line 445
    add-int/lit8 v3, v3, 0x1

    .line 450
    move-object v13, v1

    invoke-virtual {v13}, Landroid/support/constraint/solver/Goal;->getPivotCandidate()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v13

    move-object v5, v13

    .line 454
    move-object v13, v5

    if-eqz v13, :cond_1

    .line 455
    move-object v13, v0

    iget-object v13, v13, Landroid/support/constraint/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    move-object v14, v5

    iget v14, v14, Landroid/support/constraint/solver/SolverVariable;->id:I

    aget-boolean v13, v13, v14

    if-eqz v13, :cond_3

    .line 456
    const/4 v13, 0x0

    move-object v5, v13

    .line 466
    :cond_1
    :goto_2
    move-object v13, v5

    if-eqz v13, :cond_8

    .line 480
    const v13, 0x7f7fffff    # Float.MAX_VALUE

    move v6, v13

    .line 481
    const/4 v13, -0x1

    move v7, v13

    .line 483
    const/4 v13, 0x0

    move v8, v13

    :goto_3
    move v13, v8

    move-object v14, v0

    iget v14, v14, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    if-ge v13, v14, :cond_5

    .line 484
    move-object v13, v0

    iget-object v13, v13, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    move v14, v8

    aget-object v13, v13, v14

    move-object v9, v13

    .line 485
    move-object v13, v9

    iget-object v13, v13, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    move-object v10, v13

    .line 486
    move-object v13, v10

    iget-object v13, v13, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v14, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    if-ne v13, v14, :cond_4

    .line 483
    :cond_2
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 458
    :cond_3
    move-object v13, v0

    iget-object v13, v13, Landroid/support/constraint/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    move-object v14, v5

    iget v14, v14, Landroid/support/constraint/solver/SolverVariable;->id:I

    const/4 v15, 0x1

    aput-boolean v15, v13, v14

    .line 459
    add-int/lit8 v4, v4, 0x1

    .line 460
    move v13, v4

    move-object v14, v0

    iget v14, v14, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    if-lt v13, v14, :cond_1

    .line 461
    const/4 v13, 0x1

    move v2, v13

    goto :goto_2

    .line 490
    :cond_4
    move-object v13, v9

    move-object v14, v5

    invoke-virtual {v13, v14}, Landroid/support/constraint/solver/ArrayRow;->hasVariable(Landroid/support/constraint/solver/SolverVariable;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 493
    move-object v13, v9

    iget-object v13, v13, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v14, v5

    invoke-virtual {v13, v14}, Landroid/support/constraint/solver/ArrayLinkedVariables;->get(Landroid/support/constraint/solver/SolverVariable;)F

    move-result v13

    move v11, v13

    .line 494
    move v13, v11

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_2

    .line 495
    move-object v13, v9

    iget v13, v13, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    neg-float v13, v13

    move v14, v11

    div-float/2addr v13, v14

    move v12, v13

    .line 496
    move v13, v12

    move v14, v6

    cmpg-float v13, v13, v14

    if-gez v13, :cond_2

    .line 497
    move v13, v12

    move v6, v13

    .line 498
    move v13, v8

    move v7, v13

    goto :goto_4

    .line 506
    :cond_5
    move v13, v7

    const/4 v14, -0x1

    if-le v13, v14, :cond_7

    .line 511
    move-object v13, v0

    iget-object v13, v13, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    move v14, v7

    aget-object v13, v13, v14

    move-object v8, v13

    .line 512
    move-object v13, v8

    iget-object v13, v13, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v14, -0x1

    iput v14, v13, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    .line 513
    move-object v13, v8

    move-object v14, v5

    invoke-virtual {v13, v14}, Landroid/support/constraint/solver/ArrayRow;->pivot(Landroid/support/constraint/solver/SolverVariable;)V

    .line 514
    move-object v13, v8

    iget-object v13, v13, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    move v14, v7

    iput v14, v13, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    .line 516
    const/4 v13, 0x0

    move v9, v13

    :goto_5
    move v13, v9

    move-object v14, v0

    iget v14, v14, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    if-ge v13, v14, :cond_6

    .line 517
    move-object v13, v0

    iget-object v13, v13, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    move v14, v9

    aget-object v13, v13, v14

    move-object v14, v8

    invoke-virtual {v13, v14}, Landroid/support/constraint/solver/ArrayRow;->updateRowWithEquation(Landroid/support/constraint/solver/ArrayRow;)Z

    move-result v13

    .line 516
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 520
    :cond_6
    move-object v13, v1

    move-object v14, v0

    invoke-virtual {v13, v14}, Landroid/support/constraint/solver/Goal;->updateFromSystem(Landroid/support/constraint/solver/LinearSystem;)V

    .line 526
    move-object v13, v0

    move-object v14, v1

    :try_start_0
    invoke-direct {v13, v14}, Landroid/support/constraint/solver/LinearSystem;->enforceBFS(Landroid/support/constraint/solver/Goal;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 542
    :goto_6
    goto/16 :goto_1

    .line 527
    :catch_0
    move-exception v13

    move-object v9, v13

    .line 528
    move-object v13, v9

    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 534
    :cond_7
    const/4 v13, 0x1

    move v2, v13

    goto :goto_6

    .line 540
    :cond_8
    const/4 v13, 0x1

    move v2, v13

    goto :goto_6

    .line 543
    :cond_9
    move v13, v3

    move v0, v13

    return v0
.end method

.method private releaseRows()V
    .locals 6

    .prologue
    .line 96
    move-object v0, p0

    const/4 v3, 0x0

    move v1, v3

    :goto_0
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 97
    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    move v4, v1

    aget-object v3, v3, v4

    move-object v2, v3

    .line 98
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 99
    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v3, v3, Landroid/support/constraint/solver/Cache;->arrayRowPool:Landroid/support/constraint/solver/Pools$Pool;

    move-object v4, v2

    invoke-interface {v3, v4}, Landroid/support/constraint/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result v3

    .line 101
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    move v4, v1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_1
    return-void
.end method

.method private updateRowFromVariables(Landroid/support/constraint/solver/ArrayRow;)V
    .locals 5

    .prologue
    .line 345
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    if-lez v2, :cond_0

    .line 346
    move-object v2, v1

    iget-object v2, v2, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    invoke-virtual {v2, v3, v4}, Landroid/support/constraint/solver/ArrayLinkedVariables;->updateFromSystem(Landroid/support/constraint/solver/ArrayRow;[Landroid/support/constraint/solver/ArrayRow;)V

    .line 347
    move-object v2, v1

    iget-object v2, v2, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    iget v2, v2, Landroid/support/constraint/solver/ArrayLinkedVariables;->currentSize:I

    if-nez v2, :cond_0

    .line 348
    move-object v2, v1

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    .line 351
    :cond_0
    return-void
.end method


# virtual methods
.method public addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V
    .locals 20

    .prologue
    .line 856
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v12

    move-object v9, v12

    .line 857
    move-object v12, v9

    move-object v13, v1

    move-object v14, v2

    move v15, v3

    move/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move/from16 v19, v7

    invoke-virtual/range {v12 .. v19}, Landroid/support/constraint/solver/ArrayRow;->createRowCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v12

    .line 858
    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/constraint/solver/LinearSystem;->createErrorVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v12

    move-object v10, v12

    .line 859
    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/constraint/solver/LinearSystem;->createErrorVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v12

    move-object v11, v12

    .line 860
    move-object v12, v10

    move v13, v8

    iput v13, v12, Landroid/support/constraint/solver/SolverVariable;->strength:I

    .line 861
    move-object v12, v11

    move v13, v8

    iput v13, v12, Landroid/support/constraint/solver/SolverVariable;->strength:I

    .line 862
    move-object v12, v9

    move-object v13, v10

    move-object v14, v11

    invoke-virtual {v12, v13, v14}, Landroid/support/constraint/solver/ArrayRow;->addError(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v12

    .line 863
    move-object v12, v0

    move-object v13, v9

    invoke-virtual {v12, v13}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 864
    return-void
.end method

.method public addConstraint(Landroid/support/constraint/solver/ArrayRow;)V
    .locals 11

    .prologue
    .line 358
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    if-nez v6, :cond_0

    .line 429
    :goto_0
    return-void

    .line 361
    :cond_0
    move-object v6, v0

    iget v6, v6, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object v7, v0

    iget v7, v7, Landroid/support/constraint/solver/LinearSystem;->mMaxRows:I

    if-ge v6, v7, :cond_1

    move-object v6, v0

    iget v6, v6, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object v7, v0

    iget v7, v7, Landroid/support/constraint/solver/LinearSystem;->mMaxColumns:I

    if-lt v6, v7, :cond_2

    .line 362
    :cond_1
    move-object v6, v0

    invoke-direct {v6}, Landroid/support/constraint/solver/LinearSystem;->increaseTableSize()V

    .line 368
    :cond_2
    move-object v6, v1

    iget-boolean v6, v6, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    if-nez v6, :cond_3

    .line 370
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Landroid/support/constraint/solver/LinearSystem;->updateRowFromVariables(Landroid/support/constraint/solver/ArrayRow;)V

    .line 373
    move-object v6, v1

    invoke-virtual {v6}, Landroid/support/constraint/solver/ArrayRow;->ensurePositiveConstant()V

    .line 380
    move-object v6, v1

    invoke-virtual {v6}, Landroid/support/constraint/solver/ArrayRow;->pickRowVariable()V

    .line 382
    move-object v6, v1

    invoke-virtual {v6}, Landroid/support/constraint/solver/ArrayRow;->hasKeyVariable()Z

    move-result v6

    if-nez v6, :cond_3

    .line 392
    goto :goto_0

    .line 395
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    move-object v7, v0

    iget v7, v7, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    aget-object v6, v6, v7

    if-eqz v6, :cond_4

    .line 396
    move-object v6, v0

    iget-object v6, v6, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v6, v6, Landroid/support/constraint/solver/Cache;->arrayRowPool:Landroid/support/constraint/solver/Pools$Pool;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    move-object v8, v0

    iget v8, v8, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    aget-object v7, v7, v8

    invoke-interface {v6, v7}, Landroid/support/constraint/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result v6

    .line 398
    :cond_4
    move-object v6, v1

    iget-boolean v6, v6, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    if-nez v6, :cond_5

    .line 399
    move-object v6, v1

    invoke-virtual {v6}, Landroid/support/constraint/solver/ArrayRow;->updateClientEquations()V

    .line 401
    :cond_5
    move-object v6, v0

    iget-object v6, v6, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    move-object v7, v0

    iget v7, v7, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    move-object v8, v1

    aput-object v8, v6, v7

    .line 402
    move-object v6, v1

    iget-object v6, v6, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    move-object v7, v0

    iget v7, v7, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    iput v7, v6, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    .line 403
    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    .line 405
    move-object v6, v1

    iget-object v6, v6, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    iget v6, v6, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    move v2, v6

    .line 406
    move v6, v2

    if-lez v6, :cond_9

    .line 407
    :goto_1
    move-object v6, v0

    iget-object v6, v6, Landroid/support/constraint/solver/LinearSystem;->tempClientsCopy:[Landroid/support/constraint/solver/ArrayRow;

    array-length v6, v6

    move v7, v2

    if-ge v6, v7, :cond_6

    .line 408
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/constraint/solver/LinearSystem;->tempClientsCopy:[Landroid/support/constraint/solver/ArrayRow;

    array-length v7, v7

    const/4 v8, 0x2

    mul-int/lit8 v7, v7, 0x2

    new-array v7, v7, [Landroid/support/constraint/solver/ArrayRow;

    iput-object v7, v6, Landroid/support/constraint/solver/LinearSystem;->tempClientsCopy:[Landroid/support/constraint/solver/ArrayRow;

    goto :goto_1

    .line 410
    :cond_6
    move-object v6, v0

    iget-object v6, v6, Landroid/support/constraint/solver/LinearSystem;->tempClientsCopy:[Landroid/support/constraint/solver/ArrayRow;

    move-object v3, v6

    .line 412
    const/4 v6, 0x0

    move v4, v6

    :goto_2
    move v6, v4

    move v7, v2

    if-ge v6, v7, :cond_7

    .line 413
    move-object v6, v3

    move v7, v4

    move-object v8, v1

    iget-object v8, v8, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v8, v8, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    move v9, v4

    aget-object v8, v8, v9

    aput-object v8, v6, v7

    .line 412
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 415
    :cond_7
    const/4 v6, 0x0

    move v4, v6

    :goto_3
    move v6, v4

    move v7, v2

    if-ge v6, v7, :cond_9

    .line 416
    move-object v6, v3

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 417
    move-object v6, v5

    move-object v7, v1

    if-ne v6, v7, :cond_8

    .line 415
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 420
    :cond_8
    move-object v6, v5

    iget-object v6, v6, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    move-object v7, v5

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/support/constraint/solver/ArrayLinkedVariables;->updateFromRow(Landroid/support/constraint/solver/ArrayRow;Landroid/support/constraint/solver/ArrayRow;)V

    .line 421
    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/constraint/solver/ArrayRow;->updateClientEquations()V

    goto :goto_4

    .line 429
    :cond_9
    goto/16 :goto_0
.end method

.method public addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;
    .locals 12

    .prologue
    .line 877
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v8

    move-object v5, v8

    .line 878
    move-object v8, v5

    move-object v9, v1

    move-object v10, v2

    move v11, v3

    invoke-virtual {v8, v9, v10, v11}, Landroid/support/constraint/solver/ArrayRow;->createRowEquals(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v8

    .line 879
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/constraint/solver/LinearSystem;->createErrorVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v8

    move-object v6, v8

    .line 880
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/constraint/solver/LinearSystem;->createErrorVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v8

    move-object v7, v8

    .line 881
    move-object v8, v6

    move v9, v4

    iput v9, v8, Landroid/support/constraint/solver/SolverVariable;->strength:I

    .line 882
    move-object v8, v7

    move v9, v4

    iput v9, v8, Landroid/support/constraint/solver/SolverVariable;->strength:I

    .line 883
    move-object v8, v5

    move-object v9, v6

    move-object v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/support/constraint/solver/ArrayRow;->addError(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v8

    .line 884
    move-object v8, v0

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 885
    move-object v8, v5

    move-object v0, v8

    return-object v0
.end method

.method public addEquality(Landroid/support/constraint/solver/SolverVariable;I)V
    .locals 9

    .prologue
    .line 897
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, v1

    iget v6, v6, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    move v3, v6

    .line 898
    move-object v6, v1

    iget v6, v6, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 899
    move-object v6, v0

    iget-object v6, v6, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    move v7, v3

    aget-object v6, v6, v7

    move-object v4, v6

    .line 900
    move-object v6, v4

    iget-boolean v6, v6, Landroid/support/constraint/solver/ArrayRow;->isSimpleDefinition:Z

    if-eqz v6, :cond_0

    .line 901
    move-object v6, v4

    move v7, v2

    int-to-float v7, v7

    iput v7, v6, Landroid/support/constraint/solver/ArrayRow;->constantValue:F

    .line 912
    :goto_0
    return-void

    .line 903
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v6

    move-object v5, v6

    .line 904
    move-object v6, v5

    move-object v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/support/constraint/solver/ArrayRow;->createRowEquals(Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v6

    .line 905
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    goto :goto_0

    .line 908
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v6

    move-object v4, v6

    .line 909
    move-object v6, v4

    move-object v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/support/constraint/solver/ArrayRow;->createRowDefinition(Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v6

    .line 910
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    goto :goto_0
.end method

.method public addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V
    .locals 12

    .prologue
    .line 815
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v7

    move-object v5, v7

    .line 816
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/constraint/solver/LinearSystem;->createSlackVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v7

    move-object v6, v7

    .line 817
    move-object v7, v6

    move v8, v4

    iput v8, v7, Landroid/support/constraint/solver/SolverVariable;->strength:I

    .line 818
    move-object v7, v5

    move-object v8, v1

    move-object v9, v2

    move-object v10, v6

    move v11, v3

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/support/constraint/solver/ArrayRow;->createRowGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v7

    .line 819
    move-object v7, v0

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 820
    return-void
.end method

.method public addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V
    .locals 12

    .prologue
    .line 833
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v7

    move-object v5, v7

    .line 834
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/constraint/solver/LinearSystem;->createSlackVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v7

    move-object v6, v7

    .line 835
    move-object v7, v6

    move v8, v4

    iput v8, v7, Landroid/support/constraint/solver/SolverVariable;->strength:I

    .line 836
    move-object v7, v5

    move-object v8, v1

    move-object v9, v2

    move-object v10, v6

    move v11, v3

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/support/constraint/solver/ArrayRow;->createRowLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v7

    .line 837
    move-object v7, v0

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 838
    return-void
.end method

.method public createErrorVariable()Landroid/support/constraint/solver/SolverVariable;
    .locals 6

    .prologue
    .line 218
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/solver/LinearSystem;->mMaxColumns:I

    if-lt v2, v3, :cond_0

    .line 219
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/constraint/solver/LinearSystem;->increaseTableSize()V

    .line 221
    :cond_0
    move-object v2, v0

    sget-object v3, Landroid/support/constraint/solver/SolverVariable$Type;->ERROR:Landroid/support/constraint/solver/SolverVariable$Type;

    invoke-direct {v2, v3}, Landroid/support/constraint/solver/LinearSystem;->acquireSolverVariable(Landroid/support/constraint/solver/SolverVariable$Type;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    move-object v1, v2

    .line 222
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    .line 223
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    .line 224
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    iput v3, v2, Landroid/support/constraint/solver/SolverVariable;->id:I

    .line 225
    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v2, v2, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    move-object v4, v1

    aput-object v4, v2, v3

    .line 226
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;
    .locals 7

    .prologue
    .line 137
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_0

    .line 138
    const/4 v3, 0x0

    move-object v0, v3

    .line 163
    :goto_0
    return-object v0

    .line 140
    :cond_0
    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/LinearSystem;->mMaxColumns:I

    if-lt v3, v4, :cond_1

    .line 141
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/constraint/solver/LinearSystem;->increaseTableSize()V

    .line 143
    :cond_1
    const/4 v3, 0x0

    move-object v2, v3

    .line 144
    move-object v3, v1

    instance-of v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_5

    .line 145
    move-object v3, v1

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getSolverVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v3

    move-object v2, v3

    .line 146
    move-object v3, v2

    if-nez v3, :cond_2

    .line 147
    move-object v3, v1

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 148
    move-object v3, v1

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getSolverVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v3

    move-object v2, v3

    .line 150
    :cond_2
    move-object v3, v2

    iget v3, v3, Landroid/support/constraint/solver/SolverVariable;->id:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    move-object v3, v2

    iget v3, v3, Landroid/support/constraint/solver/SolverVariable;->id:I

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    if-gt v3, v4, :cond_3

    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v3, v3, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    move-object v4, v2

    iget v4, v4, Landroid/support/constraint/solver/SolverVariable;->id:I

    aget-object v3, v3, v4

    if-nez v3, :cond_5

    .line 153
    :cond_3
    move-object v3, v2

    iget v3, v3, Landroid/support/constraint/solver/SolverVariable;->id:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 154
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/constraint/solver/SolverVariable;->reset()V

    .line 156
    :cond_4
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    .line 157
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    .line 158
    move-object v3, v2

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    iput v4, v3, Landroid/support/constraint/solver/SolverVariable;->id:I

    .line 159
    move-object v3, v2

    sget-object v4, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    iput-object v4, v3, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    .line 160
    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v3, v3, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    move-object v5, v2

    aput-object v5, v3, v4

    .line 163
    :cond_5
    move-object v3, v2

    move-object v0, v3

    goto/16 :goto_0
.end method

.method public createRow()Landroid/support/constraint/solver/ArrayRow;
    .locals 6

    .prologue
    .line 167
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v2, v2, Landroid/support/constraint/solver/Cache;->arrayRowPool:Landroid/support/constraint/solver/Pools$Pool;

    invoke-interface {v2}, Landroid/support/constraint/solver/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/ArrayRow;

    move-object v1, v2

    .line 168
    move-object v2, v1

    if-nez v2, :cond_0

    .line 169
    new-instance v2, Landroid/support/constraint/solver/ArrayRow;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    invoke-direct {v3, v4}, Landroid/support/constraint/solver/ArrayRow;-><init>(Landroid/support/constraint/solver/Cache;)V

    move-object v1, v2

    .line 173
    :goto_0
    move-object v2, v1

    move-object v0, v2

    return-object v0

    .line 171
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/constraint/solver/ArrayRow;->reset()V

    goto :goto_0
.end method

.method public createSlackVariable()Landroid/support/constraint/solver/SolverVariable;
    .locals 6

    .prologue
    .line 177
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/solver/LinearSystem;->mMaxColumns:I

    if-lt v2, v3, :cond_0

    .line 178
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/constraint/solver/LinearSystem;->increaseTableSize()V

    .line 180
    :cond_0
    move-object v2, v0

    sget-object v3, Landroid/support/constraint/solver/SolverVariable$Type;->SLACK:Landroid/support/constraint/solver/SolverVariable$Type;

    invoke-direct {v2, v3}, Landroid/support/constraint/solver/LinearSystem;->acquireSolverVariable(Landroid/support/constraint/solver/SolverVariable$Type;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v2

    move-object v1, v2

    .line 181
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    .line 182
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    .line 183
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    iput v3, v2, Landroid/support/constraint/solver/SolverVariable;->id:I

    .line 184
    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v2, v2, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    move-object v4, v1

    aput-object v4, v2, v3

    .line 185
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method displayReadableRows()V
    .locals 7

    .prologue
    .line 705
    move-object v0, p0

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/constraint/solver/LinearSystem;->displaySolverVariables()V

    .line 706
    const-string v3, ""

    move-object v1, v3

    .line 707
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    if-ge v3, v4, :cond_0

    .line 708
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    move v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/support/constraint/solver/ArrayRow;->toReadableString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 709
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 707
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 711
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/Goal;

    if-eqz v3, :cond_1

    .line 712
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/Goal;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 714
    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 715
    return-void
.end method

.method displaySystemInformations()V
    .locals 11

    .prologue
    .line 753
    move-object v0, p0

    const/4 v5, 0x0

    move v1, v5

    .line 754
    const/4 v5, 0x0

    move v2, v5

    .line 755
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v0

    iget v6, v6, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    if-ge v5, v6, :cond_1

    .line 756
    move-object v5, v0

    iget-object v5, v5, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    move v6, v3

    aget-object v5, v5, v6

    if-eqz v5, :cond_0

    .line 757
    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    move v7, v3

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/support/constraint/solver/ArrayRow;->sizeInBytes()I

    move-result v6

    add-int/2addr v5, v6

    move v2, v5

    .line 755
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 760
    :cond_1
    const/4 v5, 0x0

    move v3, v5

    .line 761
    const/4 v5, 0x0

    move v4, v5

    :goto_1
    move v5, v4

    move-object v6, v0

    iget v6, v6, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    if-ge v5, v6, :cond_3

    .line 762
    move-object v5, v0

    iget-object v5, v5, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    move v6, v4

    aget-object v5, v5, v6

    if-eqz v5, :cond_2

    .line 763
    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    move v7, v4

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/support/constraint/solver/ArrayRow;->sizeInBytes()I

    move-result v6

    add-int/2addr v5, v6

    move v3, v5

    .line 761
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 767
    :cond_3
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Linear System -> Table size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    move-object v9, v0

    iget v9, v9, Landroid/support/constraint/solver/LinearSystem;->TABLE_SIZE:I

    mul-int/2addr v8, v9

    .line 768
    invoke-direct {v7, v8}, Landroid/support/constraint/solver/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") -- row sizes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    move v8, v2

    .line 769
    invoke-direct {v7, v8}, Landroid/support/constraint/solver/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", actual size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    move v8, v3

    .line 770
    invoke-direct {v7, v8}, Landroid/support/constraint/solver/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " rows: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Landroid/support/constraint/solver/LinearSystem;->mMaxRows:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cols: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Landroid/support/constraint/solver/LinearSystem;->mMaxColumns:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " occupied cells, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    move v8, v1

    .line 773
    invoke-direct {v7, v8}, Landroid/support/constraint/solver/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 767
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 775
    return-void
.end method

.method public displayVariablesReadableRows()V
    .locals 7

    .prologue
    .line 719
    move-object v0, p0

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/constraint/solver/LinearSystem;->displaySolverVariables()V

    .line 720
    const-string v3, ""

    move-object v1, v3

    .line 721
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    if-ge v3, v4, :cond_1

    .line 722
    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    move v4, v2

    aget-object v3, v3, v4

    iget-object v3, v3, Landroid/support/constraint/solver/ArrayRow;->variable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v3, v3, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v4, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    if-ne v3, v4, :cond_0

    .line 723
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    move v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/support/constraint/solver/ArrayRow;->toReadableString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 724
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 721
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 727
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/Goal;

    iget-object v3, v3, Landroid/support/constraint/solver/Goal;->variables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 728
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/Goal;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 730
    :cond_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 731
    return-void
.end method

.method public getCache()Landroid/support/constraint/solver/Cache;
    .locals 2

    .prologue
    .line 801
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    move-object v0, v1

    return-object v0
.end method

.method getGoal()Landroid/support/constraint/solver/Goal;
    .locals 2

    .prologue
    .line 258
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/Goal;

    move-object v0, v1

    return-object v0
.end method

.method public getMemoryUsed()I
    .locals 6

    .prologue
    .line 735
    move-object v0, p0

    const/4 v3, 0x0

    move v1, v3

    .line 736
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    if-ge v3, v4, :cond_1

    .line 737
    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    move v4, v2

    aget-object v3, v3, v4

    if-eqz v3, :cond_0

    .line 738
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    move v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/support/constraint/solver/ArrayRow;->sizeInBytes()I

    move-result v4

    add-int/2addr v3, v4

    move v1, v3

    .line 736
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 741
    :cond_1
    move v3, v1

    move v0, v3

    return v0
.end method

.method public getNumEquations()I
    .locals 2

    .prologue
    .line 745
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    move v0, v1

    return v0
.end method

.method public getNumVariables()I
    .locals 2

    .prologue
    .line 747
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    move v0, v1

    return v0
.end method

.method public getObjectVariableValue(Ljava/lang/Object;)I
    .locals 5

    .prologue
    .line 273
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getSolverVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v3

    move-object v2, v3

    .line 274
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 275
    move-object v3, v2

    iget v3, v3, Landroid/support/constraint/solver/SolverVariable;->computedValue:F

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    move v0, v3

    .line 277
    :goto_0
    return v0

    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method getRow(I)Landroid/support/constraint/solver/ArrayRow;
    .locals 4

    .prologue
    .line 261
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    return-object v0
.end method

.method getValueFor(Ljava/lang/String;)F
    .locals 6

    .prologue
    .line 265
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    sget-object v5, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    invoke-virtual {v3, v4, v5}, Landroid/support/constraint/solver/LinearSystem;->getVariable(Ljava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v3

    move-object v2, v3

    .line 266
    move-object v3, v2

    if-nez v3, :cond_0

    .line 267
    const/4 v3, 0x0

    move v0, v3

    .line 269
    :goto_0
    return v0

    :cond_0
    move-object v3, v2

    iget v3, v3, Landroid/support/constraint/solver/SolverVariable;->computedValue:F

    move v0, v3

    goto :goto_0
.end method

.method getVariable(Ljava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)Landroid/support/constraint/solver/SolverVariable;
    .locals 8

    .prologue
    .line 288
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    if-nez v4, :cond_0

    .line 289
    move-object v4, v0

    new-instance v5, Ljava/util/HashMap;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Landroid/support/constraint/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    .line 291
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/solver/SolverVariable;

    move-object v3, v4

    .line 292
    move-object v4, v3

    if-nez v4, :cond_1

    .line 293
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/constraint/solver/LinearSystem;->createVariable(Ljava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    move-object v3, v4

    .line 295
    :cond_1
    move-object v4, v3

    move-object v0, v4

    return-object v0
.end method

.method public minimize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 316
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/Goal;

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/LinearSystem;->minimizeGoal(Landroid/support/constraint/solver/Goal;)V

    .line 317
    return-void
.end method

.method minimizeGoal(Landroid/support/constraint/solver/Goal;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 326
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/Goal;->updateFromSystem(Landroid/support/constraint/solver/LinearSystem;)V

    .line 327
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/constraint/solver/LinearSystem;->enforceBFS(Landroid/support/constraint/solver/Goal;)I

    move-result v2

    .line 332
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/constraint/solver/LinearSystem;->optimize(Landroid/support/constraint/solver/Goal;)I

    move-result v2

    .line 337
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/constraint/solver/LinearSystem;->computeValues()V

    .line 338
    return-void
.end method

.method rebuildGoalFromErrors()V
    .locals 3

    .prologue
    .line 306
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/Goal;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/Goal;->updateFromSystem(Landroid/support/constraint/solver/LinearSystem;)V

    .line 310
    return-void
.end method

.method public reset()V
    .locals 6

    .prologue
    .line 109
    move-object v0, p0

    const/4 v3, 0x0

    move v1, v3

    :goto_0
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v4, v4, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 110
    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v3, v3, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    move v4, v1

    aget-object v3, v3, v4

    move-object v2, v3

    .line 111
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 112
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/constraint/solver/SolverVariable;->reset()V

    .line 109
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v3, v3, Landroid/support/constraint/solver/Cache;->solverVariablePool:Landroid/support/constraint/solver/Pools$Pool;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/LinearSystem;->mPoolVariables:[Landroid/support/constraint/solver/SolverVariable;

    move-object v5, v0

    iget v5, v5, Landroid/support/constraint/solver/LinearSystem;->mPoolVariablesCount:I

    invoke-interface {v3, v4, v5}, Landroid/support/constraint/solver/Pools$Pool;->releaseAll([Ljava/lang/Object;I)V

    .line 116
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/constraint/solver/LinearSystem;->mPoolVariablesCount:I

    .line 118
    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/LinearSystem;->mCache:Landroid/support/constraint/solver/Cache;

    iget-object v3, v3, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    if-eqz v3, :cond_2

    .line 120
    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 122
    :cond_2
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/constraint/solver/LinearSystem;->mVariablesID:I

    .line 123
    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/LinearSystem;->mGoal:Landroid/support/constraint/solver/Goal;

    iget-object v3, v3, Landroid/support/constraint/solver/Goal;->variables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 124
    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Landroid/support/constraint/solver/LinearSystem;->mNumColumns:I

    .line 125
    const/4 v3, 0x0

    move v1, v3

    :goto_1
    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    if-ge v3, v4, :cond_3

    .line 126
    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/LinearSystem;->mRows:[Landroid/support/constraint/solver/ArrayRow;

    move v4, v1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/constraint/solver/ArrayRow;->used:Z

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 128
    :cond_3
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/constraint/solver/LinearSystem;->releaseRows()V

    .line 129
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/constraint/solver/LinearSystem;->mNumRows:I

    .line 130
    return-void
.end method
