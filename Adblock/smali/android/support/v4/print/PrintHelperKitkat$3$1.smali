.class Landroid/support/v4/print/PrintHelperKitkat$3$1;
.super Landroid/os/AsyncTask;
.source "PrintHelperKitkat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/print/PrintHelperKitkat$3;->onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Boolean;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/print/PrintHelperKitkat$3;

.field final synthetic val$cancellationSignal:Landroid/os/CancellationSignal;

.field final synthetic val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

.field final synthetic val$newPrintAttributes:Landroid/print/PrintAttributes;

.field final synthetic val$oldPrintAttributes:Landroid/print/PrintAttributes;


# direct methods
.method constructor <init>(Landroid/support/v4/print/PrintHelperKitkat$3;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;)V
    .locals 8

    .prologue
    .line 485
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroid/support/v4/print/PrintHelperKitkat$3$1;->this$1:Landroid/support/v4/print/PrintHelperKitkat$3;

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Landroid/support/v4/print/PrintHelperKitkat$3$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Landroid/support/v4/print/PrintHelperKitkat$3$1;->val$newPrintAttributes:Landroid/print/PrintAttributes;

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Landroid/support/v4/print/PrintHelperKitkat$3$1;->val$oldPrintAttributes:Landroid/print/PrintAttributes;

    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Landroid/support/v4/print/PrintHelperKitkat$3$1;->val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    move-object v6, v0

    invoke-direct {v6}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 502
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroid/support/v4/print/PrintHelperKitkat$3$1;->this$1:Landroid/support/v4/print/PrintHelperKitkat$3;

    iget-object v3, v3, Landroid/support/v4/print/PrintHelperKitkat$3;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/print/PrintHelperKitkat$3$1;->this$1:Landroid/support/v4/print/PrintHelperKitkat$3;

    iget-object v4, v4, Landroid/support/v4/print/PrintHelperKitkat$3;->val$imageFile:Landroid/net/Uri;

    const/16 v5, 0xdac

    invoke-static {v3, v4, v5}, Landroid/support/v4/print/PrintHelperKitkat;->access$400(Landroid/support/v4/print/PrintHelperKitkat;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    .line 506
    :goto_0
    return-object v0

    .line 503
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 506
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 485
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, [Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/support/v4/print/PrintHelperKitkat$3$1;->doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method protected onCancelled(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 554
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/print/PrintHelperKitkat$3$1;->val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-virtual {v2}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutCancelled()V

    .line 555
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/print/PrintHelperKitkat$3$1;->this$1:Landroid/support/v4/print/PrintHelperKitkat$3;

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v4/print/PrintHelperKitkat$3;->mLoadBitmap:Landroid/os/AsyncTask;

    .line 556
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 485
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/support/v4/print/PrintHelperKitkat$3$1;->onCancelled(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 13

    .prologue
    .line 511
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 515
    move-object v5, v1

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/print/PrintHelperKitkat$3$1;->this$1:Landroid/support/v4/print/PrintHelperKitkat$3;

    iget-object v5, v5, Landroid/support/v4/print/PrintHelperKitkat$3;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    iget-boolean v5, v5, Landroid/support/v4/print/PrintHelperKitkat;->mPrintActivityRespectsOrientation:Z

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/print/PrintHelperKitkat$3$1;->this$1:Landroid/support/v4/print/PrintHelperKitkat$3;

    iget-object v5, v5, Landroid/support/v4/print/PrintHelperKitkat$3;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    iget v5, v5, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    if-nez v5, :cond_1

    .line 519
    :cond_0
    move-object v5, v0

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v3, v6

    monitor-enter v5

    .line 520
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroid/support/v4/print/PrintHelperKitkat$3$1;->this$1:Landroid/support/v4/print/PrintHelperKitkat$3;

    invoke-static {v5}, Landroid/support/v4/print/PrintHelperKitkat$3;->access$500(Landroid/support/v4/print/PrintHelperKitkat$3;)Landroid/print/PrintAttributes;

    move-result-object v5

    invoke-virtual {v5}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v5

    move-object v2, v5

    .line 521
    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    move-object v5, v2

    if-eqz v5, :cond_1

    .line 524
    move-object v5, v2

    invoke-virtual {v5}, Landroid/print/PrintAttributes$MediaSize;->isPortrait()Z

    move-result v5

    move-object v6, v1

    invoke-static {v6}, Landroid/support/v4/print/PrintHelperKitkat;->access$600(Landroid/graphics/Bitmap;)Z

    move-result v6

    if-eq v5, v6, :cond_1

    .line 525
    new-instance v5, Landroid/graphics/Matrix;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    move-object v3, v5

    .line 527
    move-object v5, v3

    const/high16 v6, 0x42b40000    # 90.0f

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->postRotate(F)Z

    move-result v5

    .line 528
    move-object v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v1

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    move-object v9, v1

    .line 529
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move-object v10, v3

    const/4 v11, 0x1

    .line 528
    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v1, v5

    .line 534
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/print/PrintHelperKitkat$3$1;->this$1:Landroid/support/v4/print/PrintHelperKitkat$3;

    move-object v6, v1

    iput-object v6, v5, Landroid/support/v4/print/PrintHelperKitkat$3;->mBitmap:Landroid/graphics/Bitmap;

    .line 535
    move-object v5, v1

    if-eqz v5, :cond_3

    .line 536
    new-instance v5, Landroid/print/PrintDocumentInfo$Builder;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/print/PrintHelperKitkat$3$1;->this$1:Landroid/support/v4/print/PrintHelperKitkat$3;

    iget-object v7, v7, Landroid/support/v4/print/PrintHelperKitkat$3;->val$jobName:Ljava/lang/String;

    invoke-direct {v6, v7}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 537
    invoke-virtual {v5, v6}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v5

    const/4 v6, 0x1

    .line 538
    invoke-virtual {v5, v6}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v5

    .line 539
    invoke-virtual {v5}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    move-result-object v5

    move-object v2, v5

    .line 541
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/print/PrintHelperKitkat$3$1;->val$newPrintAttributes:Landroid/print/PrintAttributes;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/print/PrintHelperKitkat$3$1;->val$oldPrintAttributes:Landroid/print/PrintAttributes;

    invoke-virtual {v5, v6}, Landroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    :goto_0
    move v3, v5

    .line 543
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/print/PrintHelperKitkat$3$1;->val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    move-object v6, v2

    move v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    .line 548
    :goto_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/print/PrintHelperKitkat$3$1;->this$1:Landroid/support/v4/print/PrintHelperKitkat$3;

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/support/v4/print/PrintHelperKitkat$3;->mLoadBitmap:Landroid/os/AsyncTask;

    .line 549
    return-void

    .line 521
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v4

    throw v5

    .line 541
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 546
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/print/PrintHelperKitkat$3$1;->val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFailed(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 485
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/support/v4/print/PrintHelperKitkat$3$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 6

    .prologue
    .line 489
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/print/PrintHelperKitkat$3$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    new-instance v2, Landroid/support/v4/print/PrintHelperKitkat$3$1$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/v4/print/PrintHelperKitkat$3$1$1;-><init>(Landroid/support/v4/print/PrintHelperKitkat$3$1;)V

    invoke-virtual {v1, v2}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 497
    return-void
.end method
