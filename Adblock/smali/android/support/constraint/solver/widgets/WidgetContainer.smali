.class public Landroid/support/constraint/solver/widgets/WidgetContainer;
.super Landroid/support/constraint/solver/widgets/ConstraintWidget;
.source "WidgetContainer.java"


# instance fields
.field protected mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    .line 26
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 36
    return-void
.end method

.method public constructor <init>(II)V
    .locals 7

    .prologue
    .line 57
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>(II)V

    .line 26
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 58
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 11

    .prologue
    .line 47
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>(IIII)V

    .line 26
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 48
    return-void
.end method

.method public static getBounds(Ljava/util/ArrayList;)Landroid/support/constraint/solver/widgets/Rectangle;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;)",
            "Landroid/support/constraint/solver/widgets/Rectangle;"
        }
    .end annotation

    .prologue
    .line 193
    move-object/from16 v0, p0

    new-instance v9, Landroid/support/constraint/solver/widgets/Rectangle;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Landroid/support/constraint/solver/widgets/Rectangle;-><init>()V

    move-object v1, v9

    .line 194
    move-object v9, v0

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_0

    .line 195
    move-object v9, v1

    move-object v0, v9

    .line 217
    :goto_0
    return-object v0

    .line 197
    :cond_0
    const v9, 0x7fffffff

    move v2, v9

    .line 198
    const/4 v9, 0x0

    move v3, v9

    .line 199
    const v9, 0x7fffffff

    move v4, v9

    .line 200
    const/4 v9, 0x0

    move v5, v9

    .line 201
    const/4 v9, 0x0

    move v6, v9

    move-object v9, v0

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v7, v9

    :goto_1
    move v9, v6

    move v10, v7

    if-ge v9, v10, :cond_5

    .line 202
    move-object v9, v0

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object v8, v9

    .line 203
    move-object v9, v8

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getX()I

    move-result v9

    move v10, v2

    if-ge v9, v10, :cond_1

    .line 204
    move-object v9, v8

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getX()I

    move-result v9

    move v2, v9

    .line 206
    :cond_1
    move-object v9, v8

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getY()I

    move-result v9

    move v10, v4

    if-ge v9, v10, :cond_2

    .line 207
    move-object v9, v8

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getY()I

    move-result v9

    move v4, v9

    .line 209
    :cond_2
    move-object v9, v8

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getRight()I

    move-result v9

    move v10, v3

    if-le v9, v10, :cond_3

    .line 210
    move-object v9, v8

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getRight()I

    move-result v9

    move v3, v9

    .line 212
    :cond_3
    move-object v9, v8

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v9

    move v10, v5

    if-le v9, v10, :cond_4

    .line 213
    move-object v9, v8

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v9

    move v5, v9

    .line 201
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 216
    :cond_5
    move-object v9, v1

    move v10, v2

    move v11, v4

    move v12, v3

    move v13, v2

    sub-int/2addr v12, v13

    move v13, v5

    move v14, v4

    sub-int/2addr v13, v14

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/support/constraint/solver/widgets/Rectangle;->setBounds(IIII)V

    .line 217
    move-object v9, v1

    move-object v0, v9

    goto :goto_0
.end method


