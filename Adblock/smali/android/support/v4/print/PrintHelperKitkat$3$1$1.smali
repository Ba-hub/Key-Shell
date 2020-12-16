.class Landroid/support/v4/print/PrintHelperKitkat$3$1$1;
.super Ljava/lang/Object;
.source "PrintHelperKitkat.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/print/PrintHelperKitkat$3$1;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Landroid/support/v4/print/PrintHelperKitkat$3$1;


# direct methods
.method constructor <init>(Landroid/support/v4/print/PrintHelperKitkat$3$1;)V
    .locals 4

    .prologue
    .line 490
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/print/PrintHelperKitkat$3$1$1;->this$2:Landroid/support/v4/print/PrintHelperKitkat$3$1;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .prologue
    .line 493
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/print/PrintHelperKitkat$3$1$1;->this$2:Landroid/support/v4/print/PrintHelperKitkat$3$1;

    iget-object v1, v1, Landroid/support/v4/print/PrintHelperKitkat$3$1;->this$1:Landroid/support/v4/print/PrintHelperKitkat$3;

    invoke-static {v1}, Landroid/support/v4/print/PrintHelperKitkat$3;->access$300(Landroid/support/v4/print/PrintHelperKitkat$3;)V

    .line 494
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/print/PrintHelperKitkat$3$1$1;->this$2:Landroid/support/v4/print/PrintHelperKitkat$3$1;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/print/PrintHelperKitkat$3$1;->cancel(Z)Z

    move-result v1

    .line 495
    return-void
.end method
