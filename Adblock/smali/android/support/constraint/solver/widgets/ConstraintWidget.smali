.class public Landroid/support/constraint/solver/widgets/ConstraintWidget;
.super Ljava/lang/Object;
.source "ConstraintWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;,
        Landroid/support/constraint/solver/widgets/ConstraintWidget$ContentAlignment;
    }
.end annotation


# static fields
.field private static final AUTOTAG_CENTER:Z = false

.field public static final CHAIN_PACKED:I = 0x2

.field public static final CHAIN_SPREAD:I = 0x0

.field public static final CHAIN_SPREAD_INSIDE:I = 0x1

.field public static DEFAULT_BIAS:F = 0.0f

.field protected static final DIRECT:I = 0x2

.field public static final GONE:I = 0x8

.field public static final HORIZONTAL:I = 0x0

.field public static final INVISIBLE:I = 0x4

.field public static final MATCH_CONSTRAINT_SPREAD:I = 0x0

.field public static final MATCH_CONSTRAINT_WRAP:I = 0x1

.field protected static final SOLVER:I = 0x1

.field public static final UNKNOWN:I = -0x1

.field public static final VERTICAL:I = 0x1

.field public static final VISIBLE:I


# instance fields
.field protected mAnchors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/solver/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field mBaselineDistance:I

.field mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field mBottomHasCentered:Z

.field mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field mCenterX:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field mCenterY:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field private mCompanionWidget:Ljava/lang/Object;

.field private mContainerItemSkip:I

.field private mDebugName:Ljava/lang/String;

.field protected mDimensionRatio:F

.field protected mDimensionRatioSide:I

.field mDistToBottom:I

.field mDistToLeft:I

.field mDistToRight:I

.field mDistToTop:I

.field private mDrawHeight:I

.field private mDrawWidth:I

.field private mDrawX:I

.field private mDrawY:I

.field mHeight:I

.field mHorizontalBiasPercent:F

.field mHorizontalChainFixedPosition:Z

.field mHorizontalChainStyle:I

.field mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

.field mHorizontalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field public mHorizontalResolution:I

.field mHorizontalWeight:F

.field mHorizontalWrapVisited:Z

.field mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field mLeftHasCentered:Z

.field mMatchConstraintDefaultHeight:I

.field mMatchConstraintDefaultWidth:I

.field mMatchConstraintMaxHeight:I

.field mMatchConstraintMaxWidth:I

.field mMatchConstraintMinHeight:I

.field mMatchConstraintMinWidth:I

.field protected mMinHeight:I

.field protected mMinWidth:I

.field protected mOffsetX:I

.field protected mOffsetY:I

.field mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field mRightHasCentered:Z

.field private mSolverBottom:I

.field private mSolverLeft:I

.field private mSolverRight:I

.field private mSolverTop:I

.field mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field mTopHasCentered:Z

.field private mType:Ljava/lang/String;

.field mVerticalBiasPercent:F

.field mVerticalChainFixedPosition:Z

.field mVerticalChainStyle:I

.field mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

.field mVerticalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field public mVerticalResolution:I

.field mVerticalWeight:F

.field mVerticalWrapVisited:Z

.field private mVisibility:I

.field mWidth:I

.field private mWrapHeight:I

.field private mWrapWidth:I

.field protected mX:I

.field protected mY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    .line 239
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 62
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 63
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 65
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 66
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 67
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 68
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 69
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 70
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 88
    move-object v1, v0

    new-instance v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v3, v4, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 89
    move-object v1, v0

    new-instance v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v3, v4, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 90
    move-object v1, v0

    new-instance v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v3, v4, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 91
    move-object v1, v0

    new-instance v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v3, v4, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 92
    move-object v1, v0

    new-instance v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v3, v4, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 93
    move-object v1, v0

    new-instance v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v3, v4, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterX:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 94
    move-object v1, v0

    new-instance v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v3, v4, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterY:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 95
    move-object v1, v0

    new-instance v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v3, v4, v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 97
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    .line 100
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 103
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 104
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 105
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 106
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 108
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mSolverLeft:I

    .line 109
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mSolverTop:I

    .line 110
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mSolverRight:I

    .line 111
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mSolverBottom:I

    .line 114
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 115
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 118
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 119
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    .line 120
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawWidth:I

    .line 121
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawHeight:I

    .line 124
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 125
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 128
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 141
    move-object v1, v0

    sget v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 142
    move-object v1, v0

    sget v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 145
    move-object v1, v0

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 146
    move-object v1, v0

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 154
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 157
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 159
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 160
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 174
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 175
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 178
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalWeight:F

    .line 179
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalWeight:F

    .line 180
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 181
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 240
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->addAnchors()V

    .line 241
    return-void
.end method

