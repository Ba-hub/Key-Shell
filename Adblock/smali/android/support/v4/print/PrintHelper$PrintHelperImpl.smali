.class Landroid/support/v4/print/PrintHelper$PrintHelperImpl;
.super Ljava/lang/Object;
.source "PrintHelper.java"

# interfaces
.implements Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/print/PrintHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrintHelperImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RealHelper:",
        "Landroid/support/v4/print/PrintHelperKitkat;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;"
    }
.end annotation


# instance fields
.field private final mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRealHelper;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/support/v4/print/PrintHelperKitkat;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRealHelper;)V"
        }
    .end annotation

    .prologue
    .line 161
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 162
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    .line 163
    return-void
.end method


# virtual methods
.method public getColorMode()I
    .locals 2

    .prologue
    .line 182
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v1}, Landroid/support/v4/print/PrintHelperKitkat;->getColorMode()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getOrientation()I
    .locals 2

    .prologue
    .line 192
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v1}, Landroid/support/v4/print/PrintHelperKitkat;->getOrientation()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getScaleMode()I
    .locals 2

    .prologue
    .line 172
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v1}, Landroid/support/v4/print/PrintHelperKitkat;->getScaleMode()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .locals 10

    .prologue
    .line 198
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    const/4 v5, 0x0

    move-object v4, v5

    .line 199
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 200
    new-instance v5, Landroid/support/v4/print/PrintHelper$PrintHelperImpl$1;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Landroid/support/v4/print/PrintHelper$PrintHelperImpl$1;-><init>(Landroid/support/v4/print/PrintHelper$PrintHelperImpl;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V

    move-object v4, v5

    .line 207
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v4/print/PrintHelperKitkat;->printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V

    .line 208
    return-void
.end method

.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 213
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    const/4 v5, 0x0

    move-object v4, v5

    .line 214
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 215
    new-instance v5, Landroid/support/v4/print/PrintHelper$PrintHelperImpl$2;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Landroid/support/v4/print/PrintHelper$PrintHelperImpl$2;-><init>(Landroid/support/v4/print/PrintHelper$PrintHelperImpl;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V

    move-object v4, v5

    .line 222
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v4/print/PrintHelperKitkat;->printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V

    .line 223
    return-void
.end method

.method public setColorMode(I)V
    .locals 4

    .prologue
    .line 177
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/print/PrintHelperKitkat;->setColorMode(I)V

    .line 178
    return-void
.end method

.method public setOrientation(I)V
    .locals 4

    .prologue
    .line 187
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/print/PrintHelperKitkat;->setOrientation(I)V

    .line 188
    return-void
.end method

.method public setScaleMode(I)V
    .locals 4

    .prologue
    .line 167
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/print/PrintHelperKitkat;->setScaleMode(I)V

    .line 168
    return-void
.end method
