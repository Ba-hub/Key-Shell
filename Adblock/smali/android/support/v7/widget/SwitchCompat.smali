.class public Landroid/support/v7/widget/SwitchCompat;
.super Landroid/widget/CompoundButton;
.source "SwitchCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_EVENT_CLASS_NAME:Ljava/lang/String; = "android.widget.Switch"

.field private static final CHECKED_STATE_SET:[I

.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final THUMB_ANIMATION_DURATION:I = 0xfa

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_DRAGGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I


# instance fields
.field private mHasThumbTint:Z

.field private mHasThumbTintMode:Z

.field private mHasTrackTint:Z

.field private mHasTrackTintMode:Z

.field private mMinFlingVelocity:I

.field private mOffLayout:Landroid/text/Layout;

.field private mOnLayout:Landroid/text/Layout;

.field mPositionAnimator:Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;

.field private mShowText:Z

.field private mSplitTrack:Z

.field private mSwitchBottom:I

.field private mSwitchHeight:I

.field private mSwitchLeft:I

.field private mSwitchMinWidth:I

.field private mSwitchPadding:I

.field private mSwitchRight:I

.field private mSwitchTop:I

.field private mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;

.field private mSwitchWidth:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTextColors:Landroid/content/res/ColorStateList;

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOn:Ljava/lang/CharSequence;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbPosition:F

.field private mThumbTextPadding:I

.field private mThumbTintList:Landroid/content/res/ColorStateList;

.field private mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mThumbWidth:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mTrackTintList:Landroid/content/res/ColorStateList;

.field private mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 168
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x10100a0

    aput v3, v1, v2

    sput-object v0, Landroid/support/v7/widget/SwitchCompat;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 178
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 189
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Landroid/support/v7/appcompat/R$attr;->switchStyle:I

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 190
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 18

    .prologue
    .line 203
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v12, v0

    move-object v13, v1

    move-object v14, v2

    move v15, v3

    invoke-direct {v12, v13, v14, v15}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    move-object v12, v0

    const/4 v13, 0x0

    iput-object v13, v12, Landroid/support/v7/widget/SwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 101
    move-object v12, v0

    const/4 v13, 0x0

    iput-object v13, v12, Landroid/support/v7/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 102
    move-object v12, v0

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTint:Z

    .line 103
    move-object v12, v0

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTintMode:Z

    .line 106
    move-object v12, v0

    const/4 v13, 0x0

    iput-object v13, v12, Landroid/support/v7/widget/SwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;

    .line 107
    move-object v12, v0

    const/4 v13, 0x0

    iput-object v13, v12, Landroid/support/v7/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 108
    move-object v12, v0

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTint:Z

    .line 109
    move-object v12, v0

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTintMode:Z

    .line 123
    move-object v12, v0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v13

    iput-object v13, v12, Landroid/support/v7/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 165
    move-object v12, v0

    new-instance v13, Landroid/graphics/Rect;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    iput-object v13, v12, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 205
    move-object v12, v0

    new-instance v13, Landroid/text/TextPaint;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v13, v12, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    .line 207
    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v7/widget/SwitchCompat;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move-object v4, v12

    .line 208
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    move-object v13, v4

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v13, v13, Landroid/util/DisplayMetrics;->density:F

    iput v13, v12, Landroid/text/TextPaint;->density:F

    .line 210
    move-object v12, v1

    move-object v13, v2

    sget-object v14, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat:[I

    move v15, v3

    const/16 v16, 0x0

    invoke-static/range {v12 .. v16}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v12

    move-object v5, v12

    .line 212
    move-object v12, v0

    move-object v13, v5

    sget v14, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_android_thumb:I

    invoke-virtual {v13, v14}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    iput-object v13, v12, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 213
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_0

    .line 214
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object v13, v0

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 216
    :cond_0
    move-object v12, v0

    move-object v13, v5

    sget v14, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_track:I

    invoke-virtual {v13, v14}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    iput-object v13, v12, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 217
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_1

    .line 218
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object v13, v0

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 220
    :cond_1
    move-object v12, v0

    move-object v13, v5

    sget v14, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_android_textOn:I

    invoke-virtual {v13, v14}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    iput-object v13, v12, Landroid/support/v7/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    .line 221
    move-object v12, v0

    move-object v13, v5

    sget v14, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_android_textOff:I

    invoke-virtual {v13, v14}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    iput-object v13, v12, Landroid/support/v7/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    .line 222
    move-object v12, v0

    move-object v13, v5

    sget v14, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_showText:I

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v13

    iput-boolean v13, v12, Landroid/support/v7/widget/SwitchCompat;->mShowText:Z

    .line 223
    move-object v12, v0

    move-object v13, v5

    sget v14, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_thumbTextPadding:I

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v13

    iput v13, v12, Landroid/support/v7/widget/SwitchCompat;->mThumbTextPadding:I

    .line 225
    move-object v12, v0

    move-object v13, v5

    sget v14, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_switchMinWidth:I

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v13

    iput v13, v12, Landroid/support/v7/widget/SwitchCompat;->mSwitchMinWidth:I

    .line 227
    move-object v12, v0

    move-object v13, v5

    sget v14, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_switchPadding:I

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v13

    iput v13, v12, Landroid/support/v7/widget/SwitchCompat;->mSwitchPadding:I

    .line 229
    move-object v12, v0

    move-object v13, v5

    sget v14, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_splitTrack:I

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v13

    iput-boolean v13, v12, Landroid/support/v7/widget/SwitchCompat;->mSplitTrack:Z

    .line 231
    move-object v12, v5

    sget v13, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_thumbTint:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    move-object v6, v12

    .line 232
    move-object v12, v6

    if-eqz v12, :cond_2

    .line 233
    move-object v12, v0

    move-object v13, v6

    iput-object v13, v12, Landroid/support/v7/widget/SwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 234
    move-object v12, v0

    const/4 v13, 0x1

    iput-boolean v13, v12, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTint:Z

    .line 236
    :cond_2
    move-object v12, v5

    sget v13, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_thumbTintMode:I

    const/4 v14, -0x1

    .line 237
    invoke-virtual {v12, v13, v14}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v12

    const/4 v13, 0x0

    .line 236
    invoke-static {v12, v13}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v12

    move-object v7, v12

    .line 238
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    move-object v13, v7

    if-eq v12, v13, :cond_3

    .line 239
    move-object v12, v0

    move-object v13, v7

    iput-object v13, v12, Landroid/support/v7/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 240
    move-object v12, v0

    const/4 v13, 0x1

    iput-boolean v13, v12, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTintMode:Z

    .line 242
    :cond_3
    move-object v12, v0

    iget-boolean v12, v12, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTint:Z

    if-nez v12, :cond_4

    move-object v12, v0

    iget-boolean v12, v12, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTintMode:Z

    if-eqz v12, :cond_5

    .line 243
    :cond_4
    move-object v12, v0

    invoke-direct {v12}, Landroid/support/v7/widget/SwitchCompat;->applyThumbTint()V

    .line 246
    :cond_5
    move-object v12, v5

    sget v13, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_trackTint:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    move-object v8, v12

    .line 247
    move-object v12, v8

    if-eqz v12, :cond_6

    .line 248
    move-object v12, v0

    move-object v13, v8

    iput-object v13, v12, Landroid/support/v7/widget/SwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;

    .line 249
    move-object v12, v0

    const/4 v13, 0x1

    iput-boolean v13, v12, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTint:Z

    .line 251
    :cond_6
    move-object v12, v5

    sget v13, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_trackTintMode:I

    const/4 v14, -0x1

    .line 252
    invoke-virtual {v12, v13, v14}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v12

    const/4 v13, 0x0

    .line 251
    invoke-static {v12, v13}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v12

    move-object v9, v12

    .line 253
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    move-object v13, v9

    if-eq v12, v13, :cond_7

    .line 254
    move-object v12, v0

    move-object v13, v9

    iput-object v13, v12, Landroid/support/v7/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 255
    move-object v12, v0

    const/4 v13, 0x1

    iput-boolean v13, v12, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTintMode:Z

    .line 257
    :cond_7
    move-object v12, v0

    iget-boolean v12, v12, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTint:Z

    if-nez v12, :cond_8

    move-object v12, v0

    iget-boolean v12, v12, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTintMode:Z

    if-eqz v12, :cond_9

    .line 258
    :cond_8
    move-object v12, v0

    invoke-direct {v12}, Landroid/support/v7/widget/SwitchCompat;->applyTrackTint()V

    .line 261
    :cond_9
    move-object v12, v5

    sget v13, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_switchTextAppearance:I

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v12

    move v10, v12

    .line 263
    move v12, v10

    if-eqz v12, :cond_a

    .line 264
    move-object v12, v0

    move-object v13, v1

    move v14, v10

    invoke-virtual {v12, v13, v14}, Landroid/support/v7/widget/SwitchCompat;->setSwitchTextAppearance(Landroid/content/Context;I)V

    .line 267
    :cond_a
    move-object v12, v5

    invoke-virtual {v12}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 269
    move-object v12, v1

    invoke-static {v12}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v12

    move-object v11, v12

    .line 270
    move-object v12, v0

    move-object v13, v11

    invoke-virtual {v13}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v13

    iput v13, v12, Landroid/support/v7/widget/SwitchCompat;->mTouchSlop:I

    .line 271
    move-object v12, v0

    move-object v13, v11

    invoke-virtual {v13}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v13

    iput v13, v12, Landroid/support/v7/widget/SwitchCompat;->mMinFlingVelocity:I

    .line 274
    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v7/widget/SwitchCompat;->refreshDrawableState()V

    .line 275
    move-object v12, v0

    move-object v13, v0

    invoke-virtual {v13}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v13

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 276
    return-void
.end method

.method private animateThumbToCheckedState(Z)V
    .locals 9

    .prologue
    .line 1008
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;

    if-eqz v2, :cond_0

    .line 1010
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/SwitchCompat;->cancelPositionAnimator()V

    .line 1013
    :cond_0
    move-object v2, v0

    new-instance v3, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F

    move v7, v1

    if-eqz v7, :cond_1

    const/high16 v7, 0x3f800000    # 1.0f

    :goto_0
    invoke-direct {v4, v5, v6, v7}, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;-><init>(Landroid/support/v7/widget/SwitchCompat;FF)V

    iput-object v3, v2, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;

    .line 1014
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->setDuration(J)V

    .line 1015
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;

    new-instance v3, Landroid/support/v7/widget/SwitchCompat$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move v6, v1

    invoke-direct {v4, v5, v6}, Landroid/support/v7/widget/SwitchCompat$1;-><init>(Landroid/support/v7/widget/SwitchCompat;Z)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1031
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SwitchCompat;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1032
    return-void

    .line 1013
    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private applyThumbTint()V
    .locals 3

    .prologue
    .line 678
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTint:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTintMode:Z

    if-eqz v1, :cond_3

    .line 679
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 681
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTint:Z

    if-eqz v1, :cond_1

    .line 682
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 685
    :cond_1
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTintMode:Z

    if-eqz v1, :cond_2

    .line 686
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 691
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 692
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/SwitchCompat;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    .line 695
    :cond_3
    return-void
.end method

.method private applyTrackTint()V
    .locals 3

    .prologue
    .line 555
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTint:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTintMode:Z

    if-eqz v1, :cond_3

    .line 556
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 558
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTint:Z

    if-eqz v1, :cond_1

    .line 559
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 562
    :cond_1
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTintMode:Z

    if-eqz v1, :cond_2

    .line 563
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 568
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 569
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/SwitchCompat;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    .line 572
    :cond_3
    return-void
.end method

.method private cancelPositionAnimator()V
    .locals 3

    .prologue
    .line 1035
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;

    if-eqz v1, :cond_0

    .line 1036
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/SwitchCompat;->clearAnimation()V

    .line 1037
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;

    .line 1039
    :cond_0
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .locals 5

    .prologue
    .line 968
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-static {v3}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    move-object v2, v3

    .line 969
    move-object v3, v2

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 970
    move-object v3, v0

    move-object v4, v2

    invoke-super {v3, v4}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 971
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 972
    return-void
.end method

.method private static constrain(FFF)F
    .locals 5

    .prologue
    .line 1420
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

.method private getTargetCheckedState()Z
    .locals 3

    .prologue
    .line 1042
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getThumbOffset()I
    .locals 4

    .prologue
    .line 1295
    move-object v0, p0

    move-object v2, v0

    invoke-static {v2}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1296
    const/high16 v2, 0x3f800000    # 1.0f

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F

    sub-float/2addr v2, v3

    move v1, v2

    .line 1300
    :goto_0
    move v2, v1

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/widget/SwitchCompat;->getThumbScrollRange()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    move v0, v2

    return v0

    .line 1298
    :cond_0
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F

    move v1, v2

    goto :goto_0
.end method

.method private getThumbScrollRange()I
    .locals 5

    .prologue
    .line 1304
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 1305
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    move-object v1, v3

    .line 1306
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v3

    .line 1309
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 1310
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v3}, Landroid/support/v7/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v3

    move-object v2, v3

    .line 1315
    :goto_0
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/SwitchCompat;->mSwitchWidth:I

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/SwitchCompat;->mThumbWidth:I

    sub-int/2addr v3, v4

    move-object v4, v1

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    move-object v4, v1

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    move-object v4, v2

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    move-object v4, v2

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    move v0, v3

    .line 1318
    :goto_1
    return v0

    .line 1312
    :cond_0
    sget-object v3, Landroid/support/v7/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    move-object v2, v3

    goto :goto_0

    .line 1318
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method private hitThumb(FF)Z
    .locals 10

    .prologue
    .line 872
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_0

    .line 873
    const/4 v8, 0x0

    move v0, v8

    .line 885
    :goto_0
    return v0

    .line 877
    :cond_0
    move-object v8, v0

    invoke-direct {v8}, Landroid/support/v7/widget/SwitchCompat;->getThumbOffset()I

    move-result v8

    move v3, v8

    .line 879
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v8

    .line 880
    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/SwitchCompat;->mSwitchTop:I

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/SwitchCompat;->mTouchSlop:I

    sub-int/2addr v8, v9

    move v4, v8

    .line 881
    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/SwitchCompat;->mSwitchLeft:I

    move v9, v3

    add-int/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/SwitchCompat;->mTouchSlop:I

    sub-int/2addr v8, v9

    move v5, v8

    .line 882
    move v8, v5

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/SwitchCompat;->mThumbWidth:I

    add-int/2addr v8, v9

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/SwitchCompat;->mTouchSlop:I

    add-int/2addr v8, v9

    move v6, v8

    .line 884
    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/SwitchCompat;->mSwitchBottom:I

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/SwitchCompat;->mTouchSlop:I

    add-int/2addr v8, v9

    move v7, v8

    .line 885
    move v8, v1

    move v9, v5

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    move v8, v1

    move v9, v6

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    move v8, v2

    move v9, v4

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    move v8, v2

    move v9, v7

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    const/4 v8, 0x1

    :goto_1
    move v0, v8

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 13

    .prologue
    .line 858
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SwitchCompat;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SwitchCompat;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;

    move-object v4, v1

    move-object v5, v0

    .line 859
    invoke-interface {v3, v4, v5}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v3

    :goto_0
    move-object v2, v3

    .line 862
    new-instance v3, Landroid/text/StaticLayout;

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    move-object v7, v2

    if-eqz v7, :cond_1

    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    .line 864
    invoke-static {v7, v8}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v7

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    :goto_1
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object v0, v3

    return-object v0

    .line 859
    :cond_0
    move-object v3, v1

    goto :goto_0

    .line 864
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private setSwitchTypefaceByIndex(II)V
    .locals 7

    .prologue
    .line 324
    move-object v0, p0

    move v1, p1

    move v2, p2

    const/4 v4, 0x0

    move-object v3, v4

    .line 325
    move v4, v1

    packed-switch v4, :pswitch_data_0

    .line 339
    :goto_0
    move-object v4, v0

    move-object v5, v3

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/SwitchCompat;->setSwitchTypeface(Landroid/graphics/Typeface;I)V

    .line 340
    return-void

    .line 327
    :pswitch_0
    sget-object v4, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    move-object v3, v4

    .line 328
    goto :goto_0

    .line 331
    :pswitch_1
    sget-object v4, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    move-object v3, v4

    .line 332
    goto :goto_0

    .line 335
    :pswitch_2
    sget-object v4, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    move-object v3, v4

    goto :goto_0

    .line 325
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .locals 8

    .prologue
    .line 980
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroid/support/v7/widget/SwitchCompat;->mTouchMode:I

    .line 984
    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/SwitchCompat;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    :goto_0
    move v2, v6

    .line 985
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v6

    move v3, v6

    .line 987
    move v6, v2

    if-eqz v6, :cond_6

    .line 988
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 989
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v6

    move v5, v6

    .line 990
    move v6, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    move-object v7, v0

    iget v7, v7, Landroid/support/v7/widget/SwitchCompat;->mMinFlingVelocity:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    .line 991
    move-object v6, v0

    invoke-static {v6}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v5

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    const/4 v6, 0x1

    :goto_1
    move v4, v6

    .line 999
    :goto_2
    move v6, v4

    move v7, v3

    if-eq v6, v7, :cond_0

    .line 1000
    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/SwitchCompat;->playSoundEffect(I)V

    .line 1003
    :cond_0
    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 1004
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Landroid/support/v7/widget/SwitchCompat;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    .line 1005
    return-void

    .line 984
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 991
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    move v6, v5

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 993
    :cond_5
    move-object v6, v0

    invoke-direct {v6}, Landroid/support/v7/widget/SwitchCompat;->getTargetCheckedState()Z

    move-result v6

    move v4, v6

    goto :goto_2

    .line 996
    :cond_6
    move v6, v3

    move v4, v6

    goto :goto_2
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 18

    .prologue
    .line 1135
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    move-object v2, v13

    .line 1136
    move-object v13, v0

    iget v13, v13, Landroid/support/v7/widget/SwitchCompat;->mSwitchLeft:I

    move v3, v13

    .line 1137
    move-object v13, v0

    iget v13, v13, Landroid/support/v7/widget/SwitchCompat;->mSwitchTop:I

    move v4, v13

    .line 1138
    move-object v13, v0

    iget v13, v13, Landroid/support/v7/widget/SwitchCompat;->mSwitchRight:I

    move v5, v13

    .line 1139
    move-object v13, v0

    iget v13, v13, Landroid/support/v7/widget/SwitchCompat;->mSwitchBottom:I

    move v6, v13

    .line 1141
    move v13, v3

    move-object v14, v0

    invoke-direct {v14}, Landroid/support/v7/widget/SwitchCompat;->getThumbOffset()I

    move-result v14

    add-int/2addr v13, v14

    move v7, v13

    .line 1144
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_6

    .line 1145
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v13}, Landroid/support/v7/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v13

    move-object v8, v13

    .line 1151
    :goto_0
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_4

    .line 1152
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object v14, v2

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v13

    .line 1155
    move v13, v7

    move-object v14, v2

    iget v14, v14, Landroid/graphics/Rect;->left:I

    add-int/2addr v13, v14

    move v7, v13

    .line 1158
    move v13, v3

    move v9, v13

    .line 1159
    move v13, v4

    move v10, v13

    .line 1160
    move v13, v5

    move v11, v13

    .line 1161
    move v13, v6

    move v12, v13

    .line 1162
    move-object v13, v8

    if-eqz v13, :cond_3

    .line 1163
    move-object v13, v8

    iget v13, v13, Landroid/graphics/Rect;->left:I

    move-object v14, v2

    iget v14, v14, Landroid/graphics/Rect;->left:I

    if-le v13, v14, :cond_0

    .line 1164
    move v13, v9

    move-object v14, v8

    iget v14, v14, Landroid/graphics/Rect;->left:I

    move-object v15, v2

    iget v15, v15, Landroid/graphics/Rect;->left:I

    sub-int/2addr v14, v15

    add-int/2addr v13, v14

    move v9, v13

    .line 1166
    :cond_0
    move-object v13, v8

    iget v13, v13, Landroid/graphics/Rect;->top:I

    move-object v14, v2

    iget v14, v14, Landroid/graphics/Rect;->top:I

    if-le v13, v14, :cond_1

    .line 1167
    move v13, v10

    move-object v14, v8

    iget v14, v14, Landroid/graphics/Rect;->top:I

    move-object v15, v2

    iget v15, v15, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v15

    add-int/2addr v13, v14

    move v10, v13

    .line 1169
    :cond_1
    move-object v13, v8

    iget v13, v13, Landroid/graphics/Rect;->right:I

    move-object v14, v2

    iget v14, v14, Landroid/graphics/Rect;->right:I

    if-le v13, v14, :cond_2

    .line 1170
    move v13, v11

    move-object v14, v8

    iget v14, v14, Landroid/graphics/Rect;->right:I

    move-object v15, v2

    iget v15, v15, Landroid/graphics/Rect;->right:I

    sub-int/2addr v14, v15

    sub-int/2addr v13, v14

    move v11, v13

    .line 1172
    :cond_2
    move-object v13, v8

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    move-object v14, v2

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    if-le v13, v14, :cond_3

    .line 1173
    move v13, v12

    move-object v14, v8

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    move-object v15, v2

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v15

    sub-int/2addr v13, v14

    move v12, v13

    .line 1176
    :cond_3
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move v14, v9

    move v15, v10

    move/from16 v16, v11

    move/from16 v17, v12

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1180
    :cond_4
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_5

    .line 1181
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object v14, v2

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v13

    .line 1183
    move v13, v7

    move-object v14, v2

    iget v14, v14, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v14

    move v9, v13

    .line 1184
    move v13, v7

    move-object v14, v0

    iget v14, v14, Landroid/support/v7/widget/SwitchCompat;->mThumbWidth:I

    add-int/2addr v13, v14

    move-object v14, v2

    iget v14, v14, Landroid/graphics/Rect;->right:I

    add-int/2addr v13, v14

    move v10, v13

    .line 1185
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move v14, v9

    move v15, v4

    move/from16 v16, v10

    move/from16 v17, v6

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1187
    move-object v13, v0

    invoke-virtual {v13}, Landroid/support/v7/widget/SwitchCompat;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object v11, v13

    .line 1188
    move-object v13, v11

    if-eqz v13, :cond_5

    .line 1189
    move-object v13, v11

    move v14, v9

    move v15, v4

    move/from16 v16, v10

    move/from16 v17, v6

    invoke-static/range {v13 .. v17}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 1195
    :cond_5
    move-object v13, v0

    move-object v14, v1

    invoke-super {v13, v14}, Landroid/widget/CompoundButton;->draw(Landroid/graphics/Canvas;)V

    .line 1196
    return-void

    .line 1147
    :cond_6
    sget-object v13, Landroid/support/v7/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    move-object v8, v13

    goto/16 :goto_0
