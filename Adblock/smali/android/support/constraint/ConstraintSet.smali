.class public Landroid/support/constraint/ConstraintSet;
.super Ljava/lang/Object;
.source "ConstraintSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/ConstraintSet$Constraint;
    }
.end annotation


# static fields
.field private static final ALPHA:I = 0x2b

.field public static final BASELINE:I = 0x5

.field private static final BASELINE_TO_BASELINE:I = 0x1

.field public static final BOTTOM:I = 0x4

.field private static final BOTTOM_MARGIN:I = 0x2

.field private static final BOTTOM_TO_BOTTOM:I = 0x3

.field private static final BOTTOM_TO_TOP:I = 0x4

.field public static final CHAIN_PACKED:I = 0x2

.field public static final CHAIN_SPREAD:I = 0x0

.field public static final CHAIN_SPREAD_INSIDE:I = 0x1

.field private static final DEBUG:Z = false

.field private static final DIMENSION_RATIO:I = 0x5

.field private static final EDITOR_ABSOLUTE_X:I = 0x6

.field private static final EDITOR_ABSOLUTE_Y:I = 0x7

.field private static final ELEVATION:I = 0x2c

.field public static final END:I = 0x7

.field private static final END_MARGIN:I = 0x8

.field private static final END_TO_END:I = 0x9

.field private static final END_TO_START:I = 0xa

.field public static final GONE:I = 0x8

.field private static final GONE_BOTTOM_MARGIN:I = 0xb

.field private static final GONE_END_MARGIN:I = 0xc

.field private static final GONE_LEFT_MARGIN:I = 0xd

.field private static final GONE_RIGHT_MARGIN:I = 0xe

.field private static final GONE_START_MARGIN:I = 0xf

.field private static final GONE_TOP_MARGIN:I = 0x10

.field private static final GUIDE_BEGIN:I = 0x11

.field private static final GUIDE_END:I = 0x12

.field private static final GUIDE_PERCENT:I = 0x13

.field private static final HEIGHT_DEFAULT:I = 0x37

.field private static final HEIGHT_MAX:I = 0x39

.field private static final HEIGHT_MIN:I = 0x3b

.field public static final HORIZONTAL:I = 0x0

.field private static final HORIZONTAL_BIAS:I = 0x14

.field public static final HORIZONTAL_GUIDELINE:I = 0x0

.field private static final HORIZONTAL_STYLE:I = 0x29

.field private static final HORIZONTAL_WEIGHT:I = 0x27

.field public static final INVISIBLE:I = 0x4

.field private static final LAYOUT_HEIGHT:I = 0x15

.field private static final LAYOUT_VISIBILITY:I = 0x16

.field private static final LAYOUT_WIDTH:I = 0x17

.field public static final LEFT:I = 0x1

.field private static final LEFT_MARGIN:I = 0x18

.field private static final LEFT_TO_LEFT:I = 0x19

.field private static final LEFT_TO_RIGHT:I = 0x1a

.field public static final MATCH_CONSTRAINT:I = 0x0

.field public static final MATCH_CONSTRAINT_SPREAD:I = 0x0

.field public static final MATCH_CONSTRAINT_WRAP:I = 0x1

.field private static final ORIENTATION:I = 0x1b

.field public static final PARENT_ID:I = 0x0

.field public static final RIGHT:I = 0x2

.field private static final RIGHT_MARGIN:I = 0x1c

.field private static final RIGHT_TO_LEFT:I = 0x1d

.field private static final RIGHT_TO_RIGHT:I = 0x1e

.field private static final ROTATION_X:I = 0x2d

.field private static final ROTATION_Y:I = 0x2e

.field private static final SCALE_X:I = 0x2f

.field private static final SCALE_Y:I = 0x30

.field public static final START:I = 0x6

.field private static final START_MARGIN:I = 0x1f

.field private static final START_TO_END:I = 0x20

.field private static final START_TO_START:I = 0x21

.field private static final TAG:Ljava/lang/String; = "ConstraintSet"

.field public static final TOP:I = 0x3

.field private static final TOP_MARGIN:I = 0x22

.field private static final TOP_TO_BOTTOM:I = 0x23

.field private static final TOP_TO_TOP:I = 0x24

.field private static final TRANSFORM_PIVOT_X:I = 0x31

.field private static final TRANSFORM_PIVOT_Y:I = 0x32

.field private static final TRANSLATION_X:I = 0x33

.field private static final TRANSLATION_Y:I = 0x34

.field private static final TRANSLATION_Z:I = 0x35

.field public static final UNSET:I = -0x1

.field private static final UNUSED:I = 0x3c

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_BIAS:I = 0x25

.field public static final VERTICAL_GUIDELINE:I = 0x1

.field private static final VERTICAL_STYLE:I = 0x2a

.field private static final VERTICAL_WEIGHT:I = 0x28

.field private static final VIEW_ID:I = 0x26

