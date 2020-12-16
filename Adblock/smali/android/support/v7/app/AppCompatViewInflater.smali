.class Landroid/support/v7/app/AppCompatViewInflater;
.super Ljava/lang/Object;
.source "AppCompatViewInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AppCompatViewInflater$DeclaredOnClickListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppCompatViewInflater"

.field private static final sClassPrefixList:[Ljava/lang/String;

.field private static final sConstructorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sConstructorSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final sOnClickAttrs:[I


# instance fields
.field private final mConstructorArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-class v3, Landroid/util/AttributeSet;

    aput-object v3, v1, v2

    sput-object v0, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorSignature:[Ljava/lang/Class;

    .line 65
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x101026f

    aput v3, v1, v2

    sput-object v0, Landroid/support/v7/app/AppCompatViewInflater;->sOnClickAttrs:[I

    .line 67
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "android.widget."

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string v3, "android.view."

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string v3, "android.webkit."

    aput-object v3, v1, v2

    sput-object v0, Landroid/support/v7/app/AppCompatViewInflater;->sClassPrefixList:[Ljava/lang/String;

    .line 75
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorMap:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 78
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, v1, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 269
    return-void
.end method

.method private checkOnClickListener(Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 12

    .prologue
    .line 194
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v3, v6

    .line 196
    move-object v6, v3

    instance-of v6, v6, Landroid/content/ContextWrapper;

    if-eqz v6, :cond_0

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xf

    if-lt v6, v7, :cond_1

    move-object v6, v1

    .line 197
    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->hasOnClickListeners(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    move-object v6, v3

    move-object v7, v2

    sget-object v8, Landroid/support/v7/app/AppCompatViewInflater;->sOnClickAttrs:[I

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    move-object v4, v6

    .line 205
    move-object v6, v4

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 206
    move-object v6, v5

    if-eqz v6, :cond_2

    .line 207
    move-object v6, v1

    new-instance v7, Landroid/support/v7/app/AppCompatViewInflater$DeclaredOnClickListener;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v1

    move-object v10, v5

    invoke-direct {v8, v9, v10}, Landroid/support/v7/app/AppCompatViewInflater$DeclaredOnClickListener;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    :cond_2
    move-object v6, v4

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 210
    goto :goto_0
.end method

.method private createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Landroid/view/InflateException;
        }
    .end annotation

    .prologue
    .line 214
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    sget-object v6, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorMap:Ljava/util/Map;

    move-object v7, v2

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Constructor;

    move-object v4, v6

    .line 217
    move-object v6, v4

    if-nez v6, :cond_0

    .line 219
    move-object v6, v1

    :try_start_0
    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object v7, v3

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-class v7, Landroid/view/View;

    .line 220
    invoke-virtual {v6, v7}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6

    move-object v5, v6

    .line 222
    move-object v6, v5

    sget-object v7, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorSignature:[Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    move-object v4, v6

    .line 223
    sget-object v6, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorMap:Ljava/util/Map;

    move-object v7, v2

    move-object v8, v4

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 225
    :cond_0
    move-object v6, v4

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 226
    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    .line 230
    :goto_1
    return-object v0

    .line 219
    :cond_1
    move-object v7, v2

    goto :goto_0

    .line 227
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 230
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method

.method private createViewFromTag(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 13

    .prologue
    .line 158
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object v8, v2

    const-string v9, "view"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 159
    move-object v8, v3

    const/4 v9, 0x0

    const-string v10, "class"

    invoke-interface {v8, v9, v10}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 163
    :cond_0
    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v9, 0x0

    move-object v10, v1

    aput-object v10, v8, v9

    .line 164
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v9, 0x1

    move-object v10, v3

    aput-object v10, v8, v9

    .line 166
    const/4 v8, -0x1

    move-object v9, v2

    const/16 v10, 0x2e

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ne v8, v9, :cond_3

    .line 167
    const/4 v8, 0x0

    move v4, v8

    :goto_0
    move v8, v4

    sget-object v9, Landroid/support/v7/app/AppCompatViewInflater;->sClassPrefixList:[Ljava/lang/String;

    array-length v9, v9

    if-ge v8, v9, :cond_2

    .line 168
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    sget-object v11, Landroid/support/v7/app/AppCompatViewInflater;->sClassPrefixList:[Ljava/lang/String;

    move v12, v4

    aget-object v11, v11, v12

    invoke-direct {v8, v9, v10, v11}, Landroid/support/v7/app/AppCompatViewInflater;->createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    move-object v5, v8

    .line 169
    move-object v8, v5

    if-eqz v8, :cond_1

    .line 170
    move-object v8, v5

    move-object v6, v8

    .line 183
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-object v10, v8, v9

    .line 184
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    move-object v8, v6

    move-object v0, v8

    :goto_1
    return-object v0

    .line 167
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 173
    :cond_2
    const/4 v8, 0x0

    move-object v4, v8

    .line 183
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-object v10, v8, v9

    .line 184
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    move-object v8, v4

    move-object v0, v8

    goto :goto_1

    .line 175
    :cond_3
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    const/4 v11, 0x0

    :try_start_1
    invoke-direct {v8, v9, v10, v11}, Landroid/support/v7/app/AppCompatViewInflater;->createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    move-object v4, v8

    .line 183
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-object v10, v8, v9

    .line 184
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    move-object v8, v4

    move-object v0, v8

    goto :goto_1

    .line 177
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 180
    const/4 v8, 0x0

    move-object v5, v8

    .line 183
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-object v10, v8, v9

    .line 184
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    move-object v8, v5

    move-object v0, v8

    goto :goto_1

    .line 183
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-object v10, v8, v9

    .line 184
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    move-object v8, v7

    throw v8
.end method

.method private static themifyContext(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Landroid/content/Context;
    .locals 12

    .prologue
    .line 239
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, v0

    move-object v7, v1

    sget-object v8, Landroid/support/v7/appcompat/R$styleable;->View:[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    move-object v4, v6

    .line 240
    const/4 v6, 0x0

    move v5, v6

    .line 241
    move v6, v2

    if-eqz v6, :cond_0

    .line 243
    move-object v6, v4

    sget v7, Landroid/support/v7/appcompat/R$styleable;->View_android_theme:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    move v5, v6

    .line 245
    :cond_0
    move v6, v3

    if-eqz v6, :cond_1

    move v6, v5

    if-nez v6, :cond_1

    .line 247
    move-object v6, v4

    sget v7, Landroid/support/v7/appcompat/R$styleable;->View_theme:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    move v5, v6

    .line 249
    move v6, v5

    if-eqz v6, :cond_1

    .line 250
    const-string v6, "AppCompatViewInflater"

    const-string v7, "app:theme is now deprecated. Please move to using android:theme instead."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 254
    :cond_1
    move-object v6, v4

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 256
    move v6, v5

    if-eqz v6, :cond_3

    move-object v6, v0

    instance-of v6, v6, Landroid/support/v7/view/ContextThemeWrapper;

    if-eqz v6, :cond_2

    move-object v6, v0

    check-cast v6, Landroid/support/v7/view/ContextThemeWrapper;

    .line 257
    invoke-virtual {v6}, Landroid/support/v7/view/ContextThemeWrapper;->getThemeResId()I

    move-result v6

    move v7, v5

    if-eq v6, v7, :cond_3

    .line 260
    :cond_2
    new-instance v6, Landroid/support/v7/view/ContextThemeWrapper;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move v9, v5

    invoke-direct {v7, v8, v9}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v0, v6

    .line 262
    :cond_3
    move-object v6, v0

    move-object v0, v6

    return-object v0
.end method


# virtual methods
.method public final createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;
    .locals 18
    .param p3    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 83
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object v13, v3

    move-object v9, v13

    .line 87
    move v13, v5

    if-eqz v13, :cond_0

    move-object v13, v1

    if-eqz v13, :cond_0

    .line 88
    move-object v13, v1

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    move-object v3, v13

    .line 90
    :cond_0
    move v13, v6

    if-nez v13, :cond_1

    move v13, v7

    if-eqz v13, :cond_2

    .line 92
    :cond_1
    move-object v13, v3

    move-object v14, v4

    move v15, v6

    move/from16 v16, v7

    invoke-static/range {v13 .. v16}, Landroid/support/v7/app/AppCompatViewInflater;->themifyContext(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Landroid/content/Context;

    move-result-object v13

    move-object v3, v13

    .line 94
    :cond_2
    move v13, v8

    if-eqz v13, :cond_3

    .line 95
    move-object v13, v3

    invoke-static {v13}, Landroid/support/v7/widget/TintContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v13

    move-object v3, v13

    .line 98
    :cond_3
    const/4 v13, 0x0

    move-object v10, v13

    .line 101
    move-object v13, v2

    move-object v11, v13

    const/4 v13, -0x1

    move v12, v13

    move-object v13, v11

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    :cond_4
    :goto_0
    move v13, v12

    packed-switch v13, :pswitch_data_0

    .line 143
    :goto_1
    move-object v13, v10

    if-nez v13, :cond_5

    move-object v13, v9

    move-object v14, v3

    if-eq v13, v14, :cond_5

    .line 146
    move-object v13, v0

    move-object v14, v3

    move-object v15, v2

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v16}, Landroid/support/v7/app/AppCompatViewInflater;->createViewFromTag(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v13

    move-object v10, v13

    .line 149
    :cond_5
    move-object v13, v10

    if-eqz v13, :cond_6

    .line 151
    move-object v13, v0

    move-object v14, v10

    move-object v15, v4

    invoke-direct {v13, v14, v15}, Landroid/support/v7/app/AppCompatViewInflater;->checkOnClickListener(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 154
    :cond_6
    move-object v13, v10

    move-object v0, v13

    return-object v0

    .line 101
    :sswitch_0
    move-object v13, v11

    const-string v14, "TextView"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x0

    move v12, v13

    goto :goto_0

    :sswitch_1
    move-object v13, v11

    const-string v14, "ImageView"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x1

    move v12, v13

    goto :goto_0

    :sswitch_2
    move-object v13, v11

    const-string v14, "Button"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x2

    move v12, v13

    goto :goto_0

    :sswitch_3
    move-object v13, v11

    const-string v14, "EditText"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x3

    move v12, v13

    goto :goto_0

    :sswitch_4
    move-object v13, v11

    const-string v14, "Spinner"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x4

    move v12, v13

    goto :goto_0

    :sswitch_5
    move-object v13, v11

    const-string v14, "ImageButton"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x5

    move v12, v13

    goto :goto_0

    :sswitch_6
    move-object v13, v11

    const-string v14, "CheckBox"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x6

    move v12, v13

    goto :goto_0

    :sswitch_7
    move-object v13, v11

    const-string v14, "RadioButton"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x7

    move v12, v13

    goto :goto_0

    :sswitch_8
    move-object v13, v11

    const-string v14, "CheckedTextView"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/16 v13, 0x8

    move v12, v13

    goto/16 :goto_0

    :sswitch_9
    move-object v13, v11

    const-string v14, "AutoCompleteTextView"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/16 v13, 0x9

    move v12, v13

    goto/16 :goto_0

    :sswitch_a
    move-object v13, v11

    const-string v14, "MultiAutoCompleteTextView"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/16 v13, 0xa

    move v12, v13

    goto/16 :goto_0

    :sswitch_b
    move-object v13, v11

    const-string v14, "RatingBar"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/16 v13, 0xb

    move v12, v13

    goto/16 :goto_0

    :sswitch_c
    move-object v13, v11

    const-string v14, "SeekBar"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/16 v13, 0xc

    move v12, v13

    goto/16 :goto_0

    .line 103
    :pswitch_0
    new-instance v13, Landroid/support/v7/widget/AppCompatTextView;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v3

    move-object/from16 v16, v4

    invoke-direct/range {v14 .. v16}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v10, v13

    .line 104
    goto/16 :goto_1

    .line 106
    :pswitch_1
    new-instance v13, Landroid/support/v7/widget/AppCompatImageView;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v3

    move-object/from16 v16, v4

    invoke-direct/range {v14 .. v16}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v10, v13

    .line 107
    goto/16 :goto_1

    .line 109
    :pswitch_2
    new-instance v13, Landroid/support/v7/widget/AppCompatButton;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v3

    move-object/from16 v16, v4

    invoke-direct/range {v14 .. v16}, Landroid/support/v7/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v10, v13

    .line 110
    goto/16 :goto_1

    .line 112
    :pswitch_3
    new-instance v13, Landroid/support/v7/widget/AppCompatEditText;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v3

    move-object/from16 v16, v4

    invoke-direct/range {v14 .. v16}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v10, v13

    .line 113
    goto/16 :goto_1

    .line 115
    :pswitch_4
    new-instance v13, Landroid/support/v7/widget/AppCompatSpinner;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v3

    move-object/from16 v16, v4

    invoke-direct/range {v14 .. v16}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v10, v13

    .line 116
    goto/16 :goto_1

    .line 118
    :pswitch_5
    new-instance v13, Landroid/support/v7/widget/AppCompatImageButton;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v3

    move-object/from16 v16, v4

    invoke-direct/range {v14 .. v16}, Landroid/support/v7/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v10, v13

    .line 119
    goto/16 :goto_1

    .line 121
    :pswitch_6
    new-instance v13, Landroid/support/v7/widget/AppCompatCheckBox;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v3

    move-object/from16 v16, v4

    invoke-direct/range {v14 .. v16}, Landroid/support/v7/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v10, v13

    .line 122
    goto/16 :goto_1

    .line 124
    :pswitch_7
    new-instance v13, Landroid/support/v7/widget/AppCompatRadioButton;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v3

    move-object/from16 v16, v4

    invoke-direct/range {v14 .. v16}, Landroid/support/v7/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v10, v13

    .line 125
    goto/16 :goto_1

    .line 127
    :pswitch_8
    new-instance v13, Landroid/support/v7/widget/AppCompatCheckedTextView;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v3

    move-object/from16 v16, v4

    invoke-direct/range {v14 .. v16}, Landroid/support/v7/widget/AppCompatCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v10, v13

    .line 128
    goto/16 :goto_1

    .line 130
    :pswitch_9
    new-instance v13, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v3

    move-object/from16 v16, v4

    invoke-direct/range {v14 .. v16}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v10, v13

    .line 131
    goto/16 :goto_1

    .line 133
    :pswitch_a
    new-instance v13, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v3

    move-object/from16 v16, v4

    invoke-direct/range {v14 .. v16}, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v10, v13

    .line 134
    goto/16 :goto_1

    .line 136
    :pswitch_b
    new-instance v13, Landroid/support/v7/widget/AppCompatRatingBar;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v3

    move-object/from16 v16, v4

    invoke-direct/range {v14 .. v16}, Landroid/support/v7/widget/AppCompatRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v10, v13

    .line 137
    goto/16 :goto_1

    .line 139
    :pswitch_c
    new-instance v13, Landroid/support/v7/widget/AppCompatSeekBar;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v3

    move-object/from16 v16, v4

    invoke-direct/range {v14 .. v16}, Landroid/support/v7/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v10, v13

    goto/16 :goto_1

    .line 101
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7404ceea -> :sswitch_b
        -0x56c015e7 -> :sswitch_8
        -0x503aa7ad -> :sswitch_a
        -0x37f7066e -> :sswitch_0
        -0x37e04bb3 -> :sswitch_5
        -0x274065a5 -> :sswitch_c
        -0x1440b607 -> :sswitch_4
        0x2e46a6ed -> :sswitch_7
        0x431b5280 -> :sswitch_1
        0x5445f9ba -> :sswitch_9
        0x5f7507c3 -> :sswitch_6
        0x63577677 -> :sswitch_3
        0x77471352 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
