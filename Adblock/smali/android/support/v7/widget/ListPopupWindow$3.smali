.class Landroid/support/v7/widget/ListPopupWindow$3;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/ListPopupWindow;->buildDropDown()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ListPopupWindow;)V
    .locals 4

    .prologue
    .line 1153
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ListPopupWindow$3;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1158
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move v7, v3

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 1159
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ListPopupWindow$3;->this$0:Landroid/support/v7/widget/ListPopupWindow;

    iget-object v7, v7, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;

    move-object v6, v7

    .line 1161
    move-object v7, v6

    if-eqz v7, :cond_0

    .line 1162
    move-object v7, v6

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/DropDownListView;->setListSelectionHidden(Z)V

    .line 1165
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1169
    return-void
.end method
