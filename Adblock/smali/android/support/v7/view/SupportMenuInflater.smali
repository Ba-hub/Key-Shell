.class public Landroid/support/v7/view/SupportMenuInflater;
.super Landroid/view/MenuInflater;
.source "SupportMenuInflater.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/view/SupportMenuInflater$MenuState;,
        Landroid/support/v7/view/SupportMenuInflater$InflatedOnMenuItemClickListener;
    }
.end annotation


# static fields
.field static final ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static final ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static final LOG_TAG:Ljava/lang/String; = "SupportMenuInflater"

.field static final NO_ID:I = 0x0

.field private static final XML_GROUP:Ljava/lang/String; = "group"

.field private static final XML_ITEM:Ljava/lang/String; = "item"

.field private static final XML_MENU:Ljava/lang/String; = "menu"


# instance fields
.field final mActionProviderConstructorArguments:[Ljava/lang/Object;

.field final mActionViewConstructorArguments:[Ljava/lang/Object;

.field mContext:Landroid/content/Context;

.field private mRealOwner:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    sput-object v0, Landroid/support/v7/view/SupportMenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 78
    sget-object v0, Landroid/support/v7/view/SupportMenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    sput-object v0, Landroid/support/v7/view/SupportMenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 94
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 95
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    .line 96
    move-object v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v1

    aput-object v6, v4, v5

    iput-object v3, v2, Landroid/support/v7/view/SupportMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    .line 97
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/SupportMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    iput-object v3, v2, Landroid/support/v7/view/SupportMenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    .line 98
    return-void
.end method

.method private findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 224
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 225
    move-object v2, v1

    move-object v0, v2

    .line 230
    :goto_0
    return-object v0

    .line 227
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_1

    .line 228
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/content/ContextWrapper;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/view/SupportMenuInflater;->findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 230
    :cond_1
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method

.method private parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    new-instance v11, Landroid/support/v7/view/SupportMenuInflater$MenuState;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v0

    move-object v14, v3

    invoke-direct {v12, v13, v14}, Landroid/support/v7/view/SupportMenuInflater$MenuState;-><init>(Landroid/support/v7/view/SupportMenuInflater;Landroid/view/Menu;)V

    move-object v4, v11

    .line 140
    move-object v11, v1

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v11

    move v5, v11

    .line 142
    const/4 v11, 0x0

    move v7, v11

    .line 143
    const/4 v11, 0x0

    move-object v8, v11

    .line 147
    :cond_0
    move v11, v5

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    .line 148
    move-object v11, v1

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    .line 149
    move-object v11, v6

    const-string v12, "menu"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 151
    move-object v11, v1

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    move v5, v11

    .line 160
    :goto_0
    const/4 v11, 0x0

    move v9, v11

    .line 161
    :goto_1
    move v11, v9

    if-nez v11, :cond_c

    .line 162
    move v11, v5

    packed-switch v11, :pswitch_data_0

    .line 212
    :cond_1
    :goto_2
    move-object v11, v1

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    move v5, v11

    goto :goto_1

    .line 155
    :cond_2
    new-instance v11, Ljava/lang/RuntimeException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    new-instance v13, Ljava/lang/StringBuilder;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Expecting menu, got "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v6

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 157
    :cond_3
    move-object v11, v1

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    move v5, v11

    .line 158
    move v11, v5

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    goto :goto_0

    .line 164
    :pswitch_0
    move v11, v7

    if-eqz v11, :cond_4

    .line 165
    goto :goto_2

    .line 168
    :cond_4
    move-object v11, v1

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    .line 169
    move-object v11, v6

    const-string v12, "group"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 170
    move-object v11, v4

    move-object v12, v2

    invoke-virtual {v11, v12}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->readGroup(Landroid/util/AttributeSet;)V

    goto :goto_2

    .line 171
    :cond_5
    move-object v11, v6

    const-string v12, "item"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 172
    move-object v11, v4

    move-object v12, v2

    invoke-virtual {v11, v12}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->readItem(Landroid/util/AttributeSet;)V

    goto :goto_2

    .line 173
    :cond_6
    move-object v11, v6

    const-string v12, "menu"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 175
    move-object v11, v4

    invoke-virtual {v11}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->addSubMenuItem()Landroid/view/SubMenu;

    move-result-object v11

    move-object v10, v11

    .line 178
    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    move-object v14, v10

    invoke-direct {v11, v12, v13, v14}, Landroid/support/v7/view/SupportMenuInflater;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V

    .line 179
    goto :goto_2

    .line 180
    :cond_7
    const/4 v11, 0x1

    move v7, v11

    .line 181
    move-object v11, v6

    move-object v8, v11

    .line 183
    goto :goto_2

    .line 186
    :pswitch_1
    move-object v11, v1

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    .line 187
    move v11, v7

    if-eqz v11, :cond_8

    move-object v11, v6

    move-object v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 188
    const/4 v11, 0x0

    move v7, v11

    .line 189
    const/4 v11, 0x0

    move-object v8, v11

    goto/16 :goto_2

    .line 190
    :cond_8
    move-object v11, v6

    const-string v12, "group"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 191
    move-object v11, v4

    invoke-virtual {v11}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->resetGroup()V

    goto/16 :goto_2

    .line 192
    :cond_9
    move-object v11, v6

    const-string v12, "item"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 195
    move-object v11, v4

    invoke-virtual {v11}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->hasAddedItem()Z

    move-result v11

    if-nez v11, :cond_1

    .line 196
    move-object v11, v4

    iget-object v11, v11, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v11, :cond_a

    move-object v11, v4

    iget-object v11, v11, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    .line 197
    invoke-virtual {v11}, Landroid/support/v4/view/ActionProvider;->hasSubMenu()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 198
    move-object v11, v4

    invoke-virtual {v11}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->addSubMenuItem()Landroid/view/SubMenu;

    move-result-object v11

    goto/16 :goto_2

    .line 200
    :cond_a
    move-object v11, v4

    invoke-virtual {v11}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->addItem()V

    goto/16 :goto_2

    .line 203
    :cond_b
    move-object v11, v6

    const-string v12, "menu"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 204
    const/4 v11, 0x1

    move v9, v11

    goto/16 :goto_2

    .line 209
    :pswitch_2
    new-instance v11, Ljava/lang/RuntimeException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const-string v13, "Unexpected end of document"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 214
    :cond_c
    return-void

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method getRealOwner()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 217
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/SupportMenuInflater;->mRealOwner:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 218
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/support/v7/view/SupportMenuInflater;->findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v7/view/SupportMenuInflater;->mRealOwner:Ljava/lang/Object;

    .line 220
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/SupportMenuInflater;->mRealOwner:Ljava/lang/Object;

    move-object v0, v1

    return-object v0
.end method

.method public inflate(ILandroid/view/Menu;)V
    .locals 11

    .prologue
    .line 112
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v6, v2

    instance-of v6, v6, Landroid/support/v4/internal/view/SupportMenu;

    if-nez v6, :cond_0

    .line 113
    move-object v6, v0

    move v7, v1

    move-object v8, v2

    invoke-super {v6, v7, v8}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 130
    :goto_0
    return-void

    .line 117
    :cond_0
    const/4 v6, 0x0

    move-object v3, v6

    .line 119
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Landroid/support/v7/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    move-object v3, v6

    .line 120
    move-object v6, v3

    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    move-object v4, v6

    .line 122
    move-object v6, v0

    move-object v7, v3

    move-object v8, v4

    move-object v9, v2

    invoke-direct {v6, v7, v8, v9}, Landroid/support/v7/view/SupportMenuInflater;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    move-object v6, v3

    if-eqz v6, :cond_1

    move-object v6, v3

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    .line 130
    :cond_1
    goto :goto_0

    .line 123
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 124
    :try_start_1
    new-instance v6, Landroid/view/InflateException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "Error inflating menu XML"

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    if-eqz v6, :cond_2

    move-object v6, v3

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    move-object v6, v5

    throw v6

    .line 125
    :catch_1
    move-exception v6

    move-object v4, v6

    .line 126
    :try_start_2
    new-instance v6, Landroid/view/InflateException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "Error inflating menu XML"

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
