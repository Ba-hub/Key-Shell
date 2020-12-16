.class Landroid/support/v7/widget/AppCompatTextHelper;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x9
.end annotation


# instance fields
.field private mDrawableBottomTint:Landroid/support/v7/widget/TintInfo;

.field private mDrawableLeftTint:Landroid/support/v7/widget/TintInfo;

.field private mDrawableRightTint:Landroid/support/v7/widget/TintInfo;

.field private mDrawableTopTint:Landroid/support/v7/widget/TintInfo;

.field final mView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 50
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 51
    return-void
.end method

.method static create(Landroid/widget/TextView;)Landroid/support/v7/widget/AppCompatTextHelper;
    .locals 5

    .prologue
    .line 36
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 37
    new-instance v1, Landroid/support/v7/widget/AppCompatTextHelperV17;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroid/support/v7/widget/AppCompatTextHelperV17;-><init>(Landroid/widget/TextView;)V

    move-object v0, v1

    .line 39
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/support/v7/widget/AppCompatTextHelper;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroid/support/v7/widget/AppCompatTextHelper;-><init>(Landroid/widget/TextView;)V

    move-object v0, v1

    goto :goto_0
.end method

.method protected static createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;
    .locals 9

    .prologue
    .line 190
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v1

    move-object v6, v0

    move v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    move-object v3, v5

    .line 191
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 192
    new-instance v5, Landroid/support/v7/widget/TintInfo;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroid/support/v7/widget/TintInfo;-><init>()V

    move-object v4, v5

    .line 193
    move-object v5, v4

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    .line 194
    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 195
    move-object v5, v4

    move-object v0, v5

    .line 197
    :goto_0
    return-object v0

    :cond_0
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0
.end method


# virtual methods
.method final applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V
    .locals 6

    .prologue
    .line 183
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v2

    if-eqz v3, :cond_0

    .line 184
    move-object v3, v1

    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V

    .line 186
    :cond_0
    return-void
.end method

