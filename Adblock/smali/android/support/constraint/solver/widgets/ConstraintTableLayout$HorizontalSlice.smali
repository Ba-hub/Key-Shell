.class Landroid/support/constraint/solver/widgets/ConstraintTableLayout$HorizontalSlice;
.super Ljava/lang/Object;
.source "ConstraintTableLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/solver/widgets/ConstraintTableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HorizontalSlice"
.end annotation


# instance fields
.field bottom:Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field padding:I

.field final synthetic this$0:Landroid/support/constraint/solver/widgets/ConstraintTableLayout;

.field top:Landroid/support/constraint/solver/widgets/ConstraintWidget;


# direct methods
.method constructor <init>(Landroid/support/constraint/solver/widgets/ConstraintTableLayout;)V
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintTableLayout$HorizontalSlice;->this$0:Landroid/support/constraint/solver/widgets/ConstraintTableLayout;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method
