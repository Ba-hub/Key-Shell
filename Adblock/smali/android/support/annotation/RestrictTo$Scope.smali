.class public final enum Landroid/support/annotation/RestrictTo$Scope;
.super Ljava/lang/Enum;
.source "RestrictTo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Scope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/support/annotation/RestrictTo$Scope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/support/annotation/RestrictTo$Scope;

.field public static final enum GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum LIBRARY:Landroid/support/annotation/RestrictTo$Scope;

.field public static final enum LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;

.field public static final enum SUBCLASSES:Landroid/support/annotation/RestrictTo$Scope;

.field public static final enum TESTS:Landroid/support/annotation/RestrictTo$Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 63
    new-instance v0, Landroid/support/annotation/RestrictTo$Scope;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "LIBRARY"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/support/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;

    .line 69
    new-instance v0, Landroid/support/annotation/RestrictTo$Scope;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "LIBRARY_GROUP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/support/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;

    .line 77
    new-instance v0, Landroid/support/annotation/RestrictTo$Scope;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "GROUP_ID"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/support/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;

    .line 83
    new-instance v0, Landroid/support/annotation/RestrictTo$Scope;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "TESTS"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/support/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/annotation/RestrictTo$Scope;->TESTS:Landroid/support/annotation/RestrictTo$Scope;

    .line 91
    new-instance v0, Landroid/support/annotation/RestrictTo$Scope;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SUBCLASSES"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Landroid/support/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/annotation/RestrictTo$Scope;->SUBCLASSES:Landroid/support/annotation/RestrictTo$Scope;

    .line 58
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/support/annotation/RestrictTo$Scope;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Landroid/support/annotation/RestrictTo$Scope;->TESTS:Landroid/support/annotation/RestrictTo$Scope;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget-object v3, Landroid/support/annotation/RestrictTo$Scope;->SUBCLASSES:Landroid/support/annotation/RestrictTo$Scope;

    aput-object v3, v1, v2

    sput-object v0, Landroid/support/annotation/RestrictTo$Scope;->$VALUES:[Landroid/support/annotation/RestrictTo$Scope;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/annotation/RestrictTo$Scope;
    .locals 3

    .prologue
    .line 58
    move-object v0, p0

    const-class v1, Landroid/support/annotation/RestrictTo$Scope;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Landroid/support/annotation/RestrictTo$Scope;

    move-object v0, v1

    return-object v0
.end method

.method public static values()[Landroid/support/annotation/RestrictTo$Scope;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Landroid/support/annotation/RestrictTo$Scope;->$VALUES:[Landroid/support/annotation/RestrictTo$Scope;

    invoke-virtual {v0}, [Landroid/support/annotation/RestrictTo$Scope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/annotation/RestrictTo$Scope;

    return-object v0
.end method
