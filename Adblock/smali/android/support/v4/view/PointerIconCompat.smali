.class public final Landroid/support/v4/view/PointerIconCompat;
.super Ljava/lang/Object;
.source "PointerIconCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/PointerIconCompat$Api24PointerIconCompatImpl;,
        Landroid/support/v4/view/PointerIconCompat$BasePointerIconCompatImpl;,
        Landroid/support/v4/view/PointerIconCompat$PointerIconCompatImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/view/PointerIconCompat$PointerIconCompatImpl;

.field public static final TYPE_ALIAS:I = 0x3f2

.field public static final TYPE_ALL_SCROLL:I = 0x3f5

.field public static final TYPE_ARROW:I = 0x3e8

.field public static final TYPE_CELL:I = 0x3ee

.field public static final TYPE_CONTEXT_MENU:I = 0x3e9

.field public static final TYPE_COPY:I = 0x3f3

.field public static final TYPE_CROSSHAIR:I = 0x3ef

.field public static final TYPE_DEFAULT:I = 0x3e8

.field public static final TYPE_GRAB:I = 0x3fc

.field public static final TYPE_GRABBING:I = 0x3fd

.field public static final TYPE_HAND:I = 0x3ea

.field public static final TYPE_HELP:I = 0x3eb

.field public static final TYPE_HORIZONTAL_DOUBLE_ARROW:I = 0x3f6

.field public static final TYPE_NO_DROP:I = 0x3f4

.field public static final TYPE_NULL:I = 0x0

.field public static final TYPE_TEXT:I = 0x3f0

.field public static final TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW:I = 0x3f9

.field public static final TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW:I = 0x3f8

.field public static final TYPE_VERTICAL_DOUBLE_ARROW:I = 0x3f7

.field public static final TYPE_VERTICAL_TEXT:I = 0x3f1

.field public static final TYPE_WAIT:I = 0x3ec

.field public static final TYPE_ZOOM_IN:I = 0x3fa

.field public static final TYPE_ZOOM_OUT:I = 0x3fb


# instance fields
.field private mPointerIcon:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 158
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    new-instance v0, Landroid/support/v4/view/PointerIconCompat$Api24PointerIconCompatImpl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/view/PointerIconCompat$Api24PointerIconCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/PointerIconCompat;->IMPL:Landroid/support/v4/view/PointerIconCompat$PointerIconCompatImpl;

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    new-instance v0, Landroid/support/v4/view/PointerIconCompat$BasePointerIconCompatImpl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/view/PointerIconCompat$BasePointerIconCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/PointerIconCompat;->IMPL:Landroid/support/v4/view/PointerIconCompat$PointerIconCompatImpl;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 104
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 105
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/view/PointerIconCompat;->mPointerIcon:Ljava/lang/Object;

    .line 106
    return-void
.end method

.method public static create(Landroid/graphics/Bitmap;FF)Landroid/support/v4/view/PointerIconCompat;
    .locals 10

    .prologue
    .line 193
    move-object v0, p0

    move v1, p1

    move v2, p2

    new-instance v3, Landroid/support/v4/view/PointerIconCompat;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    sget-object v5, Landroid/support/v4/view/PointerIconCompat;->IMPL:Landroid/support/v4/view/PointerIconCompat$PointerIconCompatImpl;

    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-interface {v5, v6, v7, v8}, Landroid/support/v4/view/PointerIconCompat$PointerIconCompatImpl;->create(Landroid/graphics/Bitmap;FF)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/view/PointerIconCompat;-><init>(Ljava/lang/Object;)V

    move-object v0, v3

    return-object v0
.end method

.method public static getSystemIcon(Landroid/content/Context;I)Landroid/support/v4/view/PointerIconCompat;
    .locals 8

    .prologue
    .line 176
    move-object v0, p0

    move v1, p1

    new-instance v2, Landroid/support/v4/view/PointerIconCompat;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    sget-object v4, Landroid/support/v4/view/PointerIconCompat;->IMPL:Landroid/support/v4/view/PointerIconCompat$PointerIconCompatImpl;

    move-object v5, v0

    move v6, v1

    invoke-interface {v4, v5, v6}, Landroid/support/v4/view/PointerIconCompat$PointerIconCompatImpl;->getSystemIcon(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v4/view/PointerIconCompat;-><init>(Ljava/lang/Object;)V

    move-object v0, v2

    return-object v0
.end method

.method public static load(Landroid/content/res/Resources;I)Landroid/support/v4/view/PointerIconCompat;
    .locals 8

    .prologue
    .line 218
    move-object v0, p0

    move v1, p1

    new-instance v2, Landroid/support/v4/view/PointerIconCompat;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    sget-object v4, Landroid/support/v4/view/PointerIconCompat;->IMPL:Landroid/support/v4/view/PointerIconCompat$PointerIconCompatImpl;

    move-object v5, v0

    move v6, v1

    invoke-interface {v4, v5, v6}, Landroid/support/v4/view/PointerIconCompat$PointerIconCompatImpl;->load(Landroid/content/res/Resources;I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v4/view/PointerIconCompat;-><init>(Ljava/lang/Object;)V

    move-object v0, v2

    return-object v0
.end method


# virtual methods
.method public getPointerIcon()Ljava/lang/Object;
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 113
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/view/PointerIconCompat;->mPointerIcon:Ljava/lang/Object;

    move-object v0, v1

    return-object v0
.end method
