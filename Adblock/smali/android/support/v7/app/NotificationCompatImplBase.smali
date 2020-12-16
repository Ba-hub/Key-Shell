.class Landroid/support/v7/app/NotificationCompatImplBase;
.super Ljava/lang/Object;
.source "NotificationCompatImplBase.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x9
.end annotation


# static fields
.field private static final MAX_ACTION_BUTTONS:I = 0x3

.field static final MAX_MEDIA_BUTTONS:I = 0x5

.field static final MAX_MEDIA_BUTTONS_IN_COMPACT:I = 0x3


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyStandardTemplate(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIIIZ)Landroid/widget/RemoteViews;
    .locals 35

    .prologue
    .line 280
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v11, p9

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    move-object/from16 v17, v25

    .line 281
    new-instance v25, Landroid/widget/RemoteViews;

    move-object/from16 v34, v25

    move-object/from16 v25, v34

    move-object/from16 v26, v34

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v27

    move/from16 v28, v15

    invoke-direct/range {v26 .. v28}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object/from16 v18, v25

    .line 282
    const/16 v25, 0x0

    move/from16 v19, v25

    .line 283
    const/16 v25, 0x0

    move/from16 v20, v25

    .line 285
    move/from16 v25, v13

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_8

    const/16 v25, 0x1

    :goto_0
    move/from16 v21, v25

    .line 286
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x10

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_0

    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x15

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_0

    .line 288
    move/from16 v25, v21

    if-eqz v25, :cond_9

    .line 289
    move-object/from16 v25, v18

    sget v26, Landroid/support/v7/appcompat/R$id;->notification_background:I

    const-string v27, "setBackgroundResource"

    sget v28, Landroid/support/v7/appcompat/R$drawable;->notification_bg_low:I

    invoke-virtual/range {v25 .. v28}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 291
    move-object/from16 v25, v18

    sget v26, Landroid/support/v7/appcompat/R$id;->icon:I

    const-string v27, "setBackgroundResource"

    sget v28, Landroid/support/v7/appcompat/R$drawable;->notification_template_icon_low_bg:I

    invoke-virtual/range {v25 .. v28}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 301
    :cond_0
    :goto_1
    move-object/from16 v25, v8

    if-eqz v25, :cond_c

    .line 304
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x10

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_a

    .line 305
    move-object/from16 v25, v18

    sget v26, Landroid/support/v7/appcompat/R$id;->icon:I

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 306
    move-object/from16 v25, v18

    sget v26, Landroid/support/v7/appcompat/R$id;->icon:I

    move-object/from16 v27, v8

    invoke-virtual/range {v25 .. v27}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 310
    :goto_2
    move/from16 v25, v7

    if-eqz v25, :cond_1

    .line 311
    move-object/from16 v25, v17

    sget v26, Landroid/support/v7/appcompat/R$dimen;->notification_right_icon_size:I

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    move/from16 v22, v25

    .line 313
    move/from16 v25, v22

    move-object/from16 v26, v17

    sget v27, Landroid/support/v7/appcompat/R$dimen;->notification_small_icon_background_padding:I

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    const/16 v27, 0x2

    mul-int/lit8 v26, v26, 0x2

    sub-int v25, v25, v26

    move/from16 v23, v25

    .line 315
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x15

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_b

    .line 316
    move-object/from16 v25, v2

    move/from16 v26, v7

    move/from16 v27, v22

    move/from16 v28, v23

    move/from16 v29, v14

    invoke-static/range {v25 .. v29}, Landroid/support/v7/app/NotificationCompatImplBase;->createIconWithBackground(Landroid/content/Context;IIII)Landroid/graphics/Bitmap;

    move-result-object v25

    move-object/from16 v24, v25

    .line 321
    move-object/from16 v25, v18

    sget v26, Landroid/support/v7/appcompat/R$id;->right_icon:I

    move-object/from16 v27, v24

    invoke-virtual/range {v25 .. v27}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 326
    :goto_3
    move-object/from16 v25, v18

    sget v26, Landroid/support/v7/appcompat/R$id;->right_icon:I

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 347
    :cond_1
    :goto_4
    move-object/from16 v25, v3

    if-eqz v25, :cond_2

    .line 348
    move-object/from16 v25, v18

    sget v26, Landroid/support/v7/appcompat/R$id;->title:I

    move-object/from16 v27, v3

    invoke-virtual/range {v25 .. v27}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 350
    :cond_2
    move-object/from16 v25, v4

    if-eqz v25, :cond_3

    .line 351
    move-object/from16 v25, v18

    sget v26, Landroid/support/v7/appcompat/R$id;->text:I

    move-object/from16 v27, v4

    invoke-virtual/range {v25 .. v27}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 352
    const/16 v25, 0x1

    move/from16 v19, v25

    .line 355
    :cond_3
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x15

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_e

    move-object/from16 v25, v8

    if-eqz v25, :cond_e

    const/16 v25, 0x1

    :goto_5
    move/from16 v22, v25

    .line 356
    move-object/from16 v25, v5

    if-eqz v25, :cond_f

    .line 357
    move-object/from16 v25, v18

    sget v26, Landroid/support/v7/appcompat/R$id;->info:I

    move-object/from16 v27, v5

    invoke-virtual/range {v25 .. v27}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 358
    move-object/from16 v25, v18

    sget v26, Landroid/support/v7/appcompat/R$id;->info:I

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 359
    const/16 v25, 0x1

    move/from16 v19, v25

    .line 360
    const/16 v25, 0x1

    move/from16 v22, v25

    .line 379
    :goto_6
    move-object/from16 v25, v9

    if-eqz v25, :cond_4

    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x10

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_4

    .line 380
    move-object/from16 v25, v18

    sget v26, Landroid/support/v7/appcompat/R$id;->text:I

    move-object/from16 v27, v9

    invoke-virtual/range {v25 .. v27}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 381
    move-object/from16 v25, v4

    if-eqz v25, :cond_12

    .line 382
    move-object/from16 v25, v18

    sget v26, Landroid/support/v7/appcompat/R$id;->text2:I

    move-object/from16 v27, v4

    invoke-virtual/range {v25 .. v27}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 383
    move-object/from16 v25, v18

    sget v26, Landroid/support/v7/appcompat/R$id;->text2:I

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 384
    const/16 v25, 0x1

    move/from16 v20, v25

    .line 391
    :cond_4
    :goto_7
    move/from16 v25, v20

    if-eqz v25, :cond_6

    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x10

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_6

    .line 392
    move/from16 v25, v16

    if-eqz v25, :cond_5

    .line 394
    move-object/from16 v25, v17

    sget v26, Landroid/support/v7/appcompat/R$dimen;->notification_subtext_size:I

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v23, v25

    .line 396
    move-object/from16 v25, v18

    sget v26, Landroid/support/v7/appcompat/R$id;->text:I

    const/16 v27, 0x0

    move/from16 v28, v23

    invoke-virtual/range {v25 .. v28}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 399
    :cond_5
    move-object/from16 v25, v18

    sget v26, Landroid/support/v7/appcompat/R$id;->line1:I

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-virtual/range {v25 .. v30}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 402
    :cond_6
    move-wide/from16 v25, v11

    const-wide/16 v27, 0x0

    cmp-long v25, v25, v27

    if-eqz v25, :cond_7

    .line 403
    move/from16 v25, v10

    if-eqz v25, :cond_13

    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x10

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_13

    .line 404
    move-object/from16 v25, v18

    sget v26, Landroid/support/v7/appcompat/R$id;->chronometer:I

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 405
    move-object/from16 v25, v18

    sget v26, Landroid/support/v7/appcompat/R$id;->chronometer:I

    const-string v27, "setBase"

    move-wide/from16 v28, v11

    .line 406
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v30

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    sub-long v30, v30, v32

    add-long v28, v28, v30

    .line 405
    invoke-virtual/range {v25 .. v29}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 407
    move-object/from16 v25, v18

    sget v26, Landroid/support/v7/appcompat/R$id;->chronometer:I

    const-string v27, "setStarted"

    const/16 v28, 0x1

    invoke-virtual/range {v25 .. v28}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 412
    :goto_8
    const/16 v25, 0x1

    move/from16 v22, v25

    .line 414
    :cond_7
    move-object/from16 v25, v18

    sget v26, Landroid/support/v7/appcompat/R$id;->right_side:I

    move/from16 v27, v22

    if-eqz v27, :cond_14

    const/16 v27, 0x0

    :goto_9
    invoke-virtual/range {v25 .. v27}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 415
    move-object/from16 v25, v18

    sget v26, Landroid/support/v7/appcompat/R$id;->line3:I

    move/from16 v27, v19

    if-eqz v27, :cond_15

    const/16 v27, 0x0

    :goto_a
    invoke-virtual/range {v25 .. v27}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 416
    move-object/from16 v25, v18

    move-object/from16 v2, v25

    return-object v2

    .line 285
    :cond_8
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 294
    :cond_9
    move-object/from16 v25, v18

    sget v26, Landroid/support/v7/appcompat/R$id;->notification_background:I

    const-string v27, "setBackgroundResource"

    sget v28, Landroid/support/v7/appcompat/R$drawable;->notification_bg:I

    invoke-virtual/range {v25 .. v28}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 296
    move-object/from16 v25, v18

    sget v26, Landroid/support/v7/appcompat/R$id;->icon:I

    const-string v27, "setBackgroundResource"

    sget v28, Landroid/support/v7/appcompat/R$drawable;->notification_template_icon_bg:I

    invoke-virtual/range {v25 .. v28}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_1

    .line 308
    :cond_a
    move-object/from16 v25, v18

    sget v26, Landroid/support/v7/appcompat/R$id;->icon:I

    const/16 v27, 0x8

    invoke-virtual/range {v25 .. v27}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_2

    .line 323
    :cond_b
    move-object/from16 v25, v18

    sget v26, Landroid/support/v7/appcompat/R$id;->right_icon:I

    move-object/from16 v27, v2

    move/from16 v28, v7

    const/16 v29, -0x1

    .line 324
    invoke-static/range {v27 .. v29}, Landroid/support/v7/app/NotificationCompatImplBase;->createColoredBitmap(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 323
    invoke-virtual/range {v25 .. v27}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_3

    .line 328
    :cond_c
    move/from16 v25, v7

    if-eqz v25, :cond_1

    .line 329
    move-object/from16 v25, v18

    sget v26, Landroid/support/v7/appcompat/R$id;->icon:I

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 330
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x15

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_d

    .line 331
    move-object/from16 v25, v17

    sget v26, Landroid/support/v7/appcompat/R$dimen;->notification_large_icon_width:I

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    move-object/from16 v26, v17

    sget v27, Landroid/support/v7/appcompat/R$dimen;->notification_big_circle_margin:I

    .line 333
    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    sub-int v25, v25, v26

    move/from16 v22, v25

    .line 334
    move-object/from16 v25, v17

    sget v26, Landroid/support/v7/appcompat/R$dimen;->notification_small_icon_size_as_large:I

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    move/from16 v23, v25

    .line 336
    move-object/from16 v25, v2

    move/from16 v26, v7

    move/from16 v27, v22

    move/from16 v28, v23

    move/from16 v29, v14

    invoke-static/range {v25 .. v29}, Landroid/support/v7/app/NotificationCompatImplBase;->createIconWithBackground(Landroid/content/Context;IIII)Landroid/graphics/Bitmap;

    move-result-object v25

    move-object/from16 v24, v25

    .line 341
    move-object/from16 v25, v18

    sget v26, Landroid/support/v7/appcompat/R$id;->icon:I

    move-object/from16 v27, v24

    invoke-virtual/range {v25 .. v27}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 342
    goto/16 :goto_4

    .line 343
    :cond_d
    move-object/from16 v25, v18

    sget v26, Landroid/support/v7/appcompat/R$id;->icon:I

    move-object/from16 v27, v2

    move/from16 v28, v7

    const/16 v29, -0x1

    .line 344
    invoke-static/range {v27 .. v29}, Landroid/support/v7/app/NotificationCompatImplBase;->createColoredBitmap(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 343
    invoke-virtual/range {v25 .. v27}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_4

    .line 355
    :cond_e
    const/16 v25, 0x0

    goto/16 :goto_5

    .line 361
    :cond_f
    move/from16 v25, v6

    if-lez v25, :cond_11

    .line 362
    move-object/from16 v25, v17

    sget v26, Landroid/support/v7/appcompat/R$integer;->status_bar_notification_info_maxnum:I

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v25

    move/from16 v23, v25

    .line 364
    move/from16 v25, v6

    move/from16 v26, v23

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_10

    .line 365
    move-object/from16 v25, v18

    sget v26, Landroid/support/v7/appcompat/R$id;->info:I

    move-object/from16 v27, v17

    sget v28, Landroid/support/v7/appcompat/R$string;->status_bar_notification_info_overflow:I

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 371
    :goto_b
    move-object/from16 v25, v18

    sget v26, Landroid/support/v7/appcompat/R$id;->info:I

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 372
    const/16 v25, 0x1

    move/from16 v19, v25

    .line 373
    const/16 v25, 0x1

    move/from16 v22, v25

    .line 374
    goto/16 :goto_6

    .line 368
    :cond_10
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v25

    move-object/from16 v24, v25

    .line 369
    move-object/from16 v25, v18

    sget v26, Landroid/support/v7/appcompat/R$id;->info:I

    move-object/from16 v27, v24

    move/from16 v28, v6

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    invoke-virtual/range {v27 .. v29}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_b

    .line 375
    :cond_11
    move-object/from16 v25, v18

    sget v26, Landroid/support/v7/appcompat/R$id;->info:I

    const/16 v27, 0x8

    invoke-virtual/range {v25 .. v27}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_6

    .line 386
    :cond_12
    move-object/from16 v25, v18

    sget v26, Landroid/support/v7/appcompat/R$id;->text2:I

    const/16 v27, 0x8

    invoke-virtual/range {v25 .. v27}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_7

    .line 409
    :cond_13
    move-object/from16 v25, v18

    sget v26, Landroid/support/v7/appcompat/R$id;->time:I

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 410
    move-object/from16 v25, v18

    sget v26, Landroid/support/v7/appcompat/R$id;->time:I

    const-string v27, "setTime"

    move-wide/from16 v28, v11

    invoke-virtual/range {v25 .. v29}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    goto/16 :goto_8

    .line 414
    :cond_14
    const/16 v27, 0x8

    goto/16 :goto_9

    .line 415
    :cond_15
    const/16 v27, 0x8

    goto/16 :goto_a
.end method

.method public static applyStandardTemplateWithActions(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIIIZLjava/util/ArrayList;)Landroid/widget/RemoteViews;
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "II",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/CharSequence;",
            "ZJIIIZ",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/NotificationCompat$Action;",
            ">;)",
            "Landroid/widget/RemoteViews;"
        }
    .end annotation

    .prologue
    .line 207
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v11, p9

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move/from16 v27, v6

    move/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v30, v9

    move/from16 v31, v10

    move-wide/from16 v32, v11

    move/from16 v34, v13

    move/from16 v35, v14

    move/from16 v36, v15

    move/from16 v37, v16

    invoke-static/range {v23 .. v37}, Landroid/support/v7/app/NotificationCompatImplBase;->applyStandardTemplate(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIIIZ)Landroid/widget/RemoteViews;

    move-result-object v23

    move-object/from16 v18, v23

    .line 210
    move-object/from16 v23, v18

    sget v24, Landroid/support/v7/appcompat/R$id;->actions:I

    invoke-virtual/range {v23 .. v24}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 211
    const/16 v23, 0x0

    move/from16 v19, v23

    .line 212
    move-object/from16 v23, v17

    if-eqz v23, :cond_1

    .line 213
    move-object/from16 v23, v17

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v20, v23

    .line 214
    move/from16 v23, v20

    if-lez v23, :cond_1

    .line 215
    const/16 v23, 0x1

    move/from16 v19, v23

    .line 216
    move/from16 v23, v20

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_0

    const/16 v23, 0x3

    move/from16 v20, v23

    .line 217
    :cond_0
    const/16 v23, 0x0

    move/from16 v21, v23

    :goto_0
    move/from16 v23, v21

    move/from16 v24, v20

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_1

    .line 218
    move-object/from16 v23, v2

    move-object/from16 v24, v17

    move/from16 v25, v21

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/support/v4/app/NotificationCompat$Action;

    invoke-static/range {v23 .. v24}, Landroid/support/v7/app/NotificationCompatImplBase;->generateActionButton(Landroid/content/Context;Landroid/support/v4/app/NotificationCompat$Action;)Landroid/widget/RemoteViews;

    move-result-object v23

    move-object/from16 v22, v23

    .line 219
    move-object/from16 v23, v18

    sget v24, Landroid/support/v7/appcompat/R$id;->actions:I

    move-object/from16 v25, v22

    invoke-virtual/range {v23 .. v25}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 217
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 223
    :cond_1
    move/from16 v23, v19

    if-eqz v23, :cond_2

    const/16 v23, 0x0

    :goto_1
    move/from16 v20, v23

    .line 224
    move-object/from16 v23, v18

    sget v24, Landroid/support/v7/appcompat/R$id;->actions:I

    move/from16 v25, v20

    invoke-virtual/range {v23 .. v25}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 225
    move-object/from16 v23, v18

    sget v24, Landroid/support/v7/appcompat/R$id;->action_divider:I

    move/from16 v25, v20

    invoke-virtual/range {v23 .. v25}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 226
    move-object/from16 v23, v18

    move-object/from16 v2, v23

    return-object v2

    .line 223
    :cond_2
    const/16 v23, 0x8

    goto :goto_1
.end method

.method public static buildIntoRemoteViews(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 9

    .prologue
    .line 437
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v7/app/NotificationCompatImplBase;->hideNormalContent(Landroid/widget/RemoteViews;)V

    .line 438
    move-object v3, v1

    sget v4, Landroid/support/v7/appcompat/R$id;->notification_main_column:I

    invoke-virtual {v3, v4}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 439
    move-object v3, v1

    sget v4, Landroid/support/v7/appcompat/R$id;->notification_main_column:I

    move-object v5, v2

    invoke-virtual {v5}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 440
    move-object v3, v1

    sget v4, Landroid/support/v7/appcompat/R$id;->notification_main_column:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 441
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 443
    move-object v3, v1

    sget v4, Landroid/support/v7/appcompat/R$id;->notification_main_column_container:I

    const/4 v5, 0x0

    move-object v6, v0

    .line 444
    invoke-static {v6}, Landroid/support/v7/app/NotificationCompatImplBase;->calculateTopPadding(Landroid/content/Context;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 443
    invoke-virtual/range {v3 .. v8}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 446
    :cond_0
    return-void
.end method

.method public static calculateTopPadding(Landroid/content/Context;)I
    .locals 8

    .prologue
    .line 455
    move-object v0, p0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Landroid/support/v7/appcompat/R$dimen;->notification_top_pad:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move v1, v5

    .line 456
    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Landroid/support/v7/appcompat/R$dimen;->notification_top_pad_large_text:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move v2, v5

    .line 458
    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->fontScale:F

    move v3, v5

    .line 459
    move v5, v3

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3fa66666    # 1.3f

    invoke-static {v5, v6, v7}, Landroid/support/v7/app/NotificationCompatImplBase;->constrain(FFF)F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    const v6, 0x3e999998    # 0.29999995f

    div-float/2addr v5, v6

    move v4, v5

    .line 463
    const/high16 v5, 0x3f800000    # 1.0f

    move v6, v4

    sub-float/2addr v5, v6

    move v6, v1

    int-to-float v6, v6

    mul-float/2addr v5, v6

    move v6, v4

    move v7, v2

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    move v0, v5

    return v0
.end method

.method public static constrain(FFF)F
    .locals 5

    .prologue
    .line 467
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

.method private static createColoredBitmap(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 249
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/support/v7/app/NotificationCompatImplBase;->createColoredBitmap(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method private static createColoredBitmap(Landroid/content/Context;III)Landroid/graphics/Bitmap;
    .locals 15

    .prologue
    .line 253
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v9, v0

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    move v10, v1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    move-object v4, v9

    .line 254
    move v9, v3

    if-nez v9, :cond_1

    move-object v9, v4

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    :goto_0
    move v5, v9

    .line 255
    move v9, v3

    if-nez v9, :cond_2

    move-object v9, v4

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    :goto_1
    move v6, v9

    .line 256
    move v9, v5

    move v10, v6

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v7, v9

    .line 257
    move-object v9, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v12, v5

    move v13, v6

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 258
    move v9, v2

    if-eqz v9, :cond_0

    .line 259
    move-object v9, v4

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    new-instance v10, Landroid/graphics/PorterDuffColorFilter;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move v12, v2

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v12, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 262
    :cond_0
    new-instance v9, Landroid/graphics/Canvas;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v7

    invoke-direct {v10, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v8, v9

    .line 263
    move-object v9, v4

    move-object v10, v8

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 264
    move-object v9, v7

    move-object v0, v9

    return-object v0

    .line 254
    :cond_1
    move v9, v3

    goto :goto_0

    .line 255
    :cond_2
    move v9, v3

    goto :goto_1
.end method

.method public static createIconWithBackground(Landroid/content/Context;IIII)Landroid/graphics/Bitmap;
    .locals 16

    .prologue
    .line 421
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v9, v0

    sget v10, Landroid/support/v7/appcompat/R$drawable;->notification_icon_background:I

    move v11, v4

    if-nez v11, :cond_0

    const/4 v11, 0x0

    :goto_0
    move v12, v2

    invoke-static {v9, v10, v11, v12}, Landroid/support/v7/app/NotificationCompatImplBase;->createColoredBitmap(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v5, v9

    .line 423
    new-instance v9, Landroid/graphics/Canvas;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v5

    invoke-direct {v10, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v6, v9

    .line 424
    move-object v9, v0

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    move v10, v1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    move-object v7, v9

    .line 425
    move-object v9, v7

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 426
    move v9, v2

    move v10, v3

    sub-int/2addr v9, v10

    const/4 v10, 0x2

    div-int/lit8 v9, v9, 0x2

    move v8, v9

    .line 427
    move-object v9, v7

    move v10, v8

    move v11, v8

    move v12, v3

    move v13, v8

    add-int/2addr v12, v13

    move v13, v3

    move v14, v8

    add-int/2addr v13, v14

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 428
    move-object v9, v7

    new-instance v10, Landroid/graphics/PorterDuffColorFilter;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, -0x1

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v12, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 429
    move-object v9, v7

    move-object v10, v6

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 430
    move-object v9, v5

    move-object v0, v9

    return-object v0

    .line 421
    :cond_0
    move v11, v4

    goto :goto_0
.end method

.method private static generateActionButton(Landroid/content/Context;Landroid/support/v4/app/NotificationCompat$Action;)Landroid/widget/RemoteViews;
    .locals 11

    .prologue
    .line 231
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    iget-object v4, v4, Landroid/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    move v2, v4

    .line 232
    new-instance v4, Landroid/widget/RemoteViews;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move v7, v2

    if-eqz v7, :cond_3

    .line 233
    invoke-static {}, Landroid/support/v7/app/NotificationCompatImplBase;->getActionTombstoneLayoutResource()I

    move-result v7

    .line 234
    :goto_1
    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object v3, v4

    .line 235
    move-object v4, v3

    sget v5, Landroid/support/v7/appcompat/R$id;->action_image:I

    move-object v6, v0

    move-object v7, v1

    .line 236
    invoke-virtual {v7}, Landroid/support/v4/app/NotificationCompat$Action;->getIcon()I

    move-result v7

    move-object v8, v0

    .line 237
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Landroid/support/v7/appcompat/R$color;->notification_action_color_filter:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 236
    invoke-static {v6, v7, v8}, Landroid/support/v7/app/NotificationCompatImplBase;->createColoredBitmap(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 235
    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 238
    move-object v4, v3

    sget v5, Landroid/support/v7/appcompat/R$id;->action_text:I

    move-object v6, v1

    iget-object v6, v6, Landroid/support/v4/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 239
    move v4, v2

    if-nez v4, :cond_0

    .line 240
    move-object v4, v3

    sget v5, Landroid/support/v7/appcompat/R$id;->action_container:I

    move-object v6, v1

    iget-object v6, v6, Landroid/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 242
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xf

    if-lt v4, v5, :cond_1

    .line 243
    move-object v4, v3

    sget v5, Landroid/support/v7/appcompat/R$id;->action_container:I

    move-object v6, v1

    iget-object v6, v6, Landroid/support/v4/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 245
    :cond_1
    move-object v4, v3

    move-object v0, v4

    return-object v0

    .line 231
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 234
    :cond_3
    invoke-static {}, Landroid/support/v7/app/NotificationCompatImplBase;->getActionLayoutResource()I

    move-result v7

    goto :goto_1
.end method

.method private static generateContentViewMedia(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJILjava/util/List;[IZLandroid/app/PendingIntent;Z)Landroid/widget/RemoteViews;
    .locals 40
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/NotificationCompatBase$Action;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "I",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/CharSequence;",
            "ZJI",
            "Ljava/util/List",
            "<TT;>;[IZ",
            "Landroid/app/PendingIntent;",
            "Z)",
            "Landroid/widget/RemoteViews;"
        }
    .end annotation

    .prologue
    .line 85
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move/from16 v15, p13

    move-object/from16 v16, p14

    move/from16 v17, p15

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move/from16 v28, v6

    const/16 v29, 0x0

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move/from16 v32, v9

    move-wide/from16 v33, v10

    move/from16 v35, v12

    const/16 v36, 0x0

    move/from16 v37, v17

    if-eqz v37, :cond_0

    sget v37, Landroid/support/v7/appcompat/R$layout;->notification_template_media_custom:I

    :goto_0
    const/16 v38, 0x1

    invoke-static/range {v24 .. v38}, Landroid/support/v7/app/NotificationCompatImplBase;->applyStandardTemplate(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIIIZ)Landroid/widget/RemoteViews;

    move-result-object v24

    move-object/from16 v18, v24

    .line 92
    move-object/from16 v24, v13

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v19, v24

    .line 93
    move-object/from16 v24, v14

    if-nez v24, :cond_1

    const/16 v24, 0x0

    .line 95
    :goto_1
    move/from16 v20, v24

    .line 96
    move-object/from16 v24, v18

    sget v25, Landroid/support/v7/appcompat/R$id;->media_actions:I

    invoke-virtual/range {v24 .. v25}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 97
    move/from16 v24, v20

    if-lez v24, :cond_3

    .line 98
    const/16 v24, 0x0

    move/from16 v21, v24

    :goto_2
    move/from16 v24, v21

    move/from16 v25, v20

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_3

    .line 99
    move/from16 v24, v21

    move/from16 v25, v19

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_2

    .line 100
    new-instance v24, Ljava/lang/IllegalArgumentException;

    move-object/from16 v39, v24

    move-object/from16 v24, v39

    move-object/from16 v25, v39

    const-string v26, "setShowActionsInCompactView: action %d out of bounds (max %d)"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v39, v27

    move-object/from16 v27, v39

    move-object/from16 v28, v39

    const/16 v29, 0x0

    move/from16 v30, v21

    .line 102
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v39, v27

    move-object/from16 v27, v39

    move-object/from16 v28, v39

    const/16 v29, 0x1

    move/from16 v30, v19

    const/16 v31, 0x1

    add-int/lit8 v30, v30, -0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    .line 100
    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 85
    :cond_0
    sget v37, Landroid/support/v7/appcompat/R$layout;->notification_template_media:I

    goto :goto_0

    .line 93
    :cond_1
    move-object/from16 v24, v14

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x3

    .line 95
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(II)I

    move-result v24

    goto :goto_1

    .line 105
    :cond_2
    move-object/from16 v24, v13

    move-object/from16 v25, v14

    move/from16 v26, v21

    aget v25, v25, v26

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/support/v4/app/NotificationCompatBase$Action;

    move-object/from16 v22, v24

    .line 106
    move-object/from16 v24, v2

    move-object/from16 v25, v22

    invoke-static/range {v24 .. v25}, Landroid/support/v7/app/NotificationCompatImplBase;->generateMediaActionButton(Landroid/content/Context;Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/widget/RemoteViews;

    move-result-object v24

    move-object/from16 v23, v24

    .line 107
    move-object/from16 v24, v18

    sget v25, Landroid/support/v7/appcompat/R$id;->media_actions:I

    move-object/from16 v26, v23

    invoke-virtual/range {v24 .. v26}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 98
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_2

    .line 110
    :cond_3
    move/from16 v24, v15

    if-eqz v24, :cond_4

    .line 111
    move-object/from16 v24, v18

    sget v25, Landroid/support/v7/appcompat/R$id;->end_padder:I

    const/16 v26, 0x8

    invoke-virtual/range {v24 .. v26}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 112
    move-object/from16 v24, v18

    sget v25, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 113
    move-object/from16 v24, v18

    sget v25, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    move-object/from16 v26, v16

    invoke-virtual/range {v24 .. v26}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 114
    move-object/from16 v24, v18

    sget v25, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    const-string v26, "setAlpha"

    move-object/from16 v27, v2

    .line 115
    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    sget v28, Landroid/support/v7/appcompat/R$integer;->cancel_button_image_alpha:I

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v27

    .line 114
    invoke-virtual/range {v24 .. v27}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 120
    :goto_3
    move-object/from16 v24, v18

    move-object/from16 v2, v24

    return-object v2

    .line 117
    :cond_4
    move-object/from16 v24, v18

    sget v25, Landroid/support/v7/appcompat/R$id;->end_padder:I

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 118
    move-object/from16 v24, v18

    sget v25, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    const/16 v26, 0x8

    invoke-virtual/range {v24 .. v26}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_3
.end method

.method private static generateMediaActionButton(Landroid/content/Context;Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/widget/RemoteViews;
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0xb
    .end annotation

    .prologue
    .line 175
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompatBase$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    move v2, v4

    .line 176
    new-instance v4, Landroid/widget/RemoteViews;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    sget v7, Landroid/support/v7/appcompat/R$layout;->notification_media_action:I

    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object v3, v4

    .line 178
    move-object v4, v3

    sget v5, Landroid/support/v7/appcompat/R$id;->action0:I

    move-object v6, v1

    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompatBase$Action;->getIcon()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 179
    move v4, v2

    if-nez v4, :cond_0

    .line 180
    move-object v4, v3

    sget v5, Landroid/support/v7/appcompat/R$id;->action0:I

    move-object v6, v1

    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompatBase$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 182
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xf

    if-lt v4, v5, :cond_1

    .line 183
    move-object v4, v3

    sget v5, Landroid/support/v7/appcompat/R$id;->action0:I

    move-object v6, v1

    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompatBase$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 185
    :cond_1
    move-object v4, v3

    move-object v0, v4

    return-object v0

    .line 175
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static generateMediaBigView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIILjava/util/List;ZLandroid/app/PendingIntent;Z)Landroid/widget/RemoteViews;
    .locals 37
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/NotificationCompatBase$Action;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "I",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/CharSequence;",
            "ZJII",
            "Ljava/util/List",
            "<TT;>;Z",
            "Landroid/app/PendingIntent;",
            "Z)",
            "Landroid/widget/RemoteViews;"
        }
    .end annotation

    .prologue
    .line 147
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move/from16 v12, p10

    move/from16 v13, p11

    move-object/from16 v14, p12

    move/from16 v15, p13

    move-object/from16 v16, p14

    move/from16 v17, p15

    move-object/from16 v22, v14

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    const/16 v23, 0x5

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v22

    move/from16 v18, v22

    .line 148
    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move/from16 v26, v6

    const/16 v27, 0x0

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move/from16 v30, v9

    move-wide/from16 v31, v10

    move/from16 v33, v12

    move/from16 v34, v13

    move/from16 v35, v17

    move/from16 v36, v18

    .line 150
    invoke-static/range {v35 .. v36}, Landroid/support/v7/app/NotificationCompatImplBase;->getBigMediaLayoutResource(ZI)I

    move-result v35

    const/16 v36, 0x0

    .line 148
    invoke-static/range {v22 .. v36}, Landroid/support/v7/app/NotificationCompatImplBase;->applyStandardTemplate(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIIIZ)Landroid/widget/RemoteViews;

    move-result-object v22

    move-object/from16 v19, v22

    .line 153
    move-object/from16 v22, v19

    sget v23, Landroid/support/v7/appcompat/R$id;->media_actions:I

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 154
    move/from16 v22, v18

    if-lez v22, :cond_0

    .line 155
    const/16 v22, 0x0

    move/from16 v20, v22

    :goto_0
    move/from16 v22, v20

    move/from16 v23, v18

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    .line 156
    move-object/from16 v22, v2

    move-object/from16 v23, v14

    move/from16 v24, v20

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/support/v4/app/NotificationCompatBase$Action;

    invoke-static/range {v22 .. v23}, Landroid/support/v7/app/NotificationCompatImplBase;->generateMediaActionButton(Landroid/content/Context;Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/widget/RemoteViews;

    move-result-object v22

    move-object/from16 v21, v22

    .line 157
    move-object/from16 v22, v19

    sget v23, Landroid/support/v7/appcompat/R$id;->media_actions:I

    move-object/from16 v24, v21

    invoke-virtual/range {v22 .. v24}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 155
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 160
    :cond_0
    move/from16 v22, v15

    if-eqz v22, :cond_1

    .line 161
    move-object/from16 v22, v19

    sget v23, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 162
    move-object/from16 v22, v19

    sget v23, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    const-string v24, "setAlpha"

    move-object/from16 v25, v2

    .line 163
    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    sget v26, Landroid/support/v7/appcompat/R$integer;->cancel_button_image_alpha:I

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v25

    .line 162
    invoke-virtual/range {v22 .. v25}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 164
    move-object/from16 v22, v19

    sget v23, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    move-object/from16 v24, v16

    invoke-virtual/range {v22 .. v24}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 168
    :goto_1
    move-object/from16 v22, v19

    move-object/from16 v2, v22

    return-object v2

    .line 166
    :cond_1
    move-object/from16 v22, v19

    sget v23, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    const/16 v24, 0x8

    invoke-virtual/range {v22 .. v24}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1
.end method

.method private static getActionLayoutResource()I
    .locals 1

    .prologue
    .line 268
    sget v0, Landroid/support/v7/appcompat/R$layout;->notification_action:I

    return v0
.end method

.method private static getActionTombstoneLayoutResource()I
    .locals 1

    .prologue
    .line 272
    sget v0, Landroid/support/v7/appcompat/R$layout;->notification_action_tombstone:I

    return v0
.end method

.method private static getBigMediaLayoutResource(ZI)I
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0xb
    .end annotation

    .prologue
    .line 191
    move v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, 0x3

    if-gt v2, v3, :cond_1

    .line 192
    move v2, v0

    if-eqz v2, :cond_0

    sget v2, Landroid/support/v7/appcompat/R$layout;->notification_template_big_media_narrow_custom:I

    :goto_0
    move v0, v2

    .line 196
    :goto_1
    return v0

    .line 192
    :cond_0
    sget v2, Landroid/support/v7/appcompat/R$layout;->notification_template_big_media_narrow:I

    goto :goto_0

    .line 196
    :cond_1
    move v2, v0

    if-eqz v2, :cond_2

    sget v2, Landroid/support/v7/appcompat/R$layout;->notification_template_big_media_custom:I

    :goto_2
    move v0, v2

    goto :goto_1

    :cond_2
    sget v2, Landroid/support/v7/appcompat/R$layout;->notification_template_big_media:I

    goto :goto_2
.end method

.method private static hideNormalContent(Landroid/widget/RemoteViews;)V
    .locals 4

    .prologue
    .line 449
    move-object v0, p0

    move-object v1, v0

    sget v2, Landroid/support/v7/appcompat/R$id;->title:I

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 450
    move-object v1, v0

    sget v2, Landroid/support/v7/appcompat/R$id;->text2:I

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 451
    move-object v1, v0

    sget v2, Landroid/support/v7/appcompat/R$id;->text:I

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 452
    return-void
.end method

.method public static overrideContentViewMedia(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJILjava/util/List;[IZLandroid/app/PendingIntent;Z)Landroid/widget/RemoteViews;
    .locals 34
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/NotificationCompatBase$Action;",
            ">(",
            "Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "I",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/CharSequence;",
            "ZJI",
            "Ljava/util/List",
            "<TT;>;[IZ",
            "Landroid/app/PendingIntent;",
            "Z)",
            "Landroid/widget/RemoteViews;"
        }
    .end annotation

    .prologue
    .line 66
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-wide/from16 v9, p9

    move/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, p15

    move/from16 v16, p16

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    move/from16 v25, v8

    move-wide/from16 v26, v9

    move/from16 v28, v11

    move-object/from16 v29, v12

    move-object/from16 v30, v13

    move/from16 v31, v14

    move-object/from16 v32, v15

    move/from16 v33, v16

    invoke-static/range {v18 .. v33}, Landroid/support/v7/app/NotificationCompatImplBase;->generateContentViewMedia(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJILjava/util/List;[IZLandroid/app/PendingIntent;Z)Landroid/widget/RemoteViews;

    move-result-object v18

    move-object/from16 v17, v18

    .line 70
    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v18

    move-object/from16 v19, v17

    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v18

    .line 71
    move/from16 v18, v14

    if-eqz v18, :cond_0

    .line 72
    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v18

    .line 74
    :cond_0
    move-object/from16 v18, v17

    move-object/from16 v0, v18

    return-object v0
.end method

.method public static overrideMediaBigContentView(Landroid/app/Notification;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIILjava/util/List;ZLandroid/app/PendingIntent;Z)V
    .locals 37
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/NotificationCompatBase$Action;",
            ">(",
            "Landroid/app/Notification;",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "I",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/CharSequence;",
            "ZJII",
            "Ljava/util/List",
            "<TT;>;Z",
            "Landroid/app/PendingIntent;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 131
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v11, p9

    move/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    move/from16 v16, p14

    move-object/from16 v17, p15

    move/from16 v18, p16

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move/from16 v27, v10

    move-wide/from16 v28, v11

    move/from16 v30, v13

    move/from16 v31, v14

    move-object/from16 v32, v15

    move/from16 v33, v16

    move-object/from16 v34, v17

    move/from16 v35, v18

    invoke-static/range {v20 .. v35}, Landroid/support/v7/app/NotificationCompatImplBase;->generateMediaBigView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIILjava/util/List;ZLandroid/app/PendingIntent;Z)Landroid/widget/RemoteViews;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 134
    move/from16 v19, v16

    if-eqz v19, :cond_0

    .line 135
    move-object/from16 v19, v2

    move-object/from16 v36, v19

    move-object/from16 v19, v36

    move-object/from16 v20, v36

    move-object/from16 v0, v20

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v20, v0

    const/16 v21, 0x2

    or-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 137
    :cond_0
    return-void
.end method
