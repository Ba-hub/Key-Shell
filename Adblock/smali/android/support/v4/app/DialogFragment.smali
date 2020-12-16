.class public Landroid/support/v4/app/DialogFragment;
.super Landroid/support/v4/app/Fragment;
.source "DialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final SAVED_BACK_STACK_ID:Ljava/lang/String; = "android:backStackId"

.field private static final SAVED_CANCELABLE:Ljava/lang/String; = "android:cancelable"

.field private static final SAVED_DIALOG_STATE_TAG:Ljava/lang/String; = "android:savedDialogState"

.field private static final SAVED_SHOWS_DIALOG:Ljava/lang/String; = "android:showsDialog"

.field private static final SAVED_STYLE:Ljava/lang/String; = "android:style"

.field private static final SAVED_THEME:Ljava/lang/String; = "android:theme"

.field public static final STYLE_NORMAL:I = 0x0

.field public static final STYLE_NO_FRAME:I = 0x2

.field public static final STYLE_NO_INPUT:I = 0x3

.field public static final STYLE_NO_TITLE:I = 0x1


# instance fields
.field mBackStackId:I

.field mCancelable:Z

.field mDialog:Landroid/app/Dialog;

.field mDismissed:Z

.field mShownByMe:Z

.field mShowsDialog:Z

.field mStyle:I

.field mTheme:I

.field mViewDestroyed:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 89
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v4/app/DialogFragment;->mStyle:I

    .line 90
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v4/app/DialogFragment;->mTheme:I

    .line 91
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    .line 92
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    .line 93
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    .line 101
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .prologue
    .line 171
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/DialogFragment;->dismissInternal(Z)V

    .line 172
    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 3

    .prologue
    .line 181
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/DialogFragment;->dismissInternal(Z)V

    .line 182
    return-void
.end method

.method dismissInternal(Z)V
    .locals 6

    .prologue
    .line 185
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    if-eqz v3, :cond_0

    .line 208
    :goto_0
    return-void

    .line 188
    :cond_0
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    .line 189
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v4/app/DialogFragment;->mShownByMe:Z

    .line 190
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_1

    .line 191
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 192
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 194
    :cond_1
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v4/app/DialogFragment;->mViewDestroyed:Z

    .line 195
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    if-ltz v3, :cond_2

    .line 196
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/app/DialogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/FragmentManager;->popBackStack(II)V

    .line 198
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    .line 208
    :goto_1
    goto :goto_0

    .line 200
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/app/DialogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    move-object v2, v3

    .line 201
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 202
    move v3, v1

    if-eqz v3, :cond_3

    .line 203
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    move-result v3

    goto :goto_1

    .line 205
    :cond_3
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    move-result v3

    goto :goto_1
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 211
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    move-object v0, v1

    return-object v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 5
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 308
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    if-nez v2, :cond_0

    .line 309
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v2

    move-object v0, v2

    .line 320
    :goto_0
    return-object v0

    .line 312
    :cond_0
    move-object v2, v0

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 314
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_1

    .line 315
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/app/DialogFragment;->mStyle:I

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/DialogFragment;->setupDialog(Landroid/app/Dialog;I)V

    .line 317
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    move-object v0, v2

    goto :goto_0

    .line 320
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/DialogFragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    move-object v0, v2

    goto :goto_0
.end method

.method public getShowsDialog()Z
    .locals 2

    .prologue
    .line 265
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    move v0, v1

    return v0
.end method

.method public getTheme()I
    .locals 2
    .annotation build Landroid/support/annotation/StyleRes;
    .end annotation

    .prologue
    .line 216
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/app/DialogFragment;->mTheme:I

    move v0, v1

    return v0
.end method

