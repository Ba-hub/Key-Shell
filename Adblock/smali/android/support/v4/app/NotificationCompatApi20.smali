.class Landroid/support/v4/app/NotificationCompatApi20;
.super Ljava/lang/Object;
.source "NotificationCompatApi20.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x14
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/NotificationCompatApi20$Builder;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static addAction(Landroid/app/Notification$Builder;Landroid/support/v4/app/NotificationCompatBase$Action;)V
    .locals 13

    .prologue
    .line 117
    move-object v0, p0

    move-object v1, p1

    new-instance v7, Landroid/app/Notification$Action$Builder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v1

    .line 118
    invoke-virtual {v9}, Landroid/support/v4/app/NotificationCompatBase$Action;->getIcon()I

    move-result v9

    move-object v10, v1

    invoke-virtual {v10}, Landroid/support/v4/app/NotificationCompatBase$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v11}, Landroid/support/v4/app/NotificationCompatBase$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v11

    invoke-direct {v8, v9, v10, v11}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    move-object v2, v7

    .line 119
    move-object v7, v1

    invoke-virtual {v7}, Landroid/support/v4/app/NotificationCompatBase$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 120
    move-object v7, v1

    .line 121
    invoke-virtual {v7}, Landroid/support/v4/app/NotificationCompatBase$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    move-result-object v7

    .line 120
    invoke-static {v7}, Landroid/support/v4/app/RemoteInputCompatApi20;->fromCompat([Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)[Landroid/app/RemoteInput;

    move-result-object v7

    move-object v3, v7

    move-object v7, v3

    array-length v7, v7

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_0

    move-object v7, v3

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 122
    move-object v7, v2

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    move-result-object v7

    .line 120
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 126
    :cond_0
    move-object v7, v1

    invoke-virtual {v7}, Landroid/support/v4/app/NotificationCompatBase$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 127
    new-instance v7, Landroid/os/Bundle;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v1

    invoke-virtual {v9}, Landroid/support/v4/app/NotificationCompatBase$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v3, v7

    .line 131
    :goto_1
    move-object v7, v3

    const-string v8, "android.support.allowGeneratedReplies"

    move-object v9, v1

    .line 132
    invoke-virtual {v9}, Landroid/support/v4/app/NotificationCompatBase$Action;->getAllowGeneratedReplies()Z

    move-result v9

    .line 131
    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 133
    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    move-result-object v7

    .line 134
    move-object v7, v0

    move-object v8, v2

    invoke-virtual {v8}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 135
    return-void

    .line 129
    :cond_1
    new-instance v7, Landroid/os/Bundle;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    move-object v3, v7

    goto :goto_1
.end method

.method public static getAction(Landroid/app/Notification;ILandroid/support/v4/app/NotificationCompatBase$Action$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/NotificationCompatBase$Action;
    .locals 7

    .prologue
    .line 140
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    move v5, v1

    aget-object v4, v4, v5

    move-object v5, v2

    move-object v6, v3

    invoke-static {v4, v5, v6}, Landroid/support/v4/app/NotificationCompatApi20;->getActionCompatFromAction(Landroid/app/Notification$Action;Landroid/support/v4/app/NotificationCompatBase$Action$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/NotificationCompatBase$Action;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method private static getActionCompatFromAction(Landroid/app/Notification$Action;Landroid/support/v4/app/NotificationCompatBase$Action$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/NotificationCompatBase$Action;
    .locals 12

    .prologue
    .line 146
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    .line 147
    invoke-virtual {v5}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v5

    move-object v6, v2

    .line 146
    invoke-static {v5, v6}, Landroid/support/v4/app/RemoteInputCompatApi20;->toCompat([Landroid/app/RemoteInput;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    move-result-object v5

    move-object v3, v5

    .line 148
    move-object v5, v0

    invoke-virtual {v5}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "android.support.allowGeneratedReplies"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    move v4, v5

    .line 150
    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Landroid/app/Notification$Action;->icon:I

    move-object v7, v0

    iget-object v7, v7, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    move-object v8, v0

    iget-object v8, v8, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    move-object v9, v0

    .line 151
    invoke-virtual {v9}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    move-object v10, v3

    move v11, v4

    .line 150
    invoke-interface/range {v5 .. v11}, Landroid/support/v4/app/NotificationCompatBase$Action$Factory;->build(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;Z)Landroid/support/v4/app/NotificationCompatBase$Action;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method private static getActionFromActionCompat(Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/app/Notification$Action;
    .locals 15

    .prologue
    .line 156
    move-object v0, p0

    new-instance v9, Landroid/app/Notification$Action$Builder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    .line 157
    invoke-virtual {v11}, Landroid/support/v4/app/NotificationCompatBase$Action;->getIcon()I

    move-result v11

    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v4/app/NotificationCompatBase$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v12

    move-object v13, v0

    invoke-virtual {v13}, Landroid/support/v4/app/NotificationCompatBase$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    move-object v1, v9

    .line 159
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v4/app/NotificationCompatBase$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 160
    new-instance v9, Landroid/os/Bundle;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/v4/app/NotificationCompatBase$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v2, v9

    .line 164
    :goto_0
    move-object v9, v2

    const-string v10, "android.support.allowGeneratedReplies"

    move-object v11, v0

    .line 165
    invoke-virtual {v11}, Landroid/support/v4/app/NotificationCompatBase$Action;->getAllowGeneratedReplies()Z

    move-result v11

    .line 164
    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 166
    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v9, v10}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    move-result-object v9

    .line 167
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v4/app/NotificationCompatBase$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    move-result-object v9

    move-object v3, v9

    .line 168
    move-object v9, v3

    if-eqz v9, :cond_1

    .line 169
    move-object v9, v3

    invoke-static {v9}, Landroid/support/v4/app/RemoteInputCompatApi20;->fromCompat([Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)[Landroid/app/RemoteInput;

    move-result-object v9

    move-object v4, v9

    .line 170
    move-object v9, v4

    move-object v5, v9

    move-object v9, v5

    array-length v9, v9

    move v6, v9

    const/4 v9, 0x0

    move v7, v9

    :goto_1
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_1

    move-object v9, v5

    move v10, v7

    aget-object v9, v9, v10

    move-object v8, v9

    .line 171
    move-object v9, v1

    move-object v10, v8

    invoke-virtual {v9, v10}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    move-result-object v9

    .line 170
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 162
    :cond_0
    new-instance v9, Landroid/os/Bundle;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    move-object v2, v9

    goto :goto_0

    .line 174
    :cond_1
    move-object v9, v1

    invoke-virtual {v9}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v9

    move-object v0, v9

    return-object v0
.end method

.method public static getActionsFromParcelableArrayList(Ljava/util/ArrayList;Landroid/support/v4/app/NotificationCompatBase$Action$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)[Landroid/support/v4/app/NotificationCompatBase$Action;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;",
            "Landroid/support/v4/app/NotificationCompatBase$Action$Factory;",
            "Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;",
            ")[",
            "Landroid/support/v4/app/NotificationCompatBase$Action;"
        }
    .end annotation

    .prologue
    .line 187
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    if-nez v6, :cond_0

    .line 188
    const/4 v6, 0x0

    move-object v0, v6

    .line 195
    :goto_0
    return-object v0

    .line 190
    :cond_0
    move-object v6, v1

    move-object v7, v0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-interface {v6, v7}, Landroid/support/v4/app/NotificationCompatBase$Action$Factory;->newArray(I)[Landroid/support/v4/app/NotificationCompatBase$Action;

    move-result-object v6

    move-object v3, v6

    .line 191
    const/4 v6, 0x0

    move v4, v6

    :goto_1
    move v6, v4

    move-object v7, v3

    array-length v7, v7

    if-ge v6, v7, :cond_1

    .line 192
    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Notification$Action;

    move-object v5, v6

    .line 193
    move-object v6, v3

    move v7, v4

    move-object v8, v5

    move-object v9, v1

    move-object v10, v2

    invoke-static {v8, v9, v10}, Landroid/support/v4/app/NotificationCompatApi20;->getActionCompatFromAction(Landroid/app/Notification$Action;Landroid/support/v4/app/NotificationCompatBase$Action$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/NotificationCompatBase$Action;

    move-result-object v8

    aput-object v8, v6, v7

    .line 191
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 195
    :cond_1
    move-object v6, v3

    move-object v0, v6

    goto :goto_0
.end method

.method public static getGroup(Landroid/app/Notification;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 220
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getLocalOnly(Landroid/app/Notification;)Z
    .locals 3

    .prologue
    .line 216
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/app/Notification;->flags:I

    const/16 v2, 0x100

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getParcelableArrayListForActions([Landroid/support/v4/app/NotificationCompatBase$Action;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/support/v4/app/NotificationCompatBase$Action;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    move-object v0, p0

    move-object v6, v0

    if-nez v6, :cond_0

    .line 206
    const/4 v6, 0x0

    move-object v0, v6

    .line 212
    :goto_0
    return-object v0

    .line 208
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    array-length v8, v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v6

    .line 209
    move-object v6, v0

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_1
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 210
    move-object v6, v1

    move-object v7, v5

    invoke-static {v7}, Landroid/support/v4/app/NotificationCompatApi20;->getActionFromActionCompat(Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/app/Notification$Action;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 209
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 212
    :cond_1
    move-object v6, v1

    move-object v0, v6

    goto :goto_0
.end method

.method public static getSortKey(Landroid/app/Notification;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 228
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static isGroupSummary(Landroid/app/Notification;)Z
    .locals 3

    .prologue
    .line 224
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/app/Notification;->flags:I

    const/16 v2, 0x200

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
