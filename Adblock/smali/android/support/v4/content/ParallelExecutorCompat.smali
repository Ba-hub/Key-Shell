.class public final Landroid/support/v4/content/ParallelExecutorCompat;
.super Ljava/lang/Object;
.source "ParallelExecutorCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParallelExecutor()Ljava/util/concurrent/Executor;
    .locals 2

    .prologue
    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 31
    invoke-static {}, Landroid/support/v4/content/ExecutorCompatHoneycomb;->getParallelExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/support/v4/content/ModernAsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    goto :goto_0
.end method
