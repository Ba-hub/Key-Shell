.class public Landroid/support/v4/content/CursorLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "CursorLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field mCancellationSignal:Landroid/support/v4/os/CancellationSignal;

.field mCursor:Landroid/database/Cursor;

.field final mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field mProjection:[Ljava/lang/String;

.field mSelection:Ljava/lang/String;

.field mSelectionArgs:[Ljava/lang/String;

.field mSortOrder:Ljava/lang/String;

.field mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 119
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 120
    move-object v2, v0

    new-instance v3, Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Landroid/support/v4/content/Loader;)V

    iput-object v3, v2, Landroid/support/v4/content/CursorLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 131
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    invoke-direct {v7, v8}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 132
    move-object v7, v0

    new-instance v8, Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Landroid/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Landroid/support/v4/content/Loader;)V

    iput-object v8, v7, Landroid/support/v4/content/CursorLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    .line 133
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Landroid/support/v4/content/CursorLoader;->mUri:Landroid/net/Uri;

    .line 134
    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Landroid/support/v4/content/CursorLoader;->mProjection:[Ljava/lang/String;

    .line 135
    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Landroid/support/v4/content/CursorLoader;->mSelection:Ljava/lang/String;

    .line 136
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Landroid/support/v4/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    .line 137
    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Landroid/support/v4/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    .line 138
    return-void
.end method


# virtual methods
.method public cancelLoadInBackground()V
    .locals 6

    .prologue
    .line 82
    move-object v0, p0

    move-object v3, v0

    invoke-super {v3}, Landroid/support/v4/content/AsyncTaskLoader;->cancelLoadInBackground()V

    .line 84
    move-object v3, v0

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 85
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroid/support/v4/content/CursorLoader;->mCancellationSignal:Landroid/support/v4/os/CancellationSignal;

    if-eqz v3, :cond_0

    .line 86
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/content/CursorLoader;->mCancellationSignal:Landroid/support/v4/os/CancellationSignal;

    invoke-virtual {v3}, Landroid/support/v4/os/CancellationSignal;->cancel()V

    .line 88
    :cond_0
    move-object v3, v1

    monitor-exit v3

    .line 89
    return-void

    .line 88
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

.method public deliverResult(Landroid/database/Cursor;)V
    .locals 5

    .prologue
    .line 94
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/content/CursorLoader;->isReset()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 97
    move-object v3, v1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    move-object v2, v3

    .line 102
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    .line 104
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/content/CursorLoader;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 105
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 108
    :cond_2
    move-object v3, v2

    if-eqz v3, :cond_3

    move-object v3, v2

    move-object v4, v1

    if-eq v3, v4, :cond_3

    move-object v3, v2

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 109
    move-object v3, v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 111
    :cond_3
    goto :goto_0
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/database/Cursor;

    invoke-virtual {v2, v3}, Landroid/support/v4/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 228
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Landroid/support/v4/content/AsyncTaskLoader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 229
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mUri="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/content/CursorLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 230
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mProjection="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 231
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/content/CursorLoader;->mProjection:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mSelection="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/content/CursorLoader;->mSelection:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mSelectionArgs="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 234
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mSortOrder="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mCursor="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 237
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mContentChanged="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/content/CursorLoader;->mContentChanged:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 238
    return-void
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/content/CursorLoader;->mProjection:[Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 2

    .prologue
    .line 203
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/content/CursorLoader;->mSelection:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 211
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getSortOrder()Ljava/lang/String;
    .locals 2

    .prologue
    .line 219
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 187
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/content/CursorLoader;->mUri:Landroid/net/Uri;

    move-object v0, v1

    return-object v0
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 16

    .prologue
    .line 52
    move-object/from16 v0, p0

    move-object v8, v0

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v1, v9

    monitor-enter v8

    .line 53
    move-object v8, v0

    :try_start_0
    invoke-virtual {v8}, Landroid/support/v4/content/CursorLoader;->isLoadInBackgroundCanceled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 54
    new-instance v8, Landroid/support/v4/os/OperationCanceledException;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    invoke-direct {v9}, Landroid/support/v4/os/OperationCanceledException;-><init>()V

    throw v8

    .line 57
    :catchall_0
    move-exception v8

    move-object v2, v8

    move-object v8, v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v2

    throw v8

    .line 56
    :cond_0
    move-object v8, v0

    :try_start_1
    new-instance v9, Landroid/support/v4/os/CancellationSignal;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Landroid/support/v4/os/CancellationSignal;-><init>()V

    iput-object v9, v8, Landroid/support/v4/content/CursorLoader;->mCancellationSignal:Landroid/support/v4/os/CancellationSignal;

    .line 57
    move-object v8, v1

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    move-object v8, v0

    :try_start_2
    invoke-virtual {v8}, Landroid/support/v4/content/CursorLoader;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/content/CursorLoader;->mUri:Landroid/net/Uri;

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/content/CursorLoader;->mProjection:[Ljava/lang/String;

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/content/CursorLoader;->mSelection:Ljava/lang/String;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v4/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    move-object v14, v0

    iget-object v14, v14, Landroid/support/v4/content/CursorLoader;->mCancellationSignal:Landroid/support/v4/os/CancellationSignal;

    invoke-static/range {v8 .. v14}, Landroid/support/v4/content/ContentResolverCompat;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/os/CancellationSignal;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v8

    move-object v1, v8

    .line 62
    move-object v8, v1

    if-eqz v8, :cond_1

    .line 65
    move-object v8, v1

    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 66
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/content/CursorLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-interface {v8, v9}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 72
    :cond_1
    move-object v8, v1

    move-object v2, v8

    .line 74
    move-object v8, v0

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v3, v9

    monitor-enter v8

    .line 75
    move-object v8, v0

    const/4 v9, 0x0

    :try_start_4
    iput-object v9, v8, Landroid/support/v4/content/CursorLoader;->mCancellationSignal:Landroid/support/v4/os/CancellationSignal;

    .line 76
    move-object v8, v3

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v8, v2

    move-object v0, v8

    return-object v0

    .line 67
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 68
    move-object v8, v1

    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 69
    move-object v8, v2

    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 74
    :catchall_1
    move-exception v8

    move-object v5, v8

    move-object v8, v0

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v6, v9

    monitor-enter v8

    .line 75
    move-object v8, v0

    const/4 v9, 0x0

    :try_start_6
    iput-object v9, v8, Landroid/support/v4/content/CursorLoader;->mCancellationSignal:Landroid/support/v4/os/CancellationSignal;

    .line 76
    move-object v8, v6

    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object v8, v5

    throw v8

    :catchall_2
    move-exception v8

    move-object v4, v8

    move-object v8, v3

    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object v8, v4

    throw v8

    :catchall_3
    move-exception v8

    move-object v7, v8

    move-object v8, v6

    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object v8, v7

    throw v8
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public onCanceled(Landroid/database/Cursor;)V
    .locals 3

    .prologue
    .line 168
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 169
    move-object v2, v1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 171
    :cond_0
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/database/Cursor;

    invoke-virtual {v2, v3}, Landroid/support/v4/content/CursorLoader;->onCanceled(Landroid/database/Cursor;)V

    return-void
.end method

.method protected onReset()V
    .locals 3

    .prologue
    .line 175
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    .line 178
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/content/CursorLoader;->onStopLoading()V

    .line 180
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 183
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    .line 184
    return-void
.end method

.method protected onStartLoading()V
    .locals 3

    .prologue
    .line 149
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 150
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v1, v2}, Landroid/support/v4/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V

    .line 152
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/content/CursorLoader;->takeContentChanged()Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_2

    .line 153
    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/content/CursorLoader;->forceLoad()V

    .line 155
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 2

    .prologue
    .line 163
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/content/CursorLoader;->cancelLoad()Z

    move-result v1

    .line 164
    return-void
.end method

.method public setProjection([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 199
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/content/CursorLoader;->mProjection:[Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setSelection(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 207
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/content/CursorLoader;->mSelection:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setSelectionArgs([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 215
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setSortOrder(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 223
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 4

    .prologue
    .line 191
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/content/CursorLoader;->mUri:Landroid/net/Uri;

    .line 192
    return-void
.end method
