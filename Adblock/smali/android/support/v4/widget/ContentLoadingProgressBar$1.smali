.class Landroid/support/v4/widget/ContentLoadingProgressBar$1;
.super Ljava/lang/Object;
.source "ContentLoadingProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/ContentLoadingProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/ContentLoadingProgressBar;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/ContentLoadingProgressBar;)V
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/widget/ContentLoadingProgressBar$1;->this$0:Landroid/support/v4/widget/ContentLoadingProgressBar;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/ContentLoadingProgressBar$1;->this$0:Landroid/support/v4/widget/ContentLoadingProgressBar;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/widget/ContentLoadingProgressBar;->mPostedHide:Z

    .line 47
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/ContentLoadingProgressBar$1;->this$0:Landroid/support/v4/widget/ContentLoadingProgressBar;

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Landroid/support/v4/widget/ContentLoadingProgressBar;->mStartTime:J

    .line 48
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/ContentLoadingProgressBar$1;->this$0:Landroid/support/v4/widget/ContentLoadingProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/ContentLoadingProgressBar;->setVisibility(I)V

    .line 49
    return-void
.end method
