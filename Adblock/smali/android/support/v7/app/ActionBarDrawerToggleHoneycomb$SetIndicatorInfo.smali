.class Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggleHoneycomb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SetIndicatorInfo"
.end annotation


# instance fields
.field public setHomeActionContentDescription:Ljava/lang/reflect/Method;

.field public setHomeAsUpIndicator:Ljava/lang/reflect/Method;

.field public upIndicatorView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 16

    .prologue
    .line 107
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 109
    move-object v8, v0

    :try_start_0
    const-class v9, Landroid/app/ActionBar;

    const-string v10, "setHomeAsUpIndicator"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    const-class v14, Landroid/graphics/drawable/Drawable;

    aput-object v14, v12, v13

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    iput-object v9, v8, Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;

    .line 111
    move-object v8, v0

    const-class v9, Landroid/app/ActionBar;

    const-string v10, "setHomeActionContentDescription"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    iput-object v9, v8, Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeActionContentDescription:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 120
    move-object v8, v1

    const v9, 0x102002c

    invoke-virtual {v8, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v2, v8

    .line 121
    move-object v8, v2

    if-nez v8, :cond_0

    .line 123
    goto :goto_0

    .line 126
    :cond_0
    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    move-object v3, v8

    .line 127
    move-object v8, v3

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    move v4, v8

    .line 128
    move v8, v4

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    .line 130
    goto :goto_0

    .line 133
    :cond_1
    move-object v8, v3

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v5, v8

    .line 134
    move-object v8, v3

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v6, v8

    .line 135
    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x102002c

    if-ne v8, v9, :cond_3

    move-object v8, v6

    :goto_1
    move-object v7, v8

    .line 137
    move-object v8, v7

    instance-of v8, v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_2

    .line 139
    move-object v8, v0

    move-object v9, v7

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v8, Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->upIndicatorView:Landroid/widget/ImageView;

    .line 141
    :cond_2
    goto :goto_0

    .line 135
    :cond_3
    move-object v8, v5

    goto :goto_1
.end method
