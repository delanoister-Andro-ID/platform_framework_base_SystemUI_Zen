.class final enum Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$State;
.super Ljava/lang/Enum;
.source "QuickSettingsMemoryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$State;

.field public static final enum GREEN:Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$State;

.field public static final enum YELLOW:Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$State;

    const-string v1, "GREEN"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$State;->GREEN:Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$State;

    .line 45
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$State;

    const-string v1, "YELLOW"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$State;->YELLOW:Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$State;

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$State;

    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$State;->GREEN:Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$State;->YELLOW:Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$State;->$VALUES:[Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$State;
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$State;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$State;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$State;->$VALUES:[Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$State;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$State;

    return-object v0
.end method
