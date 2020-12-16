.class Landroid/support/v7/app/AppCompatDelegateImplV9$ListMenuDecorView;
.super Landroid/support/v7/widget/ContentFrameLayout;
.source "AppCompatDelegateImplV9.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImplV9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListMenuDecorView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV9;Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 2117
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$ListMenuDecorView;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    .line 2118
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroid/support/v7/widget/ContentFrameLayout;-><init>(Landroid/content/Context;)V

    .line 2119
    return-void
.end method

.method private isOutOfBounds(II)Z
    .locals 6

    .prologue
    .line 2147
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    const/4 v4, -0x5

    if-lt v3, v4, :cond_0

    move v3, v2

    const/4 v4, -0x5

    if-lt v3, v4, :cond_0

    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/app/AppCompatDelegateImplV9$ListMenuDecorView;->getWidth()I

    move-result v4

    const/4 v5, 0x5

    add-int/lit8 v4, v4, 0x5

    if-gt v3, v4, :cond_0

    move v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/app/AppCompatDelegateImplV9$ListMenuDecorView;->getHeight()I

    move-result v4

    const/4 v5, 0x5

    add-int/lit8 v4, v4, 0x5

    if-le v3, v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    .line 2123
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV9$ListMenuDecorView;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    .line 2124
    invoke-super {v2, v3}, Landroid/support/v7/widget/ContentFrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    .line 2129
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    move v2, v5

    .line 2130
    move v5, v2

    if-nez v5, :cond_0

    .line 2131
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    move v3, v5

    .line 2132
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    move v4, v5

    .line 2133
    move-object v5, v0

    move v6, v3

    move v7, v4

    invoke-direct {v5, v6, v7}, Landroid/support/v7/app/AppCompatDelegateImplV9$ListMenuDecorView;->isOutOfBounds(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2134
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV9$ListMenuDecorView;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(I)V

    .line 2135
    const/4 v5, 0x1

    move v0, v5

    .line 2138
    :goto_0
    return v0

    :cond_0
    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Landroid/support/v7/widget/ContentFrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    move v0, v5

    goto :goto_0
.end method

.method public setBackgroundResource(I)V
    .locals 5

    .prologue
    .line 2143
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/app/AppCompatDelegateImplV9$ListMenuDecorView;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9$ListMenuDecorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2144
    return-void
.end method
