.class public final enum Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;
.super Ljava/lang/Enum;
.source "ConstraintAnchor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/solver/widgets/ConstraintAnchor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Strength"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

.field public static final enum NONE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

.field public static final enum STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

.field public static final enum WEAK:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 48
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->NONE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "STRONG"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "WEAK"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->WEAK:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->NONE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->WEAK:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    aput-object v3, v1, v2

    sput-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->$VALUES:[Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;
    .locals 3

    .prologue
    .line 48
    move-object v0, p0

    const-class v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    move-object v0, v1

    return-object v0
.end method

.method public static values()[Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->$VALUES:[Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    invoke-virtual {v0}, [Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    return-object v0
.end method
