.class Landroid/support/v7/view/menu/BaseWrapper;
.super Ljava/lang/Object;
.source "BaseWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mWrappedObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 23
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v2, 0x0

    move-object v3, v1

    if-ne v2, v3, :cond_0

    .line 25
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Wrapped Object can not be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 27
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    .line 28
    return-void
.end method


# virtual methods
.method public getWrappedObject()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/view/menu/BaseWrapper;->mWrappedObject:Ljava/lang/Object;

    move-object v0, v1

    return-object v0
.end method
