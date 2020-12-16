.class public Landroid/support/v7/app/NotificationCompat$Builder;
.super Landroid/support/v4/app/NotificationCompat$Builder;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 392
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 393
    return-void
.end method


# virtual methods
.method protected getExtender()Landroid/support/v4/app/NotificationCompat$BuilderExtender;
    .locals 5
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 440
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 441
    new-instance v1, Landroid/support/v7/app/NotificationCompat$Api24Extender;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/support/v7/app/NotificationCompat$Api24Extender;-><init>(Landroid/support/v7/app/NotificationCompat$1;)V

    move-object v0, v1

    .line 449
    :goto_0
    return-object v0

    .line 442
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 443
    new-instance v1, Landroid/support/v7/app/NotificationCompat$LollipopExtender;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Landroid/support/v7/app/NotificationCompat$LollipopExtender;-><init>()V

    move-object v0, v1

    goto :goto_0

    .line 444
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    .line 445
    new-instance v1, Landroid/support/v7/app/NotificationCompat$JellybeanExtender;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Landroid/support/v7/app/NotificationCompat$JellybeanExtender;-><init>()V

    move-object v0, v1

    goto :goto_0

    .line 446
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_3

    .line 447
    new-instance v1, Landroid/support/v7/app/NotificationCompat$IceCreamSandwichExtender;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Landroid/support/v7/app/NotificationCompat$IceCreamSandwichExtender;-><init>()V

    move-object v0, v1

    goto :goto_0

    .line 449
    :cond_3
    move-object v1, v0

    invoke-super {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->getExtender()Landroid/support/v4/app/NotificationCompat$BuilderExtender;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method protected resolveText()Ljava/lang/CharSequence;
    .locals 7
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 403
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    instance-of v4, v4, Landroid/support/v4/app/NotificationCompat$MessagingStyle;

    if-eqz v4, :cond_1

    .line 404
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    check-cast v4, Landroid/support/v4/app/NotificationCompat$MessagingStyle;

    move-object v1, v4

    .line 405
    move-object v4, v1

    invoke-static {v4}, Landroid/support/v7/app/NotificationCompat;->access$000(Landroid/support/v4/app/NotificationCompat$MessagingStyle;)Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    move-result-object v4

    move-object v2, v4

    .line 406
    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->getConversationTitle()Ljava/lang/CharSequence;

    move-result-object v4

    move-object v3, v4

    .line 407
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 408
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-static {v4, v5, v6}, Landroid/support/v7/app/NotificationCompat;->access$100(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationCompat$MessagingStyle;Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 409
    :goto_0
    move-object v0, v4

    .line 412
    :goto_1
    return-object v0

    .line 408
    :cond_0
    move-object v4, v2

    .line 409
    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 412
    :cond_1
    move-object v4, v0

    invoke-super {v4}, Landroid/support/v4/app/NotificationCompat$Builder;->resolveText()Ljava/lang/CharSequence;

    move-result-object v4

    move-object v0, v4

    goto :goto_1
.end method

.method protected resolveTitle()Ljava/lang/CharSequence;
    .locals 5
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 423
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    instance-of v4, v4, Landroid/support/v4/app/NotificationCompat$MessagingStyle;

    if-eqz v4, :cond_2

    .line 424
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    check-cast v4, Landroid/support/v4/app/NotificationCompat$MessagingStyle;

    move-object v1, v4

    .line 425
    move-object v4, v1

    invoke-static {v4}, Landroid/support/v7/app/NotificationCompat;->access$000(Landroid/support/v4/app/NotificationCompat$MessagingStyle;)Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    move-result-object v4

    move-object v2, v4

    .line 426
    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->getConversationTitle()Ljava/lang/CharSequence;

    move-result-object v4

    move-object v3, v4

    .line 427
    move-object v4, v3

    if-nez v4, :cond_0

    move-object v4, v2

    if-eqz v4, :cond_2

    .line 428
    :cond_0
    move-object v4, v3

    if-eqz v4, :cond_1

    move-object v4, v3

    :goto_0
    move-object v0, v4

    .line 431
    :goto_1
    return-object v0

    .line 428
    :cond_1
    move-object v4, v2

    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 431
    :cond_2
    move-object v4, v0

    invoke-super {v4}, Landroid/support/v4/app/NotificationCompat$Builder;->resolveTitle()Ljava/lang/CharSequence;

    move-result-object v4

    move-object v0, v4

    goto :goto_1
.end method
