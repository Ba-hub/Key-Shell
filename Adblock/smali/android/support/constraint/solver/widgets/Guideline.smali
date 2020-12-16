.class public Landroid/support/constraint/solver/widgets/Guideline;
.super Landroid/support/constraint/solver/widgets/ConstraintWidget;
.source "Guideline.java"


# static fields
.field public static final HORIZONTAL:I = 0x0

.field public static final RELATIVE_BEGIN:I = 0x1

.field public static final RELATIVE_END:I = 0x2

.field public static final RELATIVE_PERCENT:I = 0x0

.field public static final RELATIVE_UNKNWON:I = -0x1

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field private mHead:Landroid/support/constraint/solver/widgets/Rectangle;

.field private mHeadSize:I

.field private mIsPositionRelaxed:Z

.field private mMinimumPosition:I

.field private mOrientation:I

.field protected mRelativeBegin:I

.field protected mRelativeEnd:I

.field protected mRelativePercent:F


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    .line 32
    move-object v1, v0

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v1, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    .line 33
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    .line 34
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    .line 36
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/Guideline;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput-object v2, v1, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 37
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    .line 38
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/constraint/solver/widgets/Guideline;->mIsPositionRelaxed:Z

    .line 39
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/Guideline;->mMinimumPosition:I

    .line 41
    move-object v1, v0

    new-instance v2, Landroid/support/constraint/solver/widgets/Rectangle;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/support/constraint/solver/widgets/Rectangle;-><init>()V

    iput-object v2, v1, Landroid/support/constraint/solver/widgets/Guideline;->mHead:Landroid/support/constraint/solver/widgets/Rectangle;

    .line 42
    move-object v1, v0

    const/16 v2, 0x8

    iput v2, v1, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    .line 45
    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 46
    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 47
    return-void
.end method


# virtual methods
.method public addToSolver(Landroid/support/constraint/solver/LinearSystem;I)V
    .locals 16

    .prologue
    .line 184
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    check-cast v9, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object v3, v9

    .line 185
    move-object v9, v3

    if-nez v9, :cond_0

    .line 214
    :goto_0
    return-void

    .line 188
    :cond_0
    move-object v9, v3

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v10}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v4, v9

    .line 189
    move-object v9, v3

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v10}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v5, v9

    .line 190
    move-object v9, v0

    iget v9, v9, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    if-nez v9, :cond_1

    .line 191
    move-object v9, v3

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v10}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v4, v9

    .line 192
    move-object v9, v3

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v10}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v5, v9

    .line 194
    :cond_1
    move-object v9, v0

    iget v9, v9, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    .line 195
    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v10}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v9

    move-object v6, v9

    .line 196
    move-object v9, v1

    move-object v10, v4

    invoke-virtual {v9, v10}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v9

    move-object v7, v9

    .line 197
    move-object v9, v1

    move-object v10, v1

    move-object v11, v6

    move-object v12, v7

    move-object v13, v0

    iget v13, v13, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    const/4 v14, 0x0

    .line 199
    invoke-static {v10, v11, v12, v13, v14}, Landroid/support/constraint/solver/LinearSystem;->createRowEquals(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v10

    .line 197
    invoke-virtual {v9, v10}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 214
    :cond_2
    :goto_1
    goto :goto_0

    .line 200
    :cond_3
    move-object v9, v0

    iget v9, v9, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_4

    .line 201
    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v10}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v9

    move-object v6, v9

    .line 202
    move-object v9, v1

    move-object v10, v5

    invoke-virtual {v9, v10}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v9

    move-object v7, v9

    .line 203
    move-object v9, v1

    move-object v10, v1

    move-object v11, v6

    move-object v12, v7

    move-object v13, v0

    iget v13, v13, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    neg-int v13, v13

    const/4 v14, 0x0

    .line 205
    invoke-static {v10, v11, v12, v13, v14}, Landroid/support/constraint/solver/LinearSystem;->createRowEquals(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v10

    .line 203
    invoke-virtual {v9, v10}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 206
    goto :goto_1

    :cond_4
    move-object v9, v0

    iget v9, v9, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    const/high16 v10, -0x40800000    # -1.0f

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_2

    .line 207
    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9, v10}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v9

    move-object v6, v9

    .line 208
    move-object v9, v1

    move-object v10, v4

    invoke-virtual {v9, v10}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v9

    move-object v7, v9

    .line 209
    move-object v9, v1

    move-object v10, v5

    invoke-virtual {v9, v10}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v9

    move-object v8, v9

    .line 210
    move-object v9, v1

    move-object v10, v1

    move-object v11, v6

    move-object v12, v7

    move-object v13, v8

    move-object v14, v0

    iget v14, v14, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    move-object v15, v0

    iget-boolean v15, v15, Landroid/support/constraint/solver/widgets/Guideline;->mIsPositionRelaxed:Z

    .line 211
    invoke-static/range {v10 .. v15}, Landroid/support/constraint/solver/LinearSystem;->createRowDimensionPercent(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;FZ)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v10

    .line 210
    invoke-virtual {v9, v10}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    goto :goto_1
