.class public abstract Landroid/support/v7/widget/ForwardingListener;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ForwardingListener$TriggerLongPress;,
        Landroid/support/v7/widget/ForwardingListener$DisallowIntercept;
    }
.end annotation


# instance fields
.field private mActivePointerId:I

.field private mDisallowIntercept:Ljava/lang/Runnable;

.field private mForwarding:Z

.field private final mLongPressTimeout:I

.field private final mScaledTouchSlop:F

.field final mSrc:Landroid/view/View;

.field private final mTapTimeout:I

.field private final mTmpLocation:[I

.field private mTriggerLongPress:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 71
    move-object v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, v2, Landroid/support/v7/widget/ForwardingListener;->mTmpLocation:[I

    .line 74
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    .line 75
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setLongClickable(Z)V

    .line 77
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_0

    .line 78
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/ForwardingListener;->addDetachListenerApi12(Landroid/view/View;)V

    .line 83
    :goto_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Landroid/support/v7/widget/ForwardingListener;->mScaledTouchSlop:F

    .line 84
    move-object v2, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/ForwardingListener;->mTapTimeout:I

    .line 87
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/ForwardingListener;->mTapTimeout:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    add-int/2addr v3, v4

    const/4 v4, 0x2

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/support/v7/widget/ForwardingListener;->mLongPressTimeout:I

    .line 88
    return-void

    .line 80
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/ForwardingListener;->addDetachListenerBase(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/support/v7/widget/ForwardingListener;)V
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/ForwardingListener;->onDetachedFromWindow()V

    return-void
.end method

.method private addDetachListenerApi12(Landroid/view/View;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0xc
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    new-instance v3, Landroid/support/v7/widget/ForwardingListener$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/v7/widget/ForwardingListener$1;-><init>(Landroid/support/v7/widget/ForwardingListener;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 102
    return-void
.end method

.method private addDetachListenerBase(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 105
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Landroid/support/v7/widget/ForwardingListener$2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/v7/widget/ForwardingListener$2;-><init>(Landroid/support/v7/widget/ForwardingListener;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 117
    return-void
.end method

.method private clearCallbacks()V
    .locals 3

    .prologue
    .line 250
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 251
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 254
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 255
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 257
    :cond_1
    return-void
.end method

.method private onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 155
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/widget/ForwardingListener;->mForwarding:Z

    .line 156
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/v7/widget/ForwardingListener;->mActivePointerId:I

    .line 158
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 159
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 161
    :cond_0
    return-void
.end method

.method private onTouchForwarded(Landroid/view/MotionEvent;)Z
    .locals 12

    .prologue
    .line 293
    move-object v0, p0

    move-object v1, p1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    move-object v2, v9

    .line 294
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/ForwardingListener;->getPopup()Landroid/support/v7/view/menu/ShowableListMenu;

    move-result-object v9

    move-object v3, v9

    .line 295
    move-object v9, v3

    if-eqz v9, :cond_0

    move-object v9, v3

    invoke-interface {v9}, Landroid/support/v7/view/menu/ShowableListMenu;->isShowing()Z

    move-result v9

    if-nez v9, :cond_1

    .line 296
    :cond_0
    const/4 v9, 0x0

    move v0, v9

    .line 318
    :goto_0
    return v0

    .line 299
    :cond_1
    move-object v9, v3

    invoke-interface {v9}, Landroid/support/v7/view/menu/ShowableListMenu;->getListView()Landroid/widget/ListView;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/DropDownListView;

    move-object v4, v9

    .line 300
    move-object v9, v4

    if-eqz v9, :cond_2

    move-object v9, v4

    invoke-virtual {v9}, Landroid/support/v7/widget/DropDownListView;->isShown()Z

    move-result v9

    if-nez v9, :cond_3

    .line 301
    :cond_2
    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 305
    :cond_3
    move-object v9, v1

    invoke-static {v9}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v9

    move-object v5, v9

    .line 306
    move-object v9, v0

    move-object v10, v2

    move-object v11, v5

    invoke-direct {v9, v10, v11}, Landroid/support/v7/widget/ForwardingListener;->toGlobalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v9

    .line 307
    move-object v9, v0

    move-object v10, v4

    move-object v11, v5

    invoke-direct {v9, v10, v11}, Landroid/support/v7/widget/ForwardingListener;->toLocalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v9

    .line 310
    move-object v9, v4

    move-object v10, v5

    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/ForwardingListener;->mActivePointerId:I

    invoke-virtual {v9, v10, v11}, Landroid/support/v7/widget/DropDownListView;->onForwardedEvent(Landroid/view/MotionEvent;I)Z

    move-result v9

    move v6, v9

    .line 311
    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 314
    move-object v9, v1

    invoke-static {v9}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v9

    move v7, v9

    .line 315
    move v9, v7

    const/4 v10, 0x1

    if-eq v9, v10, :cond_4

    move v9, v7

    const/4 v10, 0x3

    if-eq v9, v10, :cond_4

    const/4 v9, 0x1

    :goto_1
    move v8, v9

    .line 318
    move v9, v6

    if-eqz v9, :cond_5

    move v9, v8

    if-eqz v9, :cond_5

    const/4 v9, 0x1

    :goto_2
    move v0, v9

    goto :goto_0

    .line 315
    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    .line 318
    :cond_5
    const/4 v9, 0x0

    goto :goto_2
.end method

.method private onTouchObserved(Landroid/view/MotionEvent;)Z
    .locals 12

    .prologue
    .line 204
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    move-object v2, v7

    .line 205
    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/View;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 206
    const/4 v7, 0x0

    move v0, v7

    .line 246
    :goto_0
    return v0

    .line 209
    :cond_0
    move-object v7, v1

    invoke-static {v7}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v7

    move v3, v7

    .line 210
    move v7, v3

    packed-switch v7, :pswitch_data_0

    .line 246
    :cond_1
    :goto_1
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 212
    :pswitch_0
    move-object v7, v0

    move-object v8, v1

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, v7, Landroid/support/v7/widget/ForwardingListener;->mActivePointerId:I

    .line 214
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-nez v7, :cond_2

    .line 215
    move-object v7, v0

    new-instance v8, Landroid/support/v7/widget/ForwardingListener$DisallowIntercept;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Landroid/support/v7/widget/ForwardingListener$DisallowIntercept;-><init>(Landroid/support/v7/widget/ForwardingListener;)V

    iput-object v8, v7, Landroid/support/v7/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    .line 217
    :cond_2
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/ForwardingListener;->mTapTimeout:I

    int-to-long v9, v9

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v7

    .line 219
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    if-nez v7, :cond_3

    .line 220
    move-object v7, v0

    new-instance v8, Landroid/support/v7/widget/ForwardingListener$TriggerLongPress;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Landroid/support/v7/widget/ForwardingListener$TriggerLongPress;-><init>(Landroid/support/v7/widget/ForwardingListener;)V

    iput-object v8, v7, Landroid/support/v7/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    .line 222
    :cond_3
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/ForwardingListener;->mLongPressTimeout:I

    int-to-long v9, v9

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v7

    .line 223
    goto :goto_1

    .line 225
    :pswitch_1
    move-object v7, v1

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/ForwardingListener;->mActivePointerId:I

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v7

    move v4, v7

    .line 226
    move v7, v4

    if-ltz v7, :cond_1

    .line 227
    move-object v7, v1

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    move v5, v7

    .line 228
    move-object v7, v1

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    move v6, v7

    .line 231
    move-object v7, v2

    move v8, v5

    move v9, v6

    move-object v10, v0

    iget v10, v10, Landroid/support/v7/widget/ForwardingListener;->mScaledTouchSlop:F

    invoke-static {v7, v8, v9, v10}, Landroid/support/v7/widget/ForwardingListener;->pointInView(Landroid/view/View;FFF)Z

    move-result v7

    if-nez v7, :cond_4

    .line 232
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/v7/widget/ForwardingListener;->clearCallbacks()V

    .line 235
    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 236
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 238
    :cond_4
    goto :goto_1

    .line 242
    :pswitch_2
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/v7/widget/ForwardingListener;->clearCallbacks()V

    goto/16 :goto_1

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static pointInView(Landroid/view/View;FFF)Z
    .locals 7

    .prologue
    .line 322
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, v1

    move v5, v3

    neg-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    move v4, v2

    move v5, v3

    neg-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    move v4, v1

    move-object v5, v0

    .line 323
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    move v6, v3

    add-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    move v4, v2

    move-object v5, v0

    .line 324
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    move v6, v3

    add-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    return v0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private toGlobalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    .line 343
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ForwardingListener;->mTmpLocation:[I

    move-object v3, v4

    .line 344
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 345
    move-object v4, v2

    move-object v5, v3

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v5, v5

    move-object v6, v3

    const/4 v7, 0x1

    aget v6, v6, v7

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 346
    const/4 v4, 0x1

    move v0, v4

    return v0
.end method

.method private toLocalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    .line 332
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ForwardingListener;->mTmpLocation:[I

    move-object v3, v4

    .line 333
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 334
    move-object v4, v2

    move-object v5, v3

    const/4 v6, 0x0

    aget v5, v5, v6

    neg-int v5, v5

    int-to-float v5, v5

    move-object v6, v3

    const/4 v7, 0x1

    aget v6, v6, v7

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 335
    const/4 v4, 0x1

    move v0, v4

    return v0
.end method


# virtual methods
.method public abstract getPopup()Landroid/support/v7/view/menu/ShowableListMenu;
.end method

.method protected onForwardingStarted()Z
    .locals 3

    .prologue
    .line 173
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ForwardingListener;->getPopup()Landroid/support/v7/view/menu/ShowableListMenu;

    move-result-object v2

    move-object v1, v2

    .line 174
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Landroid/support/v7/view/menu/ShowableListMenu;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 175
    move-object v2, v1

    invoke-interface {v2}, Landroid/support/v7/view/menu/ShowableListMenu;->show()V

    .line 177
    :cond_0
    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method protected onForwardingStopped()Z
    .locals 3

    .prologue
    .line 190
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ForwardingListener;->getPopup()Landroid/support/v7/view/menu/ShowableListMenu;

    move-result-object v2

    move-object v1, v2

    .line 191
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Landroid/support/v7/view/menu/ShowableListMenu;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    move-object v2, v1

    invoke-interface {v2}, Landroid/support/v7/view/menu/ShowableListMenu;->dismiss()V

    .line 194
    :cond_0
    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method onLongPress()V
    .locals 13

    .prologue
    .line 260
    move-object v0, p0

    move-object v5, v0

    invoke-direct {v5}, Landroid/support/v7/widget/ForwardingListener;->clearCallbacks()V

    .line 262
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    move-object v1, v5

    .line 263
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->isLongClickable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/ForwardingListener;->onForwardingStarted()Z

    move-result v5

    if-nez v5, :cond_2

    .line 270
    goto :goto_0

    .line 274
    :cond_2
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 277
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-wide v2, v5

    .line 278
    move-wide v5, v2

    move-wide v7, v2

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    move-object v4, v5

    .line 279
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 280
    move-object v5, v4

    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 282
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v7/widget/ForwardingListener;->mForwarding:Z

    .line 283
    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 16

    .prologue
    .line 133
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v7/widget/ForwardingListener;->mForwarding:Z

    move v3, v8

    .line 135
    move v8, v3

    if-eqz v8, :cond_4

    .line 136
    move-object v8, v0

    move-object v9, v2

    invoke-direct {v8, v9}, Landroid/support/v7/widget/ForwardingListener;->onTouchForwarded(Landroid/view/MotionEvent;)Z

    move-result v8

    if-nez v8, :cond_0

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/ForwardingListener;->onForwardingStopped()Z

    move-result v8

    if-nez v8, :cond_3

    :cond_0
    const/4 v8, 0x1

    :goto_0
    move v4, v8

    .line 150
    :cond_1
    :goto_1
    move-object v8, v0

    move v9, v4

    iput-boolean v9, v8, Landroid/support/v7/widget/ForwardingListener;->mForwarding:Z

    .line 151
    move v8, v4

    if-nez v8, :cond_2

    move v8, v3

    if-eqz v8, :cond_6

    :cond_2
    const/4 v8, 0x1

    :goto_2
    move v0, v8

    return v0

    .line 136
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 138
    :cond_4
    move-object v8, v0

    move-object v9, v2

    invoke-direct {v8, v9}, Landroid/support/v7/widget/ForwardingListener;->onTouchObserved(Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/ForwardingListener;->onForwardingStarted()Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    :goto_3
    move v4, v8

    .line 140
    move v8, v4

    if-eqz v8, :cond_1

    .line 142
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-wide v5, v8

    .line 143
    move-wide v8, v5

    move-wide v10, v5

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v8 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    move-object v7, v8

    .line 145
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 146
    move-object v8, v7

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_1

    .line 138
    :cond_5
    const/4 v8, 0x0

    goto :goto_3

    .line 151
    :cond_6
    const/4 v8, 0x0

    goto :goto_2
.end method