.method public isCancelable()Z
    .locals 2

    .prologue
    .line 237
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    move v0, v1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    .line 383
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 385
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    if-nez v5, :cond_0

    .line 410
    :goto_0
    return-void

    .line 389
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/app/DialogFragment;->getView()Landroid/view/View;

    move-result-object v5

    move-object v2, v5

    .line 390
    move-object v5, v2

    if-eqz v5, :cond_2

    .line 391
    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 392
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "DialogFragment can not be attached to a container view"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 395
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 397
    :cond_2
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/app/DialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    move-object v3, v5

    .line 398
    move-object v5, v3

    if-eqz v5, :cond_3

    .line 399
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 401
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 402
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 403
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 404
    move-object v5, v1

    if-eqz v5, :cond_4

    .line 405
    move-object v5, v1

    const-string v6, "android:savedDialogState"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    move-object v4, v5

    .line 406
    move-object v5, v4

    if-eqz v5, :cond_4

    .line 407
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 410
    :cond_4
    goto :goto_0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 270
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 271
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/DialogFragment;->mShownByMe:Z

    if-nez v2, :cond_0

    .line 274
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    .line 276
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 368
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 291
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 293
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/app/DialogFragment;->mContainerId:I

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    .line 295
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 296
    move-object v2, v0

    move-object v3, v1

    const-string v4, "android:style"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/support/v4/app/DialogFragment;->mStyle:I

    .line 297
    move-object v2, v0

    move-object v3, v1

    const-string v4, "android:theme"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/support/v4/app/DialogFragment;->mTheme:I

    .line 298
    move-object v2, v0

    move-object v3, v1

    const-string v4, "android:cancelable"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    .line 299
    move-object v2, v0

    move-object v3, v1

    const-string v4, "android:showsDialog"

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    .line 300
    move-object v2, v0

    move-object v3, v1

    const-string v4, "android:backStackId"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    .line 302
    :cond_0
    return-void

    .line 293
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 363
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/app/Dialog;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/app/DialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/app/DialogFragment;->getTheme()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    move-object v0, v2

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 461
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 462
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 466
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/DialogFragment;->mViewDestroyed:Z

    .line 467
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 468
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 470
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 280
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 281
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/DialogFragment;->mShownByMe:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    if-nez v1, :cond_0

    .line 285
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    .line 287
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    .prologue
    .line 372
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/DialogFragment;->mViewDestroyed:Z

    if-nez v2, :cond_0

    .line 377
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/DialogFragment;->dismissInternal(Z)V

    .line 379
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 424
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 425
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_0

    .line 426
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v3

    move-object v2, v3

    .line 427
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 428
    move-object v3, v1

    const-string v4, "android:savedDialogState"

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 431
    :cond_0
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/app/DialogFragment;->mStyle:I

    if-eqz v3, :cond_1

    .line 432
    move-object v3, v1

    const-string v4, "android:style"

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/app/DialogFragment;->mStyle:I

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 434
    :cond_1
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/app/DialogFragment;->mTheme:I

    if-eqz v3, :cond_2

    .line 435
    move-object v3, v1

    const-string v4, "android:theme"

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/app/DialogFragment;->mTheme:I

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 437
    :cond_2
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    if-nez v3, :cond_3

    .line 438
    move-object v3, v1

    const-string v4, "android:cancelable"

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 440
    :cond_3
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    if-nez v3, :cond_4

    .line 441
    move-object v3, v1

    const-string v4, "android:showsDialog"

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 443
    :cond_4
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 444
    move-object v3, v1

    const-string v4, "android:backStackId"

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 446
    :cond_5
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 414
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 416
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 417
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/DialogFragment;->mViewDestroyed:Z

    .line 418
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 420
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 450
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 451
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 452
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->hide()V

    .line 454
    :cond_0
    return-void
.end method

.method public setCancelable(Z)V
    .locals 4

    .prologue
    .line 229
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    .line 230
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 231
    :cond_0
    return-void
.end method

.method public setShowsDialog(Z)V
    .locals 4

    .prologue
    .line 258
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    .line 259
    return-void
.end method

.method public setStyle(II)V
    .locals 5
    .param p2    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 118
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v4/app/DialogFragment;->mStyle:I

    .line 119
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/app/DialogFragment;->mStyle:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/app/DialogFragment;->mStyle:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 120
    :cond_0
    move-object v3, v0

    const v4, 0x1030059

    iput v4, v3, Landroid/support/v4/app/DialogFragment;->mTheme:I

    .line 122
    :cond_1
    move v3, v2

    if-eqz v3, :cond_2

    .line 123
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/v4/app/DialogFragment;->mTheme:I

    .line 125
    :cond_2
    return-void
.end method

.method public setupDialog(Landroid/app/Dialog;I)V
    .locals 5
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 327
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, v2

    packed-switch v3, :pswitch_data_0

    .line 337
    :goto_0
    return-void

    .line 329
    :pswitch_0
    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 335
    :pswitch_1
    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    move-result v3

    goto :goto_0

    .line 327
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 156
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    .line 157
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v4/app/DialogFragment;->mShownByMe:Z

    .line 158
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 159
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v4/app/DialogFragment;->mViewDestroyed:Z

    .line 160
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    move-result v4

    iput v4, v3, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    .line 161
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    move v0, v3

    return v0
.end method

.method public show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 139
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    .line 140
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v4/app/DialogFragment;->mShownByMe:Z

    .line 141
    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    move-object v3, v4

    .line 142
    move-object v4, v3

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 143
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    move-result v4

    .line 144
    return-void
.end method
