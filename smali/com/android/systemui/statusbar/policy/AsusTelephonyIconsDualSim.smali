.class Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;
.super Ljava/lang/Object;
.source "AsusTelephonyIconsDualSim.java"


# static fields
.field static final QS_DATA_1X:[I

.field static final QS_DATA_3G:[I

.field static final QS_DATA_4G:[I

.field static final QS_DATA_D:[I

.field static final QS_DATA_E:[I

.field static final QS_DATA_G:[I

.field static final QS_DATA_H:[I

.field static final QS_DATA_H_P:[I

.field static final QS_DATA_LTE:[I

.field static final QS_DATA_R:[I

.field static final QS_TELEPHONY_ATT_SIGNAL_STRENGTH:[[I

.field static final QS_TELEPHONY_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_ATT_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_NUM:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH_4G_IN:[I

.field static final TELEPHONY_SIGNAL_STRENGTH_4G_OUT:[I

.field static final TELEPHONY_SIGNAL_STRENGTH_LTE_IN:[I

.field static final TELEPHONY_SIGNAL_STRENGTH_LTE_OUT:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x6

    const/4 v2, 0x2

    .line 26
    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 39
    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 52
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->QS_TELEPHONY_ATT_SIGNAL_STRENGTH:[[I

    .line 79
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->TELEPHONY_ATT_SIGNAL_STRENGTH:[[I

    .line 94
    new-array v0, v3, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->TELEPHONY_SIGNAL_STRENGTH_LTE_IN:[I

    .line 103
    new-array v0, v3, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->TELEPHONY_SIGNAL_STRENGTH_LTE_OUT:[I

    .line 112
    new-array v0, v3, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->TELEPHONY_SIGNAL_STRENGTH_4G_IN:[I

    .line 121
    new-array v0, v3, [I

    fill-array-data v0, :array_b

    sput-object v0, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->TELEPHONY_SIGNAL_STRENGTH_4G_OUT:[I

    .line 130
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->TELEPHONY_NUM:[[I

    .line 137
    new-array v0, v2, [I

    fill-array-data v0, :array_e

    sput-object v0, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->QS_DATA_G:[I

    .line 142
    new-array v0, v2, [I

    fill-array-data v0, :array_f

    sput-object v0, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->QS_DATA_3G:[I

    .line 147
    new-array v0, v2, [I

    fill-array-data v0, :array_10

    sput-object v0, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->QS_DATA_E:[I

    .line 152
    new-array v0, v2, [I

    fill-array-data v0, :array_11

    sput-object v0, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->QS_DATA_H:[I

    .line 157
    new-array v0, v2, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->QS_DATA_H_P:[I

    .line 162
    new-array v0, v2, [I

    fill-array-data v0, :array_13

    sput-object v0, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->QS_DATA_4G:[I

    .line 167
    new-array v0, v2, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->QS_DATA_1X:[I

    .line 172
    new-array v0, v2, [I

    fill-array-data v0, :array_15

    sput-object v0, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->QS_DATA_LTE:[I

    .line 177
    new-array v0, v2, [I

    fill-array-data v0, :array_16

    sput-object v0, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->QS_DATA_D:[I

    .line 182
    new-array v0, v2, [I

    fill-array-data v0, :array_17

    sput-object v0, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->QS_DATA_R:[I

    return-void

    .line 26
    :array_0
    .array-data 0x4
        0xd2t 0x1t 0x2t 0x7ft
        0xd3t 0x1t 0x2t 0x7ft
        0xd4t 0x1t 0x2t 0x7ft
        0xd5t 0x1t 0x2t 0x7ft
        0xd6t 0x1t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0xbft 0x1t 0x2t 0x7ft
        0xc0t 0x1t 0x2t 0x7ft
        0xc1t 0x1t 0x2t 0x7ft
        0xc2t 0x1t 0x2t 0x7ft
        0xc3t 0x1t 0x2t 0x7ft
    .end array-data

    .line 39
    :array_2
    .array-data 0x4
        0x2t 0x1t 0x2t 0x7ft
        0x3t 0x1t 0x2t 0x7ft
        0x5t 0x1t 0x2t 0x7ft
        0x6t 0x1t 0x2t 0x7ft
        0x8t 0x1t 0x2t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0xct 0x1t 0x2t 0x7ft
        0xdt 0x1t 0x2t 0x7ft
        0xft 0x1t 0x2t 0x7ft
        0x10t 0x1t 0x2t 0x7ft
        0x12t 0x1t 0x2t 0x7ft
    .end array-data

    .line 52
    :array_4
    .array-data 0x4
        0xe1t 0x0t 0x2t 0x7ft
        0xe2t 0x0t 0x2t 0x7ft
        0xe3t 0x0t 0x2t 0x7ft
        0xe4t 0x0t 0x2t 0x7ft
        0xe5t 0x0t 0x2t 0x7ft
        0xe6t 0x0t 0x2t 0x7ft
    .end array-data

    :array_5
    .array-data 0x4
        0xe7t 0x0t 0x2t 0x7ft
        0xe8t 0x0t 0x2t 0x7ft
        0xe9t 0x0t 0x2t 0x7ft
        0xeat 0x0t 0x2t 0x7ft
        0xebt 0x0t 0x2t 0x7ft
        0xect 0x0t 0x2t 0x7ft
    .end array-data

    .line 79
    :array_6
    .array-data 0x4
        0x8et 0x1t 0x2t 0x7ft
        0x8ft 0x1t 0x2t 0x7ft
        0x90t 0x1t 0x2t 0x7ft
        0x91t 0x1t 0x2t 0x7ft
        0x92t 0x1t 0x2t 0x7ft
        0x93t 0x1t 0x2t 0x7ft
    .end array-data

    :array_7
    .array-data 0x4
        0x88t 0x1t 0x2t 0x7ft
        0x89t 0x1t 0x2t 0x7ft
        0x8at 0x1t 0x2t 0x7ft
        0x8bt 0x1t 0x2t 0x7ft
        0x8ct 0x1t 0x2t 0x7ft
        0x8dt 0x1t 0x2t 0x7ft
    .end array-data

    .line 94
    :array_8
    .array-data 0x4
        0x71t 0x1t 0x2t 0x7ft
        0x72t 0x1t 0x2t 0x7ft
        0x72t 0x1t 0x2t 0x7ft
        0x73t 0x1t 0x2t 0x7ft
        0x73t 0x1t 0x2t 0x7ft
        0x74t 0x1t 0x2t 0x7ft
    .end array-data

    .line 103
    :array_9
    .array-data 0x4
        0x71t 0x1t 0x2t 0x7ft
        0x75t 0x1t 0x2t 0x7ft
        0x75t 0x1t 0x2t 0x7ft
        0x76t 0x1t 0x2t 0x7ft
        0x76t 0x1t 0x2t 0x7ft
        0x77t 0x1t 0x2t 0x7ft
    .end array-data

    .line 112
    :array_a
    .array-data 0x4
        0x78t 0x1t 0x2t 0x7ft
        0x79t 0x1t 0x2t 0x7ft
        0x79t 0x1t 0x2t 0x7ft
        0x7at 0x1t 0x2t 0x7ft
        0x7at 0x1t 0x2t 0x7ft
        0x7bt 0x1t 0x2t 0x7ft
    .end array-data

    .line 121
    :array_b
    .array-data 0x4
        0x78t 0x1t 0x2t 0x7ft
        0x7ct 0x1t 0x2t 0x7ft
        0x7ct 0x1t 0x2t 0x7ft
        0x7dt 0x1t 0x2t 0x7ft
        0x7dt 0x1t 0x2t 0x7ft
        0x7et 0x1t 0x2t 0x7ft
    .end array-data

    .line 130
    :array_c
    .array-data 0x4
        0xc5t 0x1t 0x2t 0x7ft
        0xc4t 0x1t 0x2t 0x7ft
    .end array-data

    :array_d
    .array-data 0x4
        0xc7t 0x1t 0x2t 0x7ft
        0xc6t 0x1t 0x2t 0x7ft
    .end array-data

    .line 137
    :array_e
    .array-data 0x4
        0x1bt 0x1t 0x2t 0x7ft
        0x16t 0x1t 0x2t 0x7ft
    .end array-data

    .line 142
    :array_f
    .array-data 0x4
        0x7t 0x1t 0x2t 0x7ft
        0x11t 0x1t 0x2t 0x7ft
    .end array-data

    .line 147
    :array_10
    .array-data 0x4
        0xbt 0x1t 0x2t 0x7ft
        0x15t 0x1t 0x2t 0x7ft
    .end array-data

    .line 152
    :array_11
    .array-data 0x4
        0x1ct 0x1t 0x2t 0x7ft
        0x17t 0x1t 0x2t 0x7ft
    .end array-data

    .line 157
    :array_12
    .array-data 0x4
        0x1dt 0x1t 0x2t 0x7ft
        0x18t 0x1t 0x2t 0x7ft
    .end array-data

    .line 162
    :array_13
    .array-data 0x4
        0x9t 0x1t 0x2t 0x7ft
        0x13t 0x1t 0x2t 0x7ft
    .end array-data

    .line 167
    :array_14
    .array-data 0x4
        0x4t 0x1t 0x2t 0x7ft
        0xet 0x1t 0x2t 0x7ft
    .end array-data

    .line 172
    :array_15
    .array-data 0x4
        0x20t 0x1t 0x2t 0x7ft
        0x19t 0x1t 0x2t 0x7ft
    .end array-data

    .line 177
    :array_16
    .array-data 0x4
        0xat 0x1t 0x2t 0x7ft
        0x14t 0x1t 0x2t 0x7ft
    .end array-data

    .line 182
    :array_17
    .array-data 0x4
        0x24t 0x1t 0x2t 0x7ft
        0x1at 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
