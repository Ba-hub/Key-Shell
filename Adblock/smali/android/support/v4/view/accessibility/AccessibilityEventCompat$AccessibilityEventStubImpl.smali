.class Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventStubImpl;
.super Ljava/lang/Object;
.source "AccessibilityEventCompat.java"

# interfaces
.implements Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityEventStubImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public appendRecord(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public getAction(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 3

    .prologue
    .line 82
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 3

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getMovementGranularity(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 3

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getRecord(Landroid/view/accessibility/AccessibilityEvent;I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v3, 0x0

    move-object v0, v3

    return-object v0
.end method

.method public getRecordCount(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 3

    .prologue
    .line 59
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public setAction(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public setMovementGranularity(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method
