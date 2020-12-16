.class public Landroid/support/v4/media/session/ParcelableVolumeInfo;
.super Ljava/lang/Object;
.source "ParcelableVolumeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/media/session/ParcelableVolumeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public audioStream:I

.field public controlType:I

.field public currentVolume:I

.field public maxVolume:I

.field public volumeType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    new-instance v0, Landroid/support/v4/media/session/ParcelableVolumeInfo$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/media/session/ParcelableVolumeInfo$1;-><init>()V

    sput-object v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 8

    .prologue
    .line 34
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 35
    move-object v6, v0

    move v7, v1

    iput v7, v6, Landroid/support/v4/media/session/ParcelableVolumeInfo;->volumeType:I

    .line 36
    move-object v6, v0

    move v7, v2

    iput v7, v6, Landroid/support/v4/media/session/ParcelableVolumeInfo;->audioStream:I

    .line 37
    move-object v6, v0

    move v7, v3

    iput v7, v6, Landroid/support/v4/media/session/ParcelableVolumeInfo;->controlType:I

    .line 38
    move-object v6, v0

    move v7, v4

    iput v7, v6, Landroid/support/v4/media/session/ParcelableVolumeInfo;->maxVolume:I

    .line 39
    move-object v6, v0

    move v7, v5

    iput v7, v6, Landroid/support/v4/media/session/ParcelableVolumeInfo;->currentVolume:I

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 43
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/support/v4/media/session/ParcelableVolumeInfo;->volumeType:I

    .line 44
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/support/v4/media/session/ParcelableVolumeInfo;->controlType:I

    .line 45
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/support/v4/media/session/ParcelableVolumeInfo;->maxVolume:I

    .line 46
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/support/v4/media/session/ParcelableVolumeInfo;->currentVolume:I

    .line 47
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/support/v4/media/session/ParcelableVolumeInfo;->audioStream:I

    .line 48
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/media/session/ParcelableVolumeInfo;->volumeType:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/media/session/ParcelableVolumeInfo;->controlType:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/media/session/ParcelableVolumeInfo;->maxVolume:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/media/session/ParcelableVolumeInfo;->currentVolume:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/media/session/ParcelableVolumeInfo;->audioStream:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    return-void
.end method
