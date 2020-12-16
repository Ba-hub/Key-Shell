.class Landroid/support/v4/app/RemoteInputCompatApi20;
.super Ljava/lang/Object;
.source "RemoteInputCompatApi20.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x14
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addResultsToIntent([Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-static {v3}, Landroid/support/v4/app/RemoteInputCompatApi20;->fromCompat([Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)[Landroid/app/RemoteInput;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/app/RemoteInput;->addResultsToIntent([Landroid/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 66
    return-void
.end method

.method static fromCompat([Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)[Landroid/app/RemoteInput;
    .locals 10

    .prologue
    .line 43
    move-object v0, p0

    move-object v4, v0

    if-nez v4, :cond_0

    .line 44
    const/4 v4, 0x0

    move-object v0, v4

    .line 56
    :goto_0
    return-object v0

    .line 46
    :cond_0
    move-object v4, v0

    array-length v4, v4

    new-array v4, v4, [Landroid/app/RemoteInput;

    move-object v1, v4

    .line 47
    const/4 v4, 0x0

    move v2, v4

    :goto_1
    move v4, v2

    move-object v5, v0

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 48
    move-object v4, v0

    move v5, v2

    aget-object v4, v4, v5

    move-object v3, v4

    .line 49
    move-object v4, v1

    move v5, v2

    new-instance v6, Landroid/app/RemoteInput$Builder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v3

    invoke-virtual {v8}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    move-object v7, v3

    .line 50
    invoke-virtual {v7}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v6

    move-object v7, v3

    .line 51
    invoke-virtual {v7}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v6

    move-object v7, v3

    .line 52
    invoke-virtual {v7}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getAllowFreeFormInput()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroid/app/RemoteInput$Builder;

    move-result-object v6

    move-object v7, v3

    .line 53
    invoke-virtual {v7}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;

    move-result-object v6

    .line 54
    invoke-virtual {v6}, Landroid/app/RemoteInput$Builder;->build()Landroid/app/RemoteInput;

    move-result-object v6

    aput-object v6, v4, v5

    .line 47
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 56
    :cond_1
    move-object v4, v1

    move-object v0, v4

    goto :goto_0
.end method

.method static getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Landroid/app/RemoteInput;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static toCompat([Landroid/app/RemoteInput;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
    .locals 13

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    if-nez v5, :cond_0

    .line 31
    const/4 v5, 0x0

    move-object v0, v5

    .line 39
    :goto_0
    return-object v0

    .line 33
    :cond_0
    move-object v5, v1

    move-object v6, v0

    array-length v6, v6

    invoke-interface {v5, v6}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;->newArray(I)[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    move-result-object v5

    move-object v2, v5

    .line 34
    const/4 v5, 0x0

    move v3, v5

    :goto_1
    move v5, v3

    move-object v6, v0

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 35
    move-object v5, v0

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 36
    move-object v5, v2

    move v6, v3

    move-object v7, v1

    move-object v8, v4

    invoke-virtual {v8}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v8

    move-object v9, v4

    invoke-virtual {v9}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v9

    move-object v10, v4

    invoke-virtual {v10}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v10

    move-object v11, v4

    .line 37
    invoke-virtual {v11}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v11

    move-object v12, v4

    invoke-virtual {v12}, Landroid/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    .line 36
    invoke-interface/range {v7 .. v12}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;->build(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;)Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    move-result-object v7

    aput-object v7, v5, v6

    .line 34
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 39
    :cond_1
    move-object v5, v2

    move-object v0, v5

    goto :goto_0
.end method