.end method

.method public cyclePosition()V
    .locals 3

    .prologue
    .line 285
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 287
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/Guideline;->inferRelativePercentPosition()V

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 290
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/Guideline;->inferRelativeEndPosition()V

    goto :goto_0

    .line 291
    :cond_2
    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 293
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/Guideline;->inferRelativeBeginPosition()V

    goto :goto_0
.end method

.method public getAnchor()Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .locals 2

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v0, v1

    return-object v0
.end method

.method public getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .locals 4

    .prologue
    .line 118
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/constraint/solver/widgets/Guideline$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    move-object v3, v1

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 134
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    :goto_0
    return-object v0

    .line 121
    :pswitch_0
    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 122
    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v0, v2

    goto :goto_0

    .line 128
    :pswitch_1
    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    if-nez v2, :cond_0

    .line 129
    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v0, v2

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getAnchors()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/solver/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method

.method public getHead()Landroid/support/constraint/solver/widgets/Rectangle;
    .locals 7

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/Guideline;->mHead:Landroid/support/constraint/solver/widgets/Rectangle;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/Guideline;->getDrawX()I

    move-result v2

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    sub-int/2addr v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/Guideline;->getDrawY()I

    move-result v3

    const/4 v4, 0x2

    move-object v5, v0

    iget v5, v5, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    const/4 v4, 0x2

    move-object v5, v0

    iget v5, v5, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    mul-int/2addr v4, v5

    const/4 v5, 0x2

    move-object v6, v0

    iget v6, v6, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    mul-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/support/constraint/solver/widgets/Rectangle;->setBounds(IIII)V

    .line 65
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/Guideline;->getOrientation()I

    move-result v1

    if-nez v1, :cond_0

    .line 66
    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/Guideline;->mHead:Landroid/support/constraint/solver/widgets/Rectangle;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/Guideline;->getDrawX()I

    move-result v2

    const/4 v3, 0x2

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    move-object v3, v0

    .line 67
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/Guideline;->getDrawY()I

    move-result v3

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    sub-int/2addr v3, v4

    const/4 v4, 0x2

    move-object v5, v0

    iget v5, v5, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    mul-int/2addr v4, v5

    const/4 v5, 0x2

    move-object v6, v0

    iget v6, v6, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    mul-int/2addr v5, v6

    .line 66
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/support/constraint/solver/widgets/Rectangle;->setBounds(IIII)V

    .line 70
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/Guideline;->mHead:Landroid/support/constraint/solver/widgets/Rectangle;

    move-object v0, v1

    return-object v0
.end method

.method public getOrientation()I
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    move v0, v1

    return v0
.end method

.method public getRelativeBegin()I
    .locals 2

    .prologue
    .line 175
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    move v0, v1

    return v0
.end method

.method public getRelativeBehaviour()I
    .locals 3

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 51
    const/4 v1, 0x0

    move v0, v1

    .line 59
    :goto_0
    return v0

    .line 53
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 54
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 56
    :cond_1
    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 57
    const/4 v1, 0x2

    move v0, v1

    goto :goto_0

    .line 59
    :cond_2
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method

.method public getRelativeEnd()I
    .locals 2

    .prologue
    .line 179
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    move v0, v1

    return v0
.end method

.method public getRelativePercent()F
    .locals 2

    .prologue
    .line 171
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    move v0, v1

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    const-string v1, "Guideline"

    move-object v0, v1

    return-object v0
.end method

.method inferRelativeBeginPosition()V
    .locals 4

    .prologue
    .line 269
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/Guideline;->getX()I

    move-result v2

    move v1, v2

    .line 270
    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    if-nez v2, :cond_0

    .line 271
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/Guideline;->getY()I

    move-result v2

    move v1, v2

    .line 273
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideBegin(I)V

    .line 274
    return-void
.end method

.method inferRelativeEndPosition()V
    .locals 4

    .prologue
    .line 277
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/Guideline;->getX()I

    move-result v3

    sub-int/2addr v2, v3

    move v1, v2

    .line 278
    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    if-nez v2, :cond_0

    .line 279
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/Guideline;->getY()I

    move-result v3

    sub-int/2addr v2, v3

    move v1, v2

    .line 281
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideEnd(I)V

    .line 282
    return-void
.end method

.method inferRelativePercentPosition()V
    .locals 4

    .prologue
    .line 261
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/Guideline;->getX()I

    move-result v2

    int-to-float v2, v2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move v1, v2

    .line 262
    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    if-nez v2, :cond_0

    .line 263
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/Guideline;->getY()I

    move-result v2

    int-to-float v2, v2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move v1, v2

    .line 265
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/Guideline;->setGuidePercent(F)V

    .line 266
    return-void
