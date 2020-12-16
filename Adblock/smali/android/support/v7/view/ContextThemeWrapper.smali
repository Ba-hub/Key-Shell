.class public Landroid/support/v7/view/ContextThemeWrapper;
.super Landroid/content/ContextWrapper;
.source "ContextThemeWrapper.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mTheme:Landroid/content/res/Resources$Theme;

.field private mThemeResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .param p2    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 43
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 44
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/v7/view/ContextThemeWrapper;->mThemeResource:I

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 49
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v7/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    .line 50
    return-void
.end method

.method private initializeTheme()V
    .locals 7

    .prologue
    .line 105
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    move v1, v3

    .line 106
    move v3, v1

    if-eqz v3, :cond_0

    .line 107
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    iput-object v4, v3, Landroid/support/v7/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    .line 108
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    move-object v2, v3

    .line 109
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 110
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 113
    :cond_0
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/view/ContextThemeWrapper;->mThemeResource:I

    move v6, v1

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v7/view/ContextThemeWrapper;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 114
    return-void

    .line 105
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAssets()Landroid/content/res/AssetManager;
    .locals 2

    .prologue
    .line 119
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 80
    move-object v0, p0

    move-object v1, p1

    const-string v2, "layout_inflater"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;

    if-nez v2, :cond_0

    .line 82
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v7/view/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;

    .line 84
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/view/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;

    move-object v0, v2

    .line 86
    :goto_0
    return-object v0

    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 3

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    if-eqz v1, :cond_0

    .line 67
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    move-object v0, v1

    .line 75
    :goto_0
    return-object v0

    .line 70
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroid/support/v7/view/ContextThemeWrapper;->mThemeResource:I

    if-nez v1, :cond_1

    .line 71
    move-object v1, v0

    sget v2, Landroid/support/v7/appcompat/R$style;->Theme_AppCompat_Light:I

    iput v2, v1, Landroid/support/v7/view/ContextThemeWrapper;->mThemeResource:I

    .line 73
    :cond_1
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/view/ContextThemeWrapper;->initializeTheme()V

    .line 75
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    move-object v0, v1

    goto :goto_0
.end method

.method public getThemeResId()I
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/view/ContextThemeWrapper;->mThemeResource:I

    move v0, v1

    return v0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 7

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 102
    return-void
.end method

.method public setTheme(I)V
    .locals 4

    .prologue
    .line 54
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/view/ContextThemeWrapper;->mThemeResource:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 55
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/view/ContextThemeWrapper;->mThemeResource:I

    .line 56
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/view/ContextThemeWrapper;->initializeTheme()V

    .line 58
    :cond_0
    return-void
.end method
