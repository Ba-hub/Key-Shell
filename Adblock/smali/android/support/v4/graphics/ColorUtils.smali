.class public final Landroid/support/v4/graphics/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# static fields
.field private static final MIN_ALPHA_SEARCH_MAX_ITERATIONS:I = 0xa

.field private static final MIN_ALPHA_SEARCH_PRECISION:I = 0x1

.field private static final TEMP_ARRAY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[D>;"
        }
    .end annotation
.end field

.field private static final XYZ_EPSILON:D = 0.008856

.field private static final XYZ_KAPPA:D = 903.3

.field private static final XYZ_WHITE_REFERENCE_X:D = 95.047

.field private static final XYZ_WHITE_REFERENCE_Y:D = 100.0

.field private static final XYZ_WHITE_REFERENCE_Z:D = 108.883


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Ljava/lang/ThreadLocal;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/v4/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HSLToColor([F)I
    .locals 15
    .param p0    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 238
    move-object v0, p0

    move-object v11, v0

    const/4 v12, 0x0

    aget v11, v11, v12

    move v1, v11

    .line 239
    move-object v11, v0

    const/4 v12, 0x1

    aget v11, v11, v12

    move v2, v11

    .line 240
    move-object v11, v0

    const/4 v12, 0x2

    aget v11, v11, v12

    move v3, v11

    .line 242
    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x40000000    # 2.0f

    move v13, v3

    mul-float/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    sub-float/2addr v11, v12

    move v12, v2

    mul-float/2addr v11, v12

    move v4, v11

    .line 243
    move v11, v3

    const/high16 v12, 0x3f000000    # 0.5f

    move v13, v4

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    move v5, v11

    .line 244
    move v11, v4

    const/high16 v12, 0x3f800000    # 1.0f

    move v13, v1

    const/high16 v14, 0x42700000    # 60.0f

    div-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    rem-float/2addr v13, v14

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    sub-float/2addr v12, v13

    mul-float/2addr v11, v12

    move v6, v11

    .line 246
    move v11, v1

    float-to-int v11, v11

    const/16 v12, 0x3c

    div-int/lit8 v11, v11, 0x3c

    move v7, v11

    .line 248
    const/4 v11, 0x0

    move v8, v11

    const/4 v11, 0x0

    move v9, v11

    const/4 v11, 0x0

    move v10, v11

    .line 250
    move v11, v7

    packed-switch v11, :pswitch_data_0

    .line 284
    :goto_0
    move v11, v8

    const/4 v12, 0x0

    const/16 v13, 0xff

    invoke-static {v11, v12, v13}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    move-result v11

    move v8, v11

    .line 285
    move v11, v9

    const/4 v12, 0x0

    const/16 v13, 0xff

    invoke-static {v11, v12, v13}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    move-result v11

    move v9, v11

    .line 286
    move v11, v10

    const/4 v12, 0x0

    const/16 v13, 0xff

    invoke-static {v11, v12, v13}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    move-result v11

    move v10, v11

    .line 288
    move v11, v8

    move v12, v9

    move v13, v10

    invoke-static {v11, v12, v13}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    move v0, v11

    return v0

    .line 252
    :pswitch_0
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v4

    move v13, v5

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v8, v11

    .line 253
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v6

    move v13, v5

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v9, v11

    .line 254
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v5

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v10, v11

    .line 255
    goto :goto_0

    .line 257
    :pswitch_1
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v6

    move v13, v5

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v8, v11

    .line 258
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v4

    move v13, v5

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v9, v11

    .line 259
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v5

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v10, v11

    .line 260
    goto :goto_0

    .line 262
    :pswitch_2
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v5

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v8, v11

    .line 263
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v4

    move v13, v5

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v9, v11

    .line 264
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v6

    move v13, v5

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v10, v11

    .line 265
    goto/16 :goto_0

    .line 267
    :pswitch_3
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v5

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v8, v11

    .line 268
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v6

    move v13, v5

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v9, v11

    .line 269
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v4

    move v13, v5

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v10, v11

    .line 270
    goto/16 :goto_0

    .line 272
    :pswitch_4
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v6

    move v13, v5

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v8, v11

    .line 273
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v5

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v9, v11

    .line 274
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v4

    move v13, v5

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v10, v11

    .line 275
    goto/16 :goto_0

    .line 278
    :pswitch_5
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v4

    move v13, v5

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v8, v11

    .line 279
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v5

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v9, v11

    .line 280
    const/high16 v11, 0x437f0000    # 255.0f

    move v12, v6

    move v13, v5

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v10, v11

    goto/16 :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static LABToColor(DDD)I
    .locals 14
    .param p0    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param
    .param p2    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = -128.0
            to = 127.0
        .end annotation
    .end param
    .param p4    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = -128.0
            to = 127.0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 502
    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    invoke-static {}, Landroid/support/v4/graphics/ColorUtils;->getTempDouble3Array()[D

    move-result-object v7

    move-object v6, v7

    .line 503
    move-wide v7, v0

    move-wide v9, v2

    move-wide v11, v4

    move-object v13, v6

    invoke-static/range {v7 .. v13}, Landroid/support/v4/graphics/ColorUtils;->LABToXYZ(DDD[D)V

    .line 504
    move-object v7, v6

    const/4 v8, 0x0

    aget-wide v7, v7, v8

    move-object v9, v6

    const/4 v10, 0x1

    aget-wide v9, v9, v10

    move-object v11, v6

    const/4 v12, 0x2

    aget-wide v11, v11, v12

    invoke-static/range {v7 .. v12}, Landroid/support/v4/graphics/ColorUtils;->XYZToColor(DDD)I

    move-result v7

    move v0, v7

    return v0
.end method

.method public static LABToXYZ(DDD[D)V
    .locals 27
    .param p0    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param
    .param p2    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = -128.0
            to = 127.0
        .end annotation
    .end param
    .param p4    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = -128.0
            to = 127.0
        .end annotation
    .end param
    .param p6    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 445
    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x4030000000000000L    # 16.0

    add-double v21, v21, v23

    const-wide/high16 v23, 0x405d000000000000L    # 116.0

    div-double v21, v21, v23

    move-wide/from16 v7, v21

    .line 446
    move-wide/from16 v21, v2

    const-wide v23, 0x407f400000000000L    # 500.0

    div-double v21, v21, v23

    move-wide/from16 v23, v7

    add-double v21, v21, v23

    move-wide/from16 v9, v21

    .line 447
    move-wide/from16 v21, v7

    move-wide/from16 v23, v4

    const-wide/high16 v25, 0x4069000000000000L    # 200.0

    div-double v23, v23, v25

    sub-double v21, v21, v23

    move-wide/from16 v11, v21

    .line 449
    move-wide/from16 v21, v9

    const-wide/high16 v23, 0x4008000000000000L    # 3.0

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v21

    move-wide/from16 v13, v21

    .line 450
    move-wide/from16 v21, v13

    const-wide v23, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v21, v21, v23

    if-lez v21, :cond_0

    move-wide/from16 v21, v13

    :goto_0
    move-wide/from16 v15, v21

    .line 451
    move-wide/from16 v21, v0

    const-wide v23, 0x401fff9da4c11507L    # 7.9996247999999985

    cmpl-double v21, v21, v23

    if-lez v21, :cond_1

    move-wide/from16 v21, v7

    const-wide/high16 v23, 0x4008000000000000L    # 3.0

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v21

    :goto_1
    move-wide/from16 v17, v21

    .line 453
    move-wide/from16 v21, v11

    const-wide/high16 v23, 0x4008000000000000L    # 3.0

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v21

    move-wide/from16 v13, v21

    .line 454
    move-wide/from16 v21, v13

    const-wide v23, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v21, v21, v23

    if-lez v21, :cond_2

    move-wide/from16 v21, v13

    :goto_2
    move-wide/from16 v19, v21

    .line 456
    move-object/from16 v21, v6

    const/16 v22, 0x0

    move-wide/from16 v23, v15

    const-wide v25, 0x4057c3020c49ba5eL    # 95.047

    mul-double v23, v23, v25

    aput-wide v23, v21, v22

    .line 457
    move-object/from16 v21, v6

    const/16 v22, 0x1

    move-wide/from16 v23, v17

    const-wide/high16 v25, 0x4059000000000000L    # 100.0

    mul-double v23, v23, v25

    aput-wide v23, v21, v22

    .line 458
    move-object/from16 v21, v6

    const/16 v22, 0x2

    move-wide/from16 v23, v19

    const-wide v25, 0x405b3883126e978dL    # 108.883

    mul-double v23, v23, v25

    aput-wide v23, v21, v22

    .line 459
    return-void

    .line 450
    :cond_0
    const-wide/high16 v21, 0x405d000000000000L    # 116.0

    move-wide/from16 v23, v9

    mul-double v21, v21, v23

    const-wide/high16 v23, 0x4030000000000000L    # 16.0

    sub-double v21, v21, v23

    const-wide v23, 0x408c3a6666666666L    # 903.3

    div-double v21, v21, v23

    goto :goto_0

    .line 451
    :cond_1
    move-wide/from16 v21, v0

    const-wide v23, 0x408c3a6666666666L    # 903.3

    div-double v21, v21, v23

    goto :goto_1

    .line 454
    :cond_2
    const-wide/high16 v21, 0x405d000000000000L    # 116.0

    move-wide/from16 v23, v11

    mul-double v21, v21, v23

    const-wide/high16 v23, 0x4030000000000000L    # 16.0

    sub-double v21, v21, v23

    const-wide v23, 0x408c3a6666666666L    # 903.3

    div-double v21, v21, v23

    goto :goto_2
.end method

.method public static RGBToHSL(III[F)V
    .locals 19
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p3    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 173
    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move v13, v0

    int-to-float v13, v13

    const/high16 v14, 0x437f0000    # 255.0f

    div-float/2addr v13, v14

    move v4, v13

    .line 174
    move v13, v1

    int-to-float v13, v13

    const/high16 v14, 0x437f0000    # 255.0f

    div-float/2addr v13, v14

    move v5, v13

    .line 175
    move v13, v2

    int-to-float v13, v13

    const/high16 v14, 0x437f0000    # 255.0f

    div-float/2addr v13, v14

    move v6, v13

    .line 177
    move v13, v4

    move v14, v5

    move v15, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v13

    move v7, v13

    .line 178
    move v13, v4

    move v14, v5

    move v15, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    move v8, v13

    .line 179
    move v13, v7

    move v14, v8

    sub-float/2addr v13, v14

    move v9, v13

    .line 182
    move v13, v7

    move v14, v8

    add-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    move v12, v13

    .line 184
    move v13, v7

    move v14, v8

    cmpl-float v13, v13, v14

    if-nez v13, :cond_1

    .line 186
    const/4 v13, 0x0

    move/from16 v18, v13

    move/from16 v13, v18

    move/from16 v14, v18

    move v11, v14

    move v10, v13

    .line 199
    :goto_0
    move v13, v10

    const/high16 v14, 0x42700000    # 60.0f

    mul-float/2addr v13, v14

    const/high16 v14, 0x43b40000    # 360.0f

    rem-float/2addr v13, v14

    move v10, v13

    .line 200
    move v13, v10

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_0

    .line 201
    move v13, v10

    const/high16 v14, 0x43b40000    # 360.0f

    add-float/2addr v13, v14

    move v10, v13

    .line 204
    :cond_0
    move-object v13, v3

    const/4 v14, 0x0

    move v15, v10

    const/16 v16, 0x0

    const/high16 v17, 0x43b40000    # 360.0f

    invoke-static/range {v15 .. v17}, Landroid/support/v4/graphics/ColorUtils;->constrain(FFF)F

    move-result v15

    aput v15, v13, v14

    .line 205
    move-object v13, v3

    const/4 v14, 0x1

    move v15, v11

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-static/range {v15 .. v17}, Landroid/support/v4/graphics/ColorUtils;->constrain(FFF)F

    move-result v15

    aput v15, v13, v14

    .line 206
    move-object v13, v3

    const/4 v14, 0x2

    move v15, v12

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-static/range {v15 .. v17}, Landroid/support/v4/graphics/ColorUtils;->constrain(FFF)F

    move-result v15

    aput v15, v13, v14

    .line 207
    return-void

    .line 188
    :cond_1
    move v13, v7

    move v14, v4

    cmpl-float v13, v13, v14

    if-nez v13, :cond_2

    .line 189
    move v13, v5

    move v14, v6

    sub-float/2addr v13, v14

    move v14, v9

    div-float/2addr v13, v14

    const/high16 v14, 0x40c00000    # 6.0f

    rem-float/2addr v13, v14

    move v10, v13

    .line 196
    :goto_1
    move v13, v9

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x40000000    # 2.0f

    move/from16 v16, v12

    mul-float v15, v15, v16

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    sub-float/2addr v14, v15

    div-float/2addr v13, v14

    move v11, v13

    goto :goto_0

    .line 190
    :cond_2
    move v13, v7

    move v14, v5

    cmpl-float v13, v13, v14

    if-nez v13, :cond_3

    .line 191
    move v13, v6

    move v14, v4

    sub-float/2addr v13, v14

    move v14, v9

    div-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    add-float/2addr v13, v14

    move v10, v13

    goto :goto_1

    .line 193
    :cond_3
    move v13, v4

    move v14, v5

    sub-float/2addr v13, v14

    move v14, v9

    div-float/2addr v13, v14

    const/high16 v14, 0x40800000    # 4.0f

    add-float/2addr v13, v14

    move v10, v13

    goto :goto_1
.end method

.method public static RGBToLAB(III[D)V
    .locals 11
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p3    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 331
    move v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v0

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-static {v4, v5, v6, v7}, Landroid/support/v4/graphics/ColorUtils;->RGBToXYZ(III[D)V

    .line 333
    move-object v4, v3

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    move-object v6, v3

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    move-object v8, v3

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    move-object v10, v3

    invoke-static/range {v4 .. v10}, Landroid/support/v4/graphics/ColorUtils;->XYZToLAB(DDD[D)V

    .line 335
    return-void
.end method

.method public static RGBToXYZ(III[D)V
    .locals 21
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p3    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 376
    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object v10, v3

    array-length v10, v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_0

    .line 377
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    const-string v12, "outXyz must have a length of 3."

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 380
    :cond_0
    move v10, v0

    int-to-double v10, v10

    const-wide v12, 0x406fe00000000000L    # 255.0

    div-double/2addr v10, v12

    move-wide v4, v10

    .line 381
    move-wide v10, v4

    const-wide v12, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v10, v10, v12

    if-gez v10, :cond_1

    move-wide v10, v4

    const-wide v12, 0x4029d70a3d70a3d7L    # 12.92

    div-double/2addr v10, v12

    :goto_0
    move-wide v4, v10

    .line 382
    move v10, v1

    int-to-double v10, v10

    const-wide v12, 0x406fe00000000000L    # 255.0

    div-double/2addr v10, v12

    move-wide v6, v10

    .line 383
    move-wide v10, v6

    const-wide v12, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v10, v10, v12

    if-gez v10, :cond_2

    move-wide v10, v6

    const-wide v12, 0x4029d70a3d70a3d7L    # 12.92

    div-double/2addr v10, v12

    :goto_1
    move-wide v6, v10

    .line 384
    move v10, v2

    int-to-double v10, v10

    const-wide v12, 0x406fe00000000000L    # 255.0

    div-double/2addr v10, v12

    move-wide v8, v10

    .line 385
    move-wide v10, v8

    const-wide v12, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v10, v10, v12

    if-gez v10, :cond_3

    move-wide v10, v8

    const-wide v12, 0x4029d70a3d70a3d7L    # 12.92

    div-double/2addr v10, v12

    :goto_2
    move-wide v8, v10

    .line 387
    move-object v10, v3

    const/4 v11, 0x0

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    move-wide v14, v4

    const-wide v16, 0x3fda64c2f837b4a2L    # 0.4124

    mul-double v14, v14, v16

    move-wide/from16 v16, v6

    const-wide v18, 0x3fd6e2eb1c432ca5L    # 0.3576

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-wide/from16 v16, v8

    const-wide v18, 0x3fc71a9fbe76c8b4L    # 0.1805

    mul-double v16, v16, v18

    add-double v14, v14, v16

    mul-double/2addr v12, v14

    aput-wide v12, v10, v11

    .line 388
    move-object v10, v3

    const/4 v11, 0x1

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    move-wide v14, v4

    const-wide v16, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double v14, v14, v16

    move-wide/from16 v16, v6

    const-wide v18, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-wide/from16 v16, v8

    const-wide v18, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double v16, v16, v18

    add-double v14, v14, v16

    mul-double/2addr v12, v14

    aput-wide v12, v10, v11

    .line 389
    move-object v10, v3

    const/4 v11, 0x2

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    move-wide v14, v4

    const-wide v16, 0x3f93c36113404ea5L    # 0.0193

    mul-double v14, v14, v16

    move-wide/from16 v16, v6

    const-wide v18, 0x3fbe83e425aee632L    # 0.1192

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-wide/from16 v16, v8

    const-wide v18, 0x3fee6a7ef9db22d1L    # 0.9505

    mul-double v16, v16, v18

    add-double v14, v14, v16

    mul-double/2addr v12, v14

    aput-wide v12, v10, v11

    .line 390
    return-void

    .line 381
    :cond_1
    move-wide v10, v4

    const-wide v12, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v10, v12

    const-wide v12, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v10, v12

    const-wide v12, 0x4003333333333333L    # 2.4

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    goto/16 :goto_0

    .line 383
    :cond_2
    move-wide v10, v6

    const-wide v12, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v10, v12

    const-wide v12, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v10, v12

    const-wide v12, 0x4003333333333333L    # 2.4

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    goto/16 :goto_1

    .line 385
    :cond_3
    move-wide v10, v8

    const-wide v12, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v10, v12

    const-wide v12, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v10, v12

    const-wide v12, 0x4003333333333333L    # 2.4

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    goto/16 :goto_2
.end method

.method public static XYZToColor(DDD)I
    .locals 18
    .param p0    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 95.047
        .end annotation
    .end param
    .param p2    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param
    .param p4    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 108.883
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 476
    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide v12, v0

    const-wide v14, 0x4009ecbfb15b573fL    # 3.2406

    mul-double/2addr v12, v14

    move-wide v14, v2

    const-wide v16, -0x400767a0f9096bbaL    # -1.5372

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-wide v14, v4

    const-wide v16, -0x402016f0068db8bbL    # -0.4986

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    div-double/2addr v12, v14

    move-wide v6, v12

    .line 477
    move-wide v12, v0

    const-wide v14, -0x4010fec56d5cfaadL    # -0.9689

    mul-double/2addr v12, v14

    move-wide v14, v2

    const-wide v16, 0x3ffe0346dc5d6388L    # 1.8758

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-wide v14, v4

    const-wide v16, 0x3fa53f7ced916873L    # 0.0415

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    div-double/2addr v12, v14

    move-wide v8, v12

    .line 478
    move-wide v12, v0

    const-wide v14, 0x3fac84b5dcc63f14L    # 0.0557

    mul-double/2addr v12, v14

    move-wide v14, v2

    const-wide v16, -0x4035e353f7ced917L    # -0.204

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-wide v14, v4

    const-wide v16, 0x3ff0e978d4fdf3b6L    # 1.057

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    div-double/2addr v12, v14

    move-wide v10, v12

    .line 480
    move-wide v12, v6

    const-wide v14, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v12, v12, v14

    if-lez v12, :cond_0

    const-wide v12, 0x3ff0e147ae147ae1L    # 1.055

    move-wide v14, v6

    const-wide v16, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    const-wide v14, 0x3fac28f5c28f5c29L    # 0.055

    sub-double/2addr v12, v14

    :goto_0
    move-wide v6, v12

    .line 481
    move-wide v12, v8

    const-wide v14, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v12, v12, v14

    if-lez v12, :cond_1

    const-wide v12, 0x3ff0e147ae147ae1L    # 1.055

    move-wide v14, v8

    const-wide v16, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    const-wide v14, 0x3fac28f5c28f5c29L    # 0.055

    sub-double/2addr v12, v14

    :goto_1
    move-wide v8, v12

    .line 482
    move-wide v12, v10

    const-wide v14, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v12, v12, v14

    if-lez v12, :cond_2

    const-wide v12, 0x3ff0e147ae147ae1L    # 1.055

    move-wide v14, v10

    const-wide v16, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    const-wide v14, 0x3fac28f5c28f5c29L    # 0.055

    sub-double/2addr v12, v14

    :goto_2
    move-wide v10, v12

    .line 484
    move-wide v12, v6

    const-wide v14, 0x406fe00000000000L    # 255.0

    mul-double/2addr v12, v14

    .line 485
    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-int v12, v12

    const/4 v13, 0x0

    const/16 v14, 0xff

    invoke-static {v12, v13, v14}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    move-result v12

    move-wide v13, v8

    const-wide v15, 0x406fe00000000000L    # 255.0

    mul-double/2addr v13, v15

    .line 486
    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    long-to-int v13, v13

    const/4 v14, 0x0

    const/16 v15, 0xff

    invoke-static {v13, v14, v15}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    move-result v13

    move-wide v14, v10

    const-wide v16, 0x406fe00000000000L    # 255.0

    mul-double v14, v14, v16

    .line 487
    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v14, v14

    const/4 v15, 0x0

    const/16 v16, 0xff

    invoke-static/range {v14 .. v16}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    move-result v14

    .line 484
    invoke-static {v12, v13, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    move v0, v12

    return v0

    .line 480
    :cond_0
    const-wide v12, 0x4029d70a3d70a3d7L    # 12.92

    move-wide v14, v6

    mul-double/2addr v12, v14

    goto/16 :goto_0

    .line 481
    :cond_1
    const-wide v12, 0x4029d70a3d70a3d7L    # 12.92

    move-wide v14, v8

    mul-double/2addr v12, v14

    goto :goto_1

    .line 482
    :cond_2
    const-wide v12, 0x4029d70a3d70a3d7L    # 12.92

    move-wide v14, v10

    mul-double/2addr v12, v14

    goto :goto_2
.end method

.method public static XYZToLAB(DDD[D)V
    .locals 16
    .param p0    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 95.047
        .end annotation
    .end param
    .param p2    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param
    .param p4    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 108.883
        .end annotation
    .end param
    .param p6    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 413
    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object v7, v6

    array-length v7, v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    .line 414
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    const-string v9, "outLab must have a length of 3."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 416
    :cond_0
    move-wide v7, v0

    const-wide v9, 0x4057c3020c49ba5eL    # 95.047

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Landroid/support/v4/graphics/ColorUtils;->pivotXyzComponent(D)D

    move-result-wide v7

    move-wide v0, v7

    .line 417
    move-wide v7, v2

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Landroid/support/v4/graphics/ColorUtils;->pivotXyzComponent(D)D

    move-result-wide v7

    move-wide v2, v7

    .line 418
    move-wide v7, v4

    const-wide v9, 0x405b3883126e978dL    # 108.883

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Landroid/support/v4/graphics/ColorUtils;->pivotXyzComponent(D)D

    move-result-wide v7

    move-wide v4, v7

    .line 419
    move-object v7, v6

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/high16 v11, 0x405d000000000000L    # 116.0

    move-wide v13, v2

    mul-double/2addr v11, v13

    const-wide/high16 v13, 0x4030000000000000L    # 16.0

    sub-double/2addr v11, v13

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    aput-wide v9, v7, v8

    .line 420
    move-object v7, v6

    const/4 v8, 0x1

    const-wide v9, 0x407f400000000000L    # 500.0

    move-wide v11, v0

    move-wide v13, v2

    sub-double/2addr v11, v13

    mul-double/2addr v9, v11

    aput-wide v9, v7, v8

    .line 421
    move-object v7, v6

    const/4 v8, 0x2

    const-wide/high16 v9, 0x4069000000000000L    # 200.0

    move-wide v11, v2

    move-wide v13, v4

    sub-double/2addr v11, v13

    mul-double/2addr v9, v11

    aput-wide v9, v7, v8

    .line 422
    return-void
.end method

.method public static blendARGB(IIF)I
    .locals 12
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 543
    move v0, p0

    move v1, p1

    move v2, p2

    const/high16 v8, 0x3f800000    # 1.0f

    move v9, v2

    sub-float/2addr v8, v9

    move v3, v8

    .line 544
    move v8, v0

    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    int-to-float v8, v8

    move v9, v3

    mul-float/2addr v8, v9

    move v9, v1

    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    int-to-float v9, v9

    move v10, v2

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move v4, v8

    .line 545
    move v8, v0

    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v8

    int-to-float v8, v8

    move v9, v3

    mul-float/2addr v8, v9

    move v9, v1

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v9

    int-to-float v9, v9

    move v10, v2

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move v5, v8

    .line 546
    move v8, v0

    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v8

    int-to-float v8, v8

    move v9, v3

    mul-float/2addr v8, v9

    move v9, v1

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v9

    int-to-float v9, v9

    move v10, v2

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move v6, v8

    .line 547
    move v8, v0

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    int-to-float v8, v8

    move v9, v3

    mul-float/2addr v8, v9

    move v9, v1

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    int-to-float v9, v9

    move v10, v2

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move v7, v8

    .line 548
    move v8, v4

    float-to-int v8, v8

    move v9, v5

    float-to-int v9, v9

    move v10, v6

    float-to-int v10, v10

    move v11, v7

    float-to-int v11, v11

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    move v0, v8

    return v0
.end method

.method public static blendHSL([F[FF[F)V
    .locals 11
    .param p0    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p3    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 565
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v3

    array-length v5, v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    .line 566
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string v7, "result must have a length of 3."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 568
    :cond_0
    const/high16 v5, 0x3f800000    # 1.0f

    move v6, v2

    sub-float/2addr v5, v6

    move v4, v5

    .line 570
    move-object v5, v3

    const/4 v6, 0x0

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object v8, v1

    const/4 v9, 0x0

    aget v8, v8, v9

    move v9, v2

    invoke-static {v7, v8, v9}, Landroid/support/v4/graphics/ColorUtils;->circularInterpolate(FFF)F

    move-result v7

    aput v7, v5, v6

    .line 571
    move-object v5, v3

    const/4 v6, 0x1

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    move v8, v4

    mul-float/2addr v7, v8

    move-object v8, v1

    const/4 v9, 0x1

    aget v8, v8, v9

    move v9, v2

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aput v7, v5, v6

    .line 572
    move-object v5, v3

    const/4 v6, 0x2

    move-object v7, v0

    const/4 v8, 0x2

    aget v7, v7, v8

    move v8, v4

    mul-float/2addr v7, v8

    move-object v8, v1

    const/4 v9, 0x2

    aget v8, v8, v9

    move v9, v2

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aput v7, v5, v6

    .line 573
    return-void
.end method

.method public static blendLAB([D[DD[D)V
    .locals 16
    .param p0    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p4    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 588
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move-object v7, v4

    array-length v7, v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    .line 589
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    const-string v9, "outResult must have a length of 3."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 591
    :cond_0
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    move-wide v9, v2

    sub-double/2addr v7, v9

    move-wide v5, v7

    .line 592
    move-object v7, v4

    const/4 v8, 0x0

    move-object v9, v0

    const/4 v10, 0x0

    aget-wide v9, v9, v10

    move-wide v11, v5

    mul-double/2addr v9, v11

    move-object v11, v1

    const/4 v12, 0x0

    aget-wide v11, v11, v12

    move-wide v13, v2

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    aput-wide v9, v7, v8

    .line 593
    move-object v7, v4

    const/4 v8, 0x1

    move-object v9, v0

    const/4 v10, 0x1

    aget-wide v9, v9, v10

    move-wide v11, v5

    mul-double/2addr v9, v11

    move-object v11, v1

    const/4 v12, 0x1

    aget-wide v11, v11, v12

    move-wide v13, v2

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    aput-wide v9, v7, v8

    .line 594
    move-object v7, v4

    const/4 v8, 0x2

    move-object v9, v0

    const/4 v10, 0x2

    aget-wide v9, v9, v10

    move-wide v11, v5

    mul-double/2addr v9, v11

    move-object v11, v1

    const/4 v12, 0x2

    aget-wide v11, v11, v12

    move-wide v13, v2

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    aput-wide v9, v7, v8

    .line 595
    return-void
.end method

.method public static calculateContrast(II)D
    .locals 13
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 91
    move v0, p0

    move v1, p1

    move v6, v1

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    const/16 v7, 0xff

    if-eq v6, v7, :cond_0

    .line 92
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "background can not be translucent: #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v1

    .line 93
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 95
    :cond_0
    move v6, v0

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    const/16 v7, 0xff

    if-ge v6, v7, :cond_1

    .line 97
    move v6, v0

    move v7, v1

    invoke-static {v6, v7}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v6

    move v0, v6

    .line 100
    :cond_1
    move v6, v0

    invoke-static {v6}, Landroid/support/v4/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v6

    const-wide v8, 0x3fa999999999999aL    # 0.05

    add-double/2addr v6, v8

    move-wide v2, v6

    .line 101
    move v6, v1

    invoke-static {v6}, Landroid/support/v4/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v6

    const-wide v8, 0x3fa999999999999aL    # 0.05

    add-double/2addr v6, v8

    move-wide v4, v6

    .line 104
    move-wide v6, v2

    move-wide v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    move-wide v8, v2

    move-wide v10, v4

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    move-wide v0, v6

    return-wide v0
.end method

.method public static calculateLuminance(I)D
    .locals 6
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .prologue
    .line 77
    move v0, p0

    invoke-static {}, Landroid/support/v4/graphics/ColorUtils;->getTempDouble3Array()[D

    move-result-object v2

    move-object v1, v2

    .line 78
    move v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/graphics/ColorUtils;->colorToXYZ(I[D)V

    .line 80
    move-object v2, v1

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    move-wide v0, v2

    return-wide v0
.end method

.method public static calculateMinimumAlpha(IIF)I
    .locals 15
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 119
    move v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move v10, v1

    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    const/16 v11, 0xff

    if-eq v10, v11, :cond_0

    .line 120
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "background can not be translucent: #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move v13, v1

    .line 121
    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 125
    :cond_0
    move v10, v0

    const/16 v11, 0xff

    invoke-static {v10, v11}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v10

    move v3, v10

    .line 126
    move v10, v3

    move v11, v1

    invoke-static {v10, v11}, Landroid/support/v4/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v10

    move-wide v4, v10

    .line 127
    move-wide v10, v4

    move v12, v2

    float-to-double v12, v12

    cmpg-double v10, v10, v12

    if-gez v10, :cond_1

    .line 129
    const/4 v10, -0x1

    move v0, v10

    .line 154
    :goto_0
    return v0

    .line 133
    :cond_1
    const/4 v10, 0x0

    move v6, v10

    .line 134
    const/4 v10, 0x0

    move v7, v10

    .line 135
    const/16 v10, 0xff

    move v8, v10

    .line 137
    :goto_1
    move v10, v6

    const/16 v11, 0xa

    if-gt v10, v11, :cond_3

    move v10, v8

    move v11, v7

    sub-int/2addr v10, v11

    const/4 v11, 0x1

    if-le v10, v11, :cond_3

    .line 139
    move v10, v7

    move v11, v8

    add-int/2addr v10, v11

    const/4 v11, 0x2

    div-int/lit8 v10, v10, 0x2

    move v9, v10

    .line 141
    move v10, v0

    move v11, v9

    invoke-static {v10, v11}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v10

    move v3, v10

    .line 142
    move v10, v3

    move v11, v1

    invoke-static {v10, v11}, Landroid/support/v4/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v10

    move-wide v4, v10

    .line 144
    move-wide v10, v4

    move v12, v2

    float-to-double v12, v12

    cmpg-double v10, v10, v12

    if-gez v10, :cond_2

    .line 145
    move v10, v9

    move v7, v10

    .line 150
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 151
    goto :goto_1

    .line 147
    :cond_2
    move v10, v9

    move v8, v10

    goto :goto_2

    .line 154
    :cond_3
    move v10, v8

    move v0, v10

    goto :goto_0
.end method

.method static circularInterpolate(FFF)F
    .locals 6
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 599
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    move v4, v0

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x43340000    # 180.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 600
    move v3, v1

    move v4, v0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 601
    move v3, v0

    const/high16 v4, 0x43b40000    # 360.0f

    add-float/2addr v3, v4

    move v0, v3

    .line 606
    :cond_0
    :goto_0
    move v3, v0

    move v4, v1

    move v5, v0

    sub-float/2addr v4, v5

    move v5, v2

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/high16 v4, 0x43b40000    # 360.0f

    rem-float/2addr v3, v4

    move v0, v3

    return v0

    .line 603
    :cond_1
    move v3, v1

    const/high16 v4, 0x43b40000    # 360.0f

    add-float/2addr v3, v4

    move v1, v3

    goto :goto_0
.end method

.method public static colorToHSL(I[F)V
    .locals 6
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 221
    move v0, p0

    move-object v1, p1

    move v2, v0

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    move v3, v0

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    move v4, v0

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    move-object v5, v1

    invoke-static {v2, v3, v4, v5}, Landroid/support/v4/graphics/ColorUtils;->RGBToHSL(III[F)V

    .line 222
    return-void
.end method

.method public static colorToLAB(I[D)V
    .locals 6
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 310
    move v0, p0

    move-object v1, p1

    move v2, v0

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    move v3, v0

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    move v4, v0

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    move-object v5, v1

    invoke-static {v2, v3, v4, v5}, Landroid/support/v4/graphics/ColorUtils;->RGBToLAB(III[D)V

    .line 311
    return-void
.end method

.method public static colorToXYZ(I[D)V
    .locals 6
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 353
    move v0, p0

    move-object v1, p1

    move v2, v0

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    move v3, v0

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    move v4, v0

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    move-object v5, v1

    invoke-static {v2, v3, v4, v5}, Landroid/support/v4/graphics/ColorUtils;->RGBToXYZ(III[D)V

    .line 354
    return-void
.end method

.method private static compositeAlpha(II)I
    .locals 6

    .prologue
    .line 63
    move v0, p0

    move v1, p1

    const/16 v2, 0xff

    const/16 v3, 0xff

    move v4, v1

    rsub-int v3, v4, 0xff

    const/16 v4, 0xff

    move v5, v0

    rsub-int v4, v5, 0xff

    mul-int/2addr v3, v4

    const/16 v4, 0xff

    div-int/lit16 v3, v3, 0xff

    rsub-int v2, v3, 0xff

    move v0, v2

    return v0
.end method

.method public static compositeColors(II)I
    .locals 13
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 48
    move v0, p0

    move v1, p1

    move v8, v1

    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    move v2, v8

    .line 49
    move v8, v0

    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    move v3, v8

    .line 50
    move v8, v3

    move v9, v2

    invoke-static {v8, v9}, Landroid/support/v4/graphics/ColorUtils;->compositeAlpha(II)I

    move-result v8

    move v4, v8

    .line 52
    move v8, v0

    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v8

    move v9, v3

    move v10, v1

    .line 53
    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v10

    move v11, v2

    move v12, v4

    .line 52
    invoke-static {v8, v9, v10, v11, v12}, Landroid/support/v4/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v8

    move v5, v8

    .line 54
    move v8, v0

    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v8

    move v9, v3

    move v10, v1

    .line 55
    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v10

    move v11, v2

    move v12, v4

    .line 54
    invoke-static {v8, v9, v10, v11, v12}, Landroid/support/v4/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v8

    move v6, v8

    .line 56
    move v8, v0

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    move v9, v3

    move v10, v1

    .line 57
    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    move v11, v2

    move v12, v4

    .line 56
    invoke-static {v8, v9, v10, v11, v12}, Landroid/support/v4/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v8

    move v7, v8

    .line 59
    move v8, v4

    move v9, v5

    move v10, v6

    move v11, v7

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    move v0, v8

    return v0
.end method

.method private static compositeComponent(IIIII)I
    .locals 9

    .prologue
    .line 67
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, v4

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move v0, v5

    .line 68
    :goto_0
    return v0

    :cond_0
    const/16 v5, 0xff

    move v6, v0

    mul-int/2addr v5, v6

    move v6, v1

    mul-int/2addr v5, v6

    move v6, v2

    move v7, v3

    mul-int/2addr v6, v7

    const/16 v7, 0xff

    move v8, v1

    rsub-int v7, v8, 0xff

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    move v6, v4

    const/16 v7, 0xff

    mul-int/lit16 v6, v6, 0xff

    div-int/2addr v5, v6

    move v0, v5

    goto :goto_0
.end method

.method private static constrain(FFF)F
    .locals 5

    .prologue
    .line 517
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, v0

    move v4, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    move v3, v1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    move v3, v0

    move v4, v2

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v0

    goto :goto_0
.end method

.method private static constrain(III)I
    .locals 5

    .prologue
    .line 521
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, v0

    move v4, v1

    if-ge v3, v4, :cond_0

    move v3, v1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    move v3, v0

    move v4, v2

    if-le v3, v4, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v0

    goto :goto_0
.end method

.method public static distanceEuclidean([D[D)D
    .locals 8
    .param p0    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 511
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    move-object v4, v1

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    move-object v4, v0

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    move-object v6, v1

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 512
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    move-object v4, v0

    const/4 v5, 0x2

    aget-wide v4, v4, v5

    move-object v6, v1

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 513
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 511
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method private static getTempDouble3Array()[D
    .locals 3

    .prologue
    .line 610
    sget-object v1, Landroid/support/v4/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    move-object v0, v1

    .line 611
    move-object v1, v0

    if-nez v1, :cond_0

    .line 612
    const/4 v1, 0x3

    new-array v1, v1, [D

    move-object v0, v1

    .line 613
    sget-object v1, Landroid/support/v4/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 615
    :cond_0
    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method private static pivotXyzComponent(D)D
    .locals 6

    .prologue
    .line 525
    move-wide v0, p0

    move-wide v2, v0

    const-wide v4, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    move-wide v2, v0

    const-wide v4, 0x3fd5555555555555L    # 0.3333333333333333

    .line 526
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    :goto_0
    move-wide v0, v2

    return-wide v0

    :cond_0
    const-wide v2, 0x408c3a6666666666L    # 903.3

    move-wide v4, v0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x405d000000000000L    # 116.0

    div-double/2addr v2, v4

    goto :goto_0
.end method

.method public static setAlphaComponent(II)I
    .locals 6
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 297
    move v0, p0

    move v1, p1

    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    const/16 v3, 0xff

    if-le v2, v3, :cond_1

    .line 298
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "alpha must be between 0 and 255."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 300
    :cond_1
    move v2, v0

    const v3, 0xffffff

    and-int/2addr v2, v3

    move v3, v1

    const/16 v4, 0x18

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    move v0, v2

    return v0
.end method
