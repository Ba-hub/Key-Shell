.class Landroid/support/v4/os/ResultReceiver$MyRunnable;
.super Ljava/lang/Object;
.source "ResultReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/os/ResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyRunnable"
.end annotation


# instance fields
.field final mResultCode:I

.field final mResultData:Landroid/os/Bundle;

.field final synthetic this$0:Landroid/support/v4/os/ResultReceiver;


# direct methods
.method constructor <init>(Landroid/support/v4/os/ResultReceiver;ILandroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v4/os/ResultReceiver$MyRunnable;->this$0:Landroid/support/v4/os/ResultReceiver;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 54
    move-object v4, v0

    move v5, v2

    iput v5, v4, Landroid/support/v4/os/ResultReceiver$MyRunnable;->mResultCode:I

    .line 55
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroid/support/v4/os/ResultReceiver$MyRunnable;->mResultData:Landroid/os/Bundle;

    .line 56
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/os/ResultReceiver$MyRunnable;->this$0:Landroid/support/v4/os/ResultReceiver;

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/os/ResultReceiver$MyRunnable;->mResultCode:I

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/os/ResultReceiver$MyRunnable;->mResultData:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 61
    return-void
.end method
