.class public final Landroid/support/v4/os/CancellationSignal;
.super Ljava/lang/Object;
.source "CancellationSignal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/os/CancellationSignal$OnCancelListener;
    }
.end annotation


# instance fields
.field private mCancelInProgress:Z

.field private mCancellationSignalObj:Ljava/lang/Object;

.field private mIsCanceled:Z

.field private mOnCancelListener:Landroid/support/v4/os/CancellationSignal$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method private waitForCancelFinishedLocked()V
    .locals 3

    .prologue
    .line 150
    move-object v0, p0

    :goto_0
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/os/CancellationSignal;->mCancelInProgress:Z

    if-eqz v2, :cond_0

    .line 152
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    goto :goto_0

    .line 153
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 154
    goto :goto_0

    .line 156
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 12

    .prologue
    .line 67
    move-object v0, p0

    move-object v9, v0

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    move-object v3, v10

    monitor-enter v9

    .line 68
    move-object v9, v0

    :try_start_0
    iget-boolean v9, v9, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v9, :cond_0

    .line 69
    move-object v9, v3

    monitor-exit v9

    .line 90
    :goto_0
    return-void

    .line 71
    :cond_0
    move-object v9, v0

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z

    .line 72
    move-object v9, v0

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroid/support/v4/os/CancellationSignal;->mCancelInProgress:Z

    .line 73
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/os/CancellationSignal;->mOnCancelListener:Landroid/support/v4/os/CancellationSignal$OnCancelListener;

    move-object v1, v9

    .line 74
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    move-object v2, v9

    .line 75
    move-object v9, v3

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    move-object v9, v1

    if-eqz v9, :cond_1

    .line 79
    move-object v9, v1

    :try_start_1
    invoke-interface {v9}, Landroid/support/v4/os/CancellationSignal$OnCancelListener;->onCancel()V

    .line 81
    :cond_1
    move-object v9, v2

    if-eqz v9, :cond_2

    .line 82
    move-object v9, v2

    invoke-static {v9}, Landroid/support/v4/os/CancellationSignalCompatJellybean;->cancel(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 85
    :cond_2
    move-object v9, v0

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    move-object v3, v10

    monitor-enter v9

    .line 86
    move-object v9, v0

    const/4 v10, 0x0

    :try_start_2
    iput-boolean v10, v9, Landroid/support/v4/os/CancellationSignal;->mCancelInProgress:Z

    .line 87
    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 88
    move-object v9, v3

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 90
    goto :goto_0

    .line 75
    :catchall_0
    move-exception v9

    move-object v4, v9

    move-object v9, v3

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v9, v4

    throw v9

    .line 88
    :catchall_1
    move-exception v9

    move-object v5, v9

    move-object v9, v3

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v9, v5

    throw v9

    .line 85
    :catchall_2
    move-exception v9

    move-object v6, v9

    move-object v9, v0

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    move-object v7, v10

    monitor-enter v9

    .line 86
    move-object v9, v0

    const/4 v10, 0x0

    :try_start_5
    iput-boolean v10, v9, Landroid/support/v4/os/CancellationSignal;->mCancelInProgress:Z

    .line 87
    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 88
    move-object v9, v7

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object v9, v6

    throw v9

    :catchall_3
    move-exception v9

    move-object v8, v9

    move-object v9, v7

    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object v9, v8

    throw v9
.end method

.method public getCancellationSignalObject()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 135
    move-object v0, p0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    .line 136
    const/4 v3, 0x0

    move-object v0, v3

    .line 145
    :goto_0
    return-object v0

    .line 138
    :cond_0
    move-object v3, v0

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 139
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    if-nez v3, :cond_1

    .line 140
    move-object v3, v0

    invoke-static {}, Landroid/support/v4/os/CancellationSignalCompatJellybean;->create()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    .line 141
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v3, :cond_1

    .line 142
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    invoke-static {v3}, Landroid/support/v4/os/CancellationSignalCompatJellybean;->cancel(Ljava/lang/Object;)V

    .line 145
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    goto :goto_0

    .line 146
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

.method public isCanceled()Z
    .locals 6

    .prologue
    .line 44
    move-object v0, p0

    move-object v3, v0

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 45
    move-object v3, v0

    :try_start_0
    iget-boolean v3, v3, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z

    move-object v4, v1

    monitor-exit v4

    move v0, v3

    return v0

    .line 46
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

.method public setOnCancelListener(Landroid/support/v4/os/CancellationSignal$OnCancelListener;)V
    .locals 7

    .prologue
    .line 109
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 110
    move-object v4, v0

    :try_start_0
    invoke-direct {v4}, Landroid/support/v4/os/CancellationSignal;->waitForCancelFinishedLocked()V

    .line 112
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/os/CancellationSignal;->mOnCancelListener:Landroid/support/v4/os/CancellationSignal$OnCancelListener;

    move-object v5, v1

    if-ne v4, v5, :cond_0

    .line 113
    move-object v4, v2

    monitor-exit v4

    .line 121
    :goto_0
    return-void

    .line 115
    :cond_0
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v4/os/CancellationSignal;->mOnCancelListener:Landroid/support/v4/os/CancellationSignal$OnCancelListener;

    .line 116
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v4, :cond_1

    move-object v4, v1

    if-nez v4, :cond_2

    .line 117
    :cond_1
    move-object v4, v2

    monitor-exit v4

    goto :goto_0

    .line 119
    :cond_2
    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    move-object v4, v1

    invoke-interface {v4}, Landroid/support/v4/os/CancellationSignal$OnCancelListener;->onCancel()V

    .line 121
    goto :goto_0

    .line 119
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public throwIfCanceled()V
    .locals 4

    .prologue
    .line 55
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/os/CancellationSignal;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    new-instance v1, Landroid/support/v4/os/OperationCanceledException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/support/v4/os/OperationCanceledException;-><init>()V

    throw v1

    .line 58
    :cond_0
    return-void
.end method
