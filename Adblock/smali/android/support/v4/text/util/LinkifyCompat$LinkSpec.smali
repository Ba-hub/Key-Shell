.class Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;
.super Ljava/lang/Object;
.source "LinkifyCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/text/util/LinkifyCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LinkSpec"
.end annotation


# instance fields
.field end:I

.field frameworkAddedSpan:Landroid/text/style/URLSpan;

.field start:I

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 503
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 504
    return-void
.end method
