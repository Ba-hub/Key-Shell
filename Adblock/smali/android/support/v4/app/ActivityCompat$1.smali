.class final Landroid/support/v4/app/ActivityCompat$1;
.super Ljava/lang/Object;
.source "ActivityCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$permissions:[Ljava/lang/String;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>([Ljava/lang/String;Landroid/app/Activity;I)V
    .locals 6

    .prologue
    .line 375
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/v4/app/ActivityCompat$1;->val$permissions:[Ljava/lang/String;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroid/support/v4/app/ActivityCompat$1;->val$activity:Landroid/app/Activity;

    move-object v4, v0

    move v5, v3

    iput v5, v4, Landroid/support/v4/app/ActivityCompat$1;->val$requestCode:I

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 378
    move-object v0, p0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/ActivityCompat$1;->val$permissions:[Ljava/lang/String;

    array-length v6, v6

    new-array v6, v6, [I

    move-object v1, v6

    .line 380
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/ActivityCompat$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    move-object v2, v6

    .line 381
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/ActivityCompat$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 383
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/ActivityCompat$1;->val$permissions:[Ljava/lang/String;

    array-length v6, v6

    move v4, v6

    .line 384
    const/4 v6, 0x0

    move v5, v6

    :goto_0
    move v6, v5

    move v7, v4

    if-ge v6, v7, :cond_0

    .line 385
    move-object v6, v1

    move v7, v5

    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/app/ActivityCompat$1;->val$permissions:[Ljava/lang/String;

    move v10, v5

    aget-object v9, v9, v10

    move-object v10, v3

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    aput v8, v6, v7

    .line 384
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 389
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/ActivityCompat$1;->val$activity:Landroid/app/Activity;

    check-cast v6, Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/app/ActivityCompat$1;->val$requestCode:I

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/ActivityCompat$1;->val$permissions:[Ljava/lang/String;

    move-object v9, v1

    invoke-interface {v6, v7, v8, v9}, Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 391
    return-void
.end method