.end method

.method public drawableHotspotChanged(FF)V
    .locals 6

    .prologue
    .line 1355
    move-object v0, p0

    move v1, p1

    move v2, p2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 1356
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/widget/CompoundButton;->drawableHotspotChanged(FF)V

    .line 1359
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 1360
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 1363
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 1364
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 1366
    :cond_2
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 8

    .prologue
    .line 1333
    move-object v0, p0

    move-object v5, v0

    invoke-super {v5}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 1335
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/SwitchCompat;->getDrawableState()[I

    move-result-object v5

    move-object v1, v5

    .line 1336
    const/4 v5, 0x0

    move v2, v5

    .line 1338
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v5

    .line 1339
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1340
    move v5, v2

    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v6

    or-int/2addr v5, v6

    move v2, v5

    .line 1343
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object v4, v5

    .line 1344
    move-object v5, v4

    if-eqz v5, :cond_1

    move-object v5, v4

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1345
    move v5, v2

    move-object v6, v4

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v6

    or-int/2addr v5, v6

    move v2, v5

    .line 1348
    :cond_1
    move v5, v2

    if-eqz v5, :cond_2

    .line 1349
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/SwitchCompat;->invalidate()V

    .line 1351
    :cond_2
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 4

    .prologue
    .line 1265
    move-object v0, p0

    move-object v2, v0

    invoke-static {v2}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1266
    move-object v2, v0

    invoke-super {v2}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v2

    move v0, v2

    .line 1272
    :goto_0
    return v0

    .line 1268
    :cond_0
    move-object v2, v0

    invoke-super {v2}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v2

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/SwitchCompat;->mSwitchWidth:I

    add-int/2addr v2, v3

    move v1, v2

    .line 1269
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/SwitchCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1270
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/SwitchCompat;->mSwitchPadding:I

    add-int/2addr v2, v3

    move v1, v2

    .line 1272
    :cond_1
    move v2, v1

    move v0, v2

    goto :goto_0
.end method

.method public getCompoundPaddingRight()I
    .locals 4

    .prologue
    .line 1277
    move-object v0, p0

    move-object v2, v0

    invoke-static {v2}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1278
    move-object v2, v0

    invoke-super {v2}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v2

    move v0, v2

    .line 1284
    :goto_0
    return v0

    .line 1280
    :cond_0
    move-object v2, v0

    invoke-super {v2}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v2

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/SwitchCompat;->mSwitchWidth:I

    add-int/2addr v2, v3

    move v1, v2

    .line 1281
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/SwitchCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1282
    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/SwitchCompat;->mSwitchPadding:I

    add-int/2addr v2, v3

    move v1, v2

    .line 1284
    :cond_1
    move v2, v1

    move v0, v2

    goto :goto_0
.end method

.method public getShowText()Z
    .locals 2

    .prologue
    .line 776
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/SwitchCompat;->mShowText:Z

    move v0, v1

    return v0
.end method

.method public getSplitTrack()Z
    .locals 2

    .prologue
    .line 717
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/SwitchCompat;->mSplitTrack:Z

    move v0, v1

    return v0
.end method

.method public getSwitchMinWidth()I
    .locals 2

    .prologue
    .line 430
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/SwitchCompat;->mSwitchMinWidth:I

    move v0, v1

    return v0
.end method

.method public getSwitchPadding()I
    .locals 2

    .prologue
    .line 405
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/SwitchCompat;->mSwitchPadding:I

    move v0, v1

    return v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 745
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 726
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 614
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    return-object v0
.end method

.method public getThumbTextPadding()I
    .locals 2

    .prologue
    .line 453
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/SwitchCompat;->mThumbTextPadding:I

    move v0, v1

    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 645
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;

    move-object v0, v1

    return-object v0
.end method

.method public getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 674
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v1

    return-object v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 493
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    return-object v0
.end method

.method public getTrackTintList()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 523
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;

    move-object v0, v1

    return-object v0
.end method

.method public getTrackTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 551
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v1

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 3

    .prologue
    .line 1375
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2

    .line 1376
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 1378
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1379
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1382
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1383
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1386
    :cond_1
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/SwitchCompat;->cancelPositionAnimator()V

    .line 1387
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SwitchCompat;->setThumbPosition(F)V

    .line 1389
    :cond_2
    return-void

    .line 1387
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6

    .prologue
    .line 1324
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-super {v3, v4}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v3

    move-object v2, v3

    .line 1325
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1326
    move-object v3, v2

    sget-object v4, Landroid/support/v7/widget/SwitchCompat;->CHECKED_STATE_SET:[I

    invoke-static {v3, v4}, Landroid/support/v7/widget/SwitchCompat;->mergeDrawableStates([I[I)[I

    move-result-object v3

    .line 1328
    :cond_0
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22

    .prologue
    .line 1200
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-super/range {v17 .. v18}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 1202
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v4, v17

    .line 1203
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v5, v17

    .line 1204
    move-object/from16 v17, v5

    if-eqz v17, :cond_4

    .line 1205
    move-object/from16 v17, v5

    move-object/from16 v18, v4

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v17

    .line 1210
    :goto_0
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/widget/SwitchCompat;->mSwitchTop:I

    move/from16 v17, v0

    move/from16 v6, v17

    .line 1211
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/widget/SwitchCompat;->mSwitchBottom:I

    move/from16 v17, v0

    move/from16 v7, v17

    .line 1212
    move/from16 v17, v6

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v8, v17

    .line 1213
    move/from16 v17, v7

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v9, v17

    .line 1215
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v10, v17

    .line 1216
    move-object/from16 v17, v5

    if-eqz v17, :cond_0

    .line 1217
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/v7/widget/SwitchCompat;->mSplitTrack:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v17, v10

    if-eqz v17, :cond_5

    .line 1218
    move-object/from16 v17, v10

    invoke-static/range {v17 .. v17}, Landroid/support/v7/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v11, v17

    .line 1219
    move-object/from16 v17, v10

    move-object/from16 v18, v4

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1220
    move-object/from16 v17, v4

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object/from16 v19, v11

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1221
    move-object/from16 v17, v4

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move-object/from16 v19, v11

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 1223
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Canvas;->save()I

    move-result v17

    move/from16 v12, v17

    .line 1224
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    sget-object v19, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    move-result v17

    .line 1225
    move-object/from16 v17, v5

    move-object/from16 v18, v3

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1226
    move-object/from16 v17, v3

    move/from16 v18, v12

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1232
    :cond_0
    :goto_1
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Canvas;->save()I

    move-result v17

    move/from16 v11, v17

    .line 1234
    move-object/from16 v17, v10

    if-eqz v17, :cond_1

    .line 1235
    move-object/from16 v17, v10

    move-object/from16 v18, v3

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1238
    :cond_1
    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v17}, Landroid/support/v7/widget/SwitchCompat;->getTargetCheckedState()Z

    move-result v17

    if-eqz v17, :cond_6

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/SwitchCompat;->mOnLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    :goto_2
    move-object/from16 v12, v17

    .line 1239
    move-object/from16 v17, v12

    if-eqz v17, :cond_3

    .line 1240
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/SwitchCompat;->getDrawableState()[I

    move-result-object v17

    move-object/from16 v13, v17

    .line 1241
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/SwitchCompat;->mTextColors:Landroid/content/res/ColorStateList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 1242
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/SwitchCompat;->mTextColors:Landroid/content/res/ColorStateList;

    move-object/from16 v18, v0

    move-object/from16 v19, v13

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/text/TextPaint;->setColor(I)V

    .line 1244
    :cond_2
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    move-object/from16 v18, v13

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/text/TextPaint;->drawableState:[I

    .line 1247
    move-object/from16 v17, v10

    if-eqz v17, :cond_7

    .line 1248
    move-object/from16 v17, v10

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v15, v17

    .line 1249
    move-object/from16 v17, v15

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move-object/from16 v18, v15

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v14, v17

    .line 1254
    :goto_3
    move/from16 v17, v14

    const/16 v18, 0x2

    div-int/lit8 v17, v17, 0x2

    move-object/from16 v18, v12

    invoke-virtual/range {v18 .. v18}, Landroid/text/Layout;->getWidth()I

    move-result v18

    const/16 v19, 0x2

    div-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    move/from16 v15, v17

    .line 1255
    move/from16 v17, v8

    move/from16 v18, v9

    add-int v17, v17, v18

    const/16 v18, 0x2

    div-int/lit8 v17, v17, 0x2

    move-object/from16 v18, v12

    invoke-virtual/range {v18 .. v18}, Landroid/text/Layout;->getHeight()I

    move-result v18

    const/16 v19, 0x2

    div-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    move/from16 v16, v17

    .line 1256
    move-object/from16 v17, v3

    move/from16 v18, v15

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v16

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1257
    move-object/from16 v17, v12

    move-object/from16 v18, v3

    invoke-virtual/range {v17 .. v18}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 1260
    :cond_3
    move-object/from16 v17, v3

    move/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1261
    return-void

    .line 1207
    :cond_4
    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_0

    .line 1228
    :cond_5
    move-object/from16 v17, v5

    move-object/from16 v18, v3

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    .line 1238
    :cond_6
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/SwitchCompat;->mOffLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    goto/16 :goto_2

    .line 1251
    :cond_7
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/SwitchCompat;->getWidth()I

    move-result v17

    move/from16 v14, v17

    goto :goto_3
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .prologue
    .line 1393
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1394
    move-object v2, v1

    const-string v3, "android.widget.Switch"

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1395
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8

    .prologue
    .line 1399
    move-object v0, p0

    move-object v1, p1

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-lt v5, v6, :cond_0

    .line 1400
    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1401
    move-object v5, v1

    const-string v6, "android.widget.Switch"

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1402
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    :goto_0
    move-object v2, v5

    .line 1403
    move-object v5, v2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1404
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    move-object v3, v5

    .line 1405
    move-object v5, v3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1406
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 1414
    :cond_0
    :goto_1
    return-void

    .line 1402
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1408
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v5

    .line 1409
    move-object v5, v4

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1410
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    .prologue
    .line 1079
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v12, v0

    move v13, v1

    move v14, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    invoke-super/range {v12 .. v17}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 1081
    const/4 v12, 0x0

    move v6, v12

    .line 1082
    const/4 v12, 0x0

    move v7, v12

    .line 1083
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_0

    .line 1084
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    move-object v8, v12

    .line 1085
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_1

    .line 1086
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object v13, v8

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v12

    .line 1091
    :goto_0
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v12}, Landroid/support/v7/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v12

    move-object v9, v12

    .line 1092
    const/4 v12, 0x0

    move-object v13, v9

    iget v13, v13, Landroid/graphics/Rect;->left:I

    move-object v14, v8

    iget v14, v14, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v6, v12

    .line 1093
    const/4 v12, 0x0

    move-object v13, v9

    iget v13, v13, Landroid/graphics/Rect;->right:I

    move-object v14, v8

    iget v14, v14, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v7, v12

    .line 1098
    :cond_0
    move-object v12, v0

    invoke-static {v12}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1099
    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v7/widget/SwitchCompat;->getPaddingLeft()I

    move-result v12

    move v13, v6

    add-int/2addr v12, v13

    move v9, v12

    .line 1100
    move v12, v9

    move-object v13, v0

    iget v13, v13, Landroid/support/v7/widget/SwitchCompat;->mSwitchWidth:I

    add-int/2addr v12, v13

    move v13, v6

    sub-int/2addr v12, v13

    move v13, v7

    sub-int/2addr v12, v13

    move v8, v12

    .line 1108
    :goto_1
    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v7/widget/SwitchCompat;->getGravity()I

    move-result v12

    const/16 v13, 0x70

    and-int/lit8 v12, v12, 0x70

    sparse-switch v12, :sswitch_data_0

    .line 1111
    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v7/widget/SwitchCompat;->getPaddingTop()I

    move-result v12

    move v10, v12

    .line 1112
    move v12, v10

    move-object v13, v0

    iget v13, v13, Landroid/support/v7/widget/SwitchCompat;->mSwitchHeight:I

    add-int/2addr v12, v13

    move v11, v12

    .line 1127
    :goto_2
    move-object v12, v0

    move v13, v9

    iput v13, v12, Landroid/support/v7/widget/SwitchCompat;->mSwitchLeft:I

    .line 1128
    move-object v12, v0

    move v13, v10

    iput v13, v12, Landroid/support/v7/widget/SwitchCompat;->mSwitchTop:I

    .line 1129
    move-object v12, v0

    move v13, v11

    iput v13, v12, Landroid/support/v7/widget/SwitchCompat;->mSwitchBottom:I

    .line 1130
    move-object v12, v0

    move v13, v8

    iput v13, v12, Landroid/support/v7/widget/SwitchCompat;->mSwitchRight:I

    .line 1131
    return-void

    .line 1088
    :cond_1
    move-object v12, v8

    invoke-virtual {v12}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 1102
    :cond_2
    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v7/widget/SwitchCompat;->getWidth()I

    move-result v12

    move-object v13, v0

    invoke-virtual {v13}, Landroid/support/v7/widget/SwitchCompat;->getPaddingRight()I

    move-result v13

    sub-int/2addr v12, v13

    move v13, v7

    sub-int/2addr v12, v13

    move v8, v12

    .line 1103
    move v12, v8

    move-object v13, v0

    iget v13, v13, Landroid/support/v7/widget/SwitchCompat;->mSwitchWidth:I

    sub-int/2addr v12, v13

    move v13, v6

    add-int/2addr v12, v13

    move v13, v7

    add-int/2addr v12, v13

    move v9, v12

    goto :goto_1

    .line 1116
    :sswitch_0
    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v7/widget/SwitchCompat;->getPaddingTop()I

    move-result v12

    move-object v13, v0

    invoke-virtual {v13}, Landroid/support/v7/widget/SwitchCompat;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    move-object v13, v0

    invoke-virtual {v13}, Landroid/support/v7/widget/SwitchCompat;->getPaddingBottom()I

    move-result v13

    sub-int/2addr v12, v13

    const/4 v13, 0x2

    div-int/lit8 v12, v12, 0x2

    move-object v13, v0

    iget v13, v13, Landroid/support/v7/widget/SwitchCompat;->mSwitchHeight:I

    const/4 v14, 0x2

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    move v10, v12

    .line 1118
    move v12, v10

    move-object v13, v0

    iget v13, v13, Landroid/support/v7/widget/SwitchCompat;->mSwitchHeight:I

    add-int/2addr v12, v13

    move v11, v12

    .line 1119
    goto :goto_2

    .line 1122
    :sswitch_1
    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v7/widget/SwitchCompat;->getHeight()I

    move-result v12

    move-object v13, v0

    invoke-virtual {v13}, Landroid/support/v7/widget/SwitchCompat;->getPaddingBottom()I

    move-result v13

    sub-int/2addr v12, v13

    move v11, v12

    .line 1123
    move v12, v11

    move-object v13, v0

    iget v13, v13, Landroid/support/v7/widget/SwitchCompat;->mSwitchHeight:I

    sub-int/2addr v12, v13

    move v10, v12

    goto :goto_2

    .line 1108
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .locals 16

    .prologue
    .line 781
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object v13, v0

    iget-boolean v13, v13, Landroid/support/v7/widget/SwitchCompat;->mShowText:Z

    if-eqz v13, :cond_1

    .line 782
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/SwitchCompat;->mOnLayout:Landroid/text/Layout;

    if-nez v13, :cond_0

    .line 783
    move-object v13, v0

    move-object v14, v0

    move-object v15, v0

    iget-object v15, v15, Landroid/support/v7/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    invoke-direct {v14, v15}, Landroid/support/v7/widget/SwitchCompat;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v14

    iput-object v14, v13, Landroid/support/v7/widget/SwitchCompat;->mOnLayout:Landroid/text/Layout;

    .line 786
    :cond_0
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/SwitchCompat;->mOffLayout:Landroid/text/Layout;

    if-nez v13, :cond_1

    .line 787
    move-object v13, v0

    move-object v14, v0

    move-object v15, v0

    iget-object v15, v15, Landroid/support/v7/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    invoke-direct {v14, v15}, Landroid/support/v7/widget/SwitchCompat;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v14

    iput-object v14, v13, Landroid/support/v7/widget/SwitchCompat;->mOffLayout:Landroid/text/Layout;

    .line 791
    :cond_1
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    move-object v3, v13

    .line 794
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_4

    .line 796
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object v14, v3

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v13

    .line 797
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    move-object v14, v3

    iget v14, v14, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v14

    move-object v14, v3

    iget v14, v14, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v14

    move v4, v13

    .line 798
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    move v5, v13

    .line 805
    :goto_0
    move-object v13, v0

    iget-boolean v13, v13, Landroid/support/v7/widget/SwitchCompat;->mShowText:Z

    if-eqz v13, :cond_5

    .line 806
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/SwitchCompat;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v13}, Landroid/text/Layout;->getWidth()I

    move-result v13

    move-object v14, v0

    iget-object v14, v14, Landroid/support/v7/widget/SwitchCompat;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v14}, Landroid/text/Layout;->getWidth()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    move-object v14, v0

    iget v14, v14, Landroid/support/v7/widget/SwitchCompat;->mThumbTextPadding:I

    const/4 v15, 0x2

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    move v6, v13

    .line 812
    :goto_1
    move-object v13, v0

    move v14, v6

    move v15, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    iput v14, v13, Landroid/support/v7/widget/SwitchCompat;->mThumbWidth:I

    .line 815
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_6

    .line 816
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object v14, v3

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v13

    .line 817
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    move v7, v13

    .line 825
    :goto_2
    move-object v13, v3

    iget v13, v13, Landroid/graphics/Rect;->left:I

    move v8, v13

    .line 826
    move-object v13, v3

    iget v13, v13, Landroid/graphics/Rect;->right:I

    move v9, v13

    .line 827
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_2

    .line 828
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v13}, Landroid/support/v7/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v13

    move-object v10, v13

    .line 829
    move v13, v8

    move-object v14, v10

    iget v14, v14, Landroid/graphics/Rect;->left:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    move v8, v13

    .line 830
    move v13, v9

    move-object v14, v10

    iget v14, v14, Landroid/graphics/Rect;->right:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    move v9, v13

    .line 833
    :cond_2
    move-object v13, v0

    iget v13, v13, Landroid/support/v7/widget/SwitchCompat;->mSwitchMinWidth:I

    const/4 v14, 0x2

    move-object v15, v0

    iget v15, v15, Landroid/support/v7/widget/SwitchCompat;->mThumbWidth:I

    mul-int/2addr v14, v15

    move v15, v8

    add-int/2addr v14, v15

    move v15, v9

    add-int/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    move v10, v13

    .line 835
    move v13, v7

    move v14, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    move v11, v13

    .line 836
    move-object v13, v0

    move v14, v10

    iput v14, v13, Landroid/support/v7/widget/SwitchCompat;->mSwitchWidth:I

    .line 837
    move-object v13, v0

    move v14, v11

    iput v14, v13, Landroid/support/v7/widget/SwitchCompat;->mSwitchHeight:I

    .line 839
    move-object v13, v0

    move v14, v1

    move v15, v2

    invoke-super {v13, v14, v15}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 841
    move-object v13, v0

    invoke-virtual {v13}, Landroid/support/v7/widget/SwitchCompat;->getMeasuredHeight()I

    move-result v13

    move v12, v13

    .line 842
    move v13, v12

    move v14, v11

    if-ge v13, v14, :cond_3

    .line 843
    move-object v13, v0

    move-object v14, v0

    invoke-static {v14}, Landroid/support/v4/view/ViewCompat;->getMeasuredWidthAndState(Landroid/view/View;)I

    move-result v14

    move v15, v11

    invoke-virtual {v13, v14, v15}, Landroid/support/v7/widget/SwitchCompat;->setMeasuredDimension(II)V

    .line 845
    :cond_3
    return-void

    .line 800
    :cond_4
    const/4 v13, 0x0

    move v4, v13

    .line 801
    const/4 v13, 0x0

    move v5, v13

    goto/16 :goto_0

    .line 809
    :cond_5
    const/4 v13, 0x0

    move v6, v13

    goto/16 :goto_1

    .line 819
    :cond_6
    move-object v13, v3

    invoke-virtual {v13}, Landroid/graphics/Rect;->setEmpty()V

    .line 820
    const/4 v13, 0x0

    move v7, v13

    goto :goto_2
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5

    .prologue
    .line 849
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 851
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    :goto_0
    move-object v2, v3

    .line 852
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 853
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    move-object v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 855
    :cond_0
    return-void

    .line 851
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    .line 890
    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 891
    move-object v8, v1

    invoke-static {v8}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v8

    move v2, v8

    .line 892
    move v8, v2

    packed-switch v8, :pswitch_data_0

    .line 964
    :cond_0
    :goto_0
    move-object v8, v0

    move-object v9, v1

    invoke-super {v8, v9}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    move v0, v8

    :goto_1
    return v0

    .line 894
    :pswitch_0
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    move v3, v8

    .line 895
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    move v4, v8

    .line 896
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/SwitchCompat;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v0

    move v9, v3

    move v10, v4

    invoke-direct {v8, v9, v10}, Landroid/support/v7/widget/SwitchCompat;->hitThumb(FF)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 897
    move-object v8, v0

    const/4 v9, 0x1

    iput v9, v8, Landroid/support/v7/widget/SwitchCompat;->mTouchMode:I

    .line 898
    move-object v8, v0

    move v9, v3

    iput v9, v8, Landroid/support/v7/widget/SwitchCompat;->mTouchX:F

    .line 899
    move-object v8, v0

    move v9, v4

    iput v9, v8, Landroid/support/v7/widget/SwitchCompat;->mTouchY:F

    goto :goto_0

    .line 905
    :pswitch_1
    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/SwitchCompat;->mTouchMode:I

    packed-switch v8, :pswitch_data_1

    .line 947
    :cond_1
    :goto_2
    goto :goto_0

    .line 908
    :pswitch_2
    goto :goto_2

    .line 911
    :pswitch_3
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    move v3, v8

    .line 912
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    move v4, v8

    .line 913
    move v8, v3

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/SwitchCompat;->mTouchX:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/SwitchCompat;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_2

    move v8, v4

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/SwitchCompat;->mTouchY:F

    sub-float/2addr v8, v9

    .line 914
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/SwitchCompat;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    .line 915
    :cond_2
    move-object v8, v0

    const/4 v9, 0x2

    iput v9, v8, Landroid/support/v7/widget/SwitchCompat;->mTouchMode:I

    .line 916
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/SwitchCompat;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 917
    move-object v8, v0

    move v9, v3

    iput v9, v8, Landroid/support/v7/widget/SwitchCompat;->mTouchX:F

    .line 918
    move-object v8, v0

    move v9, v4

    iput v9, v8, Landroid/support/v7/widget/SwitchCompat;->mTouchY:F

    .line 919
    const/4 v8, 0x1

    move v0, v8

    goto :goto_1

    .line 925
    :pswitch_4
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    move v3, v8

    .line 926
    move-object v8, v0

    invoke-direct {v8}, Landroid/support/v7/widget/SwitchCompat;->getThumbScrollRange()I

    move-result v8

    move v4, v8

    .line 927
    move v8, v3

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/SwitchCompat;->mTouchX:F

    sub-float/2addr v8, v9

    move v5, v8

    .line 929
    move v8, v4

    if-eqz v8, :cond_5

    .line 930
    move v8, v5

    move v9, v4

    int-to-float v9, v9

    div-float/2addr v8, v9

    move v6, v8

    .line 936
    :goto_3
    move-object v8, v0

    invoke-static {v8}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 937
    move v8, v6

    neg-float v8, v8

    move v6, v8

    .line 939
    :cond_3
    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F

    move v9, v6

    add-float/2addr v8, v9

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v8, v9, v10}, Landroid/support/v7/widget/SwitchCompat;->constrain(FFF)F

    move-result v8

    move v7, v8

    .line 940
    move v8, v7

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_4

    .line 941
    move-object v8, v0

    move v9, v3

    iput v9, v8, Landroid/support/v7/widget/SwitchCompat;->mTouchX:F

    .line 942
    move-object v8, v0

    move v9, v7

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/SwitchCompat;->setThumbPosition(F)V

    .line 944
    :cond_4
    const/4 v8, 0x1

    move v0, v8

    goto/16 :goto_1

    .line 934
    :cond_5
    move v8, v5

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_6

    const/high16 v8, 0x3f800000    # 1.0f

    :goto_4
    move v6, v8

    goto :goto_3

    :cond_6
    const/high16 v8, -0x40800000    # -1.0f

    goto :goto_4

    .line 952
    :pswitch_5
    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/SwitchCompat;->mTouchMode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_7

    .line 953
    move-object v8, v0

    move-object v9, v1

    invoke-direct {v8, v9}, Landroid/support/v7/widget/SwitchCompat;->stopDrag(Landroid/view/MotionEvent;)V

    .line 955
    move-object v8, v0

    move-object v9, v1

    invoke-super {v8, v9}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 956
    const/4 v8, 0x1

    move v0, v8

    goto/16 :goto_1

    .line 958
    :cond_7
    move-object v8, v0

    const/4 v9, 0x0

    iput v9, v8, Landroid/support/v7/widget/SwitchCompat;->mTouchMode:I

    .line 959
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    .line 892
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_5
    .end packed-switch

    .line 905
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 4

    .prologue
    .line 1062
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1066
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v2

    move v1, v2

    .line 1068
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/SwitchCompat;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/SwitchCompat;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1069
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/SwitchCompat;->animateThumbToCheckedState(Z)V

    .line 1075
    :goto_0
    return-void

    .line 1072
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/SwitchCompat;->cancelPositionAnimator()V

    .line 1073
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SwitchCompat;->setThumbPosition(F)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setShowText(Z)V
    .locals 4

    .prologue
    .line 765
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/SwitchCompat;->mShowText:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 766
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/SwitchCompat;->mShowText:Z

    .line 767
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 769
    :cond_0
    return-void
.end method

.method public setSplitTrack(Z)V
    .locals 4

    .prologue
    .line 707
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/SwitchCompat;->mSplitTrack:Z

    .line 708
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/SwitchCompat;->invalidate()V

    .line 709
    return-void
.end method

.method public setSwitchMinWidth(I)V
    .locals 4

    .prologue
    .line 417
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/SwitchCompat;->mSwitchMinWidth:I

    .line 418
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 419
    return-void
.end method

.method public setSwitchPadding(I)V
    .locals 4

    .prologue
    .line 393
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/SwitchCompat;->mSwitchPadding:I

    .line 394
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 395
    return-void
.end method

.method public setSwitchTextAppearance(Landroid/content/Context;I)V
    .locals 14

    .prologue
    .line 285
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object v9, v1

    move v10, v2

    sget-object v11, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {v9, v10, v11}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v9

    move-object v3, v9

    .line 291
    move-object v9, v3

    sget v10, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    move-object v4, v9

    .line 292
    move-object v9, v4

    if-eqz v9, :cond_1

    .line 293
    move-object v9, v0

    move-object v10, v4

    iput-object v10, v9, Landroid/support/v7/widget/SwitchCompat;->mTextColors:Landroid/content/res/ColorStateList;

    .line 299
    :goto_0
    move-object v9, v3

    sget v10, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v9

    move v5, v9

    .line 300
    move v9, v5

    if-eqz v9, :cond_0

    .line 301
    move v9, v5

    int-to-float v9, v9

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v10}, Landroid/text/TextPaint;->getTextSize()F

    move-result v10

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_0

    .line 302
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    move v10, v5

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 303
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 308
    :cond_0
    move-object v9, v3

    sget v10, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_typeface:I

    const/4 v11, -0x1

    invoke-virtual {v9, v10, v11}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v9

    move v6, v9

    .line 309
    move-object v9, v3

    sget v10, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textStyle:I

    const/4 v11, -0x1

    invoke-virtual {v9, v10, v11}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v9

    move v7, v9

    .line 311
    move-object v9, v0

    move v10, v6

    move v11, v7

    invoke-direct {v9, v10, v11}, Landroid/support/v7/widget/SwitchCompat;->setSwitchTypefaceByIndex(II)V

    .line 313
    move-object v9, v3

    sget v10, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v9

    move v8, v9

    .line 314
    move v9, v8

    if-eqz v9, :cond_2

    .line 315
    move-object v9, v0

    new-instance v10, Landroid/support/v7/text/AllCapsTransformationMethod;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v7/widget/SwitchCompat;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/support/v7/text/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    iput-object v10, v9, Landroid/support/v7/widget/SwitchCompat;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;

    .line 320
    :goto_1
    move-object v9, v3

    invoke-virtual {v9}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 321
    return-void

    .line 296
    :cond_1
    move-object v9, v0

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v7/widget/SwitchCompat;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v10

    iput-object v10, v9, Landroid/support/v7/widget/SwitchCompat;->mTextColors:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 317
    :cond_2
    move-object v9, v0

    const/4 v10, 0x0

    iput-object v10, v9, Landroid/support/v7/widget/SwitchCompat;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;

    goto :goto_1
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;)V
    .locals 4

    .prologue
    .line 377
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 378
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 380
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 381
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/SwitchCompat;->invalidate()V

    .line 383
    :cond_0
    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;I)V
    .locals 8

    .prologue
    .line 349
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, v2

    if-lez v5, :cond_4

    .line 350
    move-object v5, v1

    if-nez v5, :cond_0

    .line 351
    move v5, v2

    invoke-static {v5}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v5

    move-object v1, v5

    .line 356
    :goto_0
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/SwitchCompat;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    .line 358
    move-object v5, v1

    if-eqz v5, :cond_1

    move-object v5, v1

    invoke-virtual {v5}, Landroid/graphics/Typeface;->getStyle()I

    move-result v5

    :goto_1
    move v3, v5

    .line 359
    move v5, v2

    move v6, v3

    const/4 v7, -0x1

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    move v4, v5

    .line 360
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    move v6, v4

    const/4 v7, 0x1

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 361
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    move v6, v4

    const/4 v7, 0x2

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_3

    const/high16 v6, -0x41800000    # -0.25f

    :goto_3
    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 367
    :goto_4
    return-void

    .line 353
    :cond_0
    move-object v5, v1

    move v6, v2

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    move-object v1, v5

    goto :goto_0

    .line 358
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 360
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 361
    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    .line 363
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 364
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 365
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/SwitchCompat;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    goto :goto_4
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 754
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    .line 755
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 756
    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 735
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    .line 736
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 737
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 583
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 584
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 586
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 587
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 588
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 590
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 591
    return-void
