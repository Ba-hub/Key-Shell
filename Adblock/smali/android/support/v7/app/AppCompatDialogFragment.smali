.class public Landroid/support/v7/app/AppCompatDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "AppCompatDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/support/v7/app/AppCompatDialog;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/app/AppCompatDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/app/AppCompatDialogFragment;->getTheme()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/support/v7/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    move-object v0, v2

    return-object v0
.end method

.method public setupDialog(Landroid/app/Dialog;I)V
    .locals 7
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v1

    instance-of v4, v4, Landroid/support/v7/app/AppCompatDialog;

    if-eqz v4, :cond_0

    .line 48
    move-object v4, v1

    check-cast v4, Landroid/support/v7/app/AppCompatDialog;

    move-object v3, v4

    .line 49
    move v4, v2

    packed-switch v4, :pswitch_data_0

    .line 63
    :goto_0
    return-void

    .line 51
    :pswitch_0
    move-object v4, v1

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x18

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 57
    :pswitch_1
    move-object v4, v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v7/app/AppCompatDialog;->supportRequestWindowFeature(I)Z

    move-result v4

    goto :goto_0

    .line 61
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-super {v4, v5, v6}, Landroid/support/v4/app/DialogFragment;->setupDialog(Landroid/app/Dialog;I)V

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