.method public constructor <init>(II)V
    .locals 8

    .prologue
    .line 267
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v1

    move v7, v2

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>(IIII)V

    .line 268
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 11

    .prologue
    .line 251
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 62
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 63
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 65
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 66
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 67
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 68
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 69
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 70
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 88
    move-object v5, v0

    new-instance v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, v8, v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 89
    move-object v5, v0

    new-instance v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, v8, v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 90
    move-object v5, v0

    new-instance v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, v8, v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 91
    move-object v5, v0

    new-instance v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, v8, v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 92
    move-object v5, v0

    new-instance v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, v8, v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 93
    move-object v5, v0

    new-instance v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, v8, v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterX:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 94
    move-object v5, v0

    new-instance v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, v8, v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterY:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 95
    move-object v5, v0

    new-instance v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, v8, v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 97
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    .line 100
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 103
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 104
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 105
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 106
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 108
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mSolverLeft:I

    .line 109
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mSolverTop:I

    .line 110
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mSolverRight:I

    .line 111
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mSolverBottom:I

    .line 114
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 115
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 118
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 119
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    .line 120
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawWidth:I

    .line 121
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawHeight:I

    .line 124
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 125
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 128
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 141
    move-object v5, v0

    sget v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 142
    move-object v5, v0

    sget v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 145
    move-object v5, v0

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 146
    move-object v5, v0

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 154
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 157
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 159
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 160
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 174
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 175
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 178
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalWeight:F

    .line 179
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalWeight:F

    .line 180
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 181
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 252
    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 253
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 254
    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 255
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 256
    move-object v5, v0

    invoke-direct {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->addAnchors()V

    .line 257
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->forceUpdateDrawPosition()V

    .line 258
    return-void
.end method

.method private addAnchors()V
    .locals 3

    .prologue
    .line 298
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 299
    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 300
    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 301
    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 302
    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterX:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 303
    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterY:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 307
    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 308
    return-void
.end method

.method private applyConstraints(Landroid/support/constraint/solver/LinearSystem;ZZLandroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;IIIIFZZIII)V
    .locals 36

    .prologue
    .line 2251
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    move/from16 v17, p15

    move-object/from16 v26, v3

    move-object/from16 v27, v6

    invoke-virtual/range {v26 .. v27}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v26

    move-object/from16 v18, v26

    .line 2252
    move-object/from16 v26, v3

    move-object/from16 v27, v7

    invoke-virtual/range {v26 .. v27}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v26

    move-object/from16 v19, v26

    .line 2253
    move-object/from16 v26, v3

    move-object/from16 v27, v6

    invoke-virtual/range {v27 .. v27}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v26

    move-object/from16 v20, v26

    .line 2254
    move-object/from16 v26, v3

    move-object/from16 v27, v7

    invoke-virtual/range {v27 .. v27}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v26

    move-object/from16 v21, v26

    .line 2256
    move-object/from16 v26, v6

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v26

    move/from16 v22, v26

    .line 2257
    move-object/from16 v26, v7

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v26

    move/from16 v23, v26

    .line 2258
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    move/from16 v26, v0

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_0

    .line 2259
    const/16 v26, 0x0

    move/from16 v10, v26

    .line 2260
    const/16 v26, 0x1

    move/from16 v5, v26

    .line 2262
    :cond_0
    move-object/from16 v26, v20

    if-nez v26, :cond_4

    move-object/from16 v26, v21

    if-nez v26, :cond_4

    .line 2263
    move-object/from16 v26, v3

    move-object/from16 v27, v3

    invoke-virtual/range {v27 .. v27}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v27

    move-object/from16 v28, v18

    move/from16 v29, v8

    invoke-virtual/range {v27 .. v29}, Landroid/support/constraint/solver/ArrayRow;->createRowEquals(Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 2264
    move/from16 v26, v13

    if-nez v26, :cond_1

    .line 2265
    move/from16 v26, v4

    if-eqz v26, :cond_2

    .line 2266
    move-object/from16 v26, v3

    move-object/from16 v27, v3

    move-object/from16 v28, v19

    move-object/from16 v29, v18

    move/from16 v30, v11

    const/16 v31, 0x1

    invoke-static/range {v27 .. v31}, Landroid/support/constraint/solver/LinearSystem;->createRowEquals(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 2384
    :cond_1
    :goto_0
    return-void

    .line 2268
    :cond_2
    move/from16 v26, v5

    if-eqz v26, :cond_3

    .line 2269
    move-object/from16 v26, v3

    move-object/from16 v27, v3

    move-object/from16 v28, v19

    move-object/from16 v29, v18

    move/from16 v30, v10

    const/16 v31, 0x0

    .line 2270
    invoke-static/range {v27 .. v31}, Landroid/support/constraint/solver/LinearSystem;->createRowEquals(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v27

    .line 2269
    invoke-virtual/range {v26 .. v27}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    goto :goto_0

    .line 2272
    :cond_3
    move-object/from16 v26, v3

    move-object/from16 v27, v3

    invoke-virtual/range {v27 .. v27}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v27

    move-object/from16 v28, v19

    move/from16 v29, v9

    invoke-virtual/range {v27 .. v29}, Landroid/support/constraint/solver/ArrayRow;->createRowEquals(Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    goto :goto_0

    .line 2276
    :cond_4
    move-object/from16 v26, v20

    if-eqz v26, :cond_7

    move-object/from16 v26, v21

    if-nez v26, :cond_7

    .line 2277
    move-object/from16 v26, v3

    move-object/from16 v27, v3

    invoke-virtual/range {v27 .. v27}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v27

    move-object/from16 v28, v18

    move-object/from16 v29, v20

    move/from16 v30, v22

    invoke-virtual/range {v27 .. v30}, Landroid/support/constraint/solver/ArrayRow;->createRowEquals(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 2278
    move/from16 v26, v4

    if-eqz v26, :cond_5

    .line 2279
    move-object/from16 v26, v3

    move-object/from16 v27, v3

    move-object/from16 v28, v19

    move-object/from16 v29, v18

    move/from16 v30, v11

    const/16 v31, 0x1

    invoke-static/range {v27 .. v31}, Landroid/support/constraint/solver/LinearSystem;->createRowEquals(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    goto :goto_0

    .line 2280
    :cond_5
    move/from16 v26, v13

    if-nez v26, :cond_1

    .line 2281
    move/from16 v26, v5

    if-eqz v26, :cond_6

    .line 2282
    move-object/from16 v26, v3

    move-object/from16 v27, v3

    invoke-virtual/range {v27 .. v27}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v27

    move-object/from16 v28, v19

    move-object/from16 v29, v18

    move/from16 v30, v10

    invoke-virtual/range {v27 .. v30}, Landroid/support/constraint/solver/ArrayRow;->createRowEquals(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    goto :goto_0

    .line 2284
    :cond_6
    move-object/from16 v26, v3

    move-object/from16 v27, v3

    invoke-virtual/range {v27 .. v27}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v27

    move-object/from16 v28, v19

    move/from16 v29, v9

    invoke-virtual/range {v27 .. v29}, Landroid/support/constraint/solver/ArrayRow;->createRowEquals(Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    goto/16 :goto_0

    .line 2287
    :cond_7
    move-object/from16 v26, v20

    if-nez v26, :cond_a

    move-object/from16 v26, v21

    if-eqz v26, :cond_a

    .line 2288
    move-object/from16 v26, v3

    move-object/from16 v27, v3

    invoke-virtual/range {v27 .. v27}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v27

    move-object/from16 v28, v19

    move-object/from16 v29, v21

    const/16 v30, -0x1

    move/from16 v31, v23

    mul-int v30, v30, v31

    invoke-virtual/range {v27 .. v30}, Landroid/support/constraint/solver/ArrayRow;->createRowEquals(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 2289
    move/from16 v26, v4

    if-eqz v26, :cond_8

    .line 2290
    move-object/from16 v26, v3

    move-object/from16 v27, v3

    move-object/from16 v28, v19

    move-object/from16 v29, v18

    move/from16 v30, v11

    const/16 v31, 0x1

    invoke-static/range {v27 .. v31}, Landroid/support/constraint/solver/LinearSystem;->createRowEquals(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    goto/16 :goto_0

    .line 2291
    :cond_8
    move/from16 v26, v13

    if-nez v26, :cond_1

    .line 2292
    move/from16 v26, v5

    if-eqz v26, :cond_9

    .line 2293
    move-object/from16 v26, v3

    move-object/from16 v27, v3

    invoke-virtual/range {v27 .. v27}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v27

    move-object/from16 v28, v19

    move-object/from16 v29, v18

    move/from16 v30, v10

    invoke-virtual/range {v27 .. v30}, Landroid/support/constraint/solver/ArrayRow;->createRowEquals(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    goto/16 :goto_0

    .line 2295
    :cond_9
    move-object/from16 v26, v3

    move-object/from16 v27, v3

    invoke-virtual/range {v27 .. v27}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v27

    move-object/from16 v28, v18

    move/from16 v29, v8

    invoke-virtual/range {v27 .. v29}, Landroid/support/constraint/solver/ArrayRow;->createRowEquals(Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    goto/16 :goto_0

    .line 2299
    :cond_a
    move/from16 v26, v5

    if-eqz v26, :cond_11

    .line 2300
    move/from16 v26, v4

    if-eqz v26, :cond_b

    .line 2301
    move-object/from16 v26, v3

    move-object/from16 v27, v3

    move-object/from16 v28, v19

    move-object/from16 v29, v18

    move/from16 v30, v11

    const/16 v31, 0x1

    .line 2302
    invoke-static/range {v27 .. v31}, Landroid/support/constraint/solver/LinearSystem;->createRowEquals(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v27

    .line 2301
    invoke-virtual/range {v26 .. v27}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 2307
    :goto_1
    move-object/from16 v26, v6

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getStrength()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    move-result-object v26

    move-object/from16 v27, v7

    invoke-virtual/range {v27 .. v27}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getStrength()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_d

    .line 2308
    move-object/from16 v26, v6

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getStrength()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    move-result-object v26

    sget-object v27, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_c

    .line 2309
    move-object/from16 v26, v3

    move-object/from16 v27, v3

    invoke-virtual/range {v27 .. v27}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v27

    move-object/from16 v28, v18

    move-object/from16 v29, v20

    move/from16 v30, v22

    invoke-virtual/range {v27 .. v30}, Landroid/support/constraint/solver/ArrayRow;->createRowEquals(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 2310
    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/solver/LinearSystem;->createSlackVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v26

    move-object/from16 v24, v26

    .line 2311
    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v26

    move-object/from16 v25, v26

    .line 2312
    move-object/from16 v26, v25

    move-object/from16 v27, v19

    move-object/from16 v28, v21

    move-object/from16 v29, v24

    const/16 v30, -0x1

    move/from16 v31, v23

    mul-int v30, v30, v31

    invoke-virtual/range {v26 .. v30}, Landroid/support/constraint/solver/ArrayRow;->createRowLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v26

    .line 2313
    move-object/from16 v26, v3

    move-object/from16 v27, v25

    invoke-virtual/range {v26 .. v27}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 2314
    goto/16 :goto_0

    .line 2304
    :cond_b
    move-object/from16 v26, v3

    move-object/from16 v27, v3

    invoke-virtual/range {v27 .. v27}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v27

    move-object/from16 v28, v19

    move-object/from16 v29, v18

    move/from16 v30, v10

    invoke-virtual/range {v27 .. v30}, Landroid/support/constraint/solver/ArrayRow;->createRowEquals(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    goto :goto_1

    .line 2315
    :cond_c
    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/solver/LinearSystem;->createSlackVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v26

    move-object/from16 v24, v26

    .line 2316
    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v26

    move-object/from16 v25, v26

    .line 2317
    move-object/from16 v26, v25

    move-object/from16 v27, v18

    move-object/from16 v28, v20

    move-object/from16 v29, v24

    move/from16 v30, v22

    invoke-virtual/range {v26 .. v30}, Landroid/support/constraint/solver/ArrayRow;->createRowGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v26

    .line 2318
    move-object/from16 v26, v3

    move-object/from16 v27, v25

    invoke-virtual/range {v26 .. v27}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 2319
    move-object/from16 v26, v3

    move-object/from16 v27, v3

    invoke-virtual/range {v27 .. v27}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v27

    move-object/from16 v28, v19

    move-object/from16 v29, v21

    const/16 v30, -0x1

    move/from16 v31, v23

    mul-int v30, v30, v31

    invoke-virtual/range {v27 .. v30}, Landroid/support/constraint/solver/ArrayRow;->createRowEquals(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 2320
    goto/16 :goto_0

    .line 2323
    :cond_d
    move-object/from16 v26, v20

    move-object/from16 v27, v21

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_e

    .line 2324
    move-object/from16 v26, v3

    move-object/from16 v27, v3

    move-object/from16 v28, v18

    move-object/from16 v29, v20

    const/16 v30, 0x0

    const/high16 v31, 0x3f000000    # 0.5f

    move-object/from16 v32, v21

    move-object/from16 v33, v19

    const/16 v34, 0x0

    const/16 v35, 0x1

    .line 2325
    invoke-static/range {v27 .. v35}, Landroid/support/constraint/solver/LinearSystem;->createRowCentering(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v27

    .line 2324
    invoke-virtual/range {v26 .. v27}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    goto/16 :goto_0

    .line 2327
    :cond_e
    move/from16 v26, v14

    if-nez v26, :cond_1

    .line 2328
    move-object/from16 v26, v6

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getConnectionType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    move-result-object v26

    sget-object v27, Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;->STRICT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_f

    const/16 v26, 0x1

    :goto_2
    move/from16 v24, v26

    .line 2330
    move-object/from16 v26, v3

    move-object/from16 v27, v3

    move-object/from16 v28, v18

    move-object/from16 v29, v20

    move/from16 v30, v22

    move/from16 v31, v24

    .line 2331
    invoke-static/range {v27 .. v31}, Landroid/support/constraint/solver/LinearSystem;->createRowGreaterThan(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v27

    .line 2330
    invoke-virtual/range {v26 .. v27}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 2333
    move-object/from16 v26, v7

    invoke-virtual/range {v26 .. v26}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getConnectionType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    move-result-object v26

    sget-object v27, Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;->STRICT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_10

    const/16 v26, 0x1

    :goto_3
    move/from16 v24, v26

    .line 2335
    move-object/from16 v26, v3

    move-object/from16 v27, v3

    move-object/from16 v28, v19

    move-object/from16 v29, v21

    const/16 v30, -0x1

    move/from16 v31, v23

    mul-int v30, v30, v31

    move/from16 v31, v24

    .line 2336
    invoke-static/range {v27 .. v31}, Landroid/support/constraint/solver/LinearSystem;->createRowLowerThan(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v27

    .line 2335
    invoke-virtual/range {v26 .. v27}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 2339
    move-object/from16 v26, v3

    move-object/from16 v27, v3

    move-object/from16 v28, v18

    move-object/from16 v29, v20

    move/from16 v30, v22

    move/from16 v31, v12

    move-object/from16 v32, v21

    move-object/from16 v33, v19

    move/from16 v34, v23

    const/16 v35, 0x0

    .line 2340
    invoke-static/range {v27 .. v35}, Landroid/support/constraint/solver/LinearSystem;->createRowCentering(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v27

    .line 2339
    invoke-virtual/range {v26 .. v27}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 2343
    goto/16 :goto_0

    .line 2328
    :cond_f
    const/16 v26, 0x0

    goto :goto_2

    .line 2333
    :cond_10
    const/16 v26, 0x0

    goto :goto_3

    .line 2345
    :cond_11
    move/from16 v26, v13

    if-eqz v26, :cond_12

    .line 2346
    move-object/from16 v26, v3

    move-object/from16 v27, v18

    move-object/from16 v28, v20

    move/from16 v29, v22

    const/16 v30, 0x3

    invoke-virtual/range {v26 .. v30}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2347
    move-object/from16 v26, v3

    move-object/from16 v27, v19

    move-object/from16 v28, v21

    const/16 v29, -0x1

    move/from16 v30, v23

    mul-int v29, v29, v30

    const/16 v30, 0x3

    invoke-virtual/range {v26 .. v30}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2348
    move-object/from16 v26, v3

    move-object/from16 v27, v3

    move-object/from16 v28, v18

    move-object/from16 v29, v20

    move/from16 v30, v22

    move/from16 v31, v12

    move-object/from16 v32, v21

    move-object/from16 v33, v19

    move/from16 v34, v23

    const/16 v35, 0x1

    .line 2349
    invoke-static/range {v27 .. v35}, Landroid/support/constraint/solver/LinearSystem;->createRowCentering(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v27

    .line 2348
    invoke-virtual/range {v26 .. v27}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    goto/16 :goto_0

    .line 2351
    :cond_12
    move/from16 v26, v14

    if-nez v26, :cond_1

    .line 2352
    move/from16 v26, v15

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_16

    .line 2353
    move/from16 v26, v16

    move/from16 v27, v10

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_13

    .line 2354
    move/from16 v26, v16

    move/from16 v10, v26

    .line 2356
    :cond_13
    move/from16 v26, v17

    if-lez v26, :cond_14

    .line 2357
    move/from16 v26, v17

    move/from16 v27, v10

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_15

    .line 2358
    move/from16 v26, v17

    move/from16 v10, v26

    .line 2363
    :cond_14
    :goto_4
    move-object/from16 v26, v3

    move-object/from16 v27, v19

    move-object/from16 v28, v18

    move/from16 v29, v10

    const/16 v30, 0x3

    invoke-virtual/range {v26 .. v30}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v26

    .line 2364
    move-object/from16 v26, v3

    move-object/from16 v27, v18

    move-object/from16 v28, v20

    move/from16 v29, v22

    const/16 v30, 0x2

    invoke-virtual/range {v26 .. v30}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2365
    move-object/from16 v26, v3

    move-object/from16 v27, v19

    move-object/from16 v28, v21

    move/from16 v29, v23

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    const/16 v30, 0x2

    invoke-virtual/range {v26 .. v30}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2366
    move-object/from16 v26, v3

    move-object/from16 v27, v18

    move-object/from16 v28, v20

    move/from16 v29, v22

    move/from16 v30, v12

    move-object/from16 v31, v21

    move-object/from16 v32, v19

    move/from16 v33, v23

    const/16 v34, 0x4

    invoke-virtual/range {v26 .. v34}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto/16 :goto_0

    .line 2360
    :cond_15
    move-object/from16 v26, v3

    move-object/from16 v27, v19

    move-object/from16 v28, v18

    move/from16 v29, v17

    const/16 v30, 0x3

    invoke-virtual/range {v26 .. v30}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_4

    .line 2369
    :cond_16
    move/from16 v26, v16

    if-nez v26, :cond_17

    move/from16 v26, v17

    if-nez v26, :cond_17

    .line 2370
    move-object/from16 v26, v3

    move-object/from16 v27, v3

    invoke-virtual/range {v27 .. v27}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v27

    move-object/from16 v28, v18

    move-object/from16 v29, v20

    move/from16 v30, v22

    invoke-virtual/range {v27 .. v30}, Landroid/support/constraint/solver/ArrayRow;->createRowEquals(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 2371
    move-object/from16 v26, v3

    move-object/from16 v27, v3

    invoke-virtual/range {v27 .. v27}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v27

    move-object/from16 v28, v19

    move-object/from16 v29, v21

    const/16 v30, -0x1

    move/from16 v31, v23

    mul-int v30, v30, v31

    invoke-virtual/range {v27 .. v30}, Landroid/support/constraint/solver/ArrayRow;->createRowEquals(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    goto/16 :goto_0

    .line 2373
    :cond_17
    move/from16 v26, v17

    if-lez v26, :cond_18

    .line 2374
    move-object/from16 v26, v3

    move-object/from16 v27, v19

    move-object/from16 v28, v18

    move/from16 v29, v17

    const/16 v30, 0x3

    invoke-virtual/range {v26 .. v30}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2376
    :cond_18
    move-object/from16 v26, v3

    move-object/from16 v27, v18

    move-object/from16 v28, v20

    move/from16 v29, v22

    const/16 v30, 0x2

    invoke-virtual/range {v26 .. v30}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2377
    move-object/from16 v26, v3

    move-object/from16 v27, v19

    move-object/from16 v28, v21

    move/from16 v29, v23

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    const/16 v30, 0x2

    invoke-virtual/range {v26 .. v30}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2378
    move-object/from16 v26, v3

    move-object/from16 v27, v18

    move-object/from16 v28, v20

    move/from16 v29, v22

    move/from16 v30, v12

    move-object/from16 v31, v21

    move-object/from16 v32, v19

    move/from16 v33, v23

    const/16 v34, 0x4

    invoke-virtual/range {v26 .. v34}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto/16 :goto_0
.end method


# virtual methods
.method public addToSolver(Landroid/support/constraint/solver/LinearSystem;)V
    .locals 5

    .prologue
    .line 1958
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const v4, 0x7fffffff

    invoke-virtual {v2, v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->addToSolver(Landroid/support/constraint/solver/LinearSystem;I)V

    .line 1959
    return-void
.end method

.method public addToSolver(Landroid/support/constraint/solver/LinearSystem;I)V
    .locals 44

    .prologue
    .line 1967
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    const/16 v28, 0x0

    move-object/from16 v5, v28

    .line 1968
    const/16 v28, 0x0

    move-object/from16 v6, v28

    .line 1969
    const/16 v28, 0x0

    move-object/from16 v7, v28

    .line 1970
    const/16 v28, 0x0

    move-object/from16 v8, v28

    .line 1971
    const/16 v28, 0x0

    move-object/from16 v9, v28

    .line 1972
    move/from16 v28, v4

    const v29, 0x7fffffff

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_0

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    move/from16 v28, v0

    move/from16 v29, v4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1

    .line 1973
    :cond_0
    move-object/from16 v28, v3

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v28

    move-object/from16 v5, v28

    .line 1975
    :cond_1
    move/from16 v28, v4

    const v29, 0x7fffffff

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_2

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    move/from16 v28, v0

    move/from16 v29, v4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_3

    .line 1976
    :cond_2
    move-object/from16 v28, v3

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v28

    move-object/from16 v6, v28

    .line 1978
    :cond_3
    move/from16 v28, v4

    const v29, 0x7fffffff

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_4

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    move/from16 v28, v0

    move/from16 v29, v4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_5

    .line 1979
    :cond_4
    move-object/from16 v28, v3

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v28

    move-object/from16 v7, v28

    .line 1981
    :cond_5
    move/from16 v28, v4

    const v29, 0x7fffffff

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_6

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    move/from16 v28, v0

    move/from16 v29, v4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_7

    .line 1982
    :cond_6
    move-object/from16 v28, v3

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v28

    move-object/from16 v8, v28

    .line 1984
    :cond_7
    move/from16 v28, v4

    const v29, 0x7fffffff

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_8

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    move/from16 v28, v0

    move/from16 v29, v4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_9

    .line 1985
    :cond_8
    move-object/from16 v28, v3

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v28

    move-object/from16 v9, v28

    .line 1988
    :cond_9
    const/16 v28, 0x0

    move/from16 v10, v28

    .line 1989
    const/16 v28, 0x0

    move/from16 v11, v28

    .line 1991
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v28, v0

    if-eqz v28, :cond_17

    .line 1993
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    if-eqz v28, :cond_a

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_b

    :cond_a
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    if-eqz v28, :cond_c

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_c

    .line 1995
    :cond_b
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v28, v0

    check-cast v28, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v29, v2

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->addChain(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)V

    .line 1996
    const/16 v28, 0x1

    move/from16 v10, v28

    .line 1999
    :cond_c
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    if-eqz v28, :cond_d

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_e

    :cond_d
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    if-eqz v28, :cond_f

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_f

    .line 2001
    :cond_e
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v28, v0

    check-cast v28, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v29, v2

    const/16 v30, 0x1

    invoke-virtual/range {v28 .. v30}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->addChain(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)V

    .line 2002
    const/16 v28, 0x1

    move/from16 v11, v28

    .line 2011
    :cond_f
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v28

    sget-object v29, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_13

    move/from16 v28, v10

    if-nez v28, :cond_13

    .line 2013
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    if-eqz v28, :cond_10

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v28, v0

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_23

    .line 2015
    :cond_10
    move-object/from16 v28, v3

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v28

    move-object/from16 v12, v28

    .line 2016
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v28

    move-object/from16 v13, v28

    .line 2017
    move-object/from16 v28, v13

    move-object/from16 v29, v5

    move-object/from16 v30, v12

    move-object/from16 v31, v3

    invoke-virtual/range {v31 .. v31}, Landroid/support/constraint/solver/LinearSystem;->createSlackVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v28 .. v32}, Landroid/support/constraint/solver/ArrayRow;->createRowGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v28

    .line 2018
    move-object/from16 v28, v3

    move-object/from16 v29, v13

    invoke-virtual/range {v28 .. v29}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 2024
    :cond_11
    :goto_0
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    if-eqz v28, :cond_12

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v28, v0

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_24

    .line 2026
    :cond_12
    move-object/from16 v28, v3

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v28

    move-object/from16 v12, v28

    .line 2027
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v28

    move-object/from16 v13, v28

    .line 2028
    move-object/from16 v28, v13

    move-object/from16 v29, v12

    move-object/from16 v30, v6

    move-object/from16 v31, v3

    invoke-virtual/range {v31 .. v31}, Landroid/support/constraint/solver/LinearSystem;->createSlackVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v28 .. v32}, Landroid/support/constraint/solver/ArrayRow;->createRowGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v28

    .line 2029
    move-object/from16 v28, v3

    move-object/from16 v29, v13

    invoke-virtual/range {v28 .. v29}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 2036
    :cond_13
    :goto_1
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v28

    sget-object v29, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_17

    move/from16 v28, v11

    if-nez v28, :cond_17

    .line 2038
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    if-eqz v28, :cond_14

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v28, v0

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_25

    .line 2040
    :cond_14
    move-object/from16 v28, v3

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v28

    move-object/from16 v12, v28

    .line 2041
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v28

    move-object/from16 v13, v28

    .line 2042
    move-object/from16 v28, v13

    move-object/from16 v29, v7

    move-object/from16 v30, v12

    move-object/from16 v31, v3

    invoke-virtual/range {v31 .. v31}, Landroid/support/constraint/solver/LinearSystem;->createSlackVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v28 .. v32}, Landroid/support/constraint/solver/ArrayRow;->createRowGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v28

    .line 2043
    move-object/from16 v28, v3

    move-object/from16 v29, v13

    invoke-virtual/range {v28 .. v29}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 2048
    :cond_15
    :goto_2
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    if-eqz v28, :cond_16

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v28, v0

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_26

    .line 2050
    :cond_16
    move-object/from16 v28, v3

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v28

    move-object/from16 v12, v28

    .line 2051
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v28

    move-object/from16 v13, v28

    .line 2052
    move-object/from16 v28, v13

    move-object/from16 v29, v12

    move-object/from16 v30, v8

    move-object/from16 v31, v3

    invoke-virtual/range {v31 .. v31}, Landroid/support/constraint/solver/LinearSystem;->createSlackVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v28 .. v32}, Landroid/support/constraint/solver/ArrayRow;->createRowGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v28

    .line 2053
    move-object/from16 v28, v3

    move-object/from16 v29, v13

    invoke-virtual/range {v28 .. v29}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 2061
    :cond_17
    :goto_3
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    move/from16 v28, v0

    move/from16 v12, v28

    .line 2062
    move/from16 v28, v12

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_18

    .line 2063
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    move/from16 v28, v0

    move/from16 v12, v28

    .line 2065
    :cond_18
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    move/from16 v28, v0

    move/from16 v13, v28

    .line 2066
    move/from16 v28, v13

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_19

    .line 2067
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    move/from16 v28, v0

    move/from16 v13, v28

    .line 2071
    :cond_19
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v28, v0

    sget-object v29, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_27

    const/16 v28, 0x1

    :goto_4
    move/from16 v14, v28

    .line 2072
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v28, v0

    sget-object v29, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_28

    const/16 v28, 0x1

    :goto_5
    move/from16 v15, v28

    .line 2074
    move/from16 v28, v14

    if-nez v28, :cond_1b

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1b

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1b

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1a

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    if-nez v28, :cond_1b

    .line 2076
    :cond_1a
    const/16 v28, 0x1

    move/from16 v14, v28

    .line 2078
    :cond_1b
    move/from16 v28, v15

    if-nez v28, :cond_1e

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1e

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1e

    .line 2079
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1c

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    if-nez v28, :cond_1e

    .line 2081
    :cond_1c
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    move/from16 v28, v0

    if-eqz v28, :cond_1d

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1e

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1d

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    if-nez v28, :cond_1e

    .line 2084
    :cond_1d
    const/16 v28, 0x1

    move/from16 v15, v28

    .line 2091
    :cond_1e
    const/16 v28, 0x0

    move/from16 v16, v28

    .line 2092
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    move/from16 v28, v0

    move/from16 v17, v28

    .line 2093
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    move/from16 v28, v0

    move/from16 v18, v28

    .line 2094
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    move/from16 v28, v0

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-lez v28, :cond_1f

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    move/from16 v28, v0

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_1f

    .line 2095
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v28, v0

    sget-object v29, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_2a

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v28, v0

    sget-object v29, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_2a

    .line 2097
    const/16 v28, 0x1

    move/from16 v16, v28

    .line 2098
    move/from16 v28, v14

    if-eqz v28, :cond_29

    move/from16 v28, v15

    if-nez v28, :cond_29

    .line 2099
    const/16 v28, 0x0

    move/from16 v17, v28

    .line 2122
    :cond_1f
    :goto_6
    move/from16 v28, v16

    if-eqz v28, :cond_2d

    move/from16 v28, v17

    if-eqz v28, :cond_20

    move/from16 v28, v17

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2d

    :cond_20
    const/16 v28, 0x1

    :goto_7
    move/from16 v19, v28

    .line 2126
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v28, v0

    sget-object v29, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_2e

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    instance-of v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move/from16 v28, v0

    if-eqz v28, :cond_2e

    const/16 v28, 0x1

    :goto_8
    move/from16 v20, v28

    .line 2128
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_22

    move/from16 v28, v4

    const v29, 0x7fffffff

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_21

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    move/from16 v28, v0

    move/from16 v29, v4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_22

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    move/from16 v28, v0

    move/from16 v29, v4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_22

    .line 2130
    :cond_21
    move/from16 v28, v19

    if-eqz v28, :cond_2f

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    if-eqz v28, :cond_2f

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    if-eqz v28, :cond_2f

    .line 2131
    move-object/from16 v28, v3

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v28

    move-object/from16 v21, v28

    .line 2132
    move-object/from16 v28, v3

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v28

    move-object/from16 v22, v28

    .line 2133
    move-object/from16 v28, v3

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v28

    move-object/from16 v23, v28

    .line 2134
    move-object/from16 v28, v3

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v28

    move-object/from16 v24, v28

    .line 2135
    move-object/from16 v28, v3

    move-object/from16 v29, v21

    move-object/from16 v30, v23

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v31

    const/16 v32, 0x3

    invoke-virtual/range {v28 .. v32}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2136
    move-object/from16 v28, v3

    move-object/from16 v29, v22

    move-object/from16 v30, v24

    const/16 v31, -0x1

    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v32

    mul-int v31, v31, v32

    const/16 v32, 0x3

    invoke-virtual/range {v28 .. v32}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2137
    move/from16 v28, v10

    if-nez v28, :cond_22

    .line 2138
    move-object/from16 v28, v3

    move-object/from16 v29, v21

    move-object/from16 v30, v23

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v31

    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    move/from16 v32, v0

    move-object/from16 v33, v24

    move-object/from16 v34, v22

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v35

    const/16 v36, 0x4

    invoke-virtual/range {v28 .. v36}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2148
    :cond_22
    :goto_9
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_30

    .line 2232
    :goto_a
    return-void

    .line 2019
    :cond_23
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    if-eqz v28, :cond_11

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v28, v0

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_11

    .line 2021
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    sget-object v29, Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;->STRICT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    invoke-virtual/range {v28 .. v29}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->setConnectionType(Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;)V

    goto/16 :goto_0

    .line 2030
    :cond_24
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    if-eqz v28, :cond_13

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v28, v0

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_13

    .line 2032
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    sget-object v29, Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;->STRICT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    invoke-virtual/range {v28 .. v29}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->setConnectionType(Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;)V

    goto/16 :goto_1

    .line 2044
    :cond_25
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    if-eqz v28, :cond_15

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v28, v0

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_15

    .line 2046
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    sget-object v29, Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;->STRICT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    invoke-virtual/range {v28 .. v29}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->setConnectionType(Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;)V

    goto/16 :goto_2

    .line 2054
    :cond_26
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    if-eqz v28, :cond_17

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v28, v0

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_17

    .line 2056
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    sget-object v29, Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;->STRICT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;

    invoke-virtual/range {v28 .. v29}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->setConnectionType(Landroid/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType;)V

    goto/16 :goto_3

    .line 2071
    :cond_27
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 2072
    :cond_28
    const/16 v28, 0x0

    goto/16 :goto_5

    .line 2100
    :cond_29
    move/from16 v28, v14

    if-nez v28, :cond_1f

    move/from16 v28, v15

    if-eqz v28, :cond_1f

    .line 2101
    const/16 v28, 0x1

    move/from16 v17, v28

    .line 2102
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    move/from16 v28, v0

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1f

    .line 2104
    const/high16 v28, 0x3f800000    # 1.0f

    move/from16 v29, v18

    div-float v28, v28, v29

    move/from16 v18, v28

    goto/16 :goto_6

    .line 2107
    :cond_2a
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v28, v0

    sget-object v29, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_2b

    .line 2108
    const/16 v28, 0x0

    move/from16 v17, v28

    .line 2109
    move/from16 v28, v18

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v12, v28

    .line 2110
    const/16 v28, 0x1

    move/from16 v14, v28

    goto/16 :goto_6

    .line 2111
    :cond_2b
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v28, v0

    sget-object v29, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_1f

    .line 2112
    const/16 v28, 0x1

    move/from16 v17, v28

    .line 2113
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    move/from16 v28, v0

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2c

    .line 2115
    const/high16 v28, 0x3f800000    # 1.0f

    move/from16 v29, v18

    div-float v28, v28, v29

    move/from16 v18, v28

    .line 2117
    :cond_2c
    move/from16 v28, v18

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v13, v28

    .line 2118
    const/16 v28, 0x1

    move/from16 v15, v28

    goto/16 :goto_6

    .line 2122
    :cond_2d
    const/16 v28, 0x0

    goto/16 :goto_7

    .line 2126
    :cond_2e
    const/16 v28, 0x0

    goto/16 :goto_8

    .line 2142
    :cond_2f
    move-object/from16 v28, v2

    move-object/from16 v29, v3

    move/from16 v30, v20

    move/from16 v31, v14

    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v32, v0

    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v33, v0

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    move/from16 v34, v0

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    move/from16 v35, v0

    move/from16 v36, v12

    add-int v35, v35, v36

    move/from16 v36, v12

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    move/from16 v37, v0

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    move/from16 v38, v0

    move/from16 v39, v19

    move/from16 v40, v10

    move-object/from16 v41, v2

    move-object/from16 v0, v41

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    move/from16 v41, v0

    move-object/from16 v42, v2

    move-object/from16 v0, v42

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    move/from16 v42, v0

    move-object/from16 v43, v2

    move-object/from16 v0, v43

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    move/from16 v43, v0

    invoke-direct/range {v28 .. v43}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->applyConstraints(Landroid/support/constraint/solver/LinearSystem;ZZLandroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;IIIIFZZIII)V

    goto/16 :goto_9

    .line 2152
    :cond_30
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v28, v0

    sget-object v29, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_39

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    instance-of v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move/from16 v28, v0

    if-eqz v28, :cond_39

    const/16 v28, 0x1

    :goto_b
    move/from16 v20, v28

    .line 2155
    move/from16 v28, v16

    if-eqz v28, :cond_3a

    move/from16 v28, v17

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_31

    move/from16 v28, v17

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_3a

    :cond_31
    const/16 v28, 0x1

    :goto_c
    move/from16 v21, v28

    .line 2157
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    move/from16 v28, v0

    if-lez v28, :cond_3c

    .line 2158
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v22, v28

    .line 2159
    move/from16 v28, v4

    const v29, 0x7fffffff

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_32

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    move/from16 v28, v0

    move/from16 v29, v4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_33

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    move/from16 v28, v0

    move/from16 v29, v4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_33

    .line 2160
    :cond_32
    move-object/from16 v28, v3

    move-object/from16 v29, v9

    move-object/from16 v30, v7

    move-object/from16 v31, v2

    invoke-virtual/range {v31 .. v31}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v31

    const/16 v32, 0x5

    invoke-virtual/range {v28 .. v32}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v28

    .line 2162
    :cond_33
    move/from16 v28, v13

    move/from16 v23, v28

    .line 2163
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    if-eqz v28, :cond_34

    .line 2164
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    move/from16 v28, v0

    move/from16 v13, v28

    .line 2165
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v22, v28

    .line 2167
    :cond_34
    move/from16 v28, v4

    const v29, 0x7fffffff

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_35

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    move/from16 v28, v0

    move/from16 v29, v4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_36

    move-object/from16 v28, v22

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    move/from16 v28, v0

    move/from16 v29, v4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_36

    .line 2168
    :cond_35
    move/from16 v28, v21

    if-eqz v28, :cond_3b

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    if-eqz v28, :cond_3b

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    if-eqz v28, :cond_3b

    .line 2169
    move-object/from16 v28, v3

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v28

    move-object/from16 v24, v28

    .line 2170
    move-object/from16 v28, v3

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v28

    move-object/from16 v25, v28

    .line 2171
    move-object/from16 v28, v3

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v28

    move-object/from16 v26, v28

    .line 2172
    move-object/from16 v28, v3

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v28

    move-object/from16 v27, v28

    .line 2173
    move-object/from16 v28, v3

    move-object/from16 v29, v24

    move-object/from16 v30, v26

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v31

    const/16 v32, 0x3

    invoke-virtual/range {v28 .. v32}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2174
    move-object/from16 v28, v3

    move-object/from16 v29, v25

    move-object/from16 v30, v27

    const/16 v31, -0x1

    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v32

    mul-int v31, v31, v32

    const/16 v32, 0x3

    invoke-virtual/range {v28 .. v32}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2175
    move/from16 v28, v11

    if-nez v28, :cond_36

    .line 2176
    move-object/from16 v28, v3

    move-object/from16 v29, v24

    move-object/from16 v30, v26

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v31

    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    move/from16 v32, v0

    move-object/from16 v33, v27

    move-object/from16 v34, v25

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v35

    const/16 v36, 0x4

    invoke-virtual/range {v28 .. v36}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2207
    :cond_36
    :goto_d
    move/from16 v28, v16

    if-eqz v28, :cond_38

    .line 2208
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v28

    move-object/from16 v22, v28

    .line 2209
    move/from16 v28, v4

    const v29, 0x7fffffff

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_37

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    move/from16 v28, v0

    move/from16 v29, v4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_38

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    move/from16 v28, v0

    move/from16 v29, v4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_38

    .line 2210
    :cond_37
    move/from16 v28, v17

    if-nez v28, :cond_40

    .line 2211
    move-object/from16 v28, v3

    move-object/from16 v29, v22

    move-object/from16 v30, v6

    move-object/from16 v31, v5

    move-object/from16 v32, v8

    move-object/from16 v33, v7

    move/from16 v34, v18

    invoke-virtual/range {v29 .. v34}, Landroid/support/constraint/solver/ArrayRow;->createRowDimensionRatio(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;F)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 2232
    :cond_38
    :goto_e
    goto/16 :goto_a

    .line 2152
    :cond_39
    const/16 v28, 0x0

    goto/16 :goto_b

    .line 2155
    :cond_3a
    const/16 v28, 0x0

    goto/16 :goto_c

    .line 2180
    :cond_3b
    move-object/from16 v28, v2

    move-object/from16 v29, v3

    move/from16 v30, v20

    move/from16 v31, v15

    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v32, v0

    move-object/from16 v33, v22

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    move/from16 v34, v0

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    move/from16 v35, v0

    move/from16 v36, v13

    add-int v35, v35, v36

    move/from16 v36, v13

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    move/from16 v37, v0

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    move/from16 v38, v0

    move/from16 v39, v21

    move/from16 v40, v11

    move-object/from16 v41, v2

    move-object/from16 v0, v41

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    move/from16 v41, v0

    move-object/from16 v42, v2

    move-object/from16 v0, v42

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    move/from16 v42, v0

    move-object/from16 v43, v2

    move-object/from16 v0, v43

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    move/from16 v43, v0

    invoke-direct/range {v28 .. v43}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->applyConstraints(Landroid/support/constraint/solver/LinearSystem;ZZLandroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;IIIIFZZIII)V

    .line 2183
    move-object/from16 v28, v3

    move-object/from16 v29, v8

    move-object/from16 v30, v7

    move/from16 v31, v23

    const/16 v32, 0x5

    invoke-virtual/range {v28 .. v32}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v28

    goto/16 :goto_d

    .line 2187
    :cond_3c
    move/from16 v28, v4

    const v29, 0x7fffffff

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_3d

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    move/from16 v28, v0

    move/from16 v29, v4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_36

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    move/from16 v28, v0

    move/from16 v29, v4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_36

    .line 2188
    :cond_3d
    move/from16 v28, v21

    if-eqz v28, :cond_3f

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    if-eqz v28, :cond_3f

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v28, v0

    if-eqz v28, :cond_3f

    .line 2189
    move-object/from16 v28, v3

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v28

    move-object/from16 v22, v28

    .line 2190
    move-object/from16 v28, v3

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v28

    move-object/from16 v23, v28

    .line 2191
    move-object/from16 v28, v3

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v28

    move-object/from16 v24, v28

    .line 2192
    move-object/from16 v28, v3

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v28

    move-object/from16 v25, v28

    .line 2193
    move-object/from16 v28, v3

    move-object/from16 v29, v22

    move-object/from16 v30, v24

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v31

    const/16 v32, 0x3

    invoke-virtual/range {v28 .. v32}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2194
    move-object/from16 v28, v3

    move-object/from16 v29, v23

    move-object/from16 v30, v25

    const/16 v31, -0x1

    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v32

    mul-int v31, v31, v32

    const/16 v32, 0x3

    invoke-virtual/range {v28 .. v32}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2195
    move/from16 v28, v11

    if-nez v28, :cond_3e

    .line 2196
    move-object/from16 v28, v3

    move-object/from16 v29, v22

    move-object/from16 v30, v24

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v31

    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    move/from16 v32, v0

    move-object/from16 v33, v25

    move-object/from16 v34, v23

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v35

    const/16 v36, 0x4

    invoke-virtual/range {v28 .. v36}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2199
    :cond_3e
    goto/16 :goto_d

    .line 2200
    :cond_3f
    move-object/from16 v28, v2

    move-object/from16 v29, v3

    move/from16 v30, v20

    move/from16 v31, v15

    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v32, v0

    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object/from16 v33, v0

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    move/from16 v34, v0

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    move/from16 v35, v0

    move/from16 v36, v13

    add-int v35, v35, v36

    move/from16 v36, v13

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    move/from16 v37, v0

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    move/from16 v38, v0

    move/from16 v39, v21

    move/from16 v40, v11

    move-object/from16 v41, v2

    move-object/from16 v0, v41

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    move/from16 v41, v0

    move-object/from16 v42, v2

    move-object/from16 v0, v42

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    move/from16 v42, v0

    move-object/from16 v43, v2

    move-object/from16 v0, v43

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    move/from16 v43, v0

    invoke-direct/range {v28 .. v43}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->applyConstraints(Landroid/support/constraint/solver/LinearSystem;ZZLandroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;IIIIFZZIII)V

    goto/16 :goto_d

    .line 2212
    :cond_40
    move/from16 v28, v17

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_41

    .line 2213
    move-object/from16 v28, v3

    move-object/from16 v29, v22

    move-object/from16 v30, v8

    move-object/from16 v31, v7

    move-object/from16 v32, v6

    move-object/from16 v33, v5

    move/from16 v34, v18

    invoke-virtual/range {v29 .. v34}, Landroid/support/constraint/solver/ArrayRow;->createRowDimensionRatio(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;F)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    goto/16 :goto_e

    .line 2215
    :cond_41
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    move/from16 v28, v0

    if-lez v28, :cond_42

    .line 2216
    move-object/from16 v28, v3

    move-object/from16 v29, v6

    move-object/from16 v30, v5

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    move/from16 v31, v0

    const/16 v32, 0x3

    invoke-virtual/range {v28 .. v32}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2218
    :cond_42
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    move/from16 v28, v0

    if-lez v28, :cond_43

    .line 2219
    move-object/from16 v28, v3

    move-object/from16 v29, v8

    move-object/from16 v30, v7

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    move/from16 v31, v0

    const/16 v32, 0x3

    invoke-virtual/range {v28 .. v32}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 2221
    :cond_43
    const/16 v28, 0x4

    move/from16 v23, v28

    .line 2222
    move-object/from16 v28, v22

    move-object/from16 v29, v6

    move-object/from16 v30, v5

    move-object/from16 v31, v8

    move-object/from16 v32, v7

    move/from16 v33, v18

    invoke-virtual/range {v28 .. v33}, Landroid/support/constraint/solver/ArrayRow;->createRowDimensionRatio(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;F)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v28

    .line 2223
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Landroid/support/constraint/solver/LinearSystem;->createErrorVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v28

    move-object/from16 v24, v28

    .line 2224
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Landroid/support/constraint/solver/LinearSystem;->createErrorVariable()Landroid/support/constraint/solver/SolverVariable;

    move-result-object v28

    move-object/from16 v25, v28

    .line 2225
    move-object/from16 v28, v24

    move/from16 v29, v23

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Landroid/support/constraint/solver/SolverVariable;->strength:I

    .line 2226
    move-object/from16 v28, v25

    move/from16 v29, v23

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Landroid/support/constraint/solver/SolverVariable;->strength:I

    .line 2227
    move-object/from16 v28, v22

    move-object/from16 v29, v24

    move-object/from16 v30, v25

    invoke-virtual/range {v28 .. v30}, Landroid/support/constraint/solver/ArrayRow;->addError(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v28

    .line 2228
    move-object/from16 v28, v3

    move-object/from16 v29, v22

    invoke-virtual/range {v28 .. v29}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    goto/16 :goto_e
.end method

.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V
    .locals 10

    .prologue
    .line 1424
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    invoke-virtual/range {v4 .. v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;)V

    .line 1425
    return-void
.end method

.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;I)V
    .locals 11

    .prologue
    .line 1409
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move v9, v4

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    invoke-virtual/range {v5 .. v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;)V

    .line 1411
    return-void
.end method

.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;)V
    .locals 13

    .prologue
    .line 1441
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move v10, v4

    move-object v11, v5

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1443
    return-void
.end method

.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V
    .locals 21

    .prologue
    .line 1459
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object v14, v1

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v14, v15, :cond_d

    .line 1462
    move-object v14, v3

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v14, v15, :cond_9

    .line 1463
    move-object v14, v0

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v7, v14

    .line 1464
    move-object v14, v0

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v8, v14

    .line 1465
    move-object v14, v0

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v9, v14

    .line 1466
    move-object v14, v0

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v10, v14

    .line 1467
    const/4 v14, 0x0

    move v11, v14

    .line 1468
    const/4 v14, 0x0

    move v12, v14

    .line 1469
    move-object v14, v7

    if-eqz v14, :cond_0

    move-object v14, v7

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v14

    if-nez v14, :cond_1

    :cond_0
    move-object v14, v8

    if-eqz v14, :cond_5

    move-object v14, v8

    .line 1470
    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1479
    :cond_1
    :goto_0
    move-object v14, v9

    if-eqz v14, :cond_2

    move-object v14, v9

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v14

    if-nez v14, :cond_3

    :cond_2
    move-object v14, v10

    if-eqz v14, :cond_6

    move-object v14, v10

    .line 1480
    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1489
    :cond_3
    :goto_1
    move v14, v11

    if-eqz v14, :cond_7

    move v14, v12

    if-eqz v14, :cond_7

    .line 1490
    move-object v14, v0

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v13, v14

    .line 1491
    move-object v14, v13

    move-object v15, v2

    sget-object v16, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v15 .. v16}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v17, v6

    invoke-virtual/range {v14 .. v17}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    move-result v14

    .line 1628
    :cond_4
    :goto_2
    return-void

    .line 1473
    :cond_5
    move-object v14, v0

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v16, v2

    sget-object v17, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/16 v18, 0x0

    move-object/from16 v19, v5

    move/from16 v20, v6

    invoke-virtual/range {v14 .. v20}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1475
    move-object v14, v0

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v16, v2

    sget-object v17, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/16 v18, 0x0

    move-object/from16 v19, v5

    move/from16 v20, v6

    invoke-virtual/range {v14 .. v20}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1477
    const/4 v14, 0x1

    move v11, v14

    goto :goto_0

    .line 1483
    :cond_6
    move-object v14, v0

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v16, v2

    sget-object v17, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/16 v18, 0x0

    move-object/from16 v19, v5

    move/from16 v20, v6

    invoke-virtual/range {v14 .. v20}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1485
    move-object v14, v0

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v16, v2

    sget-object v17, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/16 v18, 0x0

    move-object/from16 v19, v5

    move/from16 v20, v6

    invoke-virtual/range {v14 .. v20}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1487
    const/4 v14, 0x1

    move v12, v14

    goto :goto_1

    .line 1492
    :cond_7
    move v14, v11

    if-eqz v14, :cond_8

    .line 1493
    move-object v14, v0

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v13, v14

    .line 1494
    move-object v14, v13

    move-object v15, v2

    sget-object v16, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v15 .. v16}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v17, v6

    invoke-virtual/range {v14 .. v17}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    move-result v14

    .line 1495
    goto :goto_2

    :cond_8
    move v14, v12

    if-eqz v14, :cond_4

    .line 1496
    move-object v14, v0

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v13, v14

    .line 1497
    move-object v14, v13

    move-object v15, v2

    sget-object v16, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v15 .. v16}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v17, v6

    invoke-virtual/range {v14 .. v17}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    move-result v14

    goto :goto_2

    .line 1499
    :cond_9
    move-object v14, v3

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v14, v15, :cond_a

    move-object v14, v3

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v14, v15, :cond_b

    .line 1501
    :cond_a
    move-object v14, v0

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    const/16 v18, 0x0

    move-object/from16 v19, v5

    move/from16 v20, v6

    invoke-virtual/range {v14 .. v20}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1503
    move-object v14, v0

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    const/16 v18, 0x0

    move-object/from16 v19, v5

    move/from16 v20, v6

    invoke-virtual/range {v14 .. v20}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1505
    move-object v14, v0

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v7, v14

    .line 1506
    move-object v14, v7

    move-object v15, v2

    move-object/from16 v16, v3

    invoke-virtual/range {v15 .. v16}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v17, v6

    invoke-virtual/range {v14 .. v17}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    move-result v14

    .line 1507
    goto/16 :goto_2

    :cond_b
    move-object v14, v3

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v14, v15, :cond_c

    move-object v14, v3

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v14, v15, :cond_4

    .line 1509
    :cond_c
    move-object v14, v0

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    const/16 v18, 0x0

    move-object/from16 v19, v5

    move/from16 v20, v6

    invoke-virtual/range {v14 .. v20}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1511
    move-object v14, v0

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    const/16 v18, 0x0

    move-object/from16 v19, v5

    move/from16 v20, v6

    invoke-virtual/range {v14 .. v20}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1513
    move-object v14, v0

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v7, v14

    .line 1514
    move-object v14, v7

    move-object v15, v2

    move-object/from16 v16, v3

    invoke-virtual/range {v15 .. v16}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v17, v6

    invoke-virtual/range {v14 .. v17}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    move-result v14

    .line 1515
    goto/16 :goto_2

    .line 1516
    :cond_d
    move-object v14, v1

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v14, v15, :cond_f

    move-object v14, v3

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v14, v15, :cond_e

    move-object v14, v3

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v14, v15, :cond_f

    .line 1519
    :cond_e
    move-object v14, v0

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v7, v14

    .line 1520
    move-object v14, v2

    move-object v15, v3

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v8, v14

    .line 1521
    move-object v14, v0

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v9, v14

    .line 1522
    move-object v14, v7

    move-object v15, v8

    const/16 v16, 0x0

    move/from16 v17, v6

    invoke-virtual/range {v14 .. v17}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    move-result v14

    .line 1523
    move-object v14, v9

    move-object v15, v8

    const/16 v16, 0x0

    move/from16 v17, v6

    invoke-virtual/range {v14 .. v17}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    move-result v14

    .line 1524
    move-object v14, v0

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v10, v14

    .line 1525
    move-object v14, v10

    move-object v15, v8

    const/16 v16, 0x0

    move/from16 v17, v6

    invoke-virtual/range {v14 .. v17}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    move-result v14

    .line 1526
    goto/16 :goto_2

    :cond_f
    move-object v14, v1

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v14, v15, :cond_11

    move-object v14, v3

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v14, v15, :cond_10

    move-object v14, v3

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v14, v15, :cond_11

    .line 1529
    :cond_10
    move-object v14, v2

    move-object v15, v3

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v7, v14

    .line 1530
    move-object v14, v0

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v8, v14

    .line 1531
    move-object v14, v8

    move-object v15, v7

    const/16 v16, 0x0

    move/from16 v17, v6

    invoke-virtual/range {v14 .. v17}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    move-result v14

    .line 1532
    move-object v14, v0

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v9, v14

    .line 1533
    move-object v14, v9

    move-object v15, v7

    const/16 v16, 0x0

    move/from16 v17, v6

    invoke-virtual/range {v14 .. v17}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    move-result v14

    .line 1534
    move-object v14, v0

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v10, v14

    .line 1535
    move-object v14, v10

    move-object v15, v7

    const/16 v16, 0x0

    move/from16 v17, v6

    invoke-virtual/range {v14 .. v17}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    move-result v14

    .line 1536
    goto/16 :goto_2

    :cond_11
    move-object v14, v1

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v14, v15, :cond_12

    move-object v14, v3

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v14, v15, :cond_12

    .line 1539
    move-object v14, v0

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v7, v14

    .line 1540
    move-object v14, v2

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v8, v14

    .line 1541
    move-object v14, v7

    move-object v15, v8

    const/16 v16, 0x0

    move/from16 v17, v6

    invoke-virtual/range {v14 .. v17}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    move-result v14

    .line 1542
    move-object v14, v0

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v9, v14

    .line 1543
    move-object v14, v2

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v10, v14

    .line 1544
    move-object v14, v9

    move-object v15, v10

    const/16 v16, 0x0

    move/from16 v17, v6

    invoke-virtual/range {v14 .. v17}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    move-result v14

    .line 1545
    move-object v14, v0

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v11, v14

    .line 1546
    move-object v14, v11

    move-object v15, v2

    move-object/from16 v16, v3

    invoke-virtual/range {v15 .. v16}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v17, v6

    invoke-virtual/range {v14 .. v17}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    move-result v14

    .line 1547
    goto/16 :goto_2

    :cond_12
    move-object v14, v1

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v14, v15, :cond_13

    move-object v14, v3

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v14, v15, :cond_13

    .line 1550
    move-object v14, v0

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v7, v14

    .line 1551
    move-object v14, v2

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v8, v14

    .line 1552
    move-object v14, v7

    move-object v15, v8

    const/16 v16, 0x0

    move/from16 v17, v6

    invoke-virtual/range {v14 .. v17}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    move-result v14

    .line 1553
    move-object v14, v0

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v9, v14

    .line 1554
    move-object v14, v2

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v10, v14

    .line 1555
    move-object v14, v9

    move-object v15, v10

    const/16 v16, 0x0

    move/from16 v17, v6

    invoke-virtual/range {v14 .. v17}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    move-result v14

    .line 1556
    move-object v14, v0

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v11, v14

    .line 1557
    move-object v14, v11

    move-object v15, v2

    move-object/from16 v16, v3

    invoke-virtual/range {v15 .. v16}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v17, v6

    invoke-virtual/range {v14 .. v17}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)Z

    move-result v14

    .line 1558
    goto/16 :goto_2

    .line 1559
    :cond_13
    move-object v14, v0

    move-object v15, v1

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v7, v14

    .line 1560
    move-object v14, v2

    move-object v15, v3

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v8, v14

    .line 1561
    move-object v14, v7

    move-object v15, v8

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isValidConnection(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1564
    move-object v14, v1

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v14, v15, :cond_17

    .line 1565
    move-object v14, v0

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v9, v14

    .line 1566
    move-object v14, v0

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v10, v14

    .line 1567
    move-object v14, v9

    if-eqz v14, :cond_14

    .line 1568
    move-object v14, v9

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1570
    :cond_14
    move-object v14, v10

    if-eqz v14, :cond_15

    .line 1571
    move-object v14, v10

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1573
    :cond_15
    const/4 v14, 0x0

    move v4, v14

    .line 1624
    :cond_16
    :goto_3
    move-object v14, v7

    move-object v15, v8

    move/from16 v16, v4

    move-object/from16 v17, v5

    move/from16 v18, v6

    invoke-virtual/range {v14 .. v18}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)Z

    move-result v14

    .line 1625
    move-object v14, v8

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v14

    move-object v15, v7

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connectedTo(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    goto/16 :goto_2

    .line 1574
    :cond_17
    move-object v14, v1

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v14, v15, :cond_18

    move-object v14, v1

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v14, v15, :cond_1c

    .line 1576
    :cond_18
    move-object v14, v0

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v9, v14

    .line 1577
    move-object v14, v9

    if-eqz v14, :cond_19

    .line 1578
    move-object v14, v9

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1580
    :cond_19
    move-object v14, v0

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v10, v14

    .line 1581
    move-object v14, v10

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v15, v8

    if-eq v14, v15, :cond_1a

    .line 1582
    move-object v14, v10

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1584
    :cond_1a
    move-object v14, v0

    move-object v15, v1

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOpposite()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v11, v14

    .line 1585
    move-object v14, v0

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v12, v14

    .line 1586
    move-object v14, v12

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v14

    if-eqz v14, :cond_1b

    .line 1587
    move-object v14, v11

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1588
    move-object v14, v12

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1600
    :cond_1b
    goto :goto_3

    :cond_1c
    move-object v14, v1

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-eq v14, v15, :cond_1d

    move-object v14, v1

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne v14, v15, :cond_16

    .line 1602
    :cond_1d
    move-object v14, v0

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v9, v14

    .line 1603
    move-object v14, v9

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v15, v8

    if-eq v14, v15, :cond_1e

    .line 1604
    move-object v14, v9

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1606
    :cond_1e
    move-object v14, v0

    move-object v15, v1

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOpposite()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v10, v14

    .line 1607
    move-object v14, v0

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    move-object v11, v14

    .line 1608
    move-object v14, v11

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v14

    if-eqz v14, :cond_16

    .line 1609
    move-object v14, v10

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1610
    move-object v14, v11

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    goto/16 :goto_3
.end method

.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)V
    .locals 10

    .prologue
    .line 1388
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1389
    return-void
.end method

.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;II)V
    .locals 11

    .prologue
    .line 1384
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    move v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1385
    return-void
.end method

.method public connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;Landroid/support/constraint/solver/widgets/ConstraintAnchor;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V
    .locals 13

    .prologue
    .line 1393
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v1

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v6

    move-object v7, v0

    if-ne v6, v7, :cond_0

    .line 1394
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object v9

    move v10, v3

    move-object v11, v4

    move v12, v5

    invoke-virtual/range {v6 .. v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1396
    :cond_0
    return-void
.end method

.method public connectedTo(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 0

    .prologue
    .line 1356
    return-void
.end method

.method public disconnectUnlockedWidget(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 8

    .prologue
    .line 1780
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchors()Ljava/util/ArrayList;

    move-result-object v6

    move-object v2, v6

    .line 1781
    const/4 v6, 0x0

    move v3, v6

    move-object v6, v2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v6

    :goto_0
    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_1

    .line 1782
    move-object v6, v2

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v5, v6

    .line 1783
    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v6

    move-object v7, v1

    if-ne v6, v7, :cond_0

    move-object v6, v5

    .line 1784
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getConnectionCreator()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 1785
    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1781
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1788
    :cond_1
    return-void
.end method

.method public disconnectWidget(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 8

    .prologue
    .line 1765
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchors()Ljava/util/ArrayList;

    move-result-object v6

    move-object v2, v6

    .line 1766
    const/4 v6, 0x0

    move v3, v6

    move-object v6, v2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v6

    :goto_0
    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_1

    .line 1767
    move-object v6, v2

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v5, v6

    .line 1768
    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v6

    move-object v7, v1

    if-ne v6, v7, :cond_0

    .line 1769
    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1766
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1772
    :cond_1
    return-void
.end method

.method public forceUpdateDrawPosition()V
    .locals 8

    .prologue
    .line 893
    move-object v0, p0

    move-object v5, v0

    iget v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    move v1, v5

    .line 894
    move-object v5, v0

    iget v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    move v2, v5

    .line 895
    move-object v5, v0

    iget v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    move-object v6, v0

    iget v6, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    add-int/2addr v5, v6

    move v3, v5

    .line 896
    move-object v5, v0

    iget v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    move-object v6, v0

    iget v6, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    add-int/2addr v5, v6

    move v4, v5

    .line 897
    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 898
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    .line 899
    move-object v5, v0

    move v6, v3

    move v7, v1

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawWidth:I

    .line 900
    move-object v5, v0

    move v6, v4

    move v7, v2

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawHeight:I

    .line 901
    return-void
.end method

.method public getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .locals 4

    .prologue
    .line 1797
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    move-object v3, v1

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1823
    const/4 v2, 0x0

    move-object v0, v2

    :goto_0
    return-object v0

    .line 1799
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v0, v2

    goto :goto_0

    .line 1802
    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v0, v2

    goto :goto_0

    .line 1805
    :pswitch_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v0, v2

    goto :goto_0

    .line 1808
    :pswitch_3
    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v0, v2

    goto :goto_0

    .line 1811
    :pswitch_4
    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v0, v2

    goto :goto_0

    .line 1814
    :pswitch_5
    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterX:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v0, v2

    goto :goto_0

    .line 1817
    :pswitch_6
    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterY:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v0, v2

    goto :goto_0

    .line 1820
    :pswitch_7
    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v0, v2

    goto :goto_0

    .line 1797
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
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
    .line 803
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method

.method public getBaselineDistance()I
    .locals 2

    .prologue
    .line 784
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    move v0, v1

    return v0
.end method

.method public getBottom()I
    .locals 3

    .prologue
    .line 746
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getY()I

    move-result v1

    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    add-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method public getCompanionWidget()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 794
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    move-object v0, v1

    return-object v0
.end method

.method public getContainerItemSkip()I
    .locals 2

    .prologue
    .line 1284
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    move v0, v1

    return v0
.end method

.method public getDebugName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 453
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getDimensionRatio()F
    .locals 2

    .prologue
    .line 1082
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    move v0, v1

    return v0
.end method

.method public getDimensionRatioSide()I
    .locals 2

    .prologue
    .line 1091
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    move v0, v1

    return v0
.end method

.method public getDrawBottom()I
    .locals 3

    .prologue
    .line 663
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawY()I

    move-result v1

    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawHeight:I

    add-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method public getDrawHeight()I
    .locals 2

    .prologue
    .line 654
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawHeight:I

    move v0, v1

    return v0
.end method

.method public getDrawRight()I
    .locals 3

    .prologue
    .line 672
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawX()I

    move-result v1

    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawWidth:I

    add-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method public getDrawWidth()I
    .locals 2

    .prologue
    .line 650
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawWidth:I

    move v0, v1

    return v0
.end method

.method public getDrawX()I
    .locals 3

    .prologue
    .line 637
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    add-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method public getDrawY()I
    .locals 3

    .prologue
    .line 646
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    add-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method public getHeight()I
    .locals 3

    .prologue
    .line 616
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 617
    const/4 v1, 0x0

    move v0, v1

    .line 619
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    move v0, v1

    goto :goto_0
.end method

.method public getHorizontalBiasPercent()F
    .locals 2

    .prologue
    .line 756
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    move v0, v1

    return v0
.end method

.method public getHorizontalChainControlWidget()Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 9

    .prologue
    .line 1887
    move-object v0, p0

    const/4 v7, 0x0

    move-object v1, v7

    .line 1888
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1889
    move-object v7, v0

    move-object v2, v7

    .line 1891
    :goto_0
    move-object v7, v1

    if-nez v7, :cond_0

    move-object v7, v2

    if-eqz v7, :cond_0

    .line 1892
    move-object v7, v2

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v7

    move-object v3, v7

    .line 1893
    move-object v7, v3

    if-nez v7, :cond_1

    const/4 v7, 0x0

    :goto_1
    move-object v4, v7

    .line 1894
    move-object v7, v4

    if-nez v7, :cond_2

    const/4 v7, 0x0

    :goto_2
    move-object v5, v7

    .line 1895
    move-object v7, v5

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v8

    if-ne v7, v8, :cond_3

    .line 1896
    move-object v7, v2

    move-object v1, v7

    .line 1907
    :cond_0
    move-object v7, v1

    move-object v0, v7

    return-object v0

    .line 1893
    :cond_1
    move-object v7, v3

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v7

    goto :goto_1

    .line 1894
    :cond_2
    move-object v7, v4

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v7

    goto :goto_2

    .line 1899
    :cond_3
    move-object v7, v5

    if-nez v7, :cond_4

    const/4 v7, 0x0

    :goto_3
    move-object v6, v7

    .line 1900
    move-object v7, v6

    if-eqz v7, :cond_5

    move-object v7, v6

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v7

    move-object v8, v2

    if-eq v7, v8, :cond_5

    .line 1901
    move-object v7, v2

    move-object v1, v7

    .line 1905
    :goto_4
    goto :goto_0

    .line 1899
    :cond_4
    move-object v7, v5

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v7

    goto :goto_3

    .line 1903
    :cond_5
    move-object v7, v5

    move-object v2, v7

    goto :goto_4
.end method

.method public getHorizontalChainStyle()I
    .locals 2

    .prologue
    .line 1322
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move v0, v1

    return v0
.end method

.method public getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 2

    .prologue
    .line 1832
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v0, v1

    return-object v0
.end method

.method public getInternalDrawBottom()I
    .locals 3

    .prologue
    .line 531
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawHeight:I

    add-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method public getInternalDrawRight()I
    .locals 3

    .prologue
    .line 527
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawWidth:I

    add-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method getInternalDrawX()I
    .locals 2

    .prologue
    .line 519
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    move v0, v1

    return v0
.end method

.method getInternalDrawY()I
    .locals 2

    .prologue
    .line 523
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    move v0, v1

    return v0
.end method

.method public getLeft()I
    .locals 2

    .prologue
    .line 719
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getX()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getMinHeight()I
    .locals 2

    .prologue
    .line 710
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    move v0, v1

    return v0
.end method

.method public getMinWidth()I
    .locals 2

    .prologue
    .line 701
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    move v0, v1

    return v0
.end method

.method public getOptimizerWrapHeight()I
    .locals 4

    .prologue
    .line 584
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    move v1, v2

    .line 585
    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_0

    .line 586
    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 587
    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    move v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v1, v2

    .line 594
    :goto_0
    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-lez v2, :cond_0

    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    move v3, v1

    if-ge v2, v3, :cond_0

    .line 595
    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    move v1, v2

    .line 598
    :cond_0
    move v2, v1

    move v0, v2

    return v0

    .line 588
    :cond_1
    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-lez v2, :cond_2

    .line 589
    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    move v1, v2

    .line 590
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    goto :goto_0

    .line 592
    :cond_2
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method public getOptimizerWrapWidth()I
    .locals 4

    .prologue
    .line 566
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    move v1, v2

    .line 567
    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_0

    .line 568
    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 569
    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    move v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v1, v2

    .line 576
    :goto_0
    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-lez v2, :cond_0

    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    move v3, v1

    if-ge v2, v3, :cond_0

    .line 577
    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    move v1, v2

    .line 580
    :cond_0
    move v2, v1

    move v0, v2

    return v0

    .line 570
    :cond_1
    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-lez v2, :cond_2

    .line 571
    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    move v1, v2

    .line 572
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    goto :goto_0

    .line 574
    :cond_2
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method public getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 2

    .prologue
    .line 399
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object v0, v1

    return-object v0
.end method

.method public getRight()I
    .locals 3

    .prologue
    .line 737
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getX()I

    move-result v1

    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    add-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method public getRootWidgetContainer()Landroid/support/constraint/solver/widgets/WidgetContainer;
    .locals 3

    .prologue
    .line 383
    move-object v0, p0

    move-object v2, v0

    move-object v1, v2

    .line 384
    :goto_0
    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 385
    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 387
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Landroid/support/constraint/solver/widgets/WidgetContainer;

    if-eqz v2, :cond_1

    .line 388
    move-object v2, v1

    check-cast v2, Landroid/support/constraint/solver/widgets/WidgetContainer;

    move-object v0, v2

    .line 390
    :goto_1
    return-object v0

    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_1
.end method

.method protected getRootX()I
    .locals 3

    .prologue
    .line 682
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    add-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method protected getRootY()I
    .locals 3

    .prologue
    .line 692
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    add-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method public getTop()I
    .locals 2

    .prologue
    .line 728
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getY()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 417
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getVerticalBiasPercent()F
    .locals 2

    .prologue
    .line 766
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    move v0, v1

    return v0
.end method

.method public getVerticalChainControlWidget()Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 9

    .prologue
    .line 1930
    move-object v0, p0

    const/4 v7, 0x0

    move-object v1, v7

    .line 1931
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1932
    move-object v7, v0

    move-object v2, v7

    .line 1933
    :goto_0
    move-object v7, v1

    if-nez v7, :cond_0

    move-object v7, v2

    if-eqz v7, :cond_0

    .line 1934
    move-object v7, v2

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v7

    move-object v3, v7

    .line 1935
    move-object v7, v3

    if-nez v7, :cond_1

    const/4 v7, 0x0

    :goto_1
    move-object v4, v7

    .line 1936
    move-object v7, v4

    if-nez v7, :cond_2

    const/4 v7, 0x0

    :goto_2
    move-object v5, v7

    .line 1937
    move-object v7, v5

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v8

    if-ne v7, v8, :cond_3

    .line 1938
    move-object v7, v2

    move-object v1, v7

    .line 1950
    :cond_0
    move-object v7, v1

    move-object v0, v7

    return-object v0

    .line 1935
    :cond_1
    move-object v7, v3

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v7

    goto :goto_1

    .line 1936
    :cond_2
    move-object v7, v4

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v7

    goto :goto_2

    .line 1941
    :cond_3
    move-object v7, v5

    if-nez v7, :cond_4

    const/4 v7, 0x0

    :goto_3
    move-object v6, v7

    .line 1942
    move-object v7, v6

    if-eqz v7, :cond_5

    move-object v7, v6

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v7

    move-object v8, v2

    if-eq v7, v8, :cond_5

    .line 1943
    move-object v7, v2

    move-object v1, v7

    .line 1947
    :goto_4
    goto :goto_0

    .line 1941
    :cond_4
    move-object v7, v5

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v7

    goto :goto_3

    .line 1945
    :cond_5
    move-object v7, v5

    move-object v2, v7

    goto :goto_4
.end method

.method public getVerticalChainStyle()I
    .locals 2

    .prologue
    .line 1342
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    move v0, v1

    return v0
.end method

.method public getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 2

    .prologue
    .line 1841
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v0, v1

    return-object v0
.end method

.method public getVisibility()I
    .locals 2

    .prologue
    .line 444
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    move v0, v1

    return v0
.end method

.method public getWidth()I
    .locals 3

    .prologue
    .line 559
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 560
    const/4 v1, 0x0

    move v0, v1

    .line 562
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    move v0, v1

    goto :goto_0
.end method

.method public getWrapHeight()I
    .locals 2

    .prologue
    .line 628
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapHeight:I

    move v0, v1

    return v0
.end method

.method public getWrapWidth()I
    .locals 2

    .prologue
    .line 607
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapWidth:I

    move v0, v1

    return v0
.end method

.method public getX()I
    .locals 2

    .prologue
    .line 541
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    move v0, v1

    return v0
.end method

.method public getY()I
    .locals 2

    .prologue
    .line 550
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    move v0, v1

    return v0
.end method

.method public hasAncestor(Landroid/support/constraint/solver/widgets/ConstraintWidget;)Z
    .locals 5

    .prologue
    .line 356
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    move-object v2, v3

    .line 357
    move-object v3, v2

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 358
    const/4 v3, 0x1

    move v0, v3

    .line 373
    :goto_0
    return v0

    .line 360
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 361
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 371
    :cond_1
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    move-object v2, v3

    .line 363
    :cond_2
    move-object v3, v2

    if-eqz v3, :cond_4

    .line 364
    move-object v3, v2

    move-object v4, v1

    if-ne v3, v4, :cond_3

    .line 365
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 367
    :cond_3
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    if-ne v3, v4, :cond_1

    .line 369
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 373
    :cond_4
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public hasBaseline()Z
    .locals 2

    .prologue
    .line 775
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V
    .locals 15

    .prologue
    .line 1369
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v8

    move-object v6, v8

    .line 1370
    move-object v8, v2

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v8

    move-object v7, v8

    .line 1371
    move-object v8, v6

    move-object v9, v7

    move v10, v4

    move v11, v5

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual/range {v8 .. v14}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    move-result v8

    .line 1373
    return-void
.end method

.method public isInHorizontalChain()Z
    .locals 3

    .prologue
    .line 1874
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eq v1, v2, :cond_1

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_2

    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v1, v2, :cond_2

    .line 1876
    :cond_1
    const/4 v1, 0x1

    move v0, v1

    .line 1878
    :goto_0
    return v0

    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public isInVerticalChain()Z
    .locals 3

    .prologue
    .line 1917
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eq v1, v2, :cond_1

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_2

    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne v1, v2, :cond_2

    .line 1919
    :cond_1
    const/4 v1, 0x1

    move v0, v1

    .line 1921
    :goto_0
    return v0

    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public isInsideConstraintLayout()Z
    .locals 3

    .prologue
    .line 336
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    move-object v1, v2

    .line 337
    move-object v2, v1

    if-nez v2, :cond_1

    .line 338
    const/4 v2, 0x0

    move v0, v2

    .line 346
    :goto_0
    return v0

    .line 344
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    move-object v1, v2

    .line 340
    :cond_1
    move-object v2, v1

    if-eqz v2, :cond_2

    .line 341
    move-object v2, v1

    instance-of v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v2, :cond_0

    .line 342
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 346
    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public isRoot()Z
    .locals 2

    .prologue
    .line 316
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRootContainer()Z
    .locals 2

    .prologue
    .line 326
    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    instance-of v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 185
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 186
    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 187
    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 188
    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 189
    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 190
    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterX:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 191
    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterY:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 192
    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 193
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 194
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 195
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 196
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 197
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 198
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 199
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 200
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 201
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    .line 202
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawWidth:I

    .line 203
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawHeight:I

    .line 204
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 205
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 206
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 207
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    .line 208
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    .line 209
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapWidth:I

    .line 210
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapHeight:I

    .line 211
    move-object v1, v0

    sget v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 212
    move-object v1, v0

    sget v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 213
    move-object v1, v0

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 214
    move-object v1, v0

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 215
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 216
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 217
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 218
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 219
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 220
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalWrapVisited:Z

    .line 221
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalWrapVisited:Z

    .line 222
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 223
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 224
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainFixedPosition:Z

    .line 225
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainFixedPosition:Z

    .line 226
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalWeight:F

    .line 227
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalWeight:F

    .line 228
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 229
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 230
    return-void
.end method

.method public resetAllConstraints()V
    .locals 3

    .prologue
    .line 1634
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resetAnchors()V

    .line 1635
    move-object v1, v0

    sget v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    .line 1636
    move-object v1, v0

    sget v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 1637
    move-object v1, v0

    instance-of v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v1, :cond_0

    .line 1654
    :goto_0
    return-void

    .line 1640
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_1

    .line 1641
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWrapWidth()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 1642
    move-object v1, v0

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1647
    :cond_1
    :goto_1
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_2

    .line 1648
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWrapHeight()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 1649
    move-object v1, v0

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1654
    :cond_2
    :goto_2
    goto :goto_0

    .line 1643
    :cond_3
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getMinWidth()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 1644
    move-object v1, v0

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_1

    .line 1650
    :cond_4
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getMinHeight()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 1651
    move-object v1, v0

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_2
.end method

.method public resetAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor;)V
    .locals 11

    .prologue
    .line 1663
    move-object v0, p0

    move-object v1, p1

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 1664
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    instance-of v9, v9, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v9, :cond_0

    .line 1665
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    check-cast v9, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object v2, v9

    .line 1666
    move-object v9, v2

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->handlesInternalConstraints()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1716
    :goto_0
    return-void

    .line 1671
    :cond_0
    move-object v9, v0

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v2, v9

    .line 1672
    move-object v9, v0

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v3, v9

    .line 1673
    move-object v9, v0

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v4, v9

    .line 1674
    move-object v9, v0

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v5, v9

    .line 1675
    move-object v9, v0

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v6, v9

    .line 1676
    move-object v9, v0

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v7, v9

    .line 1677
    move-object v9, v0

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v8, v9

    .line 1679
    move-object v9, v1

    move-object v10, v6

    if-ne v9, v10, :cond_4

    .line 1680
    move-object v9, v2

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v3

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v2

    .line 1681
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v10, v3

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v10

    if-ne v9, v10, :cond_1

    .line 1682
    move-object v9, v2

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1683
    move-object v9, v3

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1685
    :cond_1
    move-object v9, v4

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v5

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v4

    .line 1686
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v10

    if-ne v9, v10, :cond_2

    .line 1687
    move-object v9, v4

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1688
    move-object v9, v5

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1690
    :cond_2
    move-object v9, v0

    const/high16 v10, 0x3f000000    # 0.5f

    iput v10, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 1691
    move-object v9, v0

    const/high16 v10, 0x3f000000    # 0.5f

    iput v10, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 1715
    :cond_3
    :goto_1
    move-object v9, v1

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1716
    goto/16 :goto_0

    .line 1692
    :cond_4
    move-object v9, v1

    move-object v10, v7

    if-ne v9, v10, :cond_6

    .line 1693
    move-object v9, v2

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v9, v3

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v9, v2

    .line 1694
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    move-object v10, v3

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v10

    if-ne v9, v10, :cond_5

    .line 1695
    move-object v9, v2

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1696
    move-object v9, v3

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1698
    :cond_5
    move-object v9, v0

    const/high16 v10, 0x3f000000    # 0.5f

    iput v10, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    goto :goto_1

    .line 1699
    :cond_6
    move-object v9, v1

    move-object v10, v8

    if-ne v9, v10, :cond_8

    .line 1700
    move-object v9, v4

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_7

    move-object v9, v5

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_7

    move-object v9, v4

    .line 1701
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v10

    if-ne v9, v10, :cond_7

    .line 1702
    move-object v9, v4

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1703
    move-object v9, v5

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1705
    :cond_7
    move-object v9, v0

    const/high16 v10, 0x3f000000    # 0.5f

    iput v10, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    goto :goto_1

    .line 1706
    :cond_8
    move-object v9, v1

    move-object v10, v2

    if-eq v9, v10, :cond_9

    move-object v9, v1

    move-object v10, v3

    if-ne v9, v10, :cond_a

    .line 1707
    :cond_9
    move-object v9, v2

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v2

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v10, v3

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v10

    if-ne v9, v10, :cond_3

    .line 1708
    move-object v9, v6

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    goto/16 :goto_1

    .line 1710
    :cond_a
    move-object v9, v1

    move-object v10, v4

    if-eq v9, v10, :cond_b

    move-object v9, v1

    move-object v10, v5

    if-ne v9, v10, :cond_3

    .line 1711
    :cond_b
    move-object v9, v4

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v4

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getTarget()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v10

    if-ne v9, v10, :cond_3

    .line 1712
    move-object v9, v6

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    goto/16 :goto_1
.end method

.method public resetAnchors()V
    .locals 7

    .prologue
    .line 1722
    move-object v0, p0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v5

    move-object v1, v5

    .line 1723
    move-object v5, v1

    if-eqz v5, :cond_0

    move-object v5, v1

    instance-of v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v5, :cond_0

    .line 1724
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object v2, v5

    .line 1725
    move-object v5, v2

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->handlesInternalConstraints()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1733
    :goto_0
    return-void

    .line 1729
    :cond_0
    const/4 v5, 0x0

    move v2, v5

    move-object v5, v0

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v5

    :goto_1
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_1

    .line 1730
    move-object v5, v0

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v4, v5

    .line 1731
    move-object v5, v4

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1729
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1733
    :cond_1
    goto :goto_0
.end method

.method public resetAnchors(I)V
    .locals 8

    .prologue
    .line 1739
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v6

    move-object v2, v6

    .line 1740
    move-object v6, v2

    if-eqz v6, :cond_0

    move-object v6, v2

    instance-of v6, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v6, :cond_0

    .line 1741
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object v3, v6

    .line 1742
    move-object v6, v3

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->handlesInternalConstraints()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1757
    :goto_0
    return-void

    .line 1746
    :cond_0
    const/4 v6, 0x0

    move v3, v6

    move-object v6, v0

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v6

    :goto_1
    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_3

    .line 1747
    move-object v6, v0

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v5, v6

    .line 1748
    move v6, v1

    move-object v7, v5

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getConnectionCreator()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 1749
    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isVerticalAnchor()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1750
    move-object v6, v0

    sget v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    invoke-virtual {v6, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    .line 1754
    :goto_2
    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 1746
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1752
    :cond_2
    move-object v6, v0

    sget v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    invoke-virtual {v6, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    goto :goto_2

    .line 1757
    :cond_3
    goto :goto_0
.end method

.method public resetGroups()V
    .locals 5

    .prologue
    .line 288
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v3

    .line 289
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move v4, v1

    if-ge v3, v4, :cond_0

    .line 290
    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const v4, 0x7fffffff

    iput v4, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 289
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 292
    :cond_0
    return-void
.end method

.method public resetSolverVariables(Landroid/support/constraint/solver/Cache;)V
    .locals 4

    .prologue
    .line 274
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 275
    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 276
    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 277
    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 278
    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 279
    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenter:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 280
    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterX:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 281
    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCenterY:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroid/support/constraint/solver/Cache;)V

    .line 282
    return-void
.end method

.method public setBaselineDistance(I)V
    .locals 4

    .prologue
    .line 1249
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 1250
    return-void
.end method

.method public setCompanionWidget(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1259
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 1260
    return-void
.end method

.method public setContainerItemSkip(I)V
    .locals 4

    .prologue
    .line 1271
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-ltz v2, :cond_0

    .line 1272
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 1276
    :goto_0
    return-void

    .line 1274
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    goto :goto_0
.end method

.method public setDebugName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 460
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 461
    return-void
.end method

.method public setDebugSolverName(Landroid/support/constraint/solver/LinearSystem;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 480
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, v0

    move-object v9, v2

    iput-object v9, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 481
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8, v9}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v8

    move-object v3, v8

    .line 482
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8, v9}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v8

    move-object v4, v8

    .line 483
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8, v9}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v8

    move-object v5, v8

    .line 484
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8, v9}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v8

    move-object v6, v8

    .line 485
    move-object v8, v3

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".left"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/constraint/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 486
    move-object v8, v4

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".top"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/constraint/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 487
    move-object v8, v5

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".right"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/constraint/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 488
    move-object v8, v6

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".bottom"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/constraint/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 489
    move-object v8, v0

    iget v8, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v8, :cond_0

    .line 490
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8, v9}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v8

    move-object v7, v8

    .line 491
    move-object v8, v7

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".baseline"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/constraint/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 493
    :cond_0
    return-void
.end method

.method public setDimension(II)V
    .locals 5

    .prologue
    .line 1165
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1166
    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v3, v4, :cond_0

    .line 1167
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    iput v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1169
    :cond_0
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1170
    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v3, v4, :cond_1

    .line 1171
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    iput v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1173
    :cond_1
    return-void
.end method

.method public setDimensionRatio(FI)V
    .locals 5

    .prologue
    .line 1072
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 1073
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 1074
    return-void
.end method

.method public setDimensionRatio(Ljava/lang/String;)V
    .locals 14

    .prologue
    .line 1010
    move-object v0, p0

    move-object v1, p1

    move-object v11, v1

    if-eqz v11, :cond_0

    move-object v11, v1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_1

    .line 1011
    :cond_0
    move-object v11, v0

    const/4 v12, 0x0

    iput v12, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 1064
    :goto_0
    return-void

    .line 1014
    :cond_1
    const/4 v11, -0x1

    move v2, v11

    .line 1015
    const/4 v11, 0x0

    move v3, v11

    .line 1016
    move-object v11, v1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    move v4, v11

    .line 1017
    move-object v11, v1

    const/16 v12, 0x2c

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    move v5, v11

    .line 1018
    move v11, v5

    if-lez v11, :cond_6

    move v11, v5

    move v12, v4

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    if-ge v11, v12, :cond_6

    .line 1019
    move-object v11, v1

    const/4 v12, 0x0

    move v13, v5

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    .line 1020
    move-object v11, v6

    const-string v12, "W"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1021
    const/4 v11, 0x0

    move v2, v11

    .line 1025
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 1029
    :goto_2
    move-object v11, v1

    const/16 v12, 0x3a

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    move v6, v11

    .line 1031
    move v11, v6

    if-ltz v11, :cond_8

    move v11, v6

    move v12, v4

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    if-ge v11, v12, :cond_8

    .line 1032
    move-object v11, v1

    move v12, v5

    move v13, v6

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 1033
    move-object v11, v1

    move v12, v6

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    move-object v8, v11

    .line 1034
    move-object v11, v7

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    move-object v11, v8

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 1036
    move-object v11, v7

    :try_start_0
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    move v9, v11

    .line 1037
    move-object v11, v8

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    move v10, v11

    .line 1038
    move v11, v9

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_3

    move v11, v10

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_3

    .line 1039
    move v11, v2

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    .line 1040
    move v11, v10

    move v12, v9

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    move v3, v11

    .line 1060
    :cond_3
    :goto_3
    move v11, v3

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_4

    .line 1061
    move-object v11, v0

    move v12, v3

    iput v12, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 1062
    move-object v11, v0

    move v12, v2

    iput v12, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 1064
    :cond_4
    goto/16 :goto_0

    .line 1022
    :cond_5
    move-object v11, v6

    const-string v12, "H"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1023
    const/4 v11, 0x1

    move v2, v11

    goto :goto_1

    .line 1027
    :cond_6
    const/4 v11, 0x0

    move v5, v11

    goto :goto_2

    .line 1042
    :cond_7
    move v11, v9

    move v12, v10

    div-float/2addr v11, v12

    :try_start_1
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v11

    move v3, v11

    goto :goto_3

    .line 1045
    :catch_0
    move-exception v11

    move-object v9, v11

    goto :goto_3

    .line 1050
    :cond_8
    move-object v11, v1

    move v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 1051
    move-object v11, v7

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 1053
    move-object v11, v7

    :try_start_2
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v11

    move v3, v11

    .line 1056
    goto :goto_3

    .line 1054
    :catch_1
    move-exception v11

    move-object v8, v11

    goto :goto_3
.end method

.method public setDrawHeight(I)V
    .locals 4

    .prologue
    .line 951
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawHeight:I

    .line 952
    return-void
.end method

.method public setDrawOrigin(II)V
    .locals 6

    .prologue
    .line 910
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v0

    iget v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 911
    move-object v3, v0

    move v4, v2

    move-object v5, v0

    iget v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    .line 912
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    iput v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 913
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    iput v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 914
    return-void
.end method

.method public setDrawWidth(I)V
    .locals 4

    .prologue
    .line 942
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawWidth:I

    .line 943
    return-void
.end method

.method public setDrawX(I)V
    .locals 5

    .prologue
    .line 922
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 923
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    iput v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 924
    return-void
.end method

.method public setDrawY(I)V
    .locals 5

    .prologue
    .line 932
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    .line 933
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    iput v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 934
    return-void
.end method

.method public setFrame(IIII)V
    .locals 9

    .prologue
    .line 1184
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v7, v3

    move v8, v1

    sub-int/2addr v7, v8

    move v5, v7

    .line 1185
    move v7, v4

    move v8, v2

    sub-int/2addr v7, v8

    move v6, v7

    .line 1187
    move-object v7, v0

    move v8, v1

    iput v8, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 1188
    move-object v7, v0

    move v8, v2

    iput v8, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 1190
    move-object v7, v0

    iget v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    .line 1191
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1192
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1213
    :goto_0
    return-void

    .line 1197
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_1

    move v7, v5

    move-object v8, v0

    iget v8, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    if-ge v7, v8, :cond_1

    .line 1198
    move-object v7, v0

    iget v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    move v5, v7

    .line 1200
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_2

    move v7, v6

    move-object v8, v0

    iget v8, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    if-ge v7, v8, :cond_2

    .line 1201
    move-object v7, v0

    iget v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    move v6, v7

    .line 1204
    :cond_2
    move-object v7, v0

    move v8, v5

    iput v8, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1205
    move-object v7, v0

    move v8, v6

    iput v8, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1207
    move-object v7, v0

    iget v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    move-object v8, v0

    iget v8, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v7, v8, :cond_3

    .line 1208
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    iput v8, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1210
    :cond_3
    move-object v7, v0

    iget v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    move-object v8, v0

    iget v8, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v7, v8, :cond_4

    .line 1211
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    iput v8, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1213
    :cond_4
    goto :goto_0
.end method

.method public setGoneMargin(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;I)V
    .locals 5

    .prologue
    .line 853
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 871
    :goto_0
    return-void

    .line 855
    :pswitch_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move v4, v2

    iput v4, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 857
    goto :goto_0

    .line 859
    :pswitch_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move v4, v2

    iput v4, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 861
    goto :goto_0

    .line 863
    :pswitch_2
    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move v4, v2

    iput v4, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 865
    goto :goto_0

    .line 867
    :pswitch_3
    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move v4, v2

    iput v4, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    goto :goto_0

    .line 853
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setHeight(I)V
    .locals 4

    .prologue
    .line 972
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 973
    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v2, v3, :cond_0

    .line 974
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    iput v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 976
    :cond_0
    return-void
.end method

.method public setHorizontalBiasPercent(F)V
    .locals 4

    .prologue
    .line 1101
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 1102
    return-void
.end method

.method public setHorizontalChainStyle(I)V
    .locals 4

    .prologue
    .line 1312
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 1313
    return-void
.end method

.method public setHorizontalDimension(II)V
    .locals 6

    .prologue
    .line 1222
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 1223
    move-object v3, v0

    move v4, v2

    move v5, v1

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1224
    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v3, v4, :cond_0

    .line 1225
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    iput v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1227
    :cond_0
    return-void
.end method

.method public setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 4

    .prologue
    .line 1850
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1851
    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_0

    .line 1852
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapWidth:I

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1854
    :cond_0
    return-void
.end method

.method public setHorizontalMatchStyle(III)V
    .locals 6

    .prologue
    .line 986
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 987
    move-object v4, v0

    move v5, v2

    iput v5, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 988
    move-object v4, v0

    move v5, v3

    iput v5, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 989
    return-void
.end method

.method public setHorizontalWeight(F)V
    .locals 4

    .prologue
    .line 1293
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalWeight:F

    .line 1294
    return-void
.end method

.method public setMinHeight(I)V
    .locals 4

    .prologue
    .line 1133
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-gez v2, :cond_0

    .line 1134
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    .line 1138
    :goto_0
    return-void

    .line 1136
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    goto :goto_0
.end method

.method public setMinWidth(I)V
    .locals 4

    .prologue
    .line 1120
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-gez v2, :cond_0

    .line 1121
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    .line 1125
    :goto_0
    return-void

    .line 1123
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    goto :goto_0
.end method

.method public setOffset(II)V
    .locals 5

    .prologue
    .line 842
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 843
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 844
    return-void
.end method

.method public setOrigin(II)V
    .locals 5

    .prologue
    .line 831
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 832
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 833
    return-void
.end method

.method public setParent(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 4

    .prologue
    .line 408
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 409
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 426
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 427
    return-void
.end method

.method public setVerticalBiasPercent(F)V
    .locals 4

    .prologue
    .line 1111
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 1112
    return-void
.end method

.method public setVerticalChainStyle(I)V
    .locals 4

    .prologue
    .line 1332
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 1333
    return-void
.end method

.method public setVerticalDimension(II)V
    .locals 6

    .prologue
    .line 1236
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 1237
    move-object v3, v0

    move v4, v2

    move v5, v1

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1238
    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v3, v4, :cond_0

    .line 1239
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinHeight:I

    iput v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1241
    :cond_0
    return-void
.end method

.method public setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 4

    .prologue
    .line 1862
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1863
    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_0

    .line 1864
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapHeight:I

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 1866
    :cond_0
    return-void
.end method

.method public setVerticalMatchStyle(III)V
    .locals 6

    .prologue
    .line 999
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 1000
    move-object v4, v0

    move v5, v2

    iput v5, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 1001
    move-object v4, v0

    move v5, v3

    iput v5, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 1002
    return-void
.end method

.method public setVerticalWeight(F)V
    .locals 4

    .prologue
    .line 1302
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalWeight:F

    .line 1303
    return-void
.end method

.method public setVisibility(I)V
    .locals 4

    .prologue
    .line 435
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 436
    return-void
.end method

.method public setWidth(I)V
    .locals 4

    .prologue
    .line 960
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 961
    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v2, v3, :cond_0

    .line 962
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMinWidth:I

    iput v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    .line 964
    :cond_0
    return-void
.end method

.method public setWrapHeight(I)V
    .locals 4

    .prologue
    .line 1155
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapHeight:I

    .line 1156
    return-void
.end method

.method public setWrapWidth(I)V
    .locals 4

    .prologue
    .line 1146
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapWidth:I

    .line 1147
    return-void
.end method

.method public setX(I)V
    .locals 4

    .prologue
    .line 812
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    .line 813
    return-void
.end method

.method public setY(I)V
    .locals 4

    .prologue
    .line 821
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    .line 822
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 502
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " wrap: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWrapHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0

    :cond_0
    const-string v2, ""

    goto/16 :goto_0

    :cond_1
    const-string v2, ""

    goto :goto_1
.end method

.method public updateDrawPosition()V
    .locals 8

    .prologue
    .line 879
    move-object v0, p0

    move-object v5, v0

    iget v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    move v1, v5

    .line 880
    move-object v5, v0

    iget v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    move v2, v5

    .line 881
    move-object v5, v0

    iget v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    move-object v6, v0

    iget v6, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    add-int/2addr v5, v6

    move v3, v5

    .line 882
    move-object v5, v0

    iget v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    move-object v6, v0

    iget v6, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    add-int/2addr v5, v6

    move v4, v5

    .line 883
    move-object v5, v0

    move v6, v1

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 884
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawY:I

    .line 885
    move-object v5, v0

    move v6, v3

    move v7, v1

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawWidth:I

    .line 886
    move-object v5, v0

    move v6, v4

    move v7, v2

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDrawHeight:I

    .line 887
    return-void
.end method

.method public updateFromSolver(Landroid/support/constraint/solver/LinearSystem;)V
    .locals 5

    .prologue
    .line 2417
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const v4, 0x7fffffff

    invoke-virtual {v2, v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->updateFromSolver(Landroid/support/constraint/solver/LinearSystem;I)V

    .line 2418
    return-void
.end method

.method public updateFromSolver(Landroid/support/constraint/solver/LinearSystem;I)V
    .locals 12

    .prologue
    .line 2392
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v7, v2

    const v8, 0x7fffffff

    if-ne v7, v8, :cond_1

    .line 2393
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7, v8}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v7

    move v3, v7

    .line 2394
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7, v8}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v7

    move v4, v7

    .line 2395
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7, v8}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v7

    move v5, v7

    .line 2396
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7, v8}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v7

    move v6, v7

    .line 2397
    move-object v7, v0

    move v8, v3

    move v9, v4

    move v10, v5

    move v11, v6

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFrame(IIII)V

    .line 2414
    :cond_0
    :goto_0
    return-void

    .line 2398
    :cond_1
    move v7, v2

    const/4 v8, -0x2

    if-ne v7, v8, :cond_2

    .line 2399
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mSolverLeft:I

    move-object v9, v0

    iget v9, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mSolverTop:I

    move-object v10, v0

    iget v10, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mSolverRight:I

    move-object v11, v0

    iget v11, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mSolverBottom:I

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setFrame(IIII)V

    goto :goto_0

    .line 2401
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    move v8, v2

    if-ne v7, v8, :cond_3

    .line 2402
    move-object v7, v0

    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8, v9}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v8

    iput v8, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mSolverLeft:I

    .line 2404
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    move v8, v2

    if-ne v7, v8, :cond_4

    .line 2405
    move-object v7, v0

    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8, v9}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v8

    iput v8, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mSolverTop:I

    .line 2407
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    move v8, v2

    if-ne v7, v8, :cond_5

    .line 2408
    move-object v7, v0

    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8, v9}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v8

    iput v8, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mSolverRight:I

    .line 2410
    :cond_5
    move-object v7, v0

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    move v8, v2

    if-ne v7, v8, :cond_0

    .line 2411
    move-object v7, v0

    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8, v9}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v8

    iput v8, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mSolverBottom:I

    goto :goto_0
.end method