# virtual methods
.method public add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 5

    .prologue
    .line 72
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 73
    move-object v3, v1

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 74
    move-object v3, v1

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/WidgetContainer;

    move-object v2, v3

    .line 75
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/widgets/WidgetContainer;->remove(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 77
    :cond_0
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setParent(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 78
    return-void
.end method

.method public findWidget(FF)Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 15

    .prologue
    .line 133
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v12, 0x0

    move-object v3, v12

    .line 134
    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/WidgetContainer;->getDrawX()I

    move-result v12

    move v4, v12

    .line 135
    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/WidgetContainer;->getDrawY()I

    move-result v12

    move v5, v12

    .line 136
    move v12, v4

    move-object v13, v0

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/WidgetContainer;->getWidth()I

    move-result v13

    add-int/2addr v12, v13

    move v6, v12

    .line 137
    move v12, v5

    move-object v13, v0

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/WidgetContainer;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    move v7, v12

    .line 138
    move v12, v1

    move v13, v4

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_0

    move v12, v1

    move v13, v6

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_0

    move v12, v2

    move v13, v5

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_0

    move v12, v2

    move v13, v7

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_0

    .line 139
    move-object v12, v0

    move-object v3, v12

    .line 141
    :cond_0
    const/4 v12, 0x0

    move v8, v12

    move-object v12, v0

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v9, v12

    :goto_0
    move v12, v8

    move v13, v9

    if-ge v12, v13, :cond_3

    .line 142
    move-object v12, v0

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    move v13, v8

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object v10, v12

    .line 143
    move-object v12, v10

    instance-of v12, v12, Landroid/support/constraint/solver/widgets/WidgetContainer;

    if-eqz v12, :cond_2

    .line 144
    move-object v12, v10

    check-cast v12, Landroid/support/constraint/solver/widgets/WidgetContainer;

    move v13, v1

    move v14, v2

    invoke-virtual {v12, v13, v14}, Landroid/support/constraint/solver/widgets/WidgetContainer;->findWidget(FF)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v12

    move-object v11, v12

    .line 145
    move-object v12, v11

    if-eqz v12, :cond_1

    .line 146
    move-object v12, v11

    move-object v3, v12

    .line 141
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 149
    :cond_2
    move-object v12, v10

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawX()I

    move-result v12

    move v4, v12

    .line 150
    move-object v12, v10

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawY()I

    move-result v12

    move v5, v12

    .line 151
    move v12, v4

    move-object v13, v10

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v13

    add-int/2addr v12, v13

    move v6, v12

    .line 152
    move v12, v5

    move-object v13, v10

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    move v7, v12

    .line 153
    move v12, v1

    move v13, v4

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_1

    move v12, v1

    move v13, v6

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_1

    move v12, v2

    move v13, v5

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_1

    move v12, v2

    move v13, v7

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_1

    .line 154
    move-object v12, v10

    move-object v3, v12

    goto :goto_1

    .line 158
    :cond_3
    move-object v12, v3

    move-object v0, v12

    return-object v0
.end method

.method public findWidgets(IIII)Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    new-instance v11, Ljava/util/ArrayList;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v11

    .line 172
    new-instance v11, Landroid/support/constraint/solver/widgets/Rectangle;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Landroid/support/constraint/solver/widgets/Rectangle;-><init>()V

    move-object v6, v11

    .line 173
    move-object v11, v6

    move v12, v1

    move v13, v2

    move v14, v3

    move v15, v4

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/support/constraint/solver/widgets/Rectangle;->setBounds(IIII)V

    .line 174
    const/4 v11, 0x0

    move v7, v11

    move-object v11, v0

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v8, v11

    :goto_0
    move v11, v7

    move v12, v8

    if-ge v11, v12, :cond_1

    .line 175
    move-object v11, v0

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object v9, v11

    .line 176
    new-instance v11, Landroid/support/constraint/solver/widgets/Rectangle;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Landroid/support/constraint/solver/widgets/Rectangle;-><init>()V

    move-object v10, v11

    .line 177
    move-object v11, v10

    move-object v12, v9

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawX()I

    move-result v12

    move-object v13, v9

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawY()I

    move-result v13

    move-object v14, v9

    .line 178
    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v14

    move-object v15, v9

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v15

    .line 177
    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/support/constraint/solver/widgets/Rectangle;->setBounds(IIII)V

    .line 179
    move-object v11, v6

    move-object v12, v10

    invoke-virtual {v11, v12}, Landroid/support/constraint/solver/widgets/Rectangle;->intersects(Landroid/support/constraint/solver/widgets/Rectangle;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 180
    move-object v11, v5

    move-object v12, v9

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 174
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 183
    :cond_1
    move-object v11, v5

    move-object v0, v11

    return-object v0
.end method

.method public getChildren()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method

.method public getRootConstraintContainer()Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .locals 5

    .prologue
    .line 105
    move-object v0, p0

    move-object v4, v0

    move-object v1, v4

    .line 106
    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    move-object v2, v4

    .line 107
    const/4 v4, 0x0

    move-object v3, v4

    .line 108
    move-object v4, v1

    instance-of v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v4, :cond_0

    .line 109
    move-object v4, v0

    check-cast v4, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object v3, v4

    .line 111
    :cond_0
    :goto_0
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 112
    move-object v4, v2

    move-object v1, v4

    .line 113
    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    move-object v2, v4

    .line 114
    move-object v4, v1

    instance-of v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v4, :cond_0

    .line 115
    move-object v4, v1

    check-cast v4, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object v3, v4

    goto :goto_0

    .line 118
    :cond_1
    move-object v4, v3

    move-object v0, v4

    return-object v0
.end method

.method public layout()V
    .locals 6

    .prologue
    .line 265
    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/WidgetContainer;->updateDrawPosition()V

    .line 266
    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 276
    :goto_0
    return-void

    .line 269
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v4

    .line 270
    const/4 v4, 0x0

    move v2, v4

    :goto_1
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_2

    .line 271
    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object v3, v4

    .line 272
    move-object v4, v3

    instance-of v4, v4, Landroid/support/constraint/solver/widgets/WidgetContainer;

    if-eqz v4, :cond_1

    .line 273
    move-object v4, v3

    check-cast v4, Landroid/support/constraint/solver/widgets/WidgetContainer;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/WidgetContainer;->layout()V

    .line 270
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 276
    :cond_2
    goto :goto_0
.end method

.method public remove(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 4

    .prologue
    .line 86
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 87
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setParent(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 88
    return-void
.end method

.method public removeAllChildren()V
    .locals 2

    .prologue
    .line 299
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 300
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 63
    move-object v1, v0

    invoke-super {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->reset()V

    .line 64
    return-void
.end method

.method public resetGroups()V
    .locals 6

    .prologue
    .line 290
    move-object v0, p0

    move-object v4, v0

    invoke-super {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resetGroups()V

    .line 291
    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v4

    .line 292
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_0

    .line 293
    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object v3, v4

    .line 294
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resetGroups()V

    .line 292
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 296
    :cond_0
    return-void
.end method

.method public resetSolverVariables(Landroid/support/constraint/solver/Cache;)V
    .locals 7

    .prologue
    .line 280
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resetSolverVariables(Landroid/support/constraint/solver/Cache;)V

    .line 281
    move-object v5, v0

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v5

    .line 282
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 283
    move-object v5, v0

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object v4, v5

    .line 284
    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->resetSolverVariables(Landroid/support/constraint/solver/Cache;)V

    .line 282
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 286
    :cond_0
    return-void
.end method

.method public setOffset(II)V
    .locals 9

    .prologue
    .line 233
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-super {v6, v7, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setOffset(II)V

    .line 234
    move-object v6, v0

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 235
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    .line 236
    move-object v6, v0

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object v5, v6

    .line 237
    move-object v6, v5

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/WidgetContainer;->getRootX()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/constraint/solver/widgets/WidgetContainer;->getRootY()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setOffset(II)V

    .line 235
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 239
    :cond_0
    return-void
.end method

.method public updateDrawPosition()V
    .locals 7

    .prologue
    .line 247
    move-object v0, p0

    move-object v4, v0

    invoke-super {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->updateDrawPosition()V

    .line 248
    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 259
    :goto_0
    return-void

    .line 251
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v4

    .line 252
    const/4 v4, 0x0

    move v2, v4

    :goto_1
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_2

    .line 253
    move-object v4, v0

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-object v3, v4

    .line 254
    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/WidgetContainer;->getDrawX()I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/WidgetContainer;->getDrawY()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setOffset(II)V

    .line 255
    move-object v4, v3

    instance-of v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-nez v4, :cond_1

    .line 256
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->updateDrawPosition()V

    .line 252
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 259
    :cond_2
    goto :goto_0
.end method
