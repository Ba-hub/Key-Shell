.class Landroid/support/v4/app/FragmentTransition;
.super Ljava/lang/Object;
.source "FragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    }
.end annotation


# static fields
.field private static final INVERSE_OPS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v4/app/FragmentTransition;->INVERSE_OPS:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
    .end array-data
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1121
    return-void
.end method

.method static synthetic access$000(Ljava/util/ArrayList;I)V
    .locals 4

    .prologue
    .line 37
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 8

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-static {v4, v5, v6, v7}, Landroid/support/v4/app/FragmentTransition;->configureEnteringExitingViews(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;Z)V
    .locals 10

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move-object v8, v3

    move v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Landroid/support/v4/app/FragmentTransition;->callSharedElementStartEnd(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/support/v4/util/ArrayMap;Ljava/lang/Object;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;)Landroid/support/v4/util/ArrayMap;
    .locals 6

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/support/v4/app/FragmentTransition;->captureInSharedElements(Landroid/support/v4/util/ArrayMap;Ljava/lang/Object;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;)Landroid/support/v4/util/ArrayMap;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 8

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-static {v4, v5, v6, v7}, Landroid/support/v4/app/FragmentTransition;->getInEpicenterView(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method private static addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 552
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v1

    invoke-virtual {v5}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    :goto_0
    move v5, v3

    if-ltz v5, :cond_1

    .line 553
    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    move-object v4, v5

    .line 554
    move-object v5, v2

    move-object v6, v4

    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 555
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 552
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 558
    :cond_1
    return-void
.end method

.method private static addToFirstInLastOut(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord;",
            "Landroid/support/v4/app/BackStackRecord$Op;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 1016
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v14, v1

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    move-object v5, v14

    .line 1017
    move-object v14, v5

    iget v14, v14, Landroid/support/v4/app/Fragment;->mContainerId:I

    move v6, v14

    .line 1018
    move v14, v6

    if-nez v14, :cond_0

    .line 1100
    :goto_0
    return-void

    .line 1021
    :cond_0
    move v14, v3

    if-eqz v14, :cond_7

    sget-object v14, Landroid/support/v4/app/FragmentTransition;->INVERSE_OPS:[I

    move-object v15, v1

    iget v15, v15, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    aget v14, v14, v15

    :goto_1
    move v7, v14

    .line 1022
    const/4 v14, 0x0

    move v8, v14

    .line 1023
    const/4 v14, 0x0

    move v9, v14

    .line 1024
    const/4 v14, 0x0

    move v10, v14

    .line 1025
    const/4 v14, 0x0

    move v11, v14

    .line 1026
    move v14, v7

    packed-switch v14, :pswitch_data_0

    .line 1064
    :goto_2
    :pswitch_0
    move-object v14, v2

    move v15, v6

    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;

    move-object v12, v14

    .line 1065
    move v14, v8

    if-eqz v14, :cond_1

    .line 1066
    move-object v14, v12

    move-object v15, v2

    move/from16 v16, v6

    .line 1067
    invoke-static/range {v14 .. v16}, Landroid/support/v4/app/FragmentTransition;->ensureContainer(Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;

    move-result-object v14

    move-object v12, v14

    .line 1068
    move-object v14, v12

    move-object v15, v5

    iput-object v15, v14, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/support/v4/app/Fragment;

    .line 1069
    move-object v14, v12

    move v15, v3

    iput-boolean v15, v14, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    .line 1070
    move-object v14, v12

    move-object v15, v0

    iput-object v15, v14, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroid/support/v4/app/BackStackRecord;

    .line 1072
    :cond_1
    move v14, v4

    if-nez v14, :cond_3

    move v14, v11

    if-eqz v14, :cond_3

    .line 1073
    move-object v14, v12

    if-eqz v14, :cond_2

    move-object v14, v12

    iget-object v14, v14, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;

    move-object v15, v5

    if-ne v14, v15, :cond_2

    .line 1074
    move-object v14, v12

    const/4 v15, 0x0

    iput-object v15, v14, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;

    .line 1081
    :cond_2
    move-object v14, v0

    iget-object v14, v14, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v13, v14

    .line 1082
    move-object v14, v5

    iget v14, v14, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v15, 0x1

    if-ge v14, v15, :cond_3

    move-object v14, v13

    iget v14, v14, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v15, 0x1

    if-lt v14, v15, :cond_3

    move-object v14, v0

    iget-boolean v14, v14, Landroid/support/v4/app/BackStackRecord;->mAllowOptimization:Z

    if-nez v14, :cond_3

    .line 1084
    move-object v14, v13

    move-object v15, v5

    invoke-virtual {v14, v15}, Landroid/support/v4/app/FragmentManagerImpl;->makeActive(Landroid/support/v4/app/Fragment;)V

    .line 1085
    move-object v14, v13

    move-object v15, v5

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v14 .. v19}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1088
    :cond_3
    move v14, v10

    if-eqz v14, :cond_5

    move-object v14, v12

    if-eqz v14, :cond_4

    move-object v14, v12

    iget-object v14, v14, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;

    if-nez v14, :cond_5

    .line 1089
    :cond_4
    move-object v14, v12

    move-object v15, v2

    move/from16 v16, v6

    .line 1090
    invoke-static/range {v14 .. v16}, Landroid/support/v4/app/FragmentTransition;->ensureContainer(Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;

    move-result-object v14

    move-object v12, v14

    .line 1091
    move-object v14, v12

    move-object v15, v5

    iput-object v15, v14, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;

    .line 1092
    move-object v14, v12

    move v15, v3

    iput-boolean v15, v14, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    .line 1093
    move-object v14, v12

    move-object v15, v0

    iput-object v15, v14, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroid/support/v4/app/BackStackRecord;

    .line 1096
    :cond_5
    move v14, v4

    if-nez v14, :cond_6

    move v14, v9

    if-eqz v14, :cond_6

    move-object v14, v12

    if-eqz v14, :cond_6

    move-object v14, v12

    iget-object v14, v14, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/support/v4/app/Fragment;

    move-object v15, v5

    if-ne v14, v15, :cond_6

    .line 1098
    move-object v14, v12

    const/4 v15, 0x0

    iput-object v15, v14, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/support/v4/app/Fragment;

    .line 1100
    :cond_6
    goto/16 :goto_0

    .line 1021
    :cond_7
    move-object v14, v1

    iget v14, v14, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    goto/16 :goto_1

    .line 1028
    :pswitch_1
    move v14, v4

    if-eqz v14, :cond_9

    .line 1029
    move-object v14, v5

    iget-boolean v14, v14, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    if-eqz v14, :cond_8

    move-object v14, v5

    iget-boolean v14, v14, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v14, :cond_8

    move-object v14, v5

    iget-boolean v14, v14, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v14, :cond_8

    const/4 v14, 0x1

    :goto_3
    move v8, v14

    .line 1033
    :goto_4
    const/4 v14, 0x1

    move v11, v14

    .line 1034
    goto/16 :goto_2

    .line 1029
    :cond_8
    const/4 v14, 0x0

    goto :goto_3

    .line 1031
    :cond_9
    move-object v14, v5

    iget-boolean v14, v14, Landroid/support/v4/app/Fragment;->mHidden:Z

    move v8, v14

    goto :goto_4

    .line 1037
    :pswitch_2
    move v14, v4

    if-eqz v14, :cond_a

    .line 1038
    move-object v14, v5

    iget-boolean v14, v14, Landroid/support/v4/app/Fragment;->mIsNewlyAdded:Z

    move v8, v14

    .line 1042
    :goto_5
    const/4 v14, 0x1

    move v11, v14

    .line 1043
    goto/16 :goto_2

    .line 1040
    :cond_a
    move-object v14, v5

    iget-boolean v14, v14, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-nez v14, :cond_b

    move-object v14, v5

    iget-boolean v14, v14, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v14, :cond_b

    const/4 v14, 0x1

    :goto_6
    move v8, v14

    goto :goto_5

    :cond_b
    const/4 v14, 0x0

    goto :goto_6

    .line 1045
    :pswitch_3
    move v14, v4

    if-eqz v14, :cond_d

    .line 1046
    move-object v14, v5

    iget-boolean v14, v14, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    if-eqz v14, :cond_c

    move-object v14, v5

    iget-boolean v14, v14, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v14, :cond_c

    move-object v14, v5

    iget-boolean v14, v14, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v14, :cond_c

    const/4 v14, 0x1

    :goto_7
    move v10, v14

    .line 1050
    :goto_8
    const/4 v14, 0x1

    move v9, v14

    .line 1051
    goto/16 :goto_2

    .line 1046
    :cond_c
    const/4 v14, 0x0

    goto :goto_7

    .line 1048
    :cond_d
    move-object v14, v5

    iget-boolean v14, v14, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v14, :cond_e

    move-object v14, v5

    iget-boolean v14, v14, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v14, :cond_e

    const/4 v14, 0x1

    :goto_9
    move v10, v14

    goto :goto_8

    :cond_e
    const/4 v14, 0x0

    goto :goto_9

    .line 1054
    :pswitch_4
    move v14, v4

    if-eqz v14, :cond_10

    .line 1055
    move-object v14, v5

    iget-boolean v14, v14, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-nez v14, :cond_f

    move-object v14, v5

    iget-object v14, v14, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v14, :cond_f

    move-object v14, v5

    iget-object v14, v14, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1056
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-nez v14, :cond_f

    move-object v14, v5

    iget v14, v14, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_f

    const/4 v14, 0x1

    :goto_a
    move v10, v14

    .line 1061
    :goto_b
    const/4 v14, 0x1

    move v9, v14

    goto/16 :goto_2

    .line 1056
    :cond_f
    const/4 v14, 0x0

    goto :goto_a

    .line 1059
    :cond_10
    move-object v14, v5

    iget-boolean v14, v14, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v14, :cond_11

    move-object v14, v5

    iget-boolean v14, v14, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v14, :cond_11

    const/4 v14, 0x1

    :goto_c
    move v10, v14

    goto :goto_b

    :cond_11
    const/4 v14, 0x0

    goto :goto_c

    .line 1026
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public static calculateFragments(Landroid/support/v4/app/BackStackRecord;Landroid/util/SparseArray;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 973
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 974
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    .line 975
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/BackStackRecord$Op;

    move-object v5, v6

    .line 976
    move-object v6, v0

    move-object v7, v5

    move-object v8, v1

    const/4 v9, 0x0

    move v10, v2

    invoke-static {v6, v7, v8, v9, v10}, Landroid/support/v4/app/FragmentTransition;->addToFirstInLastOut(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V

    .line 974
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 978
    :cond_0
    return-void
.end method

.method private static calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/support/v4/util/ArrayMap;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II)",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    move/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    new-instance v18, Landroid/support/v4/util/ArrayMap;

    move-object/from16 v21, v18

    move-object/from16 v18, v21

    move-object/from16 v19, v21

    invoke-direct/range {v19 .. v19}, Landroid/support/v4/util/ArrayMap;-><init>()V

    move-object/from16 v7, v18

    .line 139
    move/from16 v18, v6

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    move/from16 v8, v18

    :goto_0
    move/from16 v18, v8

    move/from16 v19, v5

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_4

    .line 140
    move-object/from16 v18, v3

    move/from16 v19, v8

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/support/v4/app/BackStackRecord;

    move-object/from16 v9, v18

    .line 141
    move-object/from16 v18, v9

    move/from16 v19, v2

    invoke-virtual/range {v18 .. v19}, Landroid/support/v4/app/BackStackRecord;->interactsWith(I)Z

    move-result v18

    if-nez v18, :cond_1

    .line 139
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 144
    :cond_1
    move-object/from16 v18, v4

    move/from16 v19, v8

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    move/from16 v10, v18

    .line 145
    move-object/from16 v18, v9

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 146
    move-object/from16 v18, v9

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v11, v18

    .line 149
    move/from16 v18, v10

    if-eqz v18, :cond_2

    .line 150
    move-object/from16 v18, v9

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v13, v18

    .line 151
    move-object/from16 v18, v9

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v12, v18

    .line 156
    :goto_1
    const/16 v18, 0x0

    move/from16 v14, v18

    :goto_2
    move/from16 v18, v14

    move/from16 v19, v11

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 157
    move-object/from16 v18, v12

    move/from16 v19, v14

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v15, v18

    .line 158
    move-object/from16 v18, v13

    move/from16 v19, v14

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v16, v18

    .line 159
    move-object/from16 v18, v7

    move-object/from16 v19, v16

    invoke-virtual/range {v18 .. v19}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v17, v18

    .line 160
    move-object/from16 v18, v17

    if-eqz v18, :cond_3

    .line 161
    move-object/from16 v18, v7

    move-object/from16 v19, v15

    move-object/from16 v20, v17

    invoke-virtual/range {v18 .. v20}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 156
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 153
    :cond_2
    move-object/from16 v18, v9

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v12, v18

    .line 154
    move-object/from16 v18, v9

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v13, v18

    goto :goto_1

    .line 163
    :cond_3
    move-object/from16 v18, v7

    move-object/from16 v19, v15

    move-object/from16 v20, v16

    invoke-virtual/range {v18 .. v20}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    goto :goto_3

    .line 168
    :cond_4
    move-object/from16 v18, v7

    move-object/from16 v2, v18

    return-object v2
.end method

.method public static calculatePopFragments(Landroid/support/v4/app/BackStackRecord;Landroid/util/SparseArray;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/BackStackRecord;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 990
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v6, v6, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentContainer;->onHasView()Z

    move-result v6

    if-nez v6, :cond_0

    .line 998
    :goto_0
    return-void

    .line 993
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 994
    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v4, v6

    :goto_1
    move v6, v4

    if-ltz v6, :cond_1

    .line 995
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/BackStackRecord$Op;

    move-object v5, v6

    .line 996
    move-object v6, v0

    move-object v7, v5

    move-object v8, v1

    const/4 v9, 0x1

    move v10, v2

    invoke-static {v6, v7, v8, v9, v10}, Landroid/support/v4/app/FragmentTransition;->addToFirstInLastOut(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V

    .line 994
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 998
    :cond_1
    goto :goto_0
.end method

.method private static callSharedElementStartEnd(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;Z)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Landroid/support/v4/app/Fragment;",
            "Z",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 879
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move v10, v2

    if-eqz v10, :cond_0

    move-object v10, v1

    .line 880
    invoke-virtual {v10}, Landroid/support/v4/app/Fragment;->getEnterTransitionCallback()Landroid/support/v4/app/SharedElementCallback;

    move-result-object v10

    .line 881
    :goto_0
    move-object v5, v10

    .line 882
    move-object v10, v5

    if-eqz v10, :cond_3

    .line 883
    new-instance v10, Ljava/util/ArrayList;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v10

    .line 884
    new-instance v10, Ljava/util/ArrayList;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v10

    .line 885
    move-object v10, v3

    if-nez v10, :cond_1

    const/4 v10, 0x0

    :goto_1
    move v8, v10

    .line 886
    const/4 v10, 0x0

    move v9, v10

    :goto_2
    move v10, v9

    move v11, v8

    if-ge v10, v11, :cond_2

    .line 887
    move-object v10, v7

    move-object v11, v3

    move v12, v9

    invoke-virtual {v11, v12}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 888
    move-object v10, v6

    move-object v11, v3

    move v12, v9

    invoke-virtual {v11, v12}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 886
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 880
    :cond_0
    move-object v10, v0

    .line 881
    invoke-virtual {v10}, Landroid/support/v4/app/Fragment;->getEnterTransitionCallback()Landroid/support/v4/app/SharedElementCallback;

    move-result-object v10

    goto :goto_0

    .line 885
    :cond_1
    move-object v10, v3

    invoke-virtual {v10}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v10

    goto :goto_1

    .line 890
    :cond_2
    move v10, v4

    if-eqz v10, :cond_4

    .line 891
    move-object v10, v5

    move-object v11, v7

    move-object v12, v6

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/support/v4/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 896
    :cond_3
    :goto_3
    return-void

    .line 893
    :cond_4
    move-object v10, v5

    move-object v11, v7

    move-object v12, v6

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/support/v4/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_3
.end method

.method private static captureInSharedElements(Landroid/support/v4/util/ArrayMap;Ljava/lang/Object;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;)Landroid/support/v4/util/ArrayMap;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            ")",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 742
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v13, v2

    iget-object v13, v13, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/support/v4/app/Fragment;

    move-object v3, v13

    .line 743
    move-object v13, v3

    invoke-virtual {v13}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v13

    move-object v4, v13

    .line 744
    move-object v13, v0

    invoke-virtual {v13}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    move-object v13, v1

    if-eqz v13, :cond_0

    move-object v13, v4

    if-nez v13, :cond_1

    .line 745
    :cond_0
    move-object v13, v0

    invoke-virtual {v13}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 746
    const/4 v13, 0x0

    move-object v0, v13

    .line 785
    :goto_0
    return-object v0

    .line 748
    :cond_1
    new-instance v13, Landroid/support/v4/util/ArrayMap;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Landroid/support/v4/util/ArrayMap;-><init>()V

    move-object v5, v13

    .line 749
    move-object v13, v5

    move-object v14, v4

    invoke-static {v13, v14}, Landroid/support/v4/app/FragmentTransitionCompat21;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 753
    move-object v13, v2

    iget-object v13, v13, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroid/support/v4/app/BackStackRecord;

    move-object v8, v13

    .line 754
    move-object v13, v2

    iget-boolean v13, v13, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    if-eqz v13, :cond_4

    .line 755
    move-object v13, v3

    invoke-virtual {v13}, Landroid/support/v4/app/Fragment;->getExitTransitionCallback()Landroid/support/v4/app/SharedElementCallback;

    move-result-object v13

    move-object v6, v13

    .line 756
    move-object v13, v8

    iget-object v13, v13, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    move-object v7, v13

    .line 762
    :goto_1
    move-object v13, v7

    if-eqz v13, :cond_2

    .line 763
    move-object v13, v5

    move-object v14, v7

    invoke-virtual {v13, v14}, Landroid/support/v4/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    move-result v13

    .line 765
    :cond_2
    move-object v13, v6

    if-eqz v13, :cond_7

    .line 766
    move-object v13, v6

    move-object v14, v7

    move-object v15, v5

    invoke-virtual {v13, v14, v15}, Landroid/support/v4/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 767
    move-object v13, v7

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    move v9, v13

    :goto_2
    move v13, v9

    if-ltz v13, :cond_6

    .line 768
    move-object v13, v7

    move v14, v9

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object v10, v13

    .line 769
    move-object v13, v5

    move-object v14, v10

    invoke-virtual {v13, v14}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    move-object v11, v13

    .line 770
    move-object v13, v11

    if-nez v13, :cond_5

    .line 771
    move-object v13, v0

    move-object v14, v10

    invoke-static {v13, v14}, Landroid/support/v4/app/FragmentTransition;->findKeyForValue(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v12, v13

    .line 772
    move-object v13, v12

    if-eqz v13, :cond_3

    .line 773
    move-object v13, v0

    move-object v14, v12

    invoke-virtual {v13, v14}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 767
    :cond_3
    :goto_3
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 758
    :cond_4
    move-object v13, v3

    invoke-virtual {v13}, Landroid/support/v4/app/Fragment;->getEnterTransitionCallback()Landroid/support/v4/app/SharedElementCallback;

    move-result-object v13

    move-object v6, v13

    .line 759
    move-object v13, v8

    iget-object v13, v13, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    move-object v7, v13

    goto :goto_1

    .line 775
    :cond_5
    move-object v13, v10

    move-object v14, v11

    invoke-static {v14}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 776
    move-object v13, v0

    move-object v14, v10

    invoke-static {v13, v14}, Landroid/support/v4/app/FragmentTransition;->findKeyForValue(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v12, v13

    .line 777
    move-object v13, v12

    if-eqz v13, :cond_3

    .line 778
    move-object v13, v0

    move-object v14, v12

    move-object v15, v11

    invoke-static {v15}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    goto :goto_3

    .line 785
    :cond_6
    :goto_4
    move-object v13, v5

    move-object v0, v13

    goto/16 :goto_0

    .line 783
    :cond_7
    move-object v13, v0

    move-object v14, v5

    invoke-static {v13, v14}, Landroid/support/v4/app/FragmentTransition;->retainValues(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V

    goto :goto_4
.end method

.method private static captureOutSharedElements(Landroid/support/v4/util/ArrayMap;Ljava/lang/Object;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;)Landroid/support/v4/util/ArrayMap;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            ")",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 687
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    move-object v12, v1

    if-nez v12, :cond_1

    .line 688
    :cond_0
    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 689
    const/4 v12, 0x0

    move-object v0, v12

    .line 722
    :goto_0
    return-object v0

    .line 691
    :cond_1
    move-object v12, v2

    iget-object v12, v12, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;

    move-object v3, v12

    .line 692
    new-instance v12, Landroid/support/v4/util/ArrayMap;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Landroid/support/v4/util/ArrayMap;-><init>()V

    move-object v4, v12

    .line 693
    move-object v12, v4

    move-object v13, v3

    invoke-virtual {v13}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/support/v4/app/FragmentTransitionCompat21;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 697
    move-object v12, v2

    iget-object v12, v12, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroid/support/v4/app/BackStackRecord;

    move-object v7, v12

    .line 698
    move-object v12, v2

    iget-boolean v12, v12, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    if-eqz v12, :cond_3

    .line 699
    move-object v12, v3

    invoke-virtual {v12}, Landroid/support/v4/app/Fragment;->getEnterTransitionCallback()Landroid/support/v4/app/SharedElementCallback;

    move-result-object v12

    move-object v5, v12

    .line 700
    move-object v12, v7

    iget-object v12, v12, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    move-object v6, v12

    .line 706
    :goto_1
    move-object v12, v4

    move-object v13, v6

    invoke-virtual {v12, v13}, Landroid/support/v4/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    move-result v12

    .line 707
    move-object v12, v5

    if-eqz v12, :cond_6

    .line 708
    move-object v12, v5

    move-object v13, v6

    move-object v14, v4

    invoke-virtual {v12, v13, v14}, Landroid/support/v4/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 709
    move-object v12, v6

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v8, v12

    :goto_2
    move v12, v8

    if-ltz v12, :cond_5

    .line 710
    move-object v12, v6

    move v13, v8

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object v9, v12

    .line 711
    move-object v12, v4

    move-object v13, v9

    invoke-virtual {v12, v13}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    move-object v10, v12

    .line 712
    move-object v12, v10

    if-nez v12, :cond_4

    .line 713
    move-object v12, v0

    move-object v13, v9

    invoke-virtual {v12, v13}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 709
    :cond_2
    :goto_3
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 702
    :cond_3
    move-object v12, v3

    invoke-virtual {v12}, Landroid/support/v4/app/Fragment;->getExitTransitionCallback()Landroid/support/v4/app/SharedElementCallback;

    move-result-object v12

    move-object v5, v12

    .line 703
    move-object v12, v7

    iget-object v12, v12, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    move-object v6, v12

    goto :goto_1

    .line 714
    :cond_4
    move-object v12, v9

    move-object v13, v10

    invoke-static {v13}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 715
    move-object v12, v0

    move-object v13, v9

    invoke-virtual {v12, v13}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object v11, v12

    .line 716
    move-object v12, v0

    move-object v13, v10

    invoke-static {v13}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v13

    move-object v14, v11

    invoke-virtual {v12, v13, v14}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_3

    .line 722
    :cond_5
    :goto_4
    move-object v12, v4

    move-object v0, v12

    goto/16 :goto_0

    .line 720
    :cond_6
    move-object v12, v0

    move-object v13, v4

    invoke-virtual {v13}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/support/v4/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    move-result v12

    goto :goto_4
.end method

.method private static configureEnteringExitingViews(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 900
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    const/4 v6, 0x0

    move-object v4, v6

    .line 901
    move-object v6, v0

    if-eqz v6, :cond_2

    .line 902
    new-instance v6, Ljava/util/ArrayList;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v6

    .line 903
    move-object v6, v1

    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    .line 904
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 905
    move-object v6, v4

    move-object v7, v5

    invoke-static {v6, v7}, Landroid/support/v4/app/FragmentTransitionCompat21;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 907
    :cond_0
    move-object v6, v2

    if-eqz v6, :cond_1

    .line 908
    move-object v6, v4

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result v6

    .line 910
    :cond_1
    move-object v6, v4

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 911
    move-object v6, v4

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 912
    move-object v6, v0

    move-object v7, v4

    invoke-static {v6, v7}, Landroid/support/v4/app/FragmentTransitionCompat21;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 915
    :cond_2
    move-object v6, v4

    move-object v0, v6

    return-object v0
.end method

.method private static configureSharedElementsOptimized(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 466
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/support/v4/app/Fragment;

    move-object/from16 v19, v0

    move-object/from16 v9, v19

    .line 467
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;

    move-object/from16 v19, v0

    move-object/from16 v10, v19

    .line 468
    move-object/from16 v19, v9

    if-eqz v19, :cond_0

    .line 469
    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 471
    :cond_0
    move-object/from16 v19, v9

    if-eqz v19, :cond_1

    move-object/from16 v19, v10

    if-nez v19, :cond_2

    .line 472
    :cond_1
    const/16 v19, 0x0

    move-object/from16 v1, v19

    .line 538
    :goto_0
    return-object v1

    .line 475
    :cond_2
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move/from16 v19, v0

    move/from16 v11, v19

    .line 476
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_5

    const/16 v19, 0x0

    .line 477
    :goto_1
    move-object/from16 v12, v19

    .line 479
    move-object/from16 v19, v3

    move-object/from16 v20, v12

    move-object/from16 v21, v4

    invoke-static/range {v19 .. v21}, Landroid/support/v4/app/FragmentTransition;->captureOutSharedElements(Landroid/support/v4/util/ArrayMap;Ljava/lang/Object;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;)Landroid/support/v4/util/ArrayMap;

    move-result-object v19

    move-object/from16 v13, v19

    .line 482
    move-object/from16 v19, v3

    move-object/from16 v20, v12

    move-object/from16 v21, v4

    invoke-static/range {v19 .. v21}, Landroid/support/v4/app/FragmentTransition;->captureInSharedElements(Landroid/support/v4/util/ArrayMap;Ljava/lang/Object;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;)Landroid/support/v4/util/ArrayMap;

    move-result-object v19

    move-object/from16 v14, v19

    .line 485
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 486
    const/16 v19, 0x0

    move-object/from16 v12, v19

    .line 487
    move-object/from16 v19, v13

    if-eqz v19, :cond_3

    .line 488
    move-object/from16 v19, v13

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 490
    :cond_3
    move-object/from16 v19, v14

    if-eqz v19, :cond_4

    .line 491
    move-object/from16 v19, v14

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 500
    :cond_4
    :goto_2
    move-object/from16 v19, v7

    if-nez v19, :cond_7

    move-object/from16 v19, v8

    if-nez v19, :cond_7

    move-object/from16 v19, v12

    if-nez v19, :cond_7

    .line 502
    const/16 v19, 0x0

    move-object/from16 v1, v19

    goto :goto_0

    .line 476
    :cond_5
    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move/from16 v21, v11

    .line 477
    invoke-static/range {v19 .. v21}, Landroid/support/v4/app/FragmentTransition;->getSharedElementTransition(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v19

    goto :goto_1

    .line 494
    :cond_6
    move-object/from16 v19, v5

    move-object/from16 v20, v13

    move-object/from16 v21, v3

    .line 495
    invoke-virtual/range {v21 .. v21}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v21

    .line 494
    invoke-static/range {v19 .. v21}, Landroid/support/v4/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;Ljava/util/Collection;)V

    .line 496
    move-object/from16 v19, v6

    move-object/from16 v20, v14

    move-object/from16 v21, v3

    .line 497
    invoke-virtual/range {v21 .. v21}, Landroid/support/v4/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v21

    .line 496
    invoke-static/range {v19 .. v21}, Landroid/support/v4/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;Ljava/util/Collection;)V

    goto :goto_2

    .line 505
    :cond_7
    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move/from16 v21, v11

    move-object/from16 v22, v13

    const/16 v23, 0x1

    invoke-static/range {v19 .. v23}, Landroid/support/v4/app/FragmentTransition;->callSharedElementStartEnd(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;Z)V

    .line 509
    move-object/from16 v19, v12

    if-eqz v19, :cond_9

    .line 510
    move-object/from16 v19, v6

    move-object/from16 v20, v2

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v19

    .line 511
    move-object/from16 v19, v12

    move-object/from16 v20, v2

    move-object/from16 v21, v5

    invoke-static/range {v19 .. v21}, Landroid/support/v4/app/FragmentTransitionCompat21;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 513
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    move/from16 v19, v0

    move/from16 v17, v19

    .line 514
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroid/support/v4/app/BackStackRecord;

    move-object/from16 v19, v0

    move-object/from16 v18, v19

    .line 515
    move-object/from16 v19, v12

    move-object/from16 v20, v8

    move-object/from16 v21, v13

    move/from16 v22, v17

    move-object/from16 v23, v18

    invoke-static/range {v19 .. v23}, Landroid/support/v4/app/FragmentTransition;->setOutEpicenter(Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/util/ArrayMap;ZLandroid/support/v4/app/BackStackRecord;)V

    .line 517
    new-instance v19, Landroid/graphics/Rect;

    move-object/from16 v28, v19

    move-object/from16 v19, v28

    move-object/from16 v20, v28

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v15, v19

    .line 518
    move-object/from16 v19, v14

    move-object/from16 v20, v4

    move-object/from16 v21, v7

    move/from16 v22, v11

    invoke-static/range {v19 .. v22}, Landroid/support/v4/app/FragmentTransition;->getInEpicenterView(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v19

    move-object/from16 v16, v19

    .line 520
    move-object/from16 v19, v16

    if-eqz v19, :cond_8

    .line 521
    move-object/from16 v19, v7

    move-object/from16 v20, v15

    invoke-static/range {v19 .. v20}, Landroid/support/v4/app/FragmentTransitionCompat21;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 528
    :cond_8
    :goto_3
    move-object/from16 v19, v1

    new-instance v20, Landroid/support/v4/app/FragmentTransition$3;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    move/from16 v24, v11

    move-object/from16 v25, v14

    move-object/from16 v26, v16

    move-object/from16 v27, v15

    invoke-direct/range {v21 .. v27}, Landroid/support/v4/app/FragmentTransition$3;-><init>(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static/range {v19 .. v20}, Landroid/support/v4/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/OneShotPreDrawListener;

    move-result-object v19

    .line 538
    move-object/from16 v19, v12

    move-object/from16 v1, v19

    goto/16 :goto_0

    .line 524
    :cond_9
    const/16 v19, 0x0

    move-object/from16 v15, v19

    .line 525
    const/16 v19, 0x0

    move-object/from16 v16, v19

    goto :goto_3
.end method

.method private static configureSharedElementsUnoptimized(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 594
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v17, v4

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/support/v4/app/Fragment;

    move-object/from16 v17, v0

    move-object/from16 v9, v17

    .line 595
    move-object/from16 v17, v4

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;

    move-object/from16 v17, v0

    move-object/from16 v10, v17

    .line 597
    move-object/from16 v17, v9

    if-eqz v17, :cond_0

    move-object/from16 v17, v10

    if-nez v17, :cond_1

    .line 598
    :cond_0
    const/16 v17, 0x0

    move-object/from16 v1, v17

    .line 667
    :goto_0
    return-object v1

    .line 601
    :cond_1
    move-object/from16 v17, v4

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move/from16 v17, v0

    move/from16 v11, v17

    .line 602
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_2

    const/16 v17, 0x0

    .line 603
    :goto_1
    move-object/from16 v12, v17

    .line 605
    move-object/from16 v17, v3

    move-object/from16 v18, v12

    move-object/from16 v19, v4

    invoke-static/range {v17 .. v19}, Landroid/support/v4/app/FragmentTransition;->captureOutSharedElements(Landroid/support/v4/util/ArrayMap;Ljava/lang/Object;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;)Landroid/support/v4/util/ArrayMap;

    move-result-object v17

    move-object/from16 v13, v17

    .line 608
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 609
    const/16 v17, 0x0

    move-object/from16 v12, v17

    .line 614
    :goto_2
    move-object/from16 v17, v7

    if-nez v17, :cond_4

    move-object/from16 v17, v8

    if-nez v17, :cond_4

    move-object/from16 v17, v12

    if-nez v17, :cond_4

    .line 616
    const/16 v17, 0x0

    move-object/from16 v1, v17

    goto :goto_0

    .line 602
    :cond_2
    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move/from16 v19, v11

    .line 603
    invoke-static/range {v17 .. v19}, Landroid/support/v4/app/FragmentTransition;->getSharedElementTransition(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v17

    goto :goto_1

    .line 611
    :cond_3
    move-object/from16 v17, v5

    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v17

    goto :goto_2

    .line 619
    :cond_4
    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move/from16 v19, v11

    move-object/from16 v20, v13

    const/16 v21, 0x1

    invoke-static/range {v17 .. v21}, Landroid/support/v4/app/FragmentTransition;->callSharedElementStartEnd(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;Z)V

    .line 622
    move-object/from16 v17, v12

    if-eqz v17, :cond_6

    .line 623
    new-instance v17, Landroid/graphics/Rect;

    move-object/from16 v31, v17

    move-object/from16 v17, v31

    move-object/from16 v18, v31

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v14, v17

    .line 624
    move-object/from16 v17, v12

    move-object/from16 v18, v2

    move-object/from16 v19, v5

    invoke-static/range {v17 .. v19}, Landroid/support/v4/app/FragmentTransitionCompat21;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 626
    move-object/from16 v17, v4

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    move/from16 v17, v0

    move/from16 v15, v17

    .line 627
    move-object/from16 v17, v4

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroid/support/v4/app/BackStackRecord;

    move-object/from16 v17, v0

    move-object/from16 v16, v17

    .line 628
    move-object/from16 v17, v12

    move-object/from16 v18, v8

    move-object/from16 v19, v13

    move/from16 v20, v15

    move-object/from16 v21, v16

    invoke-static/range {v17 .. v21}, Landroid/support/v4/app/FragmentTransition;->setOutEpicenter(Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/util/ArrayMap;ZLandroid/support/v4/app/BackStackRecord;)V

    .line 630
    move-object/from16 v17, v7

    if-eqz v17, :cond_5

    .line 631
    move-object/from16 v17, v7

    move-object/from16 v18, v14

    invoke-static/range {v17 .. v18}, Landroid/support/v4/app/FragmentTransitionCompat21;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 638
    :cond_5
    :goto_3
    move-object/from16 v17, v12

    move-object/from16 v15, v17

    .line 639
    move-object/from16 v17, v1

    new-instance v18, Landroid/support/v4/app/FragmentTransition$4;

    move-object/from16 v31, v18

    move-object/from16 v18, v31

    move-object/from16 v19, v31

    move-object/from16 v20, v3

    move-object/from16 v21, v15

    move-object/from16 v22, v4

    move-object/from16 v23, v6

    move-object/from16 v24, v2

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    move/from16 v27, v11

    move-object/from16 v28, v5

    move-object/from16 v29, v7

    move-object/from16 v30, v14

    invoke-direct/range {v19 .. v30}, Landroid/support/v4/app/FragmentTransition$4;-><init>(Landroid/support/v4/util/ArrayMap;Ljava/lang/Object;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Landroid/view/View;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    invoke-static/range {v17 .. v18}, Landroid/support/v4/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/OneShotPreDrawListener;

    move-result-object v17

    .line 667
    move-object/from16 v17, v12

    move-object/from16 v1, v17

    goto/16 :goto_0

    .line 634
    :cond_6
    const/16 v17, 0x0

    move-object/from16 v14, v17

    goto :goto_3
.end method

.method private static configureTransitionsOptimized(Landroid/support/v4/app/FragmentManagerImpl;ILandroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroid/support/v4/util/ArrayMap;)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManagerImpl;",
            "I",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/view/View;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 189
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    const/16 v20, 0x0

    move-object/from16 v6, v20

    .line 190
    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/support/v4/app/FragmentContainer;->onHasView()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 191
    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    move-object/from16 v20, v0

    move/from16 v21, v2

    invoke-virtual/range {v20 .. v21}, Landroid/support/v4/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    move-object/from16 v6, v20

    .line 193
    :cond_0
    move-object/from16 v20, v6

    if-nez v20, :cond_1

    .line 240
    :goto_0
    return-void

    .line 196
    :cond_1
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/support/v4/app/Fragment;

    move-object/from16 v20, v0

    move-object/from16 v7, v20

    .line 197
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;

    move-object/from16 v20, v0

    move-object/from16 v8, v20

    .line 198
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move/from16 v20, v0

    move/from16 v9, v20

    .line 199
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    move/from16 v20, v0

    move/from16 v10, v20

    .line 201
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v11, v20

    .line 202
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v12, v20

    .line 203
    move-object/from16 v20, v7

    move/from16 v21, v9

    invoke-static/range {v20 .. v21}, Landroid/support/v4/app/FragmentTransition;->getEnterTransition(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v13, v20

    .line 204
    move-object/from16 v20, v8

    move/from16 v21, v10

    invoke-static/range {v20 .. v21}, Landroid/support/v4/app/FragmentTransition;->getExitTransition(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v14, v20

    .line 206
    move-object/from16 v20, v6

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 v23, v3

    move-object/from16 v24, v12

    move-object/from16 v25, v11

    move-object/from16 v26, v13

    move-object/from16 v27, v14

    invoke-static/range {v20 .. v27}, Landroid/support/v4/app/FragmentTransition;->configureSharedElementsOptimized(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v15, v20

    .line 210
    move-object/from16 v20, v13

    if-nez v20, :cond_2

    move-object/from16 v20, v15

    if-nez v20, :cond_2

    move-object/from16 v20, v14

    if-nez v20, :cond_2

    .line 212
    goto :goto_0

    .line 215
    :cond_2
    move-object/from16 v20, v14

    move-object/from16 v21, v8

    move-object/from16 v22, v12

    move-object/from16 v23, v4

    invoke-static/range {v20 .. v23}, Landroid/support/v4/app/FragmentTransition;->configureEnteringExitingViews(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v16, v20

    .line 218
    move-object/from16 v20, v13

    move-object/from16 v21, v7

    move-object/from16 v22, v11

    move-object/from16 v23, v4

    invoke-static/range {v20 .. v23}, Landroid/support/v4/app/FragmentTransition;->configureEnteringExitingViews(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v17, v20

    .line 221
    move-object/from16 v20, v17

    const/16 v21, 0x4

    invoke-static/range {v20 .. v21}, Landroid/support/v4/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 223
    move-object/from16 v20, v13

    move-object/from16 v21, v14

    move-object/from16 v22, v15

    move-object/from16 v23, v7

    move/from16 v24, v9

    invoke-static/range {v20 .. v24}, Landroid/support/v4/app/FragmentTransition;->mergeTransitions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v18, v20

    .line 226
    move-object/from16 v20, v18

    if-eqz v20, :cond_3

    .line 227
    move-object/from16 v20, v14

    move-object/from16 v21, v8

    move-object/from16 v22, v16

    invoke-static/range {v20 .. v22}, Landroid/support/v4/app/FragmentTransition;->replaceHide(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;)V

    .line 228
    move-object/from16 v20, v11

    .line 229
    invoke-static/range {v20 .. v20}, Landroid/support/v4/app/FragmentTransitionCompat21;->prepareSetNameOverridesOptimized(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v19, v20

    .line 230
    move-object/from16 v20, v18

    move-object/from16 v21, v13

    move-object/from16 v22, v17

    move-object/from16 v23, v14

    move-object/from16 v24, v16

    move-object/from16 v25, v15

    move-object/from16 v26, v11

    invoke-static/range {v20 .. v26}, Landroid/support/v4/app/FragmentTransitionCompat21;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 233
    move-object/from16 v20, v6

    move-object/from16 v21, v18

    invoke-static/range {v20 .. v21}, Landroid/support/v4/app/FragmentTransitionCompat21;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 234
    move-object/from16 v20, v6

    move-object/from16 v21, v12

    move-object/from16 v22, v11

    move-object/from16 v23, v19

    move-object/from16 v24, v5

    invoke-static/range {v20 .. v24}, Landroid/support/v4/app/FragmentTransitionCompat21;->setNameOverridesOptimized(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 236
    move-object/from16 v20, v17

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/support/v4/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 237
    move-object/from16 v20, v15

    move-object/from16 v21, v12

    move-object/from16 v22, v11

    invoke-static/range {v20 .. v22}, Landroid/support/v4/app/FragmentTransitionCompat21;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 240
    :cond_3
    goto/16 :goto_0
.end method

.method private static configureTransitionsUnoptimized(Landroid/support/v4/app/FragmentManagerImpl;ILandroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroid/support/v4/util/ArrayMap;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManagerImpl;",
            "I",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/view/View;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 282
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    const/16 v19, 0x0

    move-object/from16 v6, v19

    .line 283
    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentContainer;->onHasView()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 284
    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    move-object/from16 v19, v0

    move/from16 v20, v2

    invoke-virtual/range {v19 .. v20}, Landroid/support/v4/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/view/ViewGroup;

    move-object/from16 v6, v19

    .line 286
    :cond_0
    move-object/from16 v19, v6

    if-nez v19, :cond_1

    .line 337
    :goto_0
    return-void

    .line 289
    :cond_1
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/support/v4/app/Fragment;

    move-object/from16 v19, v0

    move-object/from16 v7, v19

    .line 290
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;

    move-object/from16 v19, v0

    move-object/from16 v8, v19

    .line 291
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move/from16 v19, v0

    move/from16 v9, v19

    .line 292
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z

    move/from16 v19, v0

    move/from16 v10, v19

    .line 294
    move-object/from16 v19, v7

    move/from16 v20, v9

    invoke-static/range {v19 .. v20}, Landroid/support/v4/app/FragmentTransition;->getEnterTransition(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v11, v19

    .line 295
    move-object/from16 v19, v8

    move/from16 v20, v10

    invoke-static/range {v19 .. v20}, Landroid/support/v4/app/FragmentTransition;->getExitTransition(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v12, v19

    .line 297
    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v13, v19

    .line 298
    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v14, v19

    .line 300
    move-object/from16 v19, v6

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v3

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    invoke-static/range {v19 .. v26}, Landroid/support/v4/app/FragmentTransition;->configureSharedElementsUnoptimized(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v15, v19

    .line 304
    move-object/from16 v19, v11

    if-nez v19, :cond_2

    move-object/from16 v19, v15

    if-nez v19, :cond_2

    move-object/from16 v19, v12

    if-nez v19, :cond_2

    .line 306
    goto :goto_0

    .line 309
    :cond_2
    move-object/from16 v19, v12

    move-object/from16 v20, v8

    move-object/from16 v21, v13

    move-object/from16 v22, v4

    invoke-static/range {v19 .. v22}, Landroid/support/v4/app/FragmentTransition;->configureEnteringExitingViews(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v16, v19

    .line 312
    move-object/from16 v19, v16

    if-eqz v19, :cond_3

    move-object/from16 v19, v16

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 313
    :cond_3
    const/16 v19, 0x0

    move-object/from16 v12, v19

    .line 318
    :cond_4
    move-object/from16 v19, v11

    move-object/from16 v20, v4

    invoke-static/range {v19 .. v20}, Landroid/support/v4/app/FragmentTransitionCompat21;->addTarget(Ljava/lang/Object;Landroid/view/View;)V

    .line 320
    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v15

    move-object/from16 v22, v7

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z

    move/from16 v23, v0

    invoke-static/range {v19 .. v23}, Landroid/support/v4/app/FragmentTransition;->mergeTransitions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v17, v19

    .line 323
    move-object/from16 v19, v17

    if-eqz v19, :cond_5

    .line 324
    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v27, v19

    move-object/from16 v19, v27

    move-object/from16 v20, v27

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v19

    .line 325
    move-object/from16 v19, v17

    move-object/from16 v20, v11

    move-object/from16 v21, v18

    move-object/from16 v22, v12

    move-object/from16 v23, v16

    move-object/from16 v24, v15

    move-object/from16 v25, v14

    invoke-static/range {v19 .. v25}, Landroid/support/v4/app/FragmentTransitionCompat21;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 328
    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v4

    move-object/from16 v22, v14

    move-object/from16 v23, v11

    move-object/from16 v24, v18

    move-object/from16 v25, v12

    move-object/from16 v26, v16

    invoke-static/range {v19 .. v26}, Landroid/support/v4/app/FragmentTransition;->scheduleTargetChange(Landroid/view/ViewGroup;Landroid/support/v4/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 330
    move-object/from16 v19, v6

    move-object/from16 v20, v14

    move-object/from16 v21, v5

    invoke-static/range {v19 .. v21}, Landroid/support/v4/app/FragmentTransitionCompat21;->setNameOverridesUnoptimized(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 333
    move-object/from16 v19, v6

    move-object/from16 v20, v17

    invoke-static/range {v19 .. v20}, Landroid/support/v4/app/FragmentTransitionCompat21;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 334
    move-object/from16 v19, v6

    move-object/from16 v20, v14

    move-object/from16 v21, v5

    invoke-static/range {v19 .. v21}, Landroid/support/v4/app/FragmentTransitionCompat21;->scheduleNameReset(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 337
    :cond_5
    goto/16 :goto_0
.end method

.method private static ensureContainer(Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            ">;I)",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;"
        }
    .end annotation

    .prologue
    .line 1110
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    if-nez v3, :cond_0

    .line 1111
    new-instance v3, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;-><init>()V

    move-object v0, v3

    .line 1112
    move-object v3, v1

    move v4, v2

    move-object v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1114
    :cond_0
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method private static findKeyForValue(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 792
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v4

    move v2, v4

    .line 793
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 794
    move-object v4, v1

    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 795
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v0, v4

    .line 798
    :goto_1
    return-object v0

    .line 793
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 798
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method private static getEnterTransition(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 413
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    if-nez v2, :cond_0

    .line 414
    const/4 v2, 0x0

    move-object v0, v2

    .line 416
    :goto_0
    return-object v0

    :cond_0
    move v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    .line 417
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v2

    .line 416
    :goto_1
    invoke-static {v2}, Landroid/support/v4/app/FragmentTransitionCompat21;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 417
    :cond_1
    move-object v2, v0

    .line 418
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1
.end method

.method private static getExitTransition(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 425
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    if-nez v2, :cond_0

    .line 426
    const/4 v2, 0x0

    move-object v0, v2

    .line 428
    :goto_0
    return-object v0

    :cond_0
    move v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    .line 429
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v2

    .line 428
    :goto_1
    invoke-static {v2}, Landroid/support/v4/app/FragmentTransitionCompat21;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 429
    :cond_1
    move-object v2, v0

    .line 430
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1
.end method

.method private static getInEpicenterView(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;",
            "Ljava/lang/Object;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 813
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v1

    iget-object v6, v6, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroid/support/v4/app/BackStackRecord;

    move-object v4, v6

    .line 814
    move-object v6, v2

    if-eqz v6, :cond_1

    move-object v6, v0

    if-eqz v6, :cond_1

    move-object v6, v4

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    move-object v6, v4

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 816
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 817
    move v6, v3

    if-eqz v6, :cond_0

    move-object v6, v4

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    const/4 v7, 0x0

    .line 818
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 819
    :goto_0
    move-object v5, v6

    .line 820
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    move-object v0, v6

    .line 822
    :goto_1
    return-object v0

    .line 818
    :cond_0
    move-object v6, v4

    iget-object v6, v6, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    const/4 v7, 0x0

    .line 819
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_0

    .line 822
    :cond_1
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method

.method private static getSharedElementTransition(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 400
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    if-eqz v4, :cond_0

    move-object v4, v1

    if-nez v4, :cond_1

    .line 401
    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    .line 406
    :goto_0
    return-object v0

    .line 403
    :cond_1
    move v4, v2

    if-eqz v4, :cond_2

    move-object v4, v1

    .line 404
    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v4

    .line 403
    :goto_1
    invoke-static {v4}, Landroid/support/v4/app/FragmentTransitionCompat21;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 406
    move-object v4, v3

    invoke-static {v4}, Landroid/support/v4/app/FragmentTransitionCompat21;->wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 404
    :cond_2
    move-object v4, v0

    .line 405
    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v4

    goto :goto_1
.end method

.method private static mergeTransitions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 938
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    const/4 v7, 0x1

    move v5, v7

    .line 939
    move-object v7, v0

    if-eqz v7, :cond_0

    move-object v7, v1

    if-eqz v7, :cond_0

    move-object v7, v3

    if-eqz v7, :cond_0

    .line 940
    move v7, v4

    if-eqz v7, :cond_1

    move-object v7, v3

    invoke-virtual {v7}, Landroid/support/v4/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result v7

    .line 941
    :goto_0
    move v5, v7

    .line 949
    :cond_0
    move v7, v5

    if-eqz v7, :cond_2

    .line 951
    move-object v7, v1

    move-object v8, v0

    move-object v9, v2

    invoke-static {v7, v8, v9}, Landroid/support/v4/app/FragmentTransitionCompat21;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 959
    :goto_1
    move-object v7, v6

    move-object v0, v7

    return-object v0

    .line 940
    :cond_1
    move-object v7, v3

    .line 941
    invoke-virtual {v7}, Landroid/support/v4/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result v7

    goto :goto_0

    .line 956
    :cond_2
    move-object v7, v1

    move-object v8, v0

    move-object v9, v2

    invoke-static {v7, v8, v9}, Landroid/support/v4/app/FragmentTransitionCompat21;->mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    goto :goto_1
.end method

.method private static replaceHide(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 249
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v0

    if-eqz v4, :cond_0

    move-object v4, v1

    iget-boolean v4, v4, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v4, :cond_0

    move-object v4, v1

    iget-boolean v4, v4, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v4, :cond_0

    move-object v4, v1

    iget-boolean v4, v4, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z

    if-eqz v4, :cond_0

    .line 251
    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v4/app/Fragment;->setHideReplaced(Z)V

    .line 252
    move-object v4, v0

    move-object v5, v1

    .line 253
    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v5

    move-object v6, v2

    .line 252
    invoke-static {v4, v5, v6}, Landroid/support/v4/app/FragmentTransitionCompat21;->scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 254
    move-object v4, v1

    iget-object v4, v4, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    move-object v3, v4

    .line 255
    move-object v4, v3

    new-instance v5, Landroid/support/v4/app/FragmentTransition$1;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Landroid/support/v4/app/FragmentTransition$1;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v4, v5}, Landroid/support/v4/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/OneShotPreDrawListener;

    move-result-object v4

    .line 262
    :cond_0
    return-void
.end method

.method private static retainValues(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 858
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    :goto_0
    move v4, v2

    if-ltz v4, :cond_1

    .line 859
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    .line 860
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 861
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v4/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 858
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 864
    :cond_1
    return-void
.end method

.method private static scheduleTargetChange(Landroid/view/ViewGroup;Landroid/support/v4/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/support/v4/app/Fragment;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 361
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object v8, v0

    new-instance v9, Landroid/support/v4/app/FragmentTransition$2;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    move-object v11, v4

    move-object v12, v2

    move-object v13, v1

    move-object v14, v3

    move-object v15, v5

    move-object/from16 v16, v7

    move-object/from16 v17, v6

    invoke-direct/range {v10 .. v17}, Landroid/support/v4/app/FragmentTransition$2;-><init>(Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    invoke-static {v8, v9}, Landroid/support/v4/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/OneShotPreDrawListener;

    move-result-object v8

    .line 384
    return-void
.end method

.method private static setOutEpicenter(Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/util/ArrayMap;ZLandroid/support/v4/app/BackStackRecord;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z",
            "Landroid/support/v4/app/BackStackRecord;",
            ")V"
        }
    .end annotation

    .prologue
    .line 837
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v7, v4

    iget-object v7, v7, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    move-object v7, v4

    iget-object v7, v7, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 838
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 839
    move v7, v3

    if-eqz v7, :cond_1

    move-object v7, v4

    iget-object v7, v7, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    const/4 v8, 0x0

    .line 840
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 841
    :goto_0
    move-object v5, v7

    .line 842
    move-object v7, v2

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    move-object v6, v7

    .line 843
    move-object v7, v0

    move-object v8, v6

    invoke-static {v7, v8}, Landroid/support/v4/app/FragmentTransitionCompat21;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    .line 845
    move-object v7, v1

    if-eqz v7, :cond_0

    .line 846
    move-object v7, v1

    move-object v8, v6

    invoke-static {v7, v8}, Landroid/support/v4/app/FragmentTransitionCompat21;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    .line 849
    :cond_0
    return-void

    .line 840
    :cond_1
    move-object v7, v4

    iget-object v7, v7, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    const/4 v8, 0x0

    .line 841
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_0
.end method

.method private static setViewVisibility(Ljava/util/ArrayList;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 922
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    if-nez v4, :cond_0

    .line 929
    :goto_0
    return-void

    .line 925
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    :goto_1
    move v4, v2

    if-ltz v4, :cond_1

    .line 926
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move-object v3, v4

    .line 927
    move-object v4, v3

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 925
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 929
    :cond_1
    goto :goto_0
.end method

.method static startTransitions(Landroid/support/v4/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManagerImpl;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;IIZ)V"
        }
    .end annotation

    .prologue
    .line 83
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v13, v0

    iget v13, v13, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v14, 0x1

    if-lt v13, v14, :cond_0

    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x15

    if-ge v13, v14, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    new-instance v13, Landroid/util/SparseArray;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    move-object v6, v13

    .line 89
    move v13, v3

    move v7, v13

    :goto_1
    move v13, v7

    move v14, v4

    if-ge v13, v14, :cond_3

    .line 90
    move-object v13, v1

    move v14, v7

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/v4/app/BackStackRecord;

    move-object v8, v13

    .line 91
    move-object v13, v2

    move v14, v7

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    move v9, v13

    .line 92
    move v13, v9

    if-eqz v13, :cond_2

    .line 93
    move-object v13, v8

    move-object v14, v6

    move v15, v5

    invoke-static {v13, v14, v15}, Landroid/support/v4/app/FragmentTransition;->calculatePopFragments(Landroid/support/v4/app/BackStackRecord;Landroid/util/SparseArray;Z)V

    .line 89
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 95
    :cond_2
    move-object v13, v8

    move-object v14, v6

    move v15, v5

    invoke-static {v13, v14, v15}, Landroid/support/v4/app/FragmentTransition;->calculateFragments(Landroid/support/v4/app/BackStackRecord;Landroid/util/SparseArray;Z)V

    goto :goto_2

    .line 99
    :cond_3
    move-object v13, v6

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-eqz v13, :cond_5

    .line 100
    new-instance v13, Landroid/view/View;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v0

    iget-object v15, v15, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v15}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object v7, v13

    .line 101
    move-object v13, v6

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v13

    move v8, v13

    .line 102
    const/4 v13, 0x0

    move v9, v13

    :goto_3
    move v13, v9

    move v14, v8

    if-ge v13, v14, :cond_5

    .line 103
    move-object v13, v6

    move v14, v9

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    move v10, v13

    .line 104
    move v13, v10

    move-object v14, v1

    move-object v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    invoke-static/range {v13 .. v17}, Landroid/support/v4/app/FragmentTransition;->calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/support/v4/util/ArrayMap;

    move-result-object v13

    move-object v11, v13

    .line 107
    move-object v13, v6

    move v14, v9

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;

    move-object v12, v13

    .line 109
    move v13, v5

    if-eqz v13, :cond_4

    .line 110
    move-object v13, v0

    move v14, v10

    move-object v15, v12

    move-object/from16 v16, v7

    move-object/from16 v17, v11

    invoke-static/range {v13 .. v17}, Landroid/support/v4/app/FragmentTransition;->configureTransitionsOptimized(Landroid/support/v4/app/FragmentManagerImpl;ILandroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroid/support/v4/util/ArrayMap;)V

    .line 102
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 113
    :cond_4
    move-object v13, v0

    move v14, v10

    move-object v15, v12

    move-object/from16 v16, v7

    move-object/from16 v17, v11

    invoke-static/range {v13 .. v17}, Landroid/support/v4/app/FragmentTransition;->configureTransitionsUnoptimized(Landroid/support/v4/app/FragmentManagerImpl;ILandroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroid/support/v4/util/ArrayMap;)V

    goto :goto_4

    .line 118
    :cond_5
    goto/16 :goto_0
.end method
