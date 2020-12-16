.class Landroid/support/v7/widget/ActivityChooserModel;
.super Landroid/database/DataSetObservable;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;,
        Landroid/support/v7/widget/ActivityChooserModel$DefaultSorter;,
        Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;,
        Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;,
        Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;,
        Landroid/support/v7/widget/ActivityChooserModel$ActivitySorter;,
        Landroid/support/v7/widget/ActivityChooserModel$ActivityChooserModelClient;
    }
.end annotation


# static fields
.field static final ATTRIBUTE_ACTIVITY:Ljava/lang/String; = "activity"

.field static final ATTRIBUTE_TIME:Ljava/lang/String; = "time"

.field static final ATTRIBUTE_WEIGHT:Ljava/lang/String; = "weight"

.field static final DEBUG:Z = false

.field private static final DEFAULT_ACTIVITY_INFLATION:I = 0x5

.field private static final DEFAULT_HISTORICAL_RECORD_WEIGHT:F = 1.0f

.field public static final DEFAULT_HISTORY_FILE_NAME:Ljava/lang/String; = "activity_choser_model_history.xml"

.field public static final DEFAULT_HISTORY_MAX_LENGTH:I = 0x32

.field private static final HISTORY_FILE_EXTENSION:Ljava/lang/String; = ".xml"

.field private static final INVALID_INDEX:I = -0x1

.field static final LOG_TAG:Ljava/lang/String;

.field static final TAG_HISTORICAL_RECORD:Ljava/lang/String; = "historical-record"

.field static final TAG_HISTORICAL_RECORDS:Ljava/lang/String; = "historical-records"

.field private static final sDataModelRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v7/widget/ActivityChooserModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRegistryLock:Ljava/lang/Object;


# instance fields
.field private final mActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityChoserModelPolicy:Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;

.field private mActivitySorter:Landroid/support/v7/widget/ActivityChooserModel$ActivitySorter;

.field mCanReadHistoricalData:Z

.field final mContext:Landroid/content/Context;

.field private final mHistoricalRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mHistoricalRecordsChanged:Z

.field final mHistoryFileName:Ljava/lang/String;

.field private mHistoryMaxSize:I

.field private final mInstanceLock:Ljava/lang/Object;

.field private mIntent:Landroid/content/Intent;

.field private mReadShareHistoryCalled:Z

.field private mReloadActivities:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 158
    const-class v0, Landroid/support/v7/widget/ActivityChooserModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    .line 219
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v7/widget/ActivityChooserModel;->sRegistryLock:Ljava/lang/Object;

    .line 224
    new-instance v0, Ljava/util/HashMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/v7/widget/ActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 347
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Landroid/database/DataSetObservable;-><init>()V

    .line 230
    move-object v3, v0

    new-instance v4, Ljava/lang/Object;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v4, v3, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    .line 235
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    .line 240
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    .line 260
    move-object v3, v0

    new-instance v4, Landroid/support/v7/widget/ActivityChooserModel$DefaultSorter;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/support/v7/widget/ActivityChooserModel$DefaultSorter;-><init>(Landroid/support/v7/widget/ActivityChooserModel;)V

    iput-object v4, v3, Landroid/support/v7/widget/ActivityChooserModel;->mActivitySorter:Landroid/support/v7/widget/ActivityChooserModel$ActivitySorter;

    .line 265
    move-object v3, v0

    const/16 v4, 0x32

    iput v4, v3, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryMaxSize:I

    .line 275
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v7/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    .line 286
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v7/widget/ActivityChooserModel;->mReadShareHistoryCalled:Z

    .line 294
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 299
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v7/widget/ActivityChooserModel;->mReloadActivities:Z

    .line 348
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, v3, Landroid/support/v7/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    .line 349
    move-object v3, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    const-string v4, ".xml"

    .line 350
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 351
    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    .line 355
    :goto_0
    return-void

    .line 353
    :cond_0
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    goto :goto_0
.end method

