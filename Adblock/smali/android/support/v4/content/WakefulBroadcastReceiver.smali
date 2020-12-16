.class public abstract Landroid/support/v4/content/WakefulBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WakefulBroadcastReceiver.java"


# static fields
.field private static final EXTRA_WAKE_LOCK_ID:Ljava/lang/String; = "android.support.content.wakelockid"

.field private static final mActiveWakeLocks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/PowerManager$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field private static mNextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    new-instance v0, Landroid/util/SparseArray;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/support/v4/content/WakefulBroadcastReceiver;->mActiveWakeLocks:Landroid/util/SparseArray;

    .line 66
    const/4 v0, 0x1

    sput v0, Landroid/support/v4/content/WakefulBroadcastReceiver;->mNextId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static completeWakefulIntent(Landroid/content/Intent;)Z
    .locals 9

    .prologue
    .line 115
    move-object v0, p0

    move-object v5, v0

    const-string v6, "android.support.content.wakelockid"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    move v1, v5

    .line 116
    move v5, v1

    if-nez v5, :cond_0

    .line 117
    const/4 v5, 0x0

    move v0, v5

    .line 133
    :goto_0
    return v0

    .line 119
    :cond_0
    sget-object v5, Landroid/support/v4/content/WakefulBroadcastReceiver;->mActiveWakeLocks:Landroid/util/SparseArray;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v2, v6

    monitor-enter v5

    .line 120
    :try_start_0
    sget-object v5, Landroid/support/v4/content/WakefulBroadcastReceiver;->mActiveWakeLocks:Landroid/util/SparseArray;

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager$WakeLock;

    move-object v3, v5

    .line 121
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 122
    move-object v5, v3

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 123
    sget-object v5, Landroid/support/v4/content/WakefulBroadcastReceiver;->mActiveWakeLocks:Landroid/util/SparseArray;

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 124
    const/4 v5, 0x1

    move-object v6, v2

    monitor-exit v6

    move v0, v5

    goto :goto_0

    .line 132
    :cond_1
    const-string v5, "WakefulBroadcastReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No active wake lock id #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 133
    const/4 v5, 0x1

    move-object v6, v2

    monitor-exit v6

    move v0, v5

    goto :goto_0

    .line 134
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

.method public static startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 13

    .prologue
    .line 83
    move-object v0, p0

    move-object v1, p1

    sget-object v8, Landroid/support/v4/content/WakefulBroadcastReceiver;->mActiveWakeLocks:Landroid/util/SparseArray;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v2, v9

    monitor-enter v8

    .line 84
    :try_start_0
    sget v8, Landroid/support/v4/content/WakefulBroadcastReceiver;->mNextId:I

    move v3, v8

    .line 85
    sget v8, Landroid/support/v4/content/WakefulBroadcastReceiver;->mNextId:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    sput v8, Landroid/support/v4/content/WakefulBroadcastReceiver;->mNextId:I

    .line 86
    sget v8, Landroid/support/v4/content/WakefulBroadcastReceiver;->mNextId:I

    if-gtz v8, :cond_0

    .line 87
    const/4 v8, 0x1

    sput v8, Landroid/support/v4/content/WakefulBroadcastReceiver;->mNextId:I

    .line 90
    :cond_0
    move-object v8, v1

    const-string v9, "android.support.content.wakelockid"

    move v10, v3

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    .line 91
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v8

    move-object v4, v8

    .line 92
    move-object v8, v4

    if-nez v8, :cond_1

    .line 93
    const/4 v8, 0x0

    move-object v9, v2

    monitor-exit v9

    move-object v0, v8

    .line 102
    :goto_0
    return-object v0

    .line 96
    :cond_1
    move-object v8, v0

    const-string v9, "power"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    move-object v5, v8

    .line 97
    move-object v8, v5

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "wake:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v4

    .line 98
    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 97
    invoke-virtual {v8, v9, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    move-object v6, v8

    .line 99
    move-object v8, v6

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 100
    move-object v8, v6

    const-wide/32 v9, 0xea60

    invoke-virtual {v8, v9, v10}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 101
    sget-object v8, Landroid/support/v4/content/WakefulBroadcastReceiver;->mActiveWakeLocks:Landroid/util/SparseArray;

    move v9, v3

    move-object v10, v6

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 102
    move-object v8, v4

    move-object v9, v2

    monitor-exit v9

    move-object v0, v8

    goto :goto_0

    .line 103
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