.end method

.method setThumbPosition(F)V
    .locals 4

    .prologue
    .line 1051
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F

    .line 1052
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/SwitchCompat;->invalidate()V

    .line 1053
    return-void
.end method

.method public setThumbResource(I)V
    .locals 5

    .prologue
    .line 602
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/SwitchCompat;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SwitchCompat;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 603
    return-void
.end method

.method public setThumbTextPadding(I)V
    .locals 4

    .prologue
    .line 441
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/SwitchCompat;->mThumbTextPadding:I

    .line 442
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 443
    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 632
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/SwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 633
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTint:Z

    .line 635
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/SwitchCompat;->applyThumbTint()V

    .line 636
    return-void
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 660
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 661
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTintMode:Z

    .line 663
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/SwitchCompat;->applyThumbTint()V

    .line 664
    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 464
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 465
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 467
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 468
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 469
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 471
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 472
    return-void
.end method

.method public setTrackResource(I)V
    .locals 5

    .prologue
    .line 482
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/SwitchCompat;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SwitchCompat;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 483
    return-void
.end method

.method public setTrackTintList(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 510
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/SwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;

    .line 511
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTint:Z

    .line 513
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/SwitchCompat;->applyTrackTint()V

    .line 514
    return-void
.end method

.method public setTrackTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 537
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 538
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTintMode:Z

    .line 540
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/SwitchCompat;->applyTrackTint()V

    .line 541
    return-void
.end method

.method public toggle()V
    .locals 3

    .prologue
    .line 1057
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 1058
    return-void

    .line 1057
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 4

    .prologue
    .line 1370
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v2, v3, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