.field private static final VISIBILITY_FLAGS:[I

.field public static final VISIBLE:I = 0x0

.field private static final WIDTH_DEFAULT:I = 0x36

.field private static final WIDTH_MAX:I = 0x38

.field private static final WIDTH_MIN:I = 0x3a

.field public static final WRAP_CONTENT:I = -0x2

.field private static mapToConstant:Landroid/util/SparseIntArray;


# instance fields
.field private mConstraints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/support/constraint/ConstraintSet$Constraint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 191
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/constraint/ConstraintSet;->VISIBILITY_FLAGS:[I

    .line 195
    new-instance v0, Landroid/util/SparseIntArray;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    .line 259
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintLeft_toLeftOf:I

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 260
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintLeft_toRightOf:I

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 261
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintRight_toLeftOf:I

    const/16 v2, 0x1d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 262
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintRight_toRightOf:I

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 263
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintTop_toTopOf:I

    const/16 v2, 0x24

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 264
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintTop_toBottomOf:I

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 265
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintBottom_toTopOf:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 266
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintBottom_toBottomOf:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 267
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintBaseline_toBaselineOf:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 269
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_editor_absoluteX:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 270
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_editor_absoluteY:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 271
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintGuide_begin:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 272
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintGuide_end:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 273
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintGuide_percent:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 274
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_orientation:I

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 275
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintStart_toEndOf:I

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 276
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintStart_toStartOf:I

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 277
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintEnd_toStartOf:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 278
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintEnd_toEndOf:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 279
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_goneMarginLeft:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 280
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_goneMarginTop:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 281
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_goneMarginRight:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 282
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_goneMarginBottom:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 283
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_goneMarginStart:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 284
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_goneMarginEnd:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 285
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintVertical_weight:I

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 286
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintHorizontal_weight:I

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 287
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintHorizontal_chainStyle:I

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 288
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintVertical_chainStyle:I

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 290
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintHorizontal_bias:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 291
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintVertical_bias:I

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 292
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintDimensionRatio:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 293
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintLeft_creator:I

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 294
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintTop_creator:I

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 295
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintRight_creator:I

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 296
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintBottom_creator:I

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 297
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintBaseline_creator:I

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 298
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_marginLeft:I

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 299
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_marginRight:I

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 300
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_marginStart:I

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 301
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_marginEnd:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 302
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_marginTop:I

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 303
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_marginBottom:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 304
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_width:I

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 305
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_height:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 306
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_visibility:I

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 307
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_alpha:I

    const/16 v2, 0x2b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 308
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_elevation:I

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 309
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_rotationX:I

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 310
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_rotationY:I

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 311
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_scaleX:I

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 312
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_scaleY:I

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 313
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_transformPivotX:I

    const/16 v2, 0x31

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 314
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_transformPivotY:I

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 315
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_translationX:I

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 316
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_translationY:I

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 317
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_translationZ:I

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 318
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintWidth_default:I

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 319
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintHeight_default:I

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 320
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintWidth_max:I

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 321
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintHeight_max:I

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 322
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintWidth_min:I

    const/16 v2, 0x3a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 323
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintHeight_min:I

    const/16 v2, 0x3b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 325
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_id:I

    const/16 v2, 0x26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 326
    return-void

    .line 191
    :array_0
    .array-data 4
        0x0
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 55
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 193
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 328
    return-void
.end method

.method private createHorizontalChain(IIII[I[FIII)V
    .locals 19

    .prologue
    .line 873
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object v12, v5

    array-length v12, v12

    const/4 v13, 0x2

    if-ge v12, v13, :cond_0

    .line 874
    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const-string v14, "must have 2 or more widgets in a chain"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 876
    :cond_0
    move-object v12, v6

    if-eqz v12, :cond_1

    move-object v12, v6

    array-length v12, v12

    move-object v13, v5

    array-length v13, v13

    if-eq v12, v13, :cond_1

    .line 877
    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const-string v14, "must have 2 or more widgets in a chain"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 879
    :cond_1
    move-object v12, v6

    if-eqz v12, :cond_2

    .line 880
    move-object v12, v0

    move-object v13, v5

    const/4 v14, 0x0

    aget v13, v13, v14

    invoke-direct {v12, v13}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v12

    move-object v13, v6

    const/4 v14, 0x0

    aget v13, v13, v14

    iput v13, v12, Landroid/support/constraint/ConstraintSet$Constraint;->verticalWeight:F

    .line 882
    :cond_2
    move-object v12, v0

    move-object v13, v5

    const/4 v14, 0x0

    aget v13, v13, v14

    invoke-direct {v12, v13}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v12

    move v13, v7

    iput v13, v12, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalChainStyle:I

    .line 883
    move-object v12, v0

    move-object v13, v5

    const/4 v14, 0x0

    aget v13, v13, v14

    move v14, v8

    move v15, v1

    move/from16 v16, v2

    const/16 v17, -0x1

    invoke-virtual/range {v12 .. v17}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 884
    const/4 v12, 0x1

    move v10, v12

    :goto_0
    move v12, v10

    move-object v13, v5

    array-length v13, v13

    if-ge v12, v13, :cond_4

    .line 885
    move-object v12, v5

    move v13, v10

    aget v12, v12, v13

    move v11, v12

    .line 886
    move-object v12, v0

    move-object v13, v5

    move v14, v10

    aget v13, v13, v14

    move v14, v8

    move-object v15, v5

    move/from16 v16, v10

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    aget v15, v15, v16

    move/from16 v16, v9

    const/16 v17, -0x1

    invoke-virtual/range {v12 .. v17}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 887
    move-object v12, v0

    move-object v13, v5

    move v14, v10

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    aget v13, v13, v14

    move v14, v9

    move-object v15, v5

    move/from16 v16, v10

    aget v15, v15, v16

    move/from16 v16, v8

    const/16 v17, -0x1

    invoke-virtual/range {v12 .. v17}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 888
    move-object v12, v6

    if-eqz v12, :cond_3

    .line 889
    move-object v12, v0

    move-object v13, v5

    move v14, v10

    aget v13, v13, v14

    invoke-direct {v12, v13}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v12

    move-object v13, v6

    move v14, v10

    aget v13, v13, v14

    iput v13, v12, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalWeight:F

    .line 884
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 893
    :cond_4
    move-object v12, v0

    move-object v13, v5

    move-object v14, v5

    array-length v14, v14

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    aget v13, v13, v14

    move v14, v9

    move v15, v3

    move/from16 v16, v4

    const/16 v17, -0x1

    invoke-virtual/range {v12 .. v17}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 896
    return-void
.end method

.method private fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/constraint/ConstraintSet$Constraint;
    .locals 9

    .prologue
    .line 1899
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v5, Landroid/support/constraint/ConstraintSet$Constraint;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/support/constraint/ConstraintSet$Constraint;-><init>(Landroid/support/constraint/ConstraintSet$1;)V

    move-object v3, v5

    .line 1900
    move-object v5, v1

    move-object v6, v2

    sget-object v7, Landroid/support/constraint/R$styleable;->ConstraintSet:[I

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object v4, v5

    .line 1901
    move-object v5, v0

    move-object v6, v3

    move-object v7, v4

    invoke-direct {v5, v6, v7}, Landroid/support/constraint/ConstraintSet;->populateConstraint(Landroid/support/constraint/ConstraintSet$Constraint;Landroid/content/res/TypedArray;)V

    .line 1902
    move-object v5, v4

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 1903
    move-object v5, v3

    move-object v0, v5

    return-object v0
.end method

.method private get(I)Landroid/support/constraint/ConstraintSet$Constraint;
    .locals 8

    .prologue
    .line 1822
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1823
    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/support/constraint/ConstraintSet$Constraint;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/support/constraint/ConstraintSet$Constraint;-><init>(Landroid/support/constraint/ConstraintSet$1;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1825
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/ConstraintSet$Constraint;

    move-object v0, v2

    return-object v0
.end method

.method private static lookupID(Landroid/content/res/TypedArray;II)I
    .locals 7

    .prologue
    .line 1891
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    move v3, v4

    .line 1892
    move v4, v3

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 1893
    move-object v4, v0

    move v5, v1

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    move v3, v4

    .line 1895
    :cond_0
    move v4, v3

    move v0, v4

    return v0
.end method

.method private populateConstraint(Landroid/support/constraint/ConstraintSet$Constraint;Landroid/content/res/TypedArray;)V
    .locals 11

    .prologue
    .line 1907
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v2

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v6

    move v3, v6

    .line 1908
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    .line 1909
    move-object v6, v2

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    move v5, v6

    .line 1948
    sget-object v6, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    move v7, v5

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 2115
    :pswitch_0
    const-string v6, "ConstraintSet"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown attribute 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v5

    .line 2116
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    move v9, v5

    invoke-virtual {v8, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2115
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1908
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1950
    :pswitch_1
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    invoke-static {v7, v8, v9}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    .line 1951
    goto :goto_1

    .line 1953
    :pswitch_2
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    invoke-static {v7, v8, v9}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    .line 1954
    goto :goto_1

    .line 1956
    :pswitch_3
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    invoke-static {v7, v8, v9}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    .line 1957
    goto :goto_1

    .line 1959
    :pswitch_4
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    invoke-static {v7, v8, v9}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    .line 1960
    goto :goto_1

    .line 1962
    :pswitch_5
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    invoke-static {v7, v8, v9}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 1963
    goto :goto_1

    .line 1965
    :pswitch_6
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    invoke-static {v7, v8, v9}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    .line 1966
    goto :goto_1

    .line 1968
    :pswitch_7
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    invoke-static {v7, v8, v9}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 1969
    goto :goto_1

    .line 1971
    :pswitch_8
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    invoke-static {v7, v8, v9}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 1972
    goto :goto_1

    .line 1974
    :pswitch_9
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    invoke-static {v7, v8, v9}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 1975
    goto :goto_1

    .line 1977
    :pswitch_a
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->editorAbsoluteX:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->editorAbsoluteX:I

    .line 1978
    goto/16 :goto_1

    .line 1980
    :pswitch_b
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->editorAbsoluteY:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->editorAbsoluteY:I

    .line 1981
    goto/16 :goto_1

    .line 1983
    :pswitch_c
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->guideBegin:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->guideBegin:I

    .line 1984
    goto/16 :goto_1

    .line 1986
    :pswitch_d
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->guideEnd:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->guideEnd:I

    .line 1987
    goto/16 :goto_1

    .line 1989
    :pswitch_e
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->guidePercent:F

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->guidePercent:F

    .line 1990
    goto/16 :goto_1

    .line 1992
    :pswitch_f
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->orientation:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->orientation:I

    .line 1993
    goto/16 :goto_1

    .line 1995
    :pswitch_10
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    invoke-static {v7, v8, v9}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    .line 1996
    goto/16 :goto_1

    .line 1998
    :pswitch_11
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    invoke-static {v7, v8, v9}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    .line 1999
    goto/16 :goto_1

    .line 2001
    :pswitch_12
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    invoke-static {v7, v8, v9}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    .line 2002
    goto/16 :goto_1

    .line 2004
    :pswitch_13
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->endToEnd:I

    invoke-static {v7, v8, v9}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 2005
    goto/16 :goto_1

    .line 2007
    :pswitch_14
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->goneLeftMargin:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->goneLeftMargin:I

    .line 2008
    goto/16 :goto_1

    .line 2010
    :pswitch_15
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->goneTopMargin:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->goneTopMargin:I

    .line 2011
    goto/16 :goto_1

    .line 2013
    :pswitch_16
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->goneRightMargin:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->goneRightMargin:I

    .line 2014
    goto/16 :goto_1

    .line 2016
    :pswitch_17
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->goneBottomMargin:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->goneBottomMargin:I

    .line 2017
    goto/16 :goto_1

    .line 2019
    :pswitch_18
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->goneStartMargin:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->goneStartMargin:I

    .line 2020
    goto/16 :goto_1

    .line 2022
    :pswitch_19
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->goneEndMargin:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->goneEndMargin:I

    .line 2023
    goto/16 :goto_1

    .line 2025
    :pswitch_1a
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    .line 2026
    goto/16 :goto_1

    .line 2028
    :pswitch_1b
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->verticalBias:F

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->verticalBias:F

    .line 2029
    goto/16 :goto_1

    .line 2031
    :pswitch_1c
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->leftMargin:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->leftMargin:I

    .line 2032
    goto/16 :goto_1

    .line 2034
    :pswitch_1d
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->rightMargin:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->rightMargin:I

    .line 2035
    goto/16 :goto_1

    .line 2037
    :pswitch_1e
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->startMargin:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->startMargin:I

    .line 2038
    goto/16 :goto_1

    .line 2040
    :pswitch_1f
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->endMargin:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->endMargin:I

    .line 2041
    goto/16 :goto_1

    .line 2043
    :pswitch_20
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->topMargin:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->topMargin:I

    .line 2044
    goto/16 :goto_1

    .line 2046
    :pswitch_21
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->bottomMargin:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->bottomMargin:I

    .line 2047
    goto/16 :goto_1

    .line 2049
    :pswitch_22
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->mWidth:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->mWidth:I

    .line 2050
    goto/16 :goto_1

    .line 2052
    :pswitch_23
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->mHeight:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->mHeight:I

    .line 2053
    goto/16 :goto_1

    .line 2055
    :pswitch_24
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    .line 2056
    move-object v6, v1

    sget-object v7, Landroid/support/constraint/ConstraintSet;->VISIBILITY_FLAGS:[I

    move-object v8, v1

    iget v8, v8, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    aget v7, v7, v8

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    .line 2057
    goto/16 :goto_1

    .line 2059
    :pswitch_25
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->alpha:F

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->alpha:F

    .line 2060
    goto/16 :goto_1

    .line 2062
    :pswitch_26
    move-object v6, v1

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->applyElevation:Z

    .line 2063
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->elevation:F

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->elevation:F

    .line 2064
    goto/16 :goto_1

    .line 2066
    :pswitch_27
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->rotationX:F

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->rotationX:F

    .line 2067
    goto/16 :goto_1

    .line 2069
    :pswitch_28
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->rotationY:F

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->rotationY:F

    .line 2070
    goto/16 :goto_1

    .line 2072
    :pswitch_29
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->scaleX:F

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->scaleX:F

    .line 2073
    goto/16 :goto_1

    .line 2075
    :pswitch_2a
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->scaleY:F

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->scaleY:F

    .line 2076
    goto/16 :goto_1

    .line 2078
    :pswitch_2b
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotX:F

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotX:F

    .line 2079
    goto/16 :goto_1

    .line 2081
    :pswitch_2c
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotY:F

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotY:F

    .line 2082
    goto/16 :goto_1

    .line 2084
    :pswitch_2d
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->translationX:F

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->translationX:F

    .line 2085
    goto/16 :goto_1

    .line 2087
    :pswitch_2e
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->translationY:F

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->translationY:F

    .line 2088
    goto/16 :goto_1

    .line 2090
    :pswitch_2f
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->translationZ:F

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->translationZ:F

    .line 2091
    goto/16 :goto_1

    .line 2093
    :pswitch_30
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->verticalWeight:F

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->verticalWeight:F

    .line 2094
    goto/16 :goto_1

    .line 2096
    :pswitch_31
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalWeight:F

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalWeight:F

    .line 2097
    goto/16 :goto_1

    .line 2099
    :pswitch_32
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->verticalChainStyle:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->verticalChainStyle:I

    .line 2100
    goto/16 :goto_1

    .line 2102
    :pswitch_33
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalChainStyle:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalChainStyle:I

    .line 2103
    goto/16 :goto_1

    .line 2105
    :pswitch_34
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    move-object v9, v1

    iget v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->mViewId:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->mViewId:I

    .line 2106
    goto/16 :goto_1

    .line 2108
    :pswitch_35
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->dimensionRatio:Ljava/lang/String;

    .line 2109
    goto/16 :goto_1

    .line 2111
    :pswitch_36
    const-string v6, "ConstraintSet"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unused attribute 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v5

    .line 2112
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    move v9, v5

    invoke-virtual {v8, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2111
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 2113
    goto/16 :goto_1

    .line 2119
    :cond_0
    return-void

    .line 1948
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_21
        :pswitch_8
        :pswitch_7
        :pswitch_35
        :pswitch_a
        :pswitch_b
        :pswitch_1f
        :pswitch_13
        :pswitch_12
        :pswitch_17
        :pswitch_19
        :pswitch_14
        :pswitch_16
        :pswitch_18
        :pswitch_15
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_1a
        :pswitch_23
        :pswitch_24
        :pswitch_22
        :pswitch_1c
        :pswitch_1
        :pswitch_2
        :pswitch_f
        :pswitch_1d
        :pswitch_3
        :pswitch_4
        :pswitch_1e
        :pswitch_10
        :pswitch_11
        :pswitch_20
        :pswitch_6
        :pswitch_5
        :pswitch_1b
        :pswitch_34
        :pswitch_31
        :pswitch_30
        :pswitch_33
        :pswitch_32
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_36
    .end packed-switch
.end method

.method private sideToString(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1829
    move-object v0, p0

    move v1, p1

    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 1845
    const-string v2, "undefined"

    move-object v0, v2

    :goto_0
    return-object v0

    .line 1831
    :pswitch_0
    const-string v2, "left"

    move-object v0, v2

    goto :goto_0

    .line 1833
    :pswitch_1
    const-string v2, "right"

    move-object v0, v2

    goto :goto_0

    .line 1835
    :pswitch_2
    const-string v2, "top"

    move-object v0, v2

    goto :goto_0

    .line 1837
    :pswitch_3
    const-string v2, "bottom"

    move-object v0, v2

    goto :goto_0

    .line 1839
    :pswitch_4
    const-string v2, "baseline"

    move-object v0, v2

    goto :goto_0

    .line 1841
    :pswitch_5
    const-string v2, "start"

    move-object v0, v2

    goto :goto_0

    .line 1843
    :pswitch_6
    const-string v2, "end"

    move-object v0, v2

    goto :goto_0

    .line 1829
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public addToHorizontalChain(III)V
    .locals 10

    .prologue
    .line 1641
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v1

    const/4 v6, 0x1

    move v7, v2

    move v8, v2

    if-nez v8, :cond_2

    const/4 v8, 0x1

    :goto_0
    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1642
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x2

    move v7, v3

    move v8, v3

    if-nez v8, :cond_3

    const/4 v8, 0x2

    :goto_1
    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1643
    move v4, v2

    if-eqz v4, :cond_0

    .line 1644
    move-object v4, v0

    move v5, v2

    const/4 v6, 0x2

    move v7, v1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1646
    :cond_0
    move v4, v3

    if-eqz v4, :cond_1

    .line 1647
    move-object v4, v0

    move v5, v3

    const/4 v6, 0x1

    move v7, v1

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1649
    :cond_1
    return-void

    .line 1641
    :cond_2
    const/4 v8, 0x2

    goto :goto_0

    .line 1642
    :cond_3
    const/4 v8, 0x1

    goto :goto_1
.end method

.method public addToHorizontalChainRTL(III)V
    .locals 10

    .prologue
    .line 1659
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v1

    const/4 v6, 0x6

    move v7, v2

    move v8, v2

    if-nez v8, :cond_2

    const/4 v8, 0x6

    :goto_0
    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1660
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x7

    move v7, v3

    move v8, v3

    if-nez v8, :cond_3

    const/4 v8, 0x7

    :goto_1
    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1661
    move v4, v2

    if-eqz v4, :cond_0

    .line 1662
    move-object v4, v0

    move v5, v2

    const/4 v6, 0x7

    move v7, v1

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1664
    :cond_0
    move v4, v3

    if-eqz v4, :cond_1

    .line 1665
    move-object v4, v0

    move v5, v3

    const/4 v6, 0x6

    move v7, v1

    const/4 v8, 0x7

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1667
    :cond_1
    return-void

    .line 1659
    :cond_2
    const/4 v8, 0x7

    goto :goto_0

    .line 1660
    :cond_3
    const/4 v8, 0x6

    goto :goto_1
.end method

.method public addToVerticalChain(III)V
    .locals 10

    .prologue
    .line 1677
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v1

    const/4 v6, 0x3

    move v7, v2

    move v8, v2

    if-nez v8, :cond_2

    const/4 v8, 0x3

    :goto_0
    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1678
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x4

    move v7, v3

    move v8, v3

    if-nez v8, :cond_3

    const/4 v8, 0x4

    :goto_1
    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1679
    move v4, v2

    if-eqz v4, :cond_0

    .line 1680
    move-object v4, v0

    move v5, v2

    const/4 v6, 0x4

    move v7, v1

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1682
    :cond_0
    move v4, v2

    if-eqz v4, :cond_1

    .line 1683
    move-object v4, v0

    move v5, v3

    const/4 v6, 0x3

    move v7, v1

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1685
    :cond_1
    return-void

    .line 1677
    :cond_2
    const/4 v8, 0x4

    goto :goto_0

    .line 1678
    :cond_3
    const/4 v8, 0x3

    goto :goto_1
.end method

.method public applyTo(Landroid/support/constraint/ConstraintLayout;)V
    .locals 4

    .prologue
    .line 640
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/constraint/ConstraintSet;->applyToInternal(Landroid/support/constraint/ConstraintLayout;)V

    .line 641
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/constraint/ConstraintLayout;->setConstraintSet(Landroid/support/constraint/ConstraintSet;)V

    .line 642
    return-void
.end method

.method applyToInternal(Landroid/support/constraint/ConstraintLayout;)V
    .locals 13

    .prologue
    .line 648
    move-object v0, p0

    move-object v1, p1

    move-object v9, v1

    invoke-virtual {v9}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v9

    move v2, v9

    .line 649
    new-instance v9, Ljava/util/HashSet;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v0

    iget-object v11, v11, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v3, v9

    .line 651
    const/4 v9, 0x0

    move v4, v9

    :goto_0
    move v9, v4

    move v10, v2

    if-ge v9, v10, :cond_1

    .line 652
    move-object v9, v1

    move v10, v4

    invoke-virtual {v9, v10}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v5, v9

    .line 653
    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v9

    move v6, v9

    .line 654
    move-object v9, v0

    iget-object v9, v9, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v10, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 655
    move-object v9, v3

    move v10, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v9

    .line 656
    move-object v9, v0

    iget-object v9, v9, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v10, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/constraint/ConstraintSet$Constraint;

    move-object v7, v9

    .line 657
    move-object v9, v5

    .line 658
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-object v8, v9

    .line 659
    move-object v9, v7

    move-object v10, v8

    invoke-virtual {v9, v10}, Landroid/support/constraint/ConstraintSet$Constraint;->applyTo(Landroid/support/constraint/ConstraintLayout$LayoutParams;)V

    .line 660
    move-object v9, v5

    move-object v10, v8

    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 661
    move-object v9, v5

    move-object v10, v7

    iget v10, v10, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 662
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x11

    if-lt v9, v10, :cond_0

    .line 663
    move-object v9, v5

    move-object v10, v7

    iget v10, v10, Landroid/support/constraint/ConstraintSet$Constraint;->alpha:F

    invoke-virtual {v9, v10}, Landroid/view/View;->setAlpha(F)V

    .line 664
    move-object v9, v5

    move-object v10, v7

    iget v10, v10, Landroid/support/constraint/ConstraintSet$Constraint;->rotationX:F

    invoke-virtual {v9, v10}, Landroid/view/View;->setRotationX(F)V

    .line 665
    move-object v9, v5

    move-object v10, v7

    iget v10, v10, Landroid/support/constraint/ConstraintSet$Constraint;->rotationY:F

    invoke-virtual {v9, v10}, Landroid/view/View;->setRotationY(F)V

    .line 666
    move-object v9, v5

    move-object v10, v7

    iget v10, v10, Landroid/support/constraint/ConstraintSet$Constraint;->scaleX:F

    invoke-virtual {v9, v10}, Landroid/view/View;->setScaleX(F)V

    .line 667
    move-object v9, v5

    move-object v10, v7

    iget v10, v10, Landroid/support/constraint/ConstraintSet$Constraint;->scaleY:F

    invoke-virtual {v9, v10}, Landroid/view/View;->setScaleY(F)V

    .line 668
    move-object v9, v5

    move-object v10, v7

    iget v10, v10, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotX:F

    invoke-virtual {v9, v10}, Landroid/view/View;->setPivotX(F)V

    .line 669
    move-object v9, v5

    move-object v10, v7

    iget v10, v10, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotY:F

    invoke-virtual {v9, v10}, Landroid/view/View;->setPivotY(F)V

    .line 670
    move-object v9, v5

    move-object v10, v7

    iget v10, v10, Landroid/support/constraint/ConstraintSet$Constraint;->translationX:F

    invoke-virtual {v9, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 671
    move-object v9, v5

    move-object v10, v7

    iget v10, v10, Landroid/support/constraint/ConstraintSet$Constraint;->translationY:F

    invoke-virtual {v9, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 672
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-lt v9, v10, :cond_0

    .line 673
    move-object v9, v5

    move-object v10, v7

    iget v10, v10, Landroid/support/constraint/ConstraintSet$Constraint;->translationZ:F

    invoke-virtual {v9, v10}, Landroid/view/View;->setTranslationZ(F)V

    .line 674
    move-object v9, v7

    iget-boolean v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->applyElevation:Z

    if-eqz v9, :cond_0

    .line 675
    move-object v9, v5

    move-object v10, v7

    iget v10, v10, Landroid/support/constraint/ConstraintSet$Constraint;->elevation:F

    invoke-virtual {v9, v10}, Landroid/view/View;->setElevation(F)V

    .line 651
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 681
    :cond_1
    move-object v9, v3

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v4, v9

    :goto_1
    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    move-object v5, v9

    .line 682
    move-object v9, v0

    iget-object v9, v9, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/constraint/ConstraintSet$Constraint;

    move-object v6, v9

    .line 683
    move-object v9, v6

    iget-boolean v9, v9, Landroid/support/constraint/ConstraintSet$Constraint;->mIsGuideline:Z

    if-eqz v9, :cond_2

    .line 684
    new-instance v9, Landroid/support/constraint/Guideline;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v1

    invoke-virtual {v11}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/support/constraint/Guideline;-><init>(Landroid/content/Context;)V

    move-object v7, v9

    .line 685
    move-object v9, v7

    move-object v10, v5

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/support/constraint/Guideline;->setId(I)V

    .line 686
    move-object v9, v1

    invoke-virtual {v9}, Landroid/support/constraint/ConstraintLayout;->generateDefaultLayoutParams()Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-result-object v9

    move-object v8, v9

    .line 687
    move-object v9, v6

    move-object v10, v8

    invoke-virtual {v9, v10}, Landroid/support/constraint/ConstraintSet$Constraint;->applyTo(Landroid/support/constraint/ConstraintLayout$LayoutParams;)V

    .line 688
    move-object v9, v1

    move-object v10, v7

    move-object v11, v8

    invoke-virtual {v9, v10, v11}, Landroid/support/constraint/ConstraintLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 690
    :cond_2
    goto :goto_1

    .line 691
    :cond_3
    return-void
.end method

.method public center(IIIIIIIF)V
    .locals 17

    .prologue
    .line 711
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move v10, v4

    if-gez v10, :cond_0

    .line 712
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const-string v12, "margin must be > 0"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 714
    :cond_0
    move v10, v7

    if-gez v10, :cond_1

    .line 715
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const-string v12, "margin must be > 0"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 717
    :cond_1
    move v10, v8

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-lez v10, :cond_2

    move v10, v8

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v11

    if-lez v10, :cond_3

    .line 718
    :cond_2
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const-string v12, "bias must be between 0 and 1 inclusive"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 721
    :cond_3
    move v10, v3

    const/4 v11, 0x1

    if-eq v10, v11, :cond_4

    move v10, v3

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    .line 722
    :cond_4
    move-object v10, v0

    move v11, v1

    const/4 v12, 0x1

    move v13, v2

    move v14, v3

    move v15, v4

    invoke-virtual/range {v10 .. v15}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 723
    move-object v10, v0

    move v11, v1

    const/4 v12, 0x2

    move v13, v5

    move v14, v6

    move v15, v7

    invoke-virtual/range {v10 .. v15}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 724
    move-object v10, v0

    iget-object v10, v10, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v11, v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/constraint/ConstraintSet$Constraint;

    move-object v9, v10

    .line 725
    move-object v10, v9

    move v11, v8

    iput v11, v10, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    .line 737
    :goto_0
    return-void

    .line 726
    :cond_5
    move v10, v3

    const/4 v11, 0x6

    if-eq v10, v11, :cond_6

    move v10, v3

    const/4 v11, 0x7

    if-ne v10, v11, :cond_7

    .line 727
    :cond_6
    move-object v10, v0

    move v11, v1

    const/4 v12, 0x6

    move v13, v2

    move v14, v3

    move v15, v4

    invoke-virtual/range {v10 .. v15}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 728
    move-object v10, v0

    move v11, v1

    const/4 v12, 0x7

    move v13, v5

    move v14, v6

    move v15, v7

    invoke-virtual/range {v10 .. v15}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 729
    move-object v10, v0

    iget-object v10, v10, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v11, v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/constraint/ConstraintSet$Constraint;

    move-object v9, v10

    .line 730
    move-object v10, v9

    move v11, v8

    iput v11, v10, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    .line 731
    goto :goto_0

    .line 732
    :cond_7
    move-object v10, v0

    move v11, v1

    const/4 v12, 0x3

    move v13, v2

    move v14, v3

    move v15, v4

    invoke-virtual/range {v10 .. v15}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 733
    move-object v10, v0

    move v11, v1

    const/4 v12, 0x4

    move v13, v5

    move v14, v6

    move v15, v7

    invoke-virtual/range {v10 .. v15}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 734
    move-object v10, v0

    iget-object v10, v10, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v11, v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/constraint/ConstraintSet$Constraint;

    move-object v9, v10

    .line 735
    move-object v10, v9

    move v11, v8

    iput v11, v10, Landroid/support/constraint/ConstraintSet$Constraint;->verticalBias:F

    goto :goto_0
.end method

.method public centerHorizontally(II)V
    .locals 12

    .prologue
    .line 1121
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v2

    if-nez v3, :cond_0

    .line 1122
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-virtual/range {v3 .. v11}, Landroid/support/constraint/ConstraintSet;->center(IIIIIIIF)V

    .line 1126
    :goto_0
    return-void

    .line 1124
    :cond_0
    move-object v3, v0

    move v4, v1

    move v5, v2

    const/4 v6, 0x2

    const/4 v7, 0x0

    move v8, v2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-virtual/range {v3 .. v11}, Landroid/support/constraint/ConstraintSet;->center(IIIIIIIF)V

    goto :goto_0
.end method

.method public centerHorizontally(IIIIIIIF)V
    .locals 16

    .prologue
    .line 753
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object v10, v0

    move v11, v1

    const/4 v12, 0x1

    move v13, v2

    move v14, v3

    move v15, v4

    invoke-virtual/range {v10 .. v15}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 754
    move-object v10, v0

    move v11, v1

    const/4 v12, 0x2

    move v13, v5

    move v14, v6

    move v15, v7

    invoke-virtual/range {v10 .. v15}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 755
    move-object v10, v0

    iget-object v10, v10, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v11, v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/constraint/ConstraintSet$Constraint;

    move-object v9, v10

    .line 756
    move-object v10, v9

    move v11, v8

    iput v11, v10, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    .line 757
    return-void
.end method

.method public centerHorizontallyRtl(II)V
    .locals 12

    .prologue
    .line 1135
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v2

    if-nez v3, :cond_0

    .line 1136
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x7

    const/4 v10, 0x0

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-virtual/range {v3 .. v11}, Landroid/support/constraint/ConstraintSet;->center(IIIIIIIF)V

    .line 1140
    :goto_0
    return-void

    .line 1138
    :cond_0
    move-object v3, v0

    move v4, v1

    move v5, v2

    const/4 v6, 0x7

    const/4 v7, 0x0

    move v8, v2

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-virtual/range {v3 .. v11}, Landroid/support/constraint/ConstraintSet;->center(IIIIIIIF)V

    goto :goto_0
.end method

.method public centerHorizontallyRtl(IIIIIIIF)V
    .locals 16

    .prologue
    .line 773
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object v10, v0

    move v11, v1

    const/4 v12, 0x6

    move v13, v2

    move v14, v3

    move v15, v4

    invoke-virtual/range {v10 .. v15}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 774
    move-object v10, v0

    move v11, v1

    const/4 v12, 0x7

    move v13, v5

    move v14, v6

    move v15, v7

    invoke-virtual/range {v10 .. v15}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 775
    move-object v10, v0

    iget-object v10, v10, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v11, v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/constraint/ConstraintSet$Constraint;

    move-object v9, v10

    .line 776
    move-object v10, v9

    move v11, v8

    iput v11, v10, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    .line 777
    return-void
.end method

.method public centerVertically(II)V
    .locals 12

    .prologue
    .line 1150
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v2

    if-nez v3, :cond_0

    .line 1151
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-virtual/range {v3 .. v11}, Landroid/support/constraint/ConstraintSet;->center(IIIIIIIF)V

    .line 1155
    :goto_0
    return-void

    .line 1153
    :cond_0
    move-object v3, v0

    move v4, v1

    move v5, v2

    const/4 v6, 0x4

    const/4 v7, 0x0

    move v8, v2

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-virtual/range {v3 .. v11}, Landroid/support/constraint/ConstraintSet;->center(IIIIIIIF)V

    goto :goto_0
.end method

.method public centerVertically(IIIIIIIF)V
    .locals 16

    .prologue
    .line 793
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object v10, v0

    move v11, v1

    const/4 v12, 0x3

    move v13, v2

    move v14, v3

    move v15, v4

    invoke-virtual/range {v10 .. v15}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 794
    move-object v10, v0

    move v11, v1

    const/4 v12, 0x4

    move v13, v5

    move v14, v6

    move v15, v7

    invoke-virtual/range {v10 .. v15}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 795
    move-object v10, v0

    iget-object v10, v10, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v11, v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/constraint/ConstraintSet$Constraint;

    move-object v9, v10

    .line 796
    move-object v10, v9

    move v11, v8

    iput v11, v10, Landroid/support/constraint/ConstraintSet$Constraint;->verticalBias:F

    .line 797
    return-void
.end method

.method public clear(I)V
    .locals 4

    .prologue
    .line 1163
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1164
    return-void
.end method

.method public clear(II)V
    .locals 8

    .prologue
    .line 1173
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1174
    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/ConstraintSet$Constraint;

    move-object v3, v4

    .line 1175
    move v4, v2

    packed-switch v4, :pswitch_data_0

    .line 1217
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "unknown constraint"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1177
    :pswitch_0
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    .line 1178
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    .line 1179
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->leftMargin:I

    .line 1180
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->goneLeftMargin:I

    .line 1220
    :cond_0
    :goto_0
    return-void

    .line 1183
    :pswitch_1
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    .line 1184
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    .line 1185
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->rightMargin:I

    .line 1186
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->goneRightMargin:I

    .line 1187
    goto :goto_0

    .line 1189
    :pswitch_2
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    .line 1190
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 1191
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->topMargin:I

    .line 1192
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->goneTopMargin:I

    .line 1193
    goto :goto_0

    .line 1195
    :pswitch_3
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 1196
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 1197
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->bottomMargin:I

    .line 1198
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->goneBottomMargin:I

    .line 1199
    goto :goto_0

    .line 1202
    :pswitch_4
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 1203
    goto :goto_0

    .line 1205
    :pswitch_5
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    .line 1206
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    .line 1207
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->startMargin:I

    .line 1208
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->goneStartMargin:I

    .line 1209
    goto :goto_0

    .line 1211
    :pswitch_6
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    .line 1212
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->endToEnd:I

    .line 1213
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->endMargin:I

    .line 1214
    move-object v4, v3

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->goneEndMargin:I

    .line 1215
    goto :goto_0

    .line 1175
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public clone(Landroid/content/Context;I)V
    .locals 7

    .prologue
    .line 580
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    move v5, v2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v3, v4}, Landroid/support/constraint/ConstraintSet;->clone(Landroid/support/constraint/ConstraintLayout;)V

    .line 581
    return-void
.end method

.method public clone(Landroid/support/constraint/ConstraintLayout;)V
    .locals 14

    .prologue
    .line 601
    move-object v0, p0

    move-object v1, p1

    move-object v8, v1

    invoke-virtual {v8}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v8

    move v2, v8

    .line 602
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 603
    const/4 v8, 0x0

    move v3, v8

    :goto_0
    move v8, v3

    move v9, v2

    if-ge v8, v9, :cond_2

    .line 604
    move-object v8, v1

    move v9, v3

    invoke-virtual {v8, v9}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v4, v8

    .line 605
    move-object v8, v4

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-object v5, v8

    .line 607
    move-object v8, v4

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    move v6, v8

    .line 608
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v9, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 609
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v9, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v10, Landroid/support/constraint/ConstraintSet$Constraint;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Landroid/support/constraint/ConstraintSet$Constraint;-><init>(Landroid/support/constraint/ConstraintSet$1;)V

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 611
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v9, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/constraint/ConstraintSet$Constraint;

    move-object v7, v8

    .line 612
    move-object v8, v7

    move v9, v6

    move-object v10, v5

    invoke-static {v8, v9, v10}, Landroid/support/constraint/ConstraintSet$Constraint;->access$100(Landroid/support/constraint/ConstraintSet$Constraint;ILandroid/support/constraint/ConstraintLayout$LayoutParams;)V

    .line 613
    move-object v8, v7

    move-object v9, v4

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    iput v9, v8, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    .line 614
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x11

    if-lt v8, v9, :cond_1

    .line 615
    move-object v8, v7

    move-object v9, v4

    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v9

    iput v9, v8, Landroid/support/constraint/ConstraintSet$Constraint;->alpha:F

    .line 616
    move-object v8, v7

    move-object v9, v4

    invoke-virtual {v9}, Landroid/view/View;->getRotationX()F

    move-result v9

    iput v9, v8, Landroid/support/constraint/ConstraintSet$Constraint;->rotationX:F

    .line 617
    move-object v8, v7

    move-object v9, v4

    invoke-virtual {v9}, Landroid/view/View;->getRotationY()F

    move-result v9

    iput v9, v8, Landroid/support/constraint/ConstraintSet$Constraint;->rotationY:F

    .line 618
    move-object v8, v7

    move-object v9, v4

    invoke-virtual {v9}, Landroid/view/View;->getScaleX()F

    move-result v9

    iput v9, v8, Landroid/support/constraint/ConstraintSet$Constraint;->scaleX:F

    .line 619
    move-object v8, v7

    move-object v9, v4

    invoke-virtual {v9}, Landroid/view/View;->getScaleY()F

    move-result v9

    iput v9, v8, Landroid/support/constraint/ConstraintSet$Constraint;->scaleY:F

    .line 620
    move-object v8, v7

    move-object v9, v4

    invoke-virtual {v9}, Landroid/view/View;->getPivotX()F

    move-result v9

    iput v9, v8, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotX:F

    .line 621
    move-object v8, v7

    move-object v9, v4

    invoke-virtual {v9}, Landroid/view/View;->getPivotY()F

    move-result v9

    iput v9, v8, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotY:F

    .line 622
    move-object v8, v7

    move-object v9, v4

    invoke-virtual {v9}, Landroid/view/View;->getTranslationX()F

    move-result v9

    iput v9, v8, Landroid/support/constraint/ConstraintSet$Constraint;->translationX:F

    .line 623
    move-object v8, v7

    move-object v9, v4

    invoke-virtual {v9}, Landroid/view/View;->getTranslationY()F

    move-result v9

    iput v9, v8, Landroid/support/constraint/ConstraintSet$Constraint;->translationY:F

    .line 624
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_1

    .line 625
    move-object v8, v7

    move-object v9, v4

    invoke-virtual {v9}, Landroid/view/View;->getTranslationZ()F

    move-result v9

    iput v9, v8, Landroid/support/constraint/ConstraintSet$Constraint;->translationZ:F

    .line 626
    move-object v8, v7

    iget-boolean v8, v8, Landroid/support/constraint/ConstraintSet$Constraint;->applyElevation:Z

    if-eqz v8, :cond_1

    .line 627
    move-object v8, v7

    move-object v9, v4

    invoke-virtual {v9}, Landroid/view/View;->getElevation()F

    move-result v9

    iput v9, v8, Landroid/support/constraint/ConstraintSet$Constraint;->elevation:F

    .line 603
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 632
    :cond_2
    return-void
.end method

.method public clone(Landroid/support/constraint/ConstraintSet;)V
    .locals 8

    .prologue
    .line 589
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 590
    move-object v4, v1

    iget-object v4, v4, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move-object v3, v4

    .line 591
    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move-object v5, v3

    move-object v6, v1

    iget-object v6, v6, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/ConstraintSet$Constraint;

    invoke-virtual {v6}, Landroid/support/constraint/ConstraintSet$Constraint;->clone()Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 592
    goto :goto_0

    .line 593
    :cond_0
    return-void
.end method

.method public connect(IIII)V
    .locals 12

    .prologue
    .line 1021
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object v6, v0

    iget-object v6, v6, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1022
    move-object v6, v0

    iget-object v6, v6, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Landroid/support/constraint/ConstraintSet$Constraint;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Landroid/support/constraint/ConstraintSet$Constraint;-><init>(Landroid/support/constraint/ConstraintSet$1;)V

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1024
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/ConstraintSet$Constraint;

    move-object v5, v6

    .line 1025
    move v6, v2

    packed-switch v6, :pswitch_data_0

    .line 1109
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v0

    move v10, v2

    .line 1110
    invoke-direct {v9, v10}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    move v10, v4

    invoke-direct {v9, v10}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " unknown"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1027
    :pswitch_0
    move v6, v4

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 1028
    move-object v6, v5

    move v7, v3

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    .line 1029
    move-object v6, v5

    const/4 v7, -0x1

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    .line 1112
    :goto_0
    return-void

    .line 1030
    :cond_1
    move v6, v4

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 1031
    move-object v6, v5

    move v7, v3

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    .line 1032
    move-object v6, v5

    const/4 v7, -0x1

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    goto :goto_0

    .line 1034
    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "left to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    move v10, v4

    invoke-direct {v9, v10}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " undefined"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1038
    :pswitch_1
    move v6, v4

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 1039
    move-object v6, v5

    move v7, v3

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    .line 1040
    move-object v6, v5

    const/4 v7, -0x1

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    goto :goto_0

    .line 1042
    :cond_3
    move v6, v4

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 1043
    move-object v6, v5

    move v7, v3

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    .line 1044
    move-object v6, v5

    const/4 v7, -0x1

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    goto :goto_0

    .line 1046
    :cond_4
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "right to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    move v10, v4

    invoke-direct {v9, v10}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " undefined"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1050
    :pswitch_2
    move v6, v4

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    .line 1051
    move-object v6, v5

    move v7, v3

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 1052
    move-object v6, v5

    const/4 v7, -0x1

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    .line 1053
    move-object v6, v5

    const/4 v7, -0x1

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    goto/16 :goto_0

    .line 1054
    :cond_5
    move v6, v4

    const/4 v7, 0x4

    if-ne v6, v7, :cond_6

    .line 1055
    move-object v6, v5

    move v7, v3

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    .line 1056
    move-object v6, v5

    const/4 v7, -0x1

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 1057
    move-object v6, v5

    const/4 v7, -0x1

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    goto/16 :goto_0

    .line 1059
    :cond_6
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "right to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    move v10, v4

    invoke-direct {v9, v10}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " undefined"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1063
    :pswitch_3
    move v6, v4

    const/4 v7, 0x4

    if-ne v6, v7, :cond_7

    .line 1064
    move-object v6, v5

    move v7, v3

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 1065
    move-object v6, v5

    const/4 v7, -0x1

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 1066
    move-object v6, v5

    const/4 v7, -0x1

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    goto/16 :goto_0

    .line 1067
    :cond_7
    move v6, v4

    const/4 v7, 0x3

    if-ne v6, v7, :cond_8

    .line 1068
    move-object v6, v5

    move v7, v3

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 1069
    move-object v6, v5

    const/4 v7, -0x1

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 1070
    move-object v6, v5

    const/4 v7, -0x1

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    goto/16 :goto_0

    .line 1072
    :cond_8
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "right to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    move v10, v4

    invoke-direct {v9, v10}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " undefined"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1076
    :pswitch_4
    move v6, v4

    const/4 v7, 0x5

    if-ne v6, v7, :cond_9

    .line 1077
    move-object v6, v5

    move v7, v3

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 1078
    move-object v6, v5

    const/4 v7, -0x1

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 1079
    move-object v6, v5

    const/4 v7, -0x1

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 1080
    move-object v6, v5

    const/4 v7, -0x1

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 1081
    move-object v6, v5

    const/4 v7, -0x1

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    goto/16 :goto_0

    .line 1083
    :cond_9
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "right to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    move v10, v4

    invoke-direct {v9, v10}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " undefined"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1087
    :pswitch_5
    move v6, v4

    const/4 v7, 0x6

    if-ne v6, v7, :cond_a

    .line 1088
    move-object v6, v5

    move v7, v3

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    .line 1089
    move-object v6, v5

    const/4 v7, -0x1

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    goto/16 :goto_0

    .line 1090
    :cond_a
    move v6, v4

    const/4 v7, 0x7

    if-ne v6, v7, :cond_b

    .line 1091
    move-object v6, v5

    move v7, v3

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    .line 1092
    move-object v6, v5

    const/4 v7, -0x1

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    goto/16 :goto_0

    .line 1094
    :cond_b
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "right to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    move v10, v4

    invoke-direct {v9, v10}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " undefined"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1098
    :pswitch_6
    move v6, v4

    const/4 v7, 0x7

    if-ne v6, v7, :cond_c

    .line 1099
    move-object v6, v5

    move v7, v3

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->endToEnd:I

    .line 1100
    move-object v6, v5

    const/4 v7, -0x1

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    goto/16 :goto_0

    .line 1101
    :cond_c
    move v6, v4

    const/4 v7, 0x6

    if-ne v6, v7, :cond_d

    .line 1102
    move-object v6, v5

    move v7, v3

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    .line 1103
    move-object v6, v5

    const/4 v7, -0x1

    iput v7, v6, Landroid/support/constraint/ConstraintSet$Constraint;->endToEnd:I

    goto/16 :goto_0

    .line 1105
    :cond_d
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "right to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    move v10, v4

    invoke-direct {v9, v10}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " undefined"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1025
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public connect(IIIII)V
    .locals 13

    .prologue
    .line 908
    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v7, v0

    iget-object v7, v7, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 909
    move-object v7, v0

    iget-object v7, v7, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Landroid/support/constraint/ConstraintSet$Constraint;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Landroid/support/constraint/ConstraintSet$Constraint;-><init>(Landroid/support/constraint/ConstraintSet$1;)V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 911
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/constraint/ConstraintSet$Constraint;

    move-object v6, v7

    .line 912
    move v7, v2

    packed-switch v7, :pswitch_data_0

    .line 1007
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v0

    move v11, v2

    .line 1008
    invoke-direct {v10, v11}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    move v11, v4

    invoke-direct {v10, v11}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " unknown"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 914
    :pswitch_0
    move v7, v4

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 915
    move-object v7, v6

    move v8, v3

    iput v8, v7, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    .line 916
    move-object v7, v6

    const/4 v8, -0x1

    iput v8, v7, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    .line 924
    :goto_0
    move-object v7, v6

    move v8, v5

    iput v8, v7, Landroid/support/constraint/ConstraintSet$Constraint;->leftMargin:I

    .line 1010
    :goto_1
    return-void

    .line 917
    :cond_1
    move v7, v4

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 918
    move-object v7, v6

    move v8, v3

    iput v8, v7, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    .line 919
    move-object v7, v6

    const/4 v8, -0x1

    iput v8, v7, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    goto :goto_0

    .line 922
    :cond_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Left to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    move v11, v4

    invoke-direct {v10, v11}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " undefined"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 927
    :pswitch_1
    move v7, v4

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 928
    move-object v7, v6

    move v8, v3

    iput v8, v7, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    .line 929
    move-object v7, v6

    const/4 v8, -0x1

    iput v8, v7, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    .line 938
    :goto_2
    move-object v7, v6

    move v8, v5

    iput v8, v7, Landroid/support/constraint/ConstraintSet$Constraint;->rightMargin:I

    .line 939
    goto :goto_1

    .line 931
    :cond_3
    move v7, v4

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 932
    move-object v7, v6

    move v8, v3

    iput v8, v7, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    .line 933
    move-object v7, v6

    const/4 v8, -0x1

    iput v8, v7, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    goto :goto_2

    .line 936
    :cond_4
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "right to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    move v11, v4

    invoke-direct {v10, v11}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " undefined"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 941
    :pswitch_2
    move v7, v4

    const/4 v8, 0x3

    if-ne v7, v8, :cond_5

    .line 942
    move-object v7, v6

    move v8, v3

    iput v8, v7, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 943
    move-object v7, v6

    const/4 v8, -0x1

    iput v8, v7, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    .line 944
    move-object v7, v6

    const/4 v8, -0x1

    iput v8, v7, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 953
    :goto_3
    move-object v7, v6

    move v8, v5

    iput v8, v7, Landroid/support/constraint/ConstraintSet$Constraint;->topMargin:I

    .line 954
    goto/16 :goto_1

    .line 945
    :cond_5
    move v7, v4

    const/4 v8, 0x4

    if-ne v7, v8, :cond_6

    .line 946
    move-object v7, v6

    move v8, v3

    iput v8, v7, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    .line 947
    move-object v7, v6

    const/4 v8, -0x1

    iput v8, v7, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 948
    move-object v7, v6

    const/4 v8, -0x1

    iput v8, v7, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    goto :goto_3

    .line 951
    :cond_6
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "right to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    move v11, v4

    invoke-direct {v10, v11}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " undefined"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 956
    :pswitch_3
    move v7, v4

    const/4 v8, 0x4

    if-ne v7, v8, :cond_7

    .line 957
    move-object v7, v6

    move v8, v3

    iput v8, v7, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 958
    move-object v7, v6

    const/4 v8, -0x1

    iput v8, v7, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 959
    move-object v7, v6

    const/4 v8, -0x1

    iput v8, v7, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 969
    :goto_4
    move-object v7, v6

    move v8, v5

    iput v8, v7, Landroid/support/constraint/ConstraintSet$Constraint;->bottomMargin:I

    .line 970
    goto/16 :goto_1

    .line 961
    :cond_7
    move v7, v4

    const/4 v8, 0x3

    if-ne v7, v8, :cond_8

    .line 962
    move-object v7, v6

    move v8, v3

    iput v8, v7, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 963
    move-object v7, v6

    const/4 v8, -0x1

    iput v8, v7, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 964
    move-object v7, v6

    const/4 v8, -0x1

    iput v8, v7, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    goto :goto_4

    .line 967
    :cond_8
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "right to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    move v11, v4

    invoke-direct {v10, v11}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " undefined"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 972
    :pswitch_4
    move v7, v4

    const/4 v8, 0x5

    if-ne v7, v8, :cond_9

    .line 973
    move-object v7, v6

    move v8, v3

    iput v8, v7, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 974
    move-object v7, v6

    const/4 v8, -0x1

    iput v8, v7, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 975
    move-object v7, v6

    const/4 v8, -0x1

    iput v8, v7, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 976
    move-object v7, v6

    const/4 v8, -0x1

    iput v8, v7, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 977
    move-object v7, v6

    const/4 v8, -0x1

    iput v8, v7, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    goto/16 :goto_1

    .line 979
    :cond_9
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "right to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    move v11, v4

    invoke-direct {v10, v11}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " undefined"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 983
    :pswitch_5
    move v7, v4

    const/4 v8, 0x6

    if-ne v7, v8, :cond_a

    .line 984
    move-object v7, v6

    move v8, v3

    iput v8, v7, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    .line 985
    move-object v7, v6

    const/4 v8, -0x1

    iput v8, v7, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    .line 992
    :goto_5
    move-object v7, v6

    move v8, v5

    iput v8, v7, Landroid/support/constraint/ConstraintSet$Constraint;->startMargin:I

    .line 993
    goto/16 :goto_1

    .line 986
    :cond_a
    move v7, v4

    const/4 v8, 0x7

    if-ne v7, v8, :cond_b

    .line 987
    move-object v7, v6

    move v8, v3

    iput v8, v7, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    .line 988
    move-object v7, v6

    const/4 v8, -0x1

    iput v8, v7, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    goto :goto_5

    .line 990
    :cond_b
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "right to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    move v11, v4

    invoke-direct {v10, v11}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " undefined"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 995
    :pswitch_6
    move v7, v4

    const/4 v8, 0x7

    if-ne v7, v8, :cond_c

    .line 996
    move-object v7, v6

    move v8, v3

    iput v8, v7, Landroid/support/constraint/ConstraintSet$Constraint;->endToEnd:I

    .line 997
    move-object v7, v6

    const/4 v8, -0x1

    iput v8, v7, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    .line 1004
    :goto_6
    move-object v7, v6

    move v8, v5

    iput v8, v7, Landroid/support/constraint/ConstraintSet$Constraint;->endMargin:I

    .line 1005
    goto/16 :goto_1

    .line 998
    :cond_c
    move v7, v4

    const/4 v8, 0x6

    if-ne v7, v8, :cond_d

    .line 999
    move-object v7, v6

    move v8, v3

    iput v8, v7, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    .line 1000
    move-object v7, v6

    const/4 v8, -0x1

    iput v8, v7, Landroid/support/constraint/ConstraintSet$Constraint;->endToEnd:I

    goto :goto_6

    .line 1002
    :cond_d
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "right to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    move v11, v4

    invoke-direct {v10, v11}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " undefined"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 912
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
    .end packed-switch
.end method

.method public constrainDefaultHeight(II)V
    .locals 5

    .prologue
    .line 1565
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroid/support/constraint/ConstraintSet$Constraint;->heightDefault:I

    .line 1566
    return-void
.end method

.method public constrainDefaultWidth(II)V
    .locals 5

    .prologue
    .line 1576
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroid/support/constraint/ConstraintSet$Constraint;->widthDefault:I

    .line 1577
    return-void
.end method

.method public constrainHeight(II)V
    .locals 5

    .prologue
    .line 1498
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroid/support/constraint/ConstraintSet$Constraint;->mHeight:I

    .line 1499
    return-void
.end method

.method public constrainMaxHeight(II)V
    .locals 5

    .prologue
    .line 1520
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroid/support/constraint/ConstraintSet$Constraint;->heightMax:I

    .line 1521
    return-void
.end method

.method public constrainMaxWidth(II)V
    .locals 5

    .prologue
    .line 1531
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroid/support/constraint/ConstraintSet$Constraint;->widthMax:I

    .line 1532
    return-void
.end method

.method public constrainMinHeight(II)V
    .locals 5

    .prologue
    .line 1542
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroid/support/constraint/ConstraintSet$Constraint;->heightMin:I

    .line 1543
    return-void
.end method

.method public constrainMinWidth(II)V
    .locals 5

    .prologue
    .line 1553
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroid/support/constraint/ConstraintSet$Constraint;->widthMin:I

    .line 1554
    return-void
.end method

.method public constrainWidth(II)V
    .locals 5

    .prologue
    .line 1509
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroid/support/constraint/ConstraintSet$Constraint;->mWidth:I

    .line 1510
    return-void
.end method

.method public create(II)V
    .locals 6

    .prologue
    .line 1779
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v4

    move-object v3, v4

    .line 1780
    move-object v4, v3

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->mIsGuideline:Z

    .line 1781
    move-object v4, v3

    move v5, v2

    iput v5, v4, Landroid/support/constraint/ConstraintSet$Constraint;->orientation:I

    .line 1782
    return-void
.end method

.method public createHorizontalChain(IIII[I[FI)V
    .locals 18

    .prologue
    .line 850
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object v8, v0

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move-object v13, v5

    move-object v14, v6

    move v15, v7

    const/16 v16, 0x1

    const/16 v17, 0x2

    invoke-direct/range {v8 .. v17}, Landroid/support/constraint/ConstraintSet;->createHorizontalChain(IIII[I[FIII)V

    .line 851
    return-void
.end method

.method public createHorizontalChainRtl(IIII[I[FI)V
    .locals 18

    .prologue
    .line 867
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object v8, v0

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move-object v13, v5

    move-object v14, v6

    move v15, v7

    const/16 v16, 0x6

    const/16 v17, 0x7

    invoke-direct/range {v8 .. v17}, Landroid/support/constraint/ConstraintSet;->createHorizontalChain(IIII[I[FIII)V

    .line 868
    return-void
.end method

.method public createVerticalChain(IIII[I[FI)V
    .locals 17

    .prologue
    .line 813
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object v10, v5

    array-length v10, v10

    const/4 v11, 0x2

    if-ge v10, v11, :cond_0

    .line 814
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const-string v12, "must have 2 or more widgets in a chain"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 816
    :cond_0
    move-object v10, v6

    if-eqz v10, :cond_1

    move-object v10, v6

    array-length v10, v10

    move-object v11, v5

    array-length v11, v11

    if-eq v10, v11, :cond_1

    .line 817
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const-string v12, "must have 2 or more widgets in a chain"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 819
    :cond_1
    move-object v10, v6

    if-eqz v10, :cond_2

    .line 820
    move-object v10, v0

    move-object v11, v5

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-direct {v10, v11}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v10

    move-object v11, v6

    const/4 v12, 0x0

    aget v11, v11, v12

    iput v11, v10, Landroid/support/constraint/ConstraintSet$Constraint;->verticalWeight:F

    .line 822
    :cond_2
    move-object v10, v0

    move-object v11, v5

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-direct {v10, v11}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v10

    move v11, v7

    iput v11, v10, Landroid/support/constraint/ConstraintSet$Constraint;->verticalChainStyle:I

    .line 824
    move-object v10, v0

    move-object v11, v5

    const/4 v12, 0x0

    aget v11, v11, v12

    const/4 v12, 0x3

    move v13, v1

    move v14, v2

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 825
    const/4 v10, 0x1

    move v8, v10

    :goto_0
    move v10, v8

    move-object v11, v5

    array-length v11, v11

    if-ge v10, v11, :cond_4

    .line 826
    move-object v10, v5

    move v11, v8

    aget v10, v10, v11

    move v9, v10

    .line 827
    move-object v10, v0

    move-object v11, v5

    move v12, v8

    aget v11, v11, v12

    const/4 v12, 0x3

    move-object v13, v5

    move v14, v8

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    aget v13, v13, v14

    const/4 v14, 0x4

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 828
    move-object v10, v0

    move-object v11, v5

    move v12, v8

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    aget v11, v11, v12

    const/4 v12, 0x4

    move-object v13, v5

    move v14, v8

    aget v13, v13, v14

    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 829
    move-object v10, v6

    if-eqz v10, :cond_3

    .line 830
    move-object v10, v0

    move-object v11, v5

    move v12, v8

    aget v11, v11, v12

    invoke-direct {v10, v11}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v10

    move-object v11, v6

    move v12, v8

    aget v11, v11, v12

    iput v11, v10, Landroid/support/constraint/ConstraintSet$Constraint;->verticalWeight:F

    .line 825
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 833
    :cond_4
    move-object v10, v0

    move-object v11, v5

    move-object v12, v5

    array-length v12, v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    aget v11, v11, v12

    const/4 v12, 0x4

    move v13, v3

    move v14, v4

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 834
    return-void
.end method

.method public getApplyElevation(I)Z
    .locals 4

    .prologue
    .line 1349
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v2

    iget-boolean v2, v2, Landroid/support/constraint/ConstraintSet$Constraint;->applyElevation:Z

    move v0, v2

    return v0
.end method

.method public load(Landroid/content/Context;I)V
    .locals 12

    .prologue
    .line 1855
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v9, v1

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    move-object v3, v9

    .line 1856
    move-object v9, v3

    move v10, v2

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    move-object v4, v9

    .line 1857
    const/4 v9, 0x0

    move-object v5, v9

    .line 1858
    const/4 v9, 0x0

    move-object v6, v9

    .line 1861
    move-object v9, v4

    :try_start_0
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    move v7, v9

    .line 1862
    :goto_0
    move v9, v7

    const/4 v10, 0x1

    if-eq v9, v10, :cond_1

    .line 1864
    move v9, v7

    packed-switch v9, :pswitch_data_0

    .line 1863
    :goto_1
    :pswitch_0
    move-object v9, v4

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v7, v9

    goto :goto_0

    .line 1866
    :pswitch_1
    move-object v9, v4

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 1867
    goto :goto_1

    .line 1869
    :pswitch_2
    move-object v9, v4

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 1870
    move-object v9, v0

    move-object v10, v1

    move-object v11, v4

    invoke-static {v11}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/support/constraint/ConstraintSet;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v9

    move-object v8, v9

    .line 1871
    move-object v9, v6

    const-string v10, "Guideline"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1872
    move-object v9, v8

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroid/support/constraint/ConstraintSet$Constraint;->mIsGuideline:Z

    .line 1874
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move-object v10, v8

    iget v10, v10, Landroid/support/constraint/ConstraintSet$Constraint;->mViewId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object v11, v8

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 1875
    goto :goto_1

    .line 1877
    :pswitch_3
    const/4 v9, 0x0

    move-object v6, v9

    .line 1878
    goto :goto_1

    .line 1888
    :cond_1
    :goto_2
    return-void

    .line 1883
    :catch_0
    move-exception v9

    move-object v7, v9

    .line 1884
    move-object v9, v7

    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 1887
    goto :goto_2

    .line 1885
    :catch_1
    move-exception v9

    move-object v7, v9

    .line 1886
    move-object v9, v7

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1864
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public removeFromHorizontalChain(I)V
    .locals 13

    .prologue
    .line 1727
    move-object v0, p0

    move v1, p1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1728
    move-object v7, v0

    iget-object v7, v7, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/constraint/ConstraintSet$Constraint;

    move-object v2, v7

    .line 1729
    move-object v7, v2

    iget v7, v7, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    move v3, v7

    .line 1730
    move-object v7, v2

    iget v7, v7, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    move v4, v7

    .line 1731
    move v7, v3

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    move v7, v4

    const/4 v8, -0x1

    if-eq v7, v8, :cond_6

    .line 1732
    :cond_0
    move v7, v3

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    move v7, v4

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    .line 1734
    move-object v7, v0

    move v8, v3

    const/4 v9, 0x2

    move v10, v4

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1735
    move-object v7, v0

    move v8, v4

    const/4 v9, 0x1

    move v10, v3

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1745
    :cond_1
    :goto_0
    move-object v7, v0

    move v8, v1

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/support/constraint/ConstraintSet;->clear(II)V

    .line 1746
    move-object v7, v0

    move v8, v1

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Landroid/support/constraint/ConstraintSet;->clear(II)V

    .line 1770
    :cond_2
    :goto_1
    return-void

    .line 1736
    :cond_3
    move v7, v3

    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    move v7, v4

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 1737
    :cond_4
    move-object v7, v2

    iget v7, v7, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    .line 1739
    move-object v7, v0

    move v8, v3

    const/4 v9, 0x2

    move-object v10, v2

    iget v10, v10, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    goto :goto_0

    .line 1740
    :cond_5
    move-object v7, v2

    iget v7, v7, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 1742
    move-object v7, v0

    move v8, v4

    const/4 v9, 0x1

    move-object v10, v2

    iget v10, v10, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    goto :goto_0

    .line 1749
    :cond_6
    move-object v7, v2

    iget v7, v7, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    move v5, v7

    .line 1750
    move-object v7, v2

    iget v7, v7, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    move v6, v7

    .line 1751
    move v7, v5

    const/4 v8, -0x1

    if-ne v7, v8, :cond_7

    move v7, v6

    const/4 v8, -0x1

    if-eq v7, v8, :cond_8

    .line 1752
    :cond_7
    move v7, v5

    const/4 v8, -0x1

    if-eq v7, v8, :cond_9

    move v7, v6

    const/4 v8, -0x1

    if-eq v7, v8, :cond_9

    .line 1754
    move-object v7, v0

    move v8, v5

    const/4 v9, 0x7

    move v10, v6

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1755
    move-object v7, v0

    move v8, v6

    const/4 v9, 0x6

    move v10, v3

    const/4 v11, 0x7

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1766
    :cond_8
    :goto_2
    move-object v7, v0

    move v8, v1

    const/4 v9, 0x6

    invoke-virtual {v7, v8, v9}, Landroid/support/constraint/ConstraintSet;->clear(II)V

    .line 1767
    move-object v7, v0

    move v8, v1

    const/4 v9, 0x7

    invoke-virtual {v7, v8, v9}, Landroid/support/constraint/ConstraintSet;->clear(II)V

    goto :goto_1

    .line 1756
    :cond_9
    move v7, v3

    const/4 v8, -0x1

    if-ne v7, v8, :cond_a

    move v7, v6

    const/4 v8, -0x1

    if-eq v7, v8, :cond_8

    .line 1757
    :cond_a
    move-object v7, v2

    iget v7, v7, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_b

    .line 1759
    move-object v7, v0

    move v8, v3

    const/4 v9, 0x7

    move-object v10, v2

    iget v10, v10, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    const/4 v11, 0x7

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    goto :goto_2

    .line 1760
    :cond_b
    move-object v7, v2

    iget v7, v7, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_8

    .line 1762
    move-object v7, v0

    move v8, v6

    const/4 v9, 0x6

    move-object v10, v2

    iget v10, v10, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    goto :goto_2
.end method

.method public removeFromVerticalChain(I)V
    .locals 11

    .prologue
    .line 1695
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1696
    move-object v5, v0

    iget-object v5, v5, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    move v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/ConstraintSet$Constraint;

    move-object v2, v5

    .line 1697
    move-object v5, v2

    iget v5, v5, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    move v3, v5

    .line 1698
    move-object v5, v2

    iget v5, v5, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    move v4, v5

    .line 1699
    move v5, v3

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    move v5, v4

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 1700
    :cond_0
    move v5, v3

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    move v5, v4

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 1702
    move-object v5, v0

    move v6, v3

    const/4 v7, 0x4

    move v8, v4

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1703
    move-object v5, v0

    move v6, v4

    const/4 v7, 0x3

    move v8, v3

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1715
    :cond_1
    :goto_0
    move-object v5, v0

    move v6, v1

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Landroid/support/constraint/ConstraintSet;->clear(II)V

    .line 1716
    move-object v5, v0

    move v6, v1

    const/4 v7, 0x4

    invoke-virtual {v5, v6, v7}, Landroid/support/constraint/ConstraintSet;->clear(II)V

    .line 1717
    return-void

    .line 1704
    :cond_2
    move v5, v3

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    move v5, v4

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 1705
    :cond_3
    move-object v5, v2

    iget v5, v5, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 1707
    move-object v5, v0

    move v6, v3

    const/4 v7, 0x4

    move-object v8, v2

    iget v8, v8, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    goto :goto_0

    .line 1708
    :cond_4
    move-object v5, v2

    iget v5, v5, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 1710
    move-object v5, v0

    move v6, v4

    const/4 v7, 0x3

    move-object v8, v2

    iget v8, v8, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    goto :goto_0
.end method

.method public setAlpha(IF)V
    .locals 5

    .prologue
    .line 1340
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroid/support/constraint/ConstraintSet$Constraint;->alpha:F

    .line 1341
    return-void
.end method

.method public setApplyElevation(IZ)V
    .locals 5

    .prologue
    .line 1360
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput-boolean v4, v3, Landroid/support/constraint/ConstraintSet$Constraint;->applyElevation:Z

    .line 1361
    return-void
.end method

.method public setDimensionRatio(ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 1320
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    move-object v4, v2

    iput-object v4, v3, Landroid/support/constraint/ConstraintSet$Constraint;->dimensionRatio:Ljava/lang/String;

    .line 1321
    return-void
.end method

.method public setElevation(IF)V
    .locals 5

    .prologue
    .line 1370
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroid/support/constraint/ConstraintSet$Constraint;->elevation:F

    .line 1371
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/constraint/ConstraintSet$Constraint;->applyElevation:Z

    .line 1372
    return-void
.end method

.method public setGoneMargin(III)V
    .locals 9

    .prologue
    .line 1265
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v0

    move v6, v1

    invoke-direct {v5, v6}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v5

    move-object v4, v5

    .line 1266
    move v5, v2

    packed-switch v5, :pswitch_data_0

    .line 1288
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "unknown constraint"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1268
    :pswitch_0
    move-object v5, v4

    move v6, v3

    iput v6, v5, Landroid/support/constraint/ConstraintSet$Constraint;->goneLeftMargin:I

    .line 1290
    :goto_0
    return-void

    .line 1271
    :pswitch_1
    move-object v5, v4

    move v6, v3

    iput v6, v5, Landroid/support/constraint/ConstraintSet$Constraint;->goneRightMargin:I

    .line 1272
    goto :goto_0

    .line 1274
    :pswitch_2
    move-object v5, v4

    move v6, v3

    iput v6, v5, Landroid/support/constraint/ConstraintSet$Constraint;->goneTopMargin:I

    .line 1275
    goto :goto_0

    .line 1277
    :pswitch_3
    move-object v5, v4

    move v6, v3

    iput v6, v5, Landroid/support/constraint/ConstraintSet$Constraint;->goneBottomMargin:I

    .line 1278
    goto :goto_0

    .line 1280
    :pswitch_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "baseline does not support margins"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1282
    :pswitch_5
    move-object v5, v4

    move v6, v3

    iput v6, v5, Landroid/support/constraint/ConstraintSet$Constraint;->goneStartMargin:I

    .line 1283
    goto :goto_0

    .line 1285
    :pswitch_6
    move-object v5, v4

    move v6, v3

    iput v6, v5, Landroid/support/constraint/ConstraintSet$Constraint;->goneEndMargin:I

    .line 1286
    goto :goto_0

    .line 1266
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
    .end packed-switch
.end method

.method public setGuidelineBegin(II)V
    .locals 5

    .prologue
    .line 1791
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroid/support/constraint/ConstraintSet$Constraint;->guideBegin:I

    .line 1792
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/ConstraintSet$Constraint;->guideEnd:I

    .line 1793
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    const/high16 v4, -0x40800000    # -1.0f

    iput v4, v3, Landroid/support/constraint/ConstraintSet$Constraint;->guidePercent:F

    .line 1795
    return-void
.end method

.method public setGuidelineEnd(II)V
    .locals 5

    .prologue
    .line 1804
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroid/support/constraint/ConstraintSet$Constraint;->guideEnd:I

    .line 1805
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/ConstraintSet$Constraint;->guideBegin:I

    .line 1806
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    const/high16 v4, -0x40800000    # -1.0f

    iput v4, v3, Landroid/support/constraint/ConstraintSet$Constraint;->guidePercent:F

    .line 1807
    return-void
.end method

.method public setGuidelinePercent(IF)V
    .locals 5

    .prologue
    .line 1816
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroid/support/constraint/ConstraintSet$Constraint;->guidePercent:F

    .line 1817
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/ConstraintSet$Constraint;->guideEnd:I

    .line 1818
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/constraint/ConstraintSet$Constraint;->guideBegin:I

    .line 1819
    return-void
.end method

.method public setHorizontalBias(IF)V
    .locals 5

    .prologue
    .line 1299
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    .line 1300
    return-void
.end method

.method public setHorizontalChainStyle(II)V
    .locals 5

    .prologue
    .line 1614
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalChainStyle:I

    .line 1615
    return-void
.end method

.method public setHorizontalWeight(IF)V
    .locals 5

    .prologue
    .line 1588
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalWeight:F

    .line 1589
    return-void
.end method

.method public setMargin(III)V
    .locals 9

    .prologue
    .line 1230
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v0

    move v6, v1

    invoke-direct {v5, v6}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v5

    move-object v4, v5

    .line 1231
    move v5, v2

    packed-switch v5, :pswitch_data_0

    .line 1253
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "unknown constraint"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1233
    :pswitch_0
    move-object v5, v4

    move v6, v3

    iput v6, v5, Landroid/support/constraint/ConstraintSet$Constraint;->leftMargin:I

    .line 1255
    :goto_0
    return-void

    .line 1236
    :pswitch_1
    move-object v5, v4

    move v6, v3

    iput v6, v5, Landroid/support/constraint/ConstraintSet$Constraint;->rightMargin:I

    .line 1237
    goto :goto_0

    .line 1239
    :pswitch_2
    move-object v5, v4

    move v6, v3

    iput v6, v5, Landroid/support/constraint/ConstraintSet$Constraint;->topMargin:I

    .line 1240
    goto :goto_0

    .line 1242
    :pswitch_3
    move-object v5, v4

    move v6, v3

    iput v6, v5, Landroid/support/constraint/ConstraintSet$Constraint;->bottomMargin:I

    .line 1243
    goto :goto_0

    .line 1245
    :pswitch_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "baseline does not support margins"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1247
    :pswitch_5
    move-object v5, v4

    move v6, v3

    iput v6, v5, Landroid/support/constraint/ConstraintSet$Constraint;->startMargin:I

    .line 1248
    goto :goto_0

    .line 1250
    :pswitch_6
    move-object v5, v4

    move v6, v3

    iput v6, v5, Landroid/support/constraint/ConstraintSet$Constraint;->endMargin:I

    .line 1251
    goto :goto_0

    .line 1231
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
    .end packed-switch
.end method

.method public setRotationX(IF)V
    .locals 5

    .prologue
    .line 1381
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroid/support/constraint/ConstraintSet$Constraint;->rotationX:F

    .line 1382
    return-void
.end method

.method public setRotationY(IF)V
    .locals 5

    .prologue
    .line 1391
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroid/support/constraint/ConstraintSet$Constraint;->rotationY:F

    .line 1392
    return-void
.end method

.method public setScaleX(IF)V
    .locals 5

    .prologue
    .line 1401
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroid/support/constraint/ConstraintSet$Constraint;->scaleX:F

    .line 1402
    return-void
.end method

.method public setScaleY(IF)V
    .locals 5

    .prologue
    .line 1411
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroid/support/constraint/ConstraintSet$Constraint;->scaleY:F

    .line 1412
    return-void
.end method

.method public setTransformPivot(IFF)V
    .locals 7

    .prologue
    .line 1442
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v0

    move v6, v1

    invoke-direct {v5, v6}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v5

    move-object v4, v5

    .line 1443
    move-object v5, v4

    move v6, v3

    iput v6, v5, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotY:F

    .line 1444
    move-object v5, v4

    move v6, v2

    iput v6, v5, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotX:F

    .line 1445
    return-void
.end method

.method public setTransformPivotX(IF)V
    .locals 5

    .prologue
    .line 1421
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotX:F

    .line 1422
    return-void
.end method

.method public setTransformPivotY(IF)V
    .locals 5

    .prologue
    .line 1431
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotY:F

    .line 1432
    return-void
.end method

.method public setTranslation(IFF)V
    .locals 7

    .prologue
    .line 1475
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v0

    move v6, v1

    invoke-direct {v5, v6}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v5

    move-object v4, v5

    .line 1476
    move-object v5, v4

    move v6, v2

    iput v6, v5, Landroid/support/constraint/ConstraintSet$Constraint;->translationX:F

    .line 1477
    move-object v5, v4

    move v6, v3

    iput v6, v5, Landroid/support/constraint/ConstraintSet$Constraint;->translationY:F

    .line 1478
    return-void
.end method

.method public setTranslationX(IF)V
    .locals 5

    .prologue
    .line 1454
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroid/support/constraint/ConstraintSet$Constraint;->translationX:F

    .line 1455
    return-void
.end method

.method public setTranslationY(IF)V
    .locals 5

    .prologue
    .line 1464
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroid/support/constraint/ConstraintSet$Constraint;->translationY:F

    .line 1465
    return-void
.end method

.method public setTranslationZ(IF)V
    .locals 5

    .prologue
    .line 1487
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroid/support/constraint/ConstraintSet$Constraint;->translationZ:F

    .line 1488
    return-void
.end method

.method public setVerticalBias(IF)V
    .locals 5

    .prologue
    .line 1309
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroid/support/constraint/ConstraintSet$Constraint;->verticalBias:F

    .line 1310
    return-void
.end method

.method public setVerticalChainStyle(II)V
    .locals 5

    .prologue
    .line 1630
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroid/support/constraint/ConstraintSet$Constraint;->verticalChainStyle:I

    .line 1631
    return-void
.end method

.method public setVerticalWeight(IF)V
    .locals 5

    .prologue
    .line 1599
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroid/support/constraint/ConstraintSet$Constraint;->verticalWeight:F

    .line 1600
    return-void
.end method

.method public setVisibility(II)V
    .locals 5

    .prologue
    .line 1330
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    move v4, v2

    iput v4, v3, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    .line 1331
    return-void
.end method
