.class Landroid/support/v7/view/menu/StandardMenuPopup$1;
.super Ljava/lang/Object;
.source "StandardMenuPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/StandardMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/view/menu/StandardMenuPopup;


# direct methods
.method constructor <init>(Landroid/support/v7/view/menu/StandardMenuPopup;)V
    .locals 4

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/menu/StandardMenuPopup$1;->this$0:Landroid/support/v7/view/menu/StandardMenuPopup;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 64
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/StandardMenuPopup$1;->this$0:Landroid/support/v7/view/menu/StandardMenuPopup;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/StandardMenuPopup;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/StandardMenuPopup$1;->this$0:Landroid/support/v7/view/menu/StandardMenuPopup;

    iget-object v2, v2, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v2}, Landroid/support/v7/widget/MenuPopupWindow;->isModal()Z

    move-result v2

    if-nez v2, :cond_1

    .line 65
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/StandardMenuPopup$1;->this$0:Landroid/support/v7/view/menu/StandardMenuPopup;

    iget-object v2, v2, Landroid/support/v7/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    move-object v1, v2

    .line 66
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_2

    .line 67
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/StandardMenuPopup$1;->this$0:Landroid/support/v7/view/menu/StandardMenuPopup;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/StandardMenuPopup;->dismiss()V

    .line 73
    :cond_1
    :goto_0
    return-void

    .line 70
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/menu/StandardMenuPopup$1;->this$0:Landroid/support/v7/view/menu/StandardMenuPopup;

    iget-object v2, v2, Landroid/support/v7/view/menu/StandardMenuPopup;->mPopup:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v2}, Landroid/support/v7/widget/MenuPopupWindow;->show()V

    goto :goto_0
.end method