.end method

.method public setDrawOrigin(II)V
    .locals 8

    .prologue
    .line 237
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, v0

    iget v5, v5, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 238
    move v5, v1

    move-object v6, v0

    iget v6, v6, Landroid/support/constraint/solver/widgets/Guideline;->mOffsetX:I

    sub-int/2addr v5, v6

    move v3, v5

    .line 239
    move-object v5, v0

    iget v5, v5, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 240
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideBegin(I)V

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    move-object v5, v0

    iget v5, v5, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 242
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    move v7, v3

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideEnd(I)V

    goto :goto_0

    .line 243
    :cond_2
    move-object v5, v0

    iget v5, v5, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    .line 244
    move v5, v3

    int-to-float v5, v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    move v4, v5

    .line 245
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Landroid/support/constraint/solver/widgets/Guideline;->setGuidePercent(F)V

    goto :goto_0

    .line 248
    :cond_3
    move v5, v2

    move-object v6, v0

    iget v6, v6, Landroid/support/constraint/solver/widgets/Guideline;->mOffsetY:I

    sub-int/2addr v5, v6

    move v3, v5

    .line 249
    move-object v5, v0

    iget v5, v5, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 250
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideBegin(I)V

    goto :goto_0

    .line 251
    :cond_4
    move-object v5, v0

    iget v5, v5, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5

    .line 252
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    move v7, v3

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideEnd(I)V

    goto :goto_0

    .line 253
    :cond_5
    move-object v5, v0

    iget v5, v5, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    .line 254
    move v5, v3

    int-to-float v5, v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    move v4, v5

    .line 255
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Landroid/support/constraint/solver/widgets/Guideline;->setGuidePercent(F)V

    goto :goto_0
.end method

.method public setGuideBegin(I)V
    .locals 4

    .prologue
    .line 155
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    .line 156
    move-object v2, v0

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v2, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    .line 157
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    .line 158
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    .line 160
    :cond_0
    return-void
.end method

.method public setGuideEnd(I)V
    .locals 4

    .prologue
    .line 163
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    .line 164
    move-object v2, v0

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v2, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    .line 165
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    .line 166
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    .line 168
    :cond_0
    return-void
.end method

.method public setGuidePercent(F)V
    .locals 4

    .prologue
    .line 147
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 148
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    .line 149
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    .line 150
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    .line 152
    :cond_0
    return-void
.end method

.method public setGuidePercent(I)V
    .locals 5

    .prologue
    .line 143
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/Guideline;->setGuidePercent(F)V

    .line 144
    return-void
.end method

.method public setMinimumPosition(I)V
    .locals 4

    .prologue
    .line 106
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/constraint/solver/widgets/Guideline;->mMinimumPosition:I

    .line 107
    return-void
.end method

.method public setOrientation(I)V
    .locals 4

    .prologue
    .line 74
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    move v3, v1

    if-ne v2, v3, :cond_0

    .line 85
    :goto_0
    return-void

    .line 77
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    .line 78
    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 79
    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 80
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/Guideline;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput-object v3, v2, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 84
    :goto_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 85
    goto :goto_0

    .line 82
    :cond_1
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/Guideline;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput-object v3, v2, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_1
.end method

.method public setPositionRelaxed(Z)V
    .locals 4

    .prologue
    .line 110
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/constraint/solver/widgets/Guideline;->mIsPositionRelaxed:Z

    move v3, v1

    if-ne v2, v3, :cond_0

    .line 114
    :goto_0
    return-void

    .line 113
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/constraint/solver/widgets/Guideline;->mIsPositionRelaxed:Z

    .line 114
    goto :goto_0
.end method

.method public updateFromSolver(Landroid/support/constraint/solver/LinearSystem;I)V
    .locals 6

    .prologue
    .line 218
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    if-nez v4, :cond_0

    .line 233
    :goto_0
    return-void

    .line 221
    :cond_0
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4, v5}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v4

    move v3, v4

    .line 222
    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 223
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Landroid/support/constraint/solver/widgets/Guideline;->setX(I)V

    .line 224
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/constraint/solver/widgets/Guideline;->setY(I)V

    .line 225
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/constraint/solver/widgets/Guideline;->setHeight(I)V

    .line 226
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/constraint/solver/widgets/Guideline;->setWidth(I)V

    .line 233
    :goto_1
    goto :goto_0

    .line 228
    :cond_1
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/constraint/solver/widgets/Guideline;->setX(I)V

    .line 229
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Landroid/support/constraint/solver/widgets/Guideline;->setY(I)V

    .line 230
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/constraint/solver/widgets/Guideline;->setWidth(I)V

    .line 231
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/constraint/solver/widgets/Guideline;->setHeight(I)V

    goto :goto_1
.end method
