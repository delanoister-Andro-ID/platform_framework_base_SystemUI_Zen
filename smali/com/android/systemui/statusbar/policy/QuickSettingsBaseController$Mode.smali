.class public final enum Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
.super Ljava/lang/Enum;
.source "QuickSettingsBaseController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

.field public static final enum DISABLED:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

.field public static final enum MUTE:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

.field public static final enum OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

.field public static final enum ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

.field public static final enum PROCESSING_OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

.field public static final enum PROCESSING_ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

.field public static final enum RADIO_OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

.field public static final enum RADIO_ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

.field public static final enum RADIO_PROCESSING:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

.field public static final enum SIM1:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

.field public static final enum SIM2:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

.field public static final enum SIM_PROMPT:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

.field public static final enum VIBRATE:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

.field public static final enum VOLUME:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 70
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    const-string v1, "MUTE"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->MUTE:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    .line 71
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    const-string v1, "VIBRATE"

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->VIBRATE:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    .line 72
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    const-string v1, "VOLUME"

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->VOLUME:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    .line 73
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    .line 74
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    const-string v1, "PROCESSING_ON"

    invoke-direct {v0, v1, v7}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->PROCESSING_ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    .line 75
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    const-string v1, "PROCESSING_OFF"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->PROCESSING_OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    .line 76
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    const-string v1, "ON"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    .line 77
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    const-string v1, "DISABLED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->DISABLED:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    .line 78
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    const-string v1, "RADIO_ON"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->RADIO_ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    .line 79
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    const-string v1, "RADIO_OFF"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->RADIO_OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    .line 80
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    const-string v1, "RADIO_PROCESSING"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->RADIO_PROCESSING:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    .line 81
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    const-string v1, "SIM1"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->SIM1:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    .line 82
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    const-string v1, "SIM2"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->SIM2:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    .line 83
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    const-string v1, "SIM_PROMPT"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->SIM_PROMPT:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    .line 69
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->MUTE:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->VIBRATE:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->VOLUME:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->PROCESSING_ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->PROCESSING_OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->DISABLED:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->RADIO_ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->RADIO_OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->RADIO_PROCESSING:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->SIM1:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->SIM2:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->SIM_PROMPT:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->$VALUES:[Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

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
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->$VALUES:[Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    return-object v0
.end method
