.class public Landroid/support/constraint/solver/SolverVariable;
.super Ljava/lang/Object;
.source "SolverVariable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/solver/SolverVariable$Type;
    }
.end annotation


# static fields
.field private static final INTERNAL_DEBUG:Z = false

.field static final MAX_STRENGTH:I = 0x6

.field public static final STRENGTH_EQUALITY:I = 0x5

.field public static final STRENGTH_HIGH:I = 0x3

.field public static final STRENGTH_HIGHEST:I = 0x4

.field public static final STRENGTH_LOW:I = 0x1

.field public static final STRENGTH_MEDIUM:I = 0x2

.field public static final STRENGTH_NONE:I

.field private static uniqueId:I


# instance fields
.field public computedValue:F

.field definitionId:I

.field public id:I

.field mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

.field mClientEquationsCount:I

.field private mName:Ljava/lang/String;

.field mType:Landroid/support/constraint/solver/SolverVariable$Type;

.field public strength:I

.field strengthVector:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    sput v0, Landroid/support/constraint/solver/SolverVariable;->uniqueId:I

    return-void
.end method

.method public constructor <init>(Landroid/support/constraint/solver/SolverVariable$Type;)V
    .locals 4

    .prologue
    .line 102
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 41
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/solver/SolverVariable;->id:I

    .line 42
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    .line 43
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/constraint/solver/SolverVariable;->strength:I

    .line 47
    move-object v2, v0

    const/4 v3, 0x6

    new-array v3, v3, [F

    iput-object v3, v2, Landroid/support/constraint/solver/SolverVariable;->strengthVector:[F

    .line 50
    move-object v2, v0

    const/16 v3, 0x8

    new-array v3, v3, [Landroid/support/constraint/solver/ArrayRow;

    iput-object v3, v2, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    .line 51
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    .line 103
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)V
    .locals 5

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 41
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/solver/SolverVariable;->id:I

    .line 42
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    .line 43
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/constraint/solver/SolverVariable;->strength:I

    .line 47
    move-object v3, v0

    const/4 v4, 0x6

    new-array v4, v4, [F

    iput-object v4, v3, Landroid/support/constraint/solver/SolverVariable;->strengthVector:[F

    .line 50
    move-object v3, v0

    const/16 v4, 0x8

    new-array v4, v4, [Landroid/support/constraint/solver/ArrayRow;

    iput-object v4, v3, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    .line 51
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    .line 98
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/constraint/solver/SolverVariable;->mName:Ljava/lang/String;

    .line 99
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    .line 100
    return-void
.end method

.method private static getUniqueName(Landroid/support/constraint/solver/SolverVariable$Type;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 80
    move-object v0, p0

    sget v1, Landroid/support/constraint/solver/SolverVariable;->uniqueId:I

    const/4 v2, 0x1

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/support/constraint/solver/SolverVariable;->uniqueId:I

    .line 81
    sget-object v1, Landroid/support/constraint/solver/SolverVariable$1;->$SwitchMap$android$support$constraint$solver$SolverVariable$Type:[I

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/constraint/solver/SolverVariable$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "V"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/support/constraint/solver/SolverVariable;->uniqueId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    :goto_0
    return-object v0

    .line 82
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "U"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/support/constraint/solver/SolverVariable;->uniqueId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 83
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "C"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/support/constraint/solver/SolverVariable;->uniqueId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 84
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/support/constraint/solver/SolverVariable;->uniqueId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 86
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/support/constraint/solver/SolverVariable;->uniqueId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method addClientEquation(Landroid/support/constraint/solver/ArrayRow;)V
    .locals 8

    .prologue
    .line 129
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    if-ge v3, v4, :cond_1

    .line 130
    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 139
    :goto_1
    return-void

    .line 129
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    :cond_1
    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    array-length v4, v4

    if-lt v3, v4, :cond_2

    .line 135
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    array-length v5, v5

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/support/constraint/solver/ArrayRow;

    iput-object v4, v3, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    .line 137
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    move-object v5, v1

    aput-object v5, v3, v4

    .line 138
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    .line 139
    goto :goto_1
.end method

.method clearStrengths()V
    .locals 5

    .prologue
    .line 110
    move-object v0, p0

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    move v2, v1

    const/4 v3, 0x6

    if-ge v2, v3, :cond_0

    .line 111
    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/SolverVariable;->strengthVector:[F

    move v3, v1

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 174
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/SolverVariable;->mName:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method removeClientEquation(Landroid/support/constraint/solver/ArrayRow;)V
    .locals 10

    .prologue
    .line 147
    move-object v0, p0

    move-object v1, p1

    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move-object v5, v0

    iget v5, v5, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    if-ge v4, v5, :cond_2

    .line 148
    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    move v5, v2

    aget-object v4, v4, v5

    move-object v5, v1

    if-ne v4, v5, :cond_1

    .line 149
    const/4 v4, 0x0

    move v3, v4

    :goto_1
    move v4, v3

    move-object v5, v0

    iget v5, v5, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    move v6, v2

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_0

    .line 150
    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    move v5, v2

    move v6, v3

    add-int/2addr v5, v6

    move-object v6, v0

    iget-object v6, v6, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    move v7, v2

    move v8, v3

    add-int/2addr v7, v8

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    .line 149
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 152
    :cond_0
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    .line 156
    :goto_2
    return-void

    .line 147
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    :cond_2
    goto :goto_2
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 159
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/constraint/solver/SolverVariable;->mName:Ljava/lang/String;

    .line 160
    move-object v1, v0

    sget-object v2, Landroid/support/constraint/solver/SolverVariable$Type;->UNKNOWN:Landroid/support/constraint/solver/SolverVariable$Type;

    iput-object v2, v1, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    .line 161
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/SolverVariable;->strength:I

    .line 162
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/solver/SolverVariable;->id:I

    .line 163
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    .line 164
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/SolverVariable;->computedValue:F

    .line 165
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    .line 166
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 177
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/constraint/solver/SolverVariable;->mName:Ljava/lang/String;

    return-void
.end method

.method public setType(Landroid/support/constraint/solver/SolverVariable$Type;)V
    .locals 4

    .prologue
    .line 179
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    .line 183
    return-void
.end method

.method strengthsToString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 116
    move-object v0, p0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 117
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/SolverVariable;->strengthVector:[F

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/SolverVariable;->strengthVector:[F

    move v5, v2

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 119
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/SolverVariable;->strengthVector:[F

    array-length v4, v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 117
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    goto :goto_1

    .line 125
    :cond_1
    move-object v3, v1

    move-object v0, v3

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 190
    move-object v0, p0

    const-string v2, ""

    move-object v1, v2

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/SolverVariable;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 196
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method
