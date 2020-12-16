.class Landroid/support/graphics/drawable/TypedArrayUtils;
.super Ljava/lang/Object;
.source "TypedArrayUtils.java"


# static fields
.field private static final NAMESPACE:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNamedBoolean(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z
    .locals 9

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, v1

    move-object v7, v2

    invoke-static {v6, v7}, Landroid/support/graphics/drawable/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    move v5, v6

    .line 41
    move v6, v5

    if-nez v6, :cond_0

    .line 42
    move v6, v4

    move v0, v6

    .line 44
    :goto_0
    return v0

    :cond_0
    move-object v6, v0

    move v7, v3

    move v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    move v0, v6

    goto :goto_0
.end method

.method public static getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I
    .locals 9

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, v1

    move-object v7, v2

    invoke-static {v6, v7}, Landroid/support/graphics/drawable/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    move v5, v6

    .line 61
    move v6, v5

    if-nez v6, :cond_0

    .line 62
    move v6, v4

    move v0, v6

    .line 64
    :goto_0
    return v0

    :cond_0
    move-object v6, v0

    move v7, v3

    move v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    move v0, v6

    goto :goto_0
.end method

.method public static getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F
    .locals 9

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, v1

    move-object v7, v2

    invoke-static {v6, v7}, Landroid/support/graphics/drawable/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    move v5, v6

    .line 31
    move v6, v5

    if-nez v6, :cond_0

    .line 32
    move v6, v4

    move v0, v6

    .line 34
    :goto_0
    return v0

    :cond_0
    move-object v6, v0

    move v7, v3

    move v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    move v0, v6

    goto :goto_0
.end method

.method public static getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I
    .locals 9

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, v1

    move-object v7, v2

    invoke-static {v6, v7}, Landroid/support/graphics/drawable/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    move v5, v6

    .line 51
    move v6, v5

    if-nez v6, :cond_0

    .line 52
    move v6, v4

    move v0, v6

    .line 54
    :goto_0
    return v0

    :cond_0
    move-object v6, v0

    move v7, v3

    move v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    move v0, v6

    goto :goto_0
.end method

.method public static hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 25
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string v3, "http://schemas.android.com/apk/res/android"

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
