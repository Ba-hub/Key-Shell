.class Landroid/support/v4/app/FragmentTabHost$DummyTabFactory;
.super Ljava/lang/Object;
.source "FragmentTabHost.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/FragmentTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DummyTabFactory"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 80
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 81
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/FragmentTabHost$DummyTabFactory;->mContext:Landroid/content/Context;

    .line 82
    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 7

    .prologue
    .line 86
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Landroid/view/View;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentTabHost$DummyTabFactory;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object v2, v3

    .line 87
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setMinimumWidth(I)V

    .line 88
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setMinimumHeight(I)V

    .line 89
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method
