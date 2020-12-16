.class public final Landroid/support/v4/view/MenuItemCompat;
.super Ljava/lang/Object;
.source "MenuItemCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/MenuItemCompat$IcsMenuVersionImpl;,
        Landroid/support/v4/view/MenuItemCompat$HoneycombMenuVersionImpl;,
        Landroid/support/v4/view/MenuItemCompat$BaseMenuVersionImpl;,
        Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;,
        Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

.field public static final SHOW_AS_ACTION_ALWAYS:I = 0x2

.field public static final SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW:I = 0x8

.field public static final SHOW_AS_ACTION_IF_ROOM:I = 0x1

.field public static final SHOW_AS_ACTION_NEVER:I = 0x0

.field public static final SHOW_AS_ACTION_WITH_TEXT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MenuItemCompat"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 248
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 249
    new-instance v0, Landroid/support/v4/view/MenuItemCompat$IcsMenuVersionImpl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/view/MenuItemCompat$IcsMenuVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    .line 255
    :goto_0
    return-void

    .line 250
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 251
    new-instance v0, Landroid/support/v4/view/MenuItemCompat$HoneycombMenuVersionImpl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/view/MenuItemCompat$HoneycombMenuVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    goto :goto_0

    .line 253
    :cond_1
    new-instance v0, Landroid/support/v4/view/MenuItemCompat$BaseMenuVersionImpl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/view/MenuItemCompat$BaseMenuVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 441
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collapseActionView(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 402
    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v1, :cond_0

    .line 403
    move-object v1, v0

    check-cast v1, Landroid/support/v4/internal/view/SupportMenuItem;

    invoke-interface {v1}, Landroid/support/v4/internal/view/SupportMenuItem;->collapseActionView()Z

    move-result v1

    move v0, v1

    .line 405
    :goto_0
    return v0

    :cond_0
    sget-object v1, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;->collapseActionView(Landroid/view/MenuItem;)Z

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public static expandActionView(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 383
    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v1, :cond_0

    .line 384
    move-object v1, v0

    check-cast v1, Landroid/support/v4/internal/view/SupportMenuItem;

    invoke-interface {v1}, Landroid/support/v4/internal/view/SupportMenuItem;->expandActionView()Z

    move-result v1

    move v0, v1

    .line 386
    :goto_0
    return v0

    :cond_0
    sget-object v1, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;->expandActionView(Landroid/view/MenuItem;)Z

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public static getActionProvider(Landroid/view/MenuItem;)Landroid/support/v4/view/ActionProvider;
    .locals 3

    .prologue
    .line 361
    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v1, :cond_0

    .line 362
    move-object v1, v0

    check-cast v1, Landroid/support/v4/internal/view/SupportMenuItem;

    invoke-interface {v1}, Landroid/support/v4/internal/view/SupportMenuItem;->getSupportActionProvider()Landroid/support/v4/view/ActionProvider;

    move-result-object v1

    move-object v0, v1

    .line 367
    :goto_0
    return-object v0

    .line 366
    :cond_0
    const-string v1, "MenuItemCompat"

    const-string v2, "getActionProvider: item does not implement SupportMenuItem; returning null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 367
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 3

    .prologue
    .line 322
    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v1, :cond_0

    .line 323
    move-object v1, v0

    check-cast v1, Landroid/support/v4/internal/view/SupportMenuItem;

    invoke-interface {v1}, Landroid/support/v4/internal/view/SupportMenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 325
    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public static isActionViewExpanded(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 418
    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v1, :cond_0

    .line 419
    move-object v1, v0

    check-cast v1, Landroid/support/v4/internal/view/SupportMenuItem;

    invoke-interface {v1}, Landroid/support/v4/internal/view/SupportMenuItem;->isActionViewExpanded()Z

    move-result v1

    move v0, v1

    .line 421
    :goto_0
    return v0

    :cond_0
    sget-object v1, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;->isActionViewExpanded(Landroid/view/MenuItem;)Z

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public static setActionProvider(Landroid/view/MenuItem;Landroid/support/v4/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 4

    .prologue
    .line 344
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    instance-of v2, v2, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v2, :cond_0

    .line 345
    move-object v2, v0

    check-cast v2, Landroid/support/v4/internal/view/SupportMenuItem;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/support/v4/internal/view/SupportMenuItem;->setSupportActionProvider(Landroid/support/v4/view/ActionProvider;)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v2

    move-object v0, v2

    .line 349
    :goto_0
    return-object v0

    .line 348
    :cond_0
    const-string v2, "MenuItemCompat"

    const-string v3, "setActionProvider: item does not implement SupportMenuItem; ignoring"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 349
    move-object v2, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public static setActionView(Landroid/view/MenuItem;I)Landroid/view/MenuItem;
    .locals 5

    .prologue
    .line 309
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    instance-of v2, v2, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v2, :cond_0

    .line 310
    move-object v2, v0

    check-cast v2, Landroid/support/v4/internal/view/SupportMenuItem;

    move v3, v1

    invoke-interface {v2, v3}, Landroid/support/v4/internal/view/SupportMenuItem;->setActionView(I)Landroid/view/MenuItem;

    move-result-object v2

    move-object v0, v2

    .line 312
    :goto_0
    return-object v0

    :cond_0
    sget-object v2, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;->setActionView(Landroid/view/MenuItem;I)Landroid/view/MenuItem;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public static setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;
    .locals 5

    .prologue
    .line 287
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    instance-of v2, v2, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v2, :cond_0

    .line 288
    move-object v2, v0

    check-cast v2, Landroid/support/v4/internal/view/SupportMenuItem;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/support/v4/internal/view/SupportMenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object v2

    move-object v0, v2

    .line 290
    :goto_0
    return-object v0

    :cond_0
    sget-object v2, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;->setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public static setOnActionExpandListener(Landroid/view/MenuItem;Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 5

    .prologue
    .line 435
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    instance-of v2, v2, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v2, :cond_0

    .line 436
    move-object v2, v0

    check-cast v2, Landroid/support/v4/internal/view/SupportMenuItem;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/support/v4/internal/view/SupportMenuItem;->setSupportOnActionExpandListener(Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object v2

    move-object v0, v2

    .line 438
    :goto_0
    return-object v0

    :cond_0
    sget-object v2, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;->setOnActionExpandListener(Landroid/view/MenuItem;Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)Landroid/view/MenuItem;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public static setShowAsAction(Landroid/view/MenuItem;I)V
    .locals 5

    .prologue
    .line 268
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    instance-of v2, v2, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v2, :cond_0

    .line 269
    move-object v2, v0

    check-cast v2, Landroid/support/v4/internal/view/SupportMenuItem;

    move v3, v1

    invoke-interface {v2, v3}, Landroid/support/v4/internal/view/SupportMenuItem;->setShowAsAction(I)V

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    sget-object v2, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;->setShowAsAction(Landroid/view/MenuItem;I)V

    goto :goto_0
.end method
