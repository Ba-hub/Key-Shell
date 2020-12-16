.class final Landroid/support/v4/app/FragmentState;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/app/FragmentState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mArguments:Landroid/os/Bundle;

.field final mClassName:Ljava/lang/String;

.field final mContainerId:I

.field final mDetached:Z

.field final mFragmentId:I

.field final mFromLayout:Z

.field final mHidden:Z

.field final mIndex:I

.field mInstance:Landroid/support/v4/app/Fragment;

.field final mRetainInstance:Z

.field mSavedFragmentState:Landroid/os/Bundle;

.field final mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 153
    new-instance v0, Landroid/support/v4/app/FragmentState$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/app/FragmentState$1;-><init>()V

    sput-object v0, Landroid/support/v4/app/FragmentState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 87
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 88
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/app/FragmentState;->mClassName:Ljava/lang/String;

    .line 89
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/support/v4/app/FragmentState;->mIndex:I

    .line 90
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Landroid/support/v4/app/FragmentState;->mFromLayout:Z

    .line 91
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/support/v4/app/FragmentState;->mFragmentId:I

    .line 92
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/support/v4/app/FragmentState;->mContainerId:I

    .line 93
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/app/FragmentState;->mTag:Ljava/lang/String;

    .line 94
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, v2, Landroid/support/v4/app/FragmentState;->mRetainInstance:Z

    .line 95
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    iput-boolean v3, v2, Landroid/support/v4/app/FragmentState;->mDetached:Z

    .line 96
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/app/FragmentState;->mArguments:Landroid/os/Bundle;

    .line 97
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_3
    iput-boolean v3, v2, Landroid/support/v4/app/FragmentState;->mHidden:Z

    .line 98
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 99
    return-void

    .line 90
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 94
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 95
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 97
    :cond_3
    const/4 v3, 0x0

    goto :goto_3
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 4

    .prologue
    .line 74
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 75
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/app/FragmentState;->mClassName:Ljava/lang/String;

    .line 76
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/v4/app/Fragment;->mIndex:I

    iput v3, v2, Landroid/support/v4/app/FragmentState;->mIndex:I

    .line 77
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    iput-boolean v3, v2, Landroid/support/v4/app/FragmentState;->mFromLayout:Z

    .line 78
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/v4/app/Fragment;->mFragmentId:I

    iput v3, v2, Landroid/support/v4/app/FragmentState;->mFragmentId:I

    .line 79
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/v4/app/Fragment;->mContainerId:I

    iput v3, v2, Landroid/support/v4/app/FragmentState;->mContainerId:I

    .line 80
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    iput-object v3, v2, Landroid/support/v4/app/FragmentState;->mTag:Ljava/lang/String;

    .line 81
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    iput-boolean v3, v2, Landroid/support/v4/app/FragmentState;->mRetainInstance:Z

    .line 82
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Landroid/support/v4/app/Fragment;->mDetached:Z

    iput-boolean v3, v2, Landroid/support/v4/app/FragmentState;->mDetached:Z

    .line 83
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    iput-object v3, v2, Landroid/support/v4/app/FragmentState;->mArguments:Landroid/os/Bundle;

    .line 84
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Landroid/support/v4/app/Fragment;->mHidden:Z

    iput-boolean v3, v2, Landroid/support/v4/app/FragmentState;->mHidden:Z

    .line 85
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .prologue
    .line 135
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public instantiate(Landroid/support/v4/app/FragmentHostCallback;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentManagerNonConfig;)Landroid/support/v4/app/Fragment;
    .locals 10

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    if-nez v5, :cond_2

    .line 104
    move-object v5, v1

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v4, v5

    .line 105
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentState;->mArguments:Landroid/os/Bundle;

    if-eqz v5, :cond_0

    .line 106
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentState;->mArguments:Landroid/os/Bundle;

    move-object v6, v4

    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 109
    :cond_0
    move-object v5, v0

    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentState;->mClassName:Ljava/lang/String;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentState;->mArguments:Landroid/os/Bundle;

    invoke-static {v6, v7, v8}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v6

    iput-object v6, v5, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    .line 111
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v5, :cond_1

    .line 112
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    move-object v6, v4

    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 113
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v6, v5, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 115
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/app/FragmentState;->mIndex:I

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/Fragment;->setIndex(ILandroid/support/v4/app/Fragment;)V

    .line 116
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/app/FragmentState;->mFromLayout:Z

    iput-boolean v6, v5, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    .line 117
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v4/app/Fragment;->mRestored:Z

    .line 118
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/app/FragmentState;->mFragmentId:I

    iput v6, v5, Landroid/support/v4/app/Fragment;->mFragmentId:I

    .line 119
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/app/FragmentState;->mContainerId:I

    iput v6, v5, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 120
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentState;->mTag:Ljava/lang/String;

    iput-object v6, v5, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 121
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/app/FragmentState;->mRetainInstance:Z

    iput-boolean v6, v5, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    .line 122
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/app/FragmentState;->mDetached:Z

    iput-boolean v6, v5, Landroid/support/v4/app/Fragment;->mDetached:Z

    .line 123
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/app/FragmentState;->mHidden:Z

    iput-boolean v6, v5, Landroid/support/v4/app/Fragment;->mHidden:Z

    .line 124
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    move-object v6, v1

    iget-object v6, v6, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object v6, v5, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 126
    sget-boolean v5, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Instantiated fragment "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 129
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    move-object v6, v3

    iput-object v6, v5, Landroid/support/v4/app/Fragment;->mChildNonConfig:Landroid/support/v4/app/FragmentManagerNonConfig;

    .line 130
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    move-object v0, v5

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    .line 140
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentState;->mClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/app/FragmentState;->mIndex:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/app/FragmentState;->mFromLayout:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/app/FragmentState;->mFragmentId:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/app/FragmentState;->mContainerId:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentState;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/app/FragmentState;->mRetainInstance:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/app/FragmentState;->mDetached:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentState;->mArguments:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 149
    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/app/FragmentState;->mHidden:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 151
    return-void

    .line 142
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 146
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 147
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 149
    :cond_3
    const/4 v4, 0x0

    goto :goto_3
.end method