.method private addHistoricalRecord(Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;)Z
    .locals 5

    .prologue
    .line 728
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    move v2, v3

    .line 729
    move v3, v2

    if-eqz v3, :cond_0

    .line 730
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 731
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsIfNeeded()V

    .line 732
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/widget/ActivityChooserModel;->persistHistoricalDataIfNeeded()V

    .line 733
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/widget/ActivityChooserModel;->sortActivitiesIfNeeded()Z

    move-result v3

    .line 734
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/ActivityChooserModel;->notifyChanged()V

    .line 736
    :cond_0
    move v3, v2

    move v0, v3

    return v0
.end method

.method private ensureConsistentState()V
    .locals 4

    .prologue
    .line 655
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/ActivityChooserModel;->loadActivitiesIfNeeded()Z

    move-result v2

    move v1, v2

    .line 656
    move v2, v1

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v7/widget/ActivityChooserModel;->readHistoricalDataIfNeeded()Z

    move-result v3

    or-int/2addr v2, v3

    move v1, v2

    .line 657
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsIfNeeded()V

    .line 658
    move v2, v1

    if-eqz v2, :cond_0

    .line 659
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/ActivityChooserModel;->sortActivitiesIfNeeded()Z

    move-result v2

    .line 660
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ActivityChooserModel;->notifyChanged()V

    .line 662
    :cond_0
    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v7/widget/ActivityChooserModel;
    .locals 10

    .prologue
    .line 331
    move-object v0, p0

    move-object v1, p1

    sget-object v5, Landroid/support/v7/widget/ActivityChooserModel;->sRegistryLock:Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v2, v6

    monitor-enter v5

    .line 332
    :try_start_0
    sget-object v5, Landroid/support/v7/widget/ActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/ActivityChooserModel;

    move-object v3, v5

    .line 333
    move-object v5, v3

    if-nez v5, :cond_0

    .line 334
    new-instance v5, Landroid/support/v7/widget/ActivityChooserModel;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v1

    invoke-direct {v6, v7, v8}, Landroid/support/v7/widget/ActivityChooserModel;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v3, v5

    .line 335
    sget-object v5, Landroid/support/v7/widget/ActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    move-object v6, v1

    move-object v7, v3

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 337
    :cond_0
    move-object v5, v3

    move-object v6, v2

    monitor-exit v6

    move-object v0, v5

    return-object v0

    .line 338
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method private loadActivitiesIfNeeded()Z
    .locals 11

    .prologue
    .line 688
    move-object v0, p0

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/ActivityChooserModel;->mReloadActivities:Z

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    if-eqz v5, :cond_1

    .line 689
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v7/widget/ActivityChooserModel;->mReloadActivities:Z

    .line 690
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 691
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    const/4 v7, 0x0

    .line 692
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    move-object v1, v5

    .line 693
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v2, v5

    .line 694
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 695
    move-object v5, v1

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    move-object v4, v5

    .line 696
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    new-instance v6, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;-><init>(Landroid/support/v7/widget/ActivityChooserModel;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 694
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 698
    :cond_0
    const/4 v5, 0x1

    move v0, v5

    .line 700
    :goto_1
    return v0

    :cond_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1
.end method

.method private persistHistoricalDataIfNeeded()V
    .locals 9

    .prologue
    .line 567
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/ActivityChooserModel;->mReadShareHistoryCalled:Z

    if-nez v1, :cond_0

    .line 568
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    const-string v3, "No preceding call to #readHistoricalData"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 570
    :cond_0
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    if-nez v1, :cond_1

    .line 578
    :goto_0
    return-void

    .line 573
    :cond_1
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 574
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 575
    new-instance v1, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    move-object v3, v0

    invoke-direct {v2, v3}, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;-><init>(Landroid/support/v7/widget/ActivityChooserModel;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const/4 v4, 0x0

    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v5, v3, v4

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const/4 v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2}, Landroid/support/v4/os/AsyncTaskCompat;->executeParallel(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    .line 578
    :cond_2
    goto :goto_0
.end method

.method private pruneExcessiveHistoricalRecordsIfNeeded()V
    .locals 6

    .prologue
    .line 743
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryMaxSize:I

    sub-int/2addr v4, v5

    move v1, v4

    .line 744
    move v4, v1

    if-gtz v4, :cond_0

    .line 754
    :goto_0
    return-void

    .line 747
    :cond_0
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 748
    const/4 v4, 0x0

    move v2, v4

    :goto_1
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 749
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;

    move-object v3, v4

    .line 748
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 754
    :cond_1
    goto :goto_0
.end method

.method private readHistoricalDataIfNeeded()Z
    .locals 3

    .prologue
    .line 711
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    .line 712
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 713
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    .line 714
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/widget/ActivityChooserModel;->mReadShareHistoryCalled:Z

    .line 715
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/ActivityChooserModel;->readHistoricalDataImpl()V

    .line 716
    const/4 v1, 0x1

    move v0, v1

    .line 718
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private readHistoricalDataImpl()V
    .locals 20

    .prologue
    .line 963
    move-object/from16 v0, p0

    const/4 v13, 0x0

    move-object v1, v13

    .line 965
    move-object v13, v0

    :try_start_0
    iget-object v13, v13, Landroid/support/v7/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    move-object v14, v0

    iget-object v14, v14, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    move-object v1, v13

    .line 973
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v13

    move-object v2, v13

    .line 974
    move-object v13, v2

    move-object v14, v1

    const-string v15, "UTF-8"

    invoke-interface {v13, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 976
    const/4 v13, 0x0

    move v3, v13

    .line 977
    :goto_0
    move v13, v3

    const/4 v14, 0x1

    if-eq v13, v14, :cond_0

    move v13, v3

    const/4 v14, 0x2

    if-eq v13, v14, :cond_0

    .line 978
    move-object v13, v2

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    move v3, v13

    goto :goto_0

    .line 966
    :catch_0
    move-exception v13

    move-object v2, v13

    .line 1031
    :goto_1
    return-void

    .line 981
    :cond_0
    const-string v13, "historical-records"

    move-object v14, v2

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 982
    new-instance v13, Lorg/xmlpull/v1/XmlPullParserException;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const-string v15, "Share records file does not start with historical-records tag."

    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1018
    :catch_1
    move-exception v13

    move-object v2, v13

    .line 1019
    :try_start_2
    sget-object v13, Landroid/support/v7/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error reading historical recrod file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v0

    iget-object v15, v15, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v15, v2

    invoke-static {v13, v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v13

    .line 1023
    move-object v13, v1

    if-eqz v13, :cond_1

    .line 1025
    move-object v13, v1

    :try_start_3
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1031
    :cond_1
    :goto_2
    goto :goto_1

    .line 986
    :cond_2
    move-object v13, v0

    :try_start_4
    iget-object v13, v13, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    move-object v4, v13

    .line 987
    move-object v13, v4

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 990
    :cond_3
    :goto_3
    move-object v13, v2

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v13

    move v3, v13

    .line 991
    move v13, v3

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    .line 1023
    move-object v13, v1

    if-eqz v13, :cond_1

    .line 1025
    move-object v13, v1

    :try_start_5
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1028
    goto :goto_2

    .line 994
    :cond_4
    move v13, v3

    const/4 v14, 0x3

    if-eq v13, v14, :cond_3

    move v13, v3

    const/4 v14, 0x4

    if-ne v13, v14, :cond_5

    .line 995
    goto :goto_3

    .line 997
    :cond_5
    move-object v13, v2

    :try_start_6
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    move-object v5, v13

    .line 998
    const-string v13, "historical-record"

    move-object v14, v5

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 999
    new-instance v13, Lorg/xmlpull/v1/XmlPullParserException;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const-string v15, "Share records file not well-formed."

    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1020
    :catch_2
    move-exception v13

    move-object v2, v13

    .line 1021
    :try_start_7
    sget-object v13, Landroid/support/v7/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error reading historical recrod file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v0

    iget-object v15, v15, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v15, v2

    invoke-static {v13, v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v13

    .line 1023
    move-object v13, v1

    if-eqz v13, :cond_1

    .line 1025
    move-object v13, v1

    :try_start_8
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 1028
    goto :goto_2

    .line 1002
    :cond_6
    move-object v13, v2

    const/4 v14, 0x0

    :try_start_9
    const-string v15, "activity"

    invoke-interface {v13, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v6, v13

    .line 1003
    move-object v13, v2

    const/4 v14, 0x0

    const-string v15, "time"

    .line 1004
    invoke-interface {v13, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    move-wide v7, v13

    .line 1005
    move-object v13, v2

    const/4 v14, 0x0

    const-string v15, "weight"

    .line 1006
    invoke-interface {v13, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    move v9, v13

    .line 1007
    new-instance v13, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v15, v6

    move-wide/from16 v16, v7

    move/from16 v18, v9

    invoke-direct/range {v14 .. v18}, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;-><init>(Ljava/lang/String;JF)V

    move-object v10, v13

    .line 1008
    move-object v13, v4

    move-object v14, v10

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v13

    .line 1013
    goto/16 :goto_3

    .line 1026
    :catch_3
    move-exception v13

    move-object v2, v13

    .line 1028
    goto/16 :goto_2

    .line 1026
    :catch_4
    move-exception v13

    move-object v2, v13

    .line 1028
    goto/16 :goto_2

    .line 1026
    :catch_5
    move-exception v13

    move-object v2, v13

    .line 1028
    goto/16 :goto_2

    .line 1023
    :catchall_0
    move-exception v13

    move-object v11, v13

    move-object v13, v1

    if-eqz v13, :cond_7

    .line 1025
    move-object v13, v1

    :try_start_a
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 1028
    :cond_7
    :goto_4
    move-object v13, v11

    throw v13

    .line 1026
    :catch_6
    move-exception v13

    move-object v12, v13

    goto :goto_4
.end method

.method private sortActivitiesIfNeeded()Z
    .locals 5

    .prologue
    .line 672
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserModel;->mActivitySorter:Landroid/support/v7/widget/ActivityChooserModel$ActivitySorter;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    .line 673
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 674
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserModel;->mActivitySorter:Landroid/support/v7/widget/ActivityChooserModel$ActivitySorter;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    .line 675
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 674
    invoke-interface {v1, v2, v3, v4}, Landroid/support/v7/widget/ActivityChooserModel$ActivitySorter;->sort(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V

    .line 676
    const/4 v1, 0x1

    move v0, v1

    .line 678
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public chooseActivity(I)Landroid/content/Intent;
    .locals 16

    .prologue
    .line 458
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v2, v10

    monitor-enter v9

    .line 459
    move-object v9, v0

    :try_start_0
    iget-object v9, v9, Landroid/support/v7/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    if-nez v9, :cond_0

    .line 460
    const/4 v9, 0x0

    move-object v10, v2

    monitor-exit v10

    move-object v0, v9

    .line 488
    :goto_0
    return-object v0

    .line 463
    :cond_0
    move-object v9, v0

    invoke-direct {v9}, Landroid/support/v7/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 465
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    move v10, v1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;

    move-object v3, v9

    .line 467
    new-instance v9, Landroid/content/ComponentName;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v3

    iget-object v11, v11, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object v12, v3

    iget-object v12, v12, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v12, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v9

    .line 471
    new-instance v9, Landroid/content/Intent;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v5, v9

    .line 472
    move-object v9, v5

    move-object v10, v4

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v9

    .line 474
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;

    if-eqz v9, :cond_1

    .line 476
    new-instance v9, Landroid/content/Intent;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v5

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v6, v9

    .line 477
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;

    move-object v10, v0

    move-object v11, v6

    invoke-interface {v9, v10, v11}, Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;->onChooseActivity(Landroid/support/v7/widget/ActivityChooserModel;Landroid/content/Intent;)Z

    move-result v9

    move v7, v9

    .line 479
    move v9, v7

    if-eqz v9, :cond_1

    .line 480
    const/4 v9, 0x0

    move-object v10, v2

    monitor-exit v10

    move-object v0, v9

    goto :goto_0

    .line 484
    :cond_1
    new-instance v9, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v4

    .line 485
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    move-object v6, v9

    .line 486
    move-object v9, v0

    move-object v10, v6

    invoke-direct {v9, v10}, Landroid/support/v7/widget/ActivityChooserModel;->addHistoricalRecord(Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;)Z

    move-result v9

    .line 488
    move-object v9, v5

    move-object v10, v2

    monitor-exit v10

    move-object v0, v9

    goto :goto_0

    .line 489
    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v2

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v8

    throw v9
.end method

.method public getActivity(I)Landroid/content/pm/ResolveInfo;
    .locals 7

    .prologue
    .line 411
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 412
    move-object v4, v0

    :try_start_0
    invoke-direct {v4}, Landroid/support/v7/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 413
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    move v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;

    iget-object v4, v4, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    move-object v5, v2

    monitor-exit v5

    move-object v0, v4

    return-object v0

    .line 414
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public getActivityCount()I
    .locals 6

    .prologue
    .line 396
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 397
    move-object v3, v0

    :try_start_0
    invoke-direct {v3}, Landroid/support/v7/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 398
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move-object v4, v1

    monitor-exit v4

    move v0, v3

    return v0

    .line 399
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public getActivityIndex(Landroid/content/pm/ResolveInfo;)I
    .locals 11

    .prologue
    .line 425
    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    move-object v2, v9

    monitor-enter v8

    .line 426
    move-object v8, v0

    :try_start_0
    invoke-direct {v8}, Landroid/support/v7/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 427
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    move-object v3, v8

    .line 428
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v4, v8

    .line 429
    const/4 v8, 0x0

    move v5, v8

    :goto_0
    move v8, v5

    move v9, v4

    if-ge v8, v9, :cond_1

    .line 430
    move-object v8, v3

    move v9, v5

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;

    move-object v6, v8

    .line 431
    move-object v8, v6

    iget-object v8, v8, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    move-object v9, v1

    if-ne v8, v9, :cond_0

    .line 432
    move v8, v5

    move-object v9, v2

    monitor-exit v9

    move v0, v8

    .line 435
    :goto_1
    return v0

    .line 429
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 435
    :cond_1
    const/4 v8, -0x1

    move-object v9, v2

    monitor-exit v9

    move v0, v8

    goto :goto_1

    .line 436
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v2

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v7

    throw v8
.end method

.method public getDefaultActivity()Landroid/content/pm/ResolveInfo;
    .locals 6

    .prologue
    .line 513
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 514
    move-object v3, v0

    :try_start_0
    invoke-direct {v3}, Landroid/support/v7/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 515
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 516
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;

    iget-object v3, v3, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    .line 519
    :goto_0
    return-object v0

    .line 518
    :cond_0
    move-object v3, v1

    monitor-exit v3

    .line 519
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 518
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public getHistoryMaxSize()I
    .locals 6

    .prologue
    .line 631
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 632
    move-object v3, v0

    :try_start_0
    iget v3, v3, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryMaxSize:I

    move-object v4, v1

    monitor-exit v4

    move v0, v3

    return v0

    .line 633
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public getHistorySize()I
    .locals 6

    .prologue
    .line 642
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 643
    move-object v3, v0

    :try_start_0
    invoke-direct {v3}, Landroid/support/v7/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 644
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move-object v4, v1

    monitor-exit v4

    move v0, v3

    return v0

    .line 645
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 383
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 384
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroid/support/v7/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    return-object v0

    .line 385
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public setActivitySorter(Landroid/support/v7/widget/ActivityChooserModel$ActivitySorter;)V
    .locals 7

    .prologue
    .line 588
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 589
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroid/support/v7/widget/ActivityChooserModel;->mActivitySorter:Landroid/support/v7/widget/ActivityChooserModel$ActivitySorter;

    move-object v5, v1

    if-ne v4, v5, :cond_0

    .line 590
    move-object v4, v2

    monitor-exit v4

    .line 597
    :goto_0
    return-void

    .line 592
    :cond_0
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v7/widget/ActivityChooserModel;->mActivitySorter:Landroid/support/v7/widget/ActivityChooserModel$ActivitySorter;

    .line 593
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/ActivityChooserModel;->sortActivitiesIfNeeded()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 594
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/ActivityChooserModel;->notifyChanged()V

    .line 596
    :cond_1
    move-object v4, v2

    monitor-exit v4

    .line 597
    goto :goto_0

    .line 596
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public setDefaultActivity(I)V
    .locals 16

    .prologue
    .line 533
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v2, v10

    monitor-enter v9

    .line 534
    move-object v9, v0

    :try_start_0
    invoke-direct {v9}, Landroid/support/v7/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 536
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    move v10, v1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;

    move-object v3, v9

    .line 537
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;

    move-object v4, v9

    .line 540
    move-object v9, v4

    if-eqz v9, :cond_0

    .line 542
    move-object v9, v4

    iget v9, v9, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    move-object v10, v3

    iget v10, v10, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x40a00000    # 5.0f

    add-float/2addr v9, v10

    move v5, v9

    .line 548
    :goto_0
    new-instance v9, Landroid/content/ComponentName;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v3

    iget-object v11, v11, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object v12, v3

    iget-object v12, v12, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v12, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v9

    .line 551
    new-instance v9, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v6

    .line 552
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move v14, v5

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    move-object v7, v9

    .line 553
    move-object v9, v0

    move-object v10, v7

    invoke-direct {v9, v10}, Landroid/support/v7/widget/ActivityChooserModel;->addHistoricalRecord(Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;)Z

    move-result v9

    .line 554
    move-object v9, v2

    monitor-exit v9

    .line 555
    return-void

    .line 545
    :cond_0
    const/high16 v9, 0x3f800000    # 1.0f

    move v5, v9

    goto :goto_0

    .line 554
    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v2

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v8

    throw v9
.end method

.method public setHistoryMaxSize(I)V
    .locals 7

    .prologue
    .line 613
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 614
    move-object v4, v0

    :try_start_0
    iget v4, v4, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryMaxSize:I

    move v5, v1

    if-ne v4, v5, :cond_0

    .line 615
    move-object v4, v2

    monitor-exit v4

    .line 623
    :goto_0
    return-void

    .line 617
    :cond_0
    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryMaxSize:I

    .line 618
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsIfNeeded()V

    .line 619
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/ActivityChooserModel;->sortActivitiesIfNeeded()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 620
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/ActivityChooserModel;->notifyChanged()V

    .line 622
    :cond_1
    move-object v4, v2

    monitor-exit v4

    .line 623
    goto :goto_0

    .line 622
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 367
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 368
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroid/support/v7/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    move-object v5, v1

    if-ne v4, v5, :cond_0

    .line 369
    move-object v4, v2

    monitor-exit v4

    .line 375
    :goto_0
    return-void

    .line 371
    :cond_0
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v7/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    .line 372
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v7/widget/ActivityChooserModel;->mReloadActivities:Z

    .line 373
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 374
    move-object v4, v2

    monitor-exit v4

    .line 375
    goto :goto_0

    .line 374
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public setOnChooseActivityListener(Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;)V
    .locals 7

    .prologue
    .line 498
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 499
    move-object v4, v0

    move-object v5, v1

    :try_start_0
    iput-object v5, v4, Landroid/support/v7/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;

    .line 500
    move-object v4, v2

    monitor-exit v4

    .line 501
    return-void

    .line 500
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method