.method applyCompoundDrawablesTints()V
    .locals 5

    .prologue
    .line 172
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroid/support/v7/widget/TintInfo;

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableTopTint:Landroid/support/v7/widget/TintInfo;

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableRightTint:Landroid/support/v7/widget/TintInfo;

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroid/support/v7/widget/TintInfo;

    if-eqz v2, :cond_1

    .line 174
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, v2

    .line 175
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroid/support/v7/widget/TintInfo;

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    .line 176
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    aget-object v3, v3, v4

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableTopTint:Landroid/support/v7/widget/TintInfo;

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    .line 177
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x2

    aget-object v3, v3, v4

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableRightTint:Landroid/support/v7/widget/TintInfo;

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    .line 178
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x3

    aget-object v3, v3, v4

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroid/support/v7/widget/TintInfo;

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    .line 180
    :cond_1
    return-void
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 18

    .prologue
    .line 54
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v12

    move-object v3, v12

    .line 55
    invoke-static {}, Landroid/support/v7/widget/AppCompatDrawableManager;->get()Landroid/support/v7/widget/AppCompatDrawableManager;

    move-result-object v12

    move-object v4, v12

    .line 58
    move-object v12, v3

    move-object v13, v1

    sget-object v14, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper:[I

    move v15, v2

    const/16 v16, 0x0

    invoke-static/range {v12 .. v16}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v12

    move-object v5, v12

    .line 60
    move-object v12, v5

    sget v13, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_textAppearance:I

    const/4 v14, -0x1

    invoke-virtual {v12, v13, v14}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v12

    move v6, v12

    .line 62
    move-object v12, v5

    sget v13, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 63
    move-object v12, v0

    move-object v13, v3

    move-object v14, v4

    move-object v15, v5

    sget v16, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    const/16 v17, 0x0

    .line 64
    invoke-virtual/range {v15 .. v17}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v15

    .line 63
    invoke-static {v13, v14, v15}, Landroid/support/v7/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object v13

    iput-object v13, v12, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroid/support/v7/widget/TintInfo;

    .line 66
    :cond_0
    move-object v12, v5

    sget v13, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 67
    move-object v12, v0

    move-object v13, v3

    move-object v14, v4

    move-object v15, v5

    sget v16, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    const/16 v17, 0x0

    .line 68
    invoke-virtual/range {v15 .. v17}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v15

    .line 67
    invoke-static {v13, v14, v15}, Landroid/support/v7/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object v13

    iput-object v13, v12, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableTopTint:Landroid/support/v7/widget/TintInfo;

    .line 70
    :cond_1
    move-object v12, v5

    sget v13, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 71
    move-object v12, v0

    move-object v13, v3

    move-object v14, v4

    move-object v15, v5

    sget v16, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    const/16 v17, 0x0

    .line 72
    invoke-virtual/range {v15 .. v17}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v15

    .line 71
    invoke-static {v13, v14, v15}, Landroid/support/v7/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object v13

    iput-object v13, v12, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableRightTint:Landroid/support/v7/widget/TintInfo;

    .line 74
    :cond_2
    move-object v12, v5

    sget v13, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 75
    move-object v12, v0

    move-object v13, v3

    move-object v14, v4

    move-object v15, v5

    sget v16, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    const/16 v17, 0x0

    .line 76
    invoke-virtual/range {v15 .. v17}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v15

    .line 75
    invoke-static {v13, v14, v15}, Landroid/support/v7/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object v13

    iput-object v13, v12, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroid/support/v7/widget/TintInfo;

    .line 78
    :cond_3
    move-object v12, v5

    invoke-virtual {v12}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 83
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 84
    invoke-virtual {v12}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v12

    instance-of v12, v12, Landroid/text/method/PasswordTransformationMethod;

    move v7, v12

    .line 85
    const/4 v12, 0x0

    move v8, v12

    .line 86
    const/4 v12, 0x0

    move v9, v12

    .line 87
    const/4 v12, 0x0

    move-object v10, v12

    .line 88
    const/4 v12, 0x0

    move-object v11, v12

    .line 91
    move v12, v6

    const/4 v13, -0x1

    if-eq v12, v13, :cond_7

    .line 92
    move-object v12, v3

    move v13, v6

    sget-object v14, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {v12, v13, v14}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v12

    move-object v5, v12

    .line 93
    move v12, v7

    if-nez v12, :cond_4

    move-object v12, v5

    sget v13, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 94
    const/4 v12, 0x1

    move v9, v12

    .line 95
    move-object v12, v5

    sget v13, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v12

    move v8, v12

    .line 97
    :cond_4
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x17

    if-ge v12, v13, :cond_6

    .line 100
    move-object v12, v5

    sget v13, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 101
    move-object v12, v5

    sget v13, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    move-object v10, v12

    .line 103
    :cond_5
    move-object v12, v5

    sget v13, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 104
    move-object v12, v5

    sget v13, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    move-object v11, v12

    .line 108
    :cond_6
    move-object v12, v5

    invoke-virtual {v12}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 112
    :cond_7
    move-object v12, v3

    move-object v13, v1

    sget-object v14, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    move v15, v2

    const/16 v16, 0x0

    invoke-static/range {v12 .. v16}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v12

    move-object v5, v12

    .line 114
    move v12, v7

    if-nez v12, :cond_8

    move-object v12, v5

    sget v13, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 115
    const/4 v12, 0x1

    move v9, v12

    .line 116
    move-object v12, v5

    sget v13, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v12

    move v8, v12

    .line 118
    :cond_8
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x17

    if-ge v12, v13, :cond_a

    .line 121
    move-object v12, v5

    sget v13, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 122
    move-object v12, v5

    sget v13, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    move-object v10, v12

    .line 124
    :cond_9
    move-object v12, v5

    sget v13, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 125
    move-object v12, v5

    sget v13, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    move-object v11, v12

    .line 129
    :cond_a
    move-object v12, v5

    invoke-virtual {v12}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 131
    move-object v12, v10

    if-eqz v12, :cond_b

    .line 132
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    move-object v13, v10

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 134
    :cond_b
    move-object v12, v11

    if-eqz v12, :cond_c

    .line 135
    move-object v12, v0

    iget-object v12, v12, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    move-object v13, v11

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 137
    :cond_c
    move v12, v7

    if-nez v12, :cond_d

    move v12, v9

    if-eqz v12, :cond_d

    .line 138
    move-object v12, v0

    move v13, v8

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/AppCompatTextHelper;->setAllCaps(Z)V

    .line 140
    :cond_d
    return-void
.end method

.method onSetTextAppearance(Landroid/content/Context;I)V
    .locals 9

    .prologue
    .line 143
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v1

    move v6, v2

    sget-object v7, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {v5, v6, v7}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v5

    move-object v3, v5

    .line 145
    move-object v5, v3

    sget v6, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 150
    move-object v5, v0

    move-object v6, v3

    sget v7, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/AppCompatTextHelper;->setAllCaps(Z)V

    .line 152
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-ge v5, v6, :cond_1

    move-object v5, v3

    sget v6, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 153
    invoke-virtual {v5, v6}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 156
    move-object v5, v3

    sget v6, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 157
    invoke-virtual {v5, v6}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    move-object v4, v5

    .line 158
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 159
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 162
    :cond_1
    move-object v5, v3

    invoke-virtual {v5}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 163
    return-void
.end method

.method setAllCaps(Z)V
    .locals 7

    .prologue
    .line 166
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    move v3, v1

    if-eqz v3, :cond_0

    new-instance v3, Landroid/support/v7/text/AllCapsTransformationMethod;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 167
    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v7/text/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    .line 166
    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 169
    return-void

    .line 167
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
