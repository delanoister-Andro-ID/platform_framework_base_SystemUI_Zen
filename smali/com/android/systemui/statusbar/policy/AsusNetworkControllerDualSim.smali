.class public Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;
.super Landroid/content/BroadcastReceiver;
.source "AsusNetworkControllerDualSim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$WifiHandler;,
        Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$PhoneStateListenerDualSIM;,
        Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$NetworkSignalChangedCallbackExt;,
        Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$SignalCluster;
    }
.end annotation


# static fields
.field public static final AT_T:Z

.field static final CHATTY:Z

.field static final DEBUG:Z

.field public static final IS_CUCC:Z


# instance fields
.field private mAirplaneMode:Z

.field mAlwaysShowCdmaRssi:Z

.field private mBluetoothTethered:Z

.field mCombinedLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mConnected:Z

.field private mConnectedNetworkType:I

.field private mConnectedNetworkTypeName:Ljava/lang/String;

.field mContentDescriptionCombinedSignal:Ljava/lang/String;

.field mContentDescriptionDataType:[Ljava/lang/String;

.field mContentDescriptionPhoneSignal:[Ljava/lang/String;

.field mContentDescriptionWifi:Ljava/lang/String;

.field mContentDescriptionWimax:[Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDataActive:[Z

.field mDataActivity:[I

.field mDataAndWifiStacked:Z

.field mDataConnected:[Z

.field mDataNetType:[I

.field mDataSignalIconId:[I

.field mDataState:[I

.field mDataTypeIconId:[I

.field mEmergencyLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mEthernetActivityIconId:I

.field mEthernetConnected:Z

.field private mHasMobileDataFeature:Z

.field mHspaDataDistinguishable:Z

.field private mInetCondition:I

.field private mIsMobileDataEnabled:Z

.field private mIsWimaxEnabled:[Z

.field private mLastAirplaneMode:Z

.field mLastCombinedLabel:Ljava/lang/String;

.field mLastDataTypeIconId:[I

.field mLastEthernetActivityIconId:I

.field mLastEthernetConnected:Z

.field private mLastLocale:Ljava/util/Locale;

.field mLastMobileActivityIconId:[I

.field mLastMobileNumId:[I

.field mLastPhoneSignalIconId:[I

.field mLastRoamTypeIconId:[I

.field mLastSignalLevel:[I

.field mLastWifiIconId:I

.field mLastWimaxIconId:[I

.field private mLocale:Ljava/util/Locale;

.field mMobileActivityIconId:[I

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field mMobileLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mMobileNumId:[I

.field private mMultiSimSelectObserver:Landroid/database/ContentObserver;

.field mNetworkName:[Ljava/lang/String;

.field mNetworkNameDefault:Ljava/lang/String;

.field mNetworkNameSeparator:Ljava/lang/String;

.field final mPhone:Landroid/telephony/TelephonyManager;

.field final mPhone2:Landroid/telephony/TelephonyManager;

.field mPhoneSignalIconId:[I

.field mPhoneState:[I

.field mPhoneStateListener:Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$PhoneStateListenerDualSIM;

.field mPhoneStateListener2:Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$PhoneStateListenerDualSIM;

.field mQSDataTypeIconId:[I

.field mQSPhoneSignalIconId:[I

.field mQSWifiIconId:I

.field mRoamTypeIconId:[I

.field mServiceState:[Landroid/telephony/ServiceState;

.field mShowAtLeastThreeGees:Z

.field mShowPhoneRSSIForData:Z

.field mSignalClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$SignalCluster;",
            ">;"
        }
    .end annotation
.end field

.field mSignalStrength:[Landroid/telephony/SignalStrength;

.field mSignalsChangedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/AsusNetworkController$NetworkSignalChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field mSignalsChangedCallbacks2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$NetworkSignalChangedCallbackExt;",
            ">;"
        }
    .end annotation
.end field

.field private mSimOneStatusObserver:Landroid/database/ContentObserver;

.field mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

.field private mSimTwoStatusObserver:Landroid/database/ContentObserver;

.field mToos:[Z

.field mWifiActivity:I

.field mWifiActivityIconId:I

.field mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field mWifiConnected:Z

.field mWifiEnabled:Z

.field mWifiIconId:I

.field mWifiLevel:I

.field final mWifiManager:Landroid/net/wifi/WifiManager;

.field mWifiRssi:I

.field mWifiSsid:Ljava/lang/String;

.field private mWimaxConnected:[Z

.field private mWimaxExtraState:[I

.field private mWimaxIconId:[I

.field private mWimaxIdle:[Z

.field private mWimaxSignal:[I

.field private mWimaxState:[I

.field private mWimaxSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 70
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->DEBUG:Z

    .line 71
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->CHATTY:Z

    .line 72
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "ATT_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->AT_T:Z

    .line 73
    const-string v0, "ro.build.asus.sku"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CUCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->IS_CUCC:Z

    return-void

    :cond_0
    move v0, v1

    .line 70
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 260
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 82
    new-array v5, v7, [Z

    fill-array-data v5, :array_0

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataConnected:[Z

    .line 83
    new-array v5, v7, [Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v6, v5, v8

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v6, v5, v10

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    .line 84
    new-array v5, v7, [I

    fill-array-data v5, :array_1

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mPhoneState:[I

    .line 85
    new-array v5, v7, [I

    fill-array-data v5, :array_2

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataNetType:[I

    .line 86
    new-array v5, v7, [I

    fill-array-data v5, :array_3

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataState:[I

    .line 87
    new-array v5, v7, [I

    fill-array-data v5, :array_4

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataActivity:[I

    .line 88
    new-array v5, v7, [Z

    fill-array-data v5, :array_5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mToos:[Z

    .line 89
    new-array v5, v7, [Landroid/telephony/ServiceState;

    aput-object v9, v5, v8

    aput-object v9, v5, v10

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mServiceState:[Landroid/telephony/ServiceState;

    .line 90
    new-array v5, v7, [Landroid/telephony/SignalStrength;

    aput-object v9, v5, v8

    aput-object v9, v5, v10

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mSignalStrength:[Landroid/telephony/SignalStrength;

    .line 91
    new-array v5, v7, [Ljava/lang/String;

    aput-object v9, v5, v8

    aput-object v9, v5, v10

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mNetworkName:[Ljava/lang/String;

    .line 94
    new-array v5, v7, [I

    fill-array-data v5, :array_6

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mPhoneSignalIconId:[I

    .line 95
    new-array v5, v7, [I

    fill-array-data v5, :array_7

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSPhoneSignalIconId:[I

    .line 96
    new-array v5, v7, [I

    fill-array-data v5, :array_8

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataSignalIconId:[I

    .line 97
    new-array v5, v7, [I

    fill-array-data v5, :array_9

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataTypeIconId:[I

    .line 98
    new-array v5, v7, [I

    fill-array-data v5, :array_a

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSDataTypeIconId:[I

    .line 99
    new-array v5, v7, [Z

    fill-array-data v5, :array_b

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataActive:[Z

    .line 100
    new-array v5, v7, [I

    fill-array-data v5, :array_c

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mMobileActivityIconId:[I

    .line 101
    new-array v5, v7, [I

    fill-array-data v5, :array_d

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastMobileActivityIconId:[I

    .line 102
    new-array v5, v7, [I

    fill-array-data v5, :array_e

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastSignalLevel:[I

    .line 103
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mShowPhoneRSSIForData:Z

    .line 104
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mShowAtLeastThreeGees:Z

    .line 105
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mAlwaysShowCdmaRssi:Z

    .line 107
    new-array v5, v7, [Ljava/lang/String;

    aput-object v9, v5, v8

    aput-object v9, v5, v10

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionPhoneSignal:[Ljava/lang/String;

    .line 109
    new-array v5, v7, [Ljava/lang/String;

    aput-object v9, v5, v8

    aput-object v9, v5, v10

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionWimax:[Ljava/lang/String;

    .line 111
    new-array v5, v7, [Ljava/lang/String;

    aput-object v9, v5, v8

    aput-object v9, v5, v10

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionDataType:[Ljava/lang/String;

    .line 112
    new-array v5, v7, [I

    fill-array-data v5, :array_f

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mRoamTypeIconId:[I

    .line 113
    new-array v5, v7, [I

    fill-array-data v5, :array_10

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mMobileNumId:[I

    .line 114
    new-array v5, v7, [I

    fill-array-data v5, :array_11

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastMobileNumId:[I

    .line 115
    new-array v5, v7, [I

    fill-array-data v5, :array_12

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastRoamTypeIconId:[I

    .line 123
    iput v8, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiIconId:I

    .line 124
    iput v8, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSWifiIconId:I

    .line 125
    iput v8, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiActivity:I

    .line 126
    iput v8, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiActivityIconId:I

    .line 136
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mBluetoothTethered:Z

    .line 139
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxSupported:Z

    .line 140
    new-array v5, v7, [Z

    fill-array-data v5, :array_13

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mIsWimaxEnabled:[Z

    .line 141
    new-array v5, v7, [Z

    fill-array-data v5, :array_14

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxConnected:[Z

    .line 142
    new-array v5, v7, [Z

    fill-array-data v5, :array_15

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxIdle:[Z

    .line 143
    new-array v5, v7, [I

    fill-array-data v5, :array_16

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxIconId:[I

    .line 144
    new-array v5, v7, [I

    fill-array-data v5, :array_17

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxSignal:[I

    .line 145
    new-array v5, v7, [I

    fill-array-data v5, :array_18

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxState:[I

    .line 146
    new-array v5, v7, [I

    fill-array-data v5, :array_19

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxExtraState:[I

    .line 150
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mConnected:Z

    .line 151
    iput v11, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mConnectedNetworkType:I

    .line 153
    iput v8, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mInetCondition:I

    .line 156
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mAirplaneMode:Z

    .line 157
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastAirplaneMode:Z

    .line 159
    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLocale:Ljava/util/Locale;

    .line 160
    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastLocale:Ljava/util/Locale;

    .line 164
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mCombinedLabelViews:Ljava/util/ArrayList;

    .line 165
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mMobileLabelViews:Ljava/util/ArrayList;

    .line 166
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mEmergencyLabelViews:Ljava/util/ArrayList;

    .line 167
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mSignalClusters:Ljava/util/ArrayList;

    .line 168
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    .line 170
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mSignalsChangedCallbacks2:Ljava/util/ArrayList;

    .line 172
    new-array v5, v7, [I

    fill-array-data v5, :array_1a

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastPhoneSignalIconId:[I

    .line 173
    iput v8, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastWifiIconId:I

    .line 174
    new-array v5, v7, [I

    fill-array-data v5, :array_1b

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastWimaxIconId:[I

    .line 175
    new-array v5, v7, [I

    fill-array-data v5, :array_1c

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastDataTypeIconId:[I

    .line 176
    const-string v5, ""

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastCombinedLabel:Ljava/lang/String;

    .line 177
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mEthernetConnected:Z

    .line 178
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastEthernetConnected:Z

    .line 179
    iput v8, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mEthernetActivityIconId:I

    .line 180
    iput v8, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastEthernetActivityIconId:I

    .line 184
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataAndWifiStacked:Z

    .line 185
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mIsMobileDataEnabled:Z

    .line 206
    new-instance v5, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$1;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$1;-><init>(Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mMultiSimSelectObserver:Landroid/database/ContentObserver;

    .line 216
    new-instance v5, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$2;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$2;-><init>(Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mSimOneStatusObserver:Landroid/database/ContentObserver;

    .line 225
    new-instance v5, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$3;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$3;-><init>(Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mSimTwoStatusObserver:Landroid/database/ContentObserver;

    .line 248
    new-instance v5, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$4;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$4;-><init>(Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 651
    new-instance v5, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$5;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$5;-><init>(Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mPhoneStateListener:Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$PhoneStateListenerDualSIM;

    .line 657
    new-instance v5, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$6;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$6;-><init>(Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mPhoneStateListener2:Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$PhoneStateListenerDualSIM;

    .line 261
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContext:Landroid/content/Context;

    .line 262
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 264
    .local v3, res:Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 266
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mHasMobileDataFeature:Z

    .line 268
    const v5, 0x7f090006

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mShowPhoneRSSIForData:Z

    .line 269
    const v5, 0x7f090007

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mShowAtLeastThreeGees:Z

    .line 270
    const v5, 0x1110042

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mAlwaysShowCdmaRssi:Z

    .line 274
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->updateWifiIcons()V

    .line 275
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->updateWimaxIcons()V

    .line 278
    const-string v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mPhone:Landroid/telephony/TelephonyManager;

    .line 279
    invoke-static {}, Landroid/telephony/TelephonyManager;->get2ndTm()Landroid/telephony/TelephonyManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mPhone2:Landroid/telephony/TelephonyManager;

    .line 280
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mPhoneStateListener:Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$PhoneStateListenerDualSIM;

    const/16 v7, 0x1e1

    invoke-virtual {v5, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 286
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mPhone2:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mPhoneStateListener2:Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$PhoneStateListenerDualSIM;

    const/16 v7, 0x1e1

    invoke-virtual {v5, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 292
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090004

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mHspaDataDistinguishable:Z

    .line 294
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContext:Landroid/content/Context;

    const v6, 0x7f060096

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mNetworkNameSeparator:Ljava/lang/String;

    .line 295
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContext:Landroid/content/Context;

    const v6, 0x104030b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mNetworkNameDefault:Ljava/lang/String;

    .line 297
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mNetworkName:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mNetworkName:[Ljava/lang/String;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mNetworkNameDefault:Ljava/lang/String;

    aput-object v7, v6, v10

    aput-object v7, v5, v8

    .line 300
    const-string v5, "wifi"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 301
    new-instance v2, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$WifiHandler;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$WifiHandler;-><init>(Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;)V

    .line 302
    .local v2, handler:Landroid/os/Handler;
    new-instance v5, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v5}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    .line 303
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v4

    .line 304
    .local v4, wifiMessenger:Landroid/os/Messenger;
    if-eqz v4, :cond_0

    .line 305
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v2, v4}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 321
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 322
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v5, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 323
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 324
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 325
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    const-string v5, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    const-string v5, "com.pekall.intent.SIM_STATE_CHANGED2"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 328
    const-string v5, "com.pekall.intent.SPN_STRINGS_UPDATED.phone2"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 329
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 330
    const-string v5, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 331
    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 332
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    const-string v5, "intel.intent.action.MODEM_FAST_OOS_IND"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 334
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110047

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxSupported:Z

    .line 336
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxSupported:Z

    if-eqz v5, :cond_1

    .line 337
    const-string v5, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 338
    const-string v5, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 339
    const-string v5, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 341
    :cond_1
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 344
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->updateAirplaneMode()V

    .line 346
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastLocale:Ljava/util/Locale;

    .line 348
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "multi_sim_data_call"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mMultiSimSelectObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v10, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 352
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "Sim1Status"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mSimOneStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v10, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 356
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "Sim2Status"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mSimTwoStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v10, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 360
    sget-boolean v5, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->IS_CUCC:Z

    if-eqz v5, :cond_2

    .line 361
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->getMobileDataEnabled()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mIsMobileDataEnabled:Z

    .line 362
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mobile_data"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v10, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 366
    :cond_2
    return-void

    .line 82
    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 84
    nop

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 85
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 86
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 87
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 88
    :array_5
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 94
    nop

    :array_6
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 95
    :array_7
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 96
    :array_8
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 97
    :array_9
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 98
    :array_a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 99
    :array_b
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 100
    nop

    :array_c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 101
    :array_d
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 102
    :array_e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 112
    :array_f
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 113
    :array_10
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 114
    :array_11
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 115
    :array_12
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 140
    :array_13
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 141
    nop

    :array_14
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 142
    nop

    :array_15
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 143
    nop

    :array_16
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 144
    :array_17
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 145
    :array_18
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 146
    :array_19
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 172
    :array_1a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 174
    :array_1b
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 175
    :array_1c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->refreshSimStatus(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mIsMobileDataEnabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->getMobileDataEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->updateTelephonySignalStrength(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->hasService(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->updateDataNetType(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->isCdma(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->getNetworkType(I)I

    move-result v0

    return v0
.end method

.method private final checkDataConnected(I)V
    .locals 4
    .parameter "slot"

    .prologue
    const/4 v3, 0x2

    .line 996
    const/4 v0, 0x1

    .line 998
    .local v0, visible:Z
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->isCdma(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1000
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v1, v1, p1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v1, v1, p1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_2

    .line 1002
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataState:[I

    aget v1, v1, p1

    if-eq v1, v3, :cond_1

    .line 1003
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->IS_CUCC:Z

    if-nez v1, :cond_1

    .line 1004
    const/4 v0, 0x0

    .line 1018
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataConnected:[Z

    aput-boolean v0, v1, p1

    .line 1019
    return-void

    .line 1008
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1012
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataState:[I

    aget v1, v1, p1

    if-eq v1, v3, :cond_1

    .line 1013
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->IS_CUCC:Z

    if-nez v1, :cond_1

    .line 1014
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private convertToSlotId(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 1762
    const-string v0, "GSM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1763
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->getDataSlot()I

    move-result v0

    .line 1765
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->getDataSlot()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getMobileDataEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 240
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    const/4 v0, 0x1

    .line 244
    :cond_0
    return v0
.end method

.method private getNetworkType(I)I
    .locals 2
    .parameter "slot"

    .prologue
    .line 1770
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getTmBySlot(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 1771
    .local v0, tm:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_1

    .line 1772
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->IS_CUCC:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->getDataSimId()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 1773
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v1

    .line 1778
    :goto_0
    return v1

    .line 1775
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    goto :goto_0

    .line 1778
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getResourceName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1749
    if-eqz p1, :cond_0

    .line 1750
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1752
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1757
    :goto_0
    return-object v0

    .line 1753
    :catch_0
    move-exception v0

    .line 1754
    const-string v0, "(unknown)"

    goto :goto_0

    .line 1757
    :cond_0
    const-string v0, "(null)"

    goto :goto_0
.end method

.method private hasService(I)Z
    .locals 6
    .parameter "slot"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 697
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    if-eqz v3, :cond_2

    .line 698
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 699
    .local v0, state:I
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 700
    const-string v3, "StatusBar.AsusNetworkControllerDualSim"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasService state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 711
    .end local v0           #state:I
    :cond_1
    :goto_0
    :pswitch_0
    return v1

    .line 704
    .restart local v0       #state:I
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_0

    :pswitch_2
    move v1, v2

    .line 706
    goto :goto_0

    .end local v0           #state:I
    :cond_2
    move v1, v2

    .line 711
    goto :goto_0

    .line 702
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 7
    .parameter "info"

    .prologue
    const/16 v6, 0x22

    .line 1175
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 1176
    .local v3, ssid:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1177
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 1178
    .local v4, ssidLength:I
    const/4 v5, 0x2

    if-le v4, v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_0

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_0

    .line 1181
    const/4 v5, 0x1

    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_0
    move-object v5, v3

    .line 1192
    .end local v4           #ssidLength:I
    :goto_0
    return-object v5

    .line 1186
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 1187
    .local v2, networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 1188
    .local v1, net:Landroid/net/wifi/WifiConfiguration;
    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 1189
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 1192
    .end local v1           #net:Landroid/net/wifi/WifiConfiguration;
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private isCdma(I)Z
    .locals 1
    .parameter "slot"

    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshLocale()V
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLocale:Ljava/util/Locale;

    .line 722
    return-void
.end method

.method private refreshSimStatus(I)V
    .locals 0
    .parameter "slot"

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->updateTelephonySignalStrength(I)V

    .line 236
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->updateDataNetType(I)V

    .line 237
    return-void
.end method

.method private set3GDataNetType(II)V
    .locals 3

    .prologue
    .line 810
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataTypeIconId:[I

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->AT_T:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0201a3

    :goto_0
    aput v0, v1, p1

    .line 811
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSDataTypeIconId:[I

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->AT_T:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->QS_DATA_4G:[I

    aget v0, v0, p2

    :goto_1
    aput v0, v1, p1

    .line 812
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionDataType:[Ljava/lang/String;

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->AT_T:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContext:Landroid/content/Context;

    const v2, 0x7f0600e8

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    aput-object v0, v1, p1

    .line 815
    return-void

    .line 810
    :cond_0
    const v0, 0x7f0201a2

    goto :goto_0

    .line 811
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->QS_DATA_3G:[I

    aget v0, v0, p2

    goto :goto_1

    .line 812
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContext:Landroid/content/Context;

    const v2, 0x7f0600e6

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private setFailDataNetType(I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 802
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->hasService(I)Z

    move-result v2

    .line 803
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataTypeIconId:[I

    if-eqz v2, :cond_1

    const v0, 0x7f0201a6

    :goto_0
    aput v0, v3, p1

    .line 804
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSDataTypeIconId:[I

    if-eqz v2, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->QS_DATA_G:[I

    aget v1, v1, p1

    :cond_0
    aput v1, v0, p1

    .line 805
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionDataType:[Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContext:Landroid/content/Context;

    const v2, 0x7f0600e3

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v1, p1

    .line 807
    return-void

    :cond_1
    move v0, v1

    .line 803
    goto :goto_0

    .line 805
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContext:Landroid/content/Context;

    const v2, 0x7f060011

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private setShowAtt4G(I)V
    .locals 6
    .parameter "slot"

    .prologue
    const/16 v3, 0xd

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 935
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataActivity:[I

    aget v2, v2, p1

    packed-switch v2, :pswitch_data_0

    .line 985
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataNetType:[I

    aget v2, v2, p1

    if-ne v2, v3, :cond_f

    .line 986
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataTypeIconId:[I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->TELEPHONY_SIGNAL_STRENGTH_LTE_IN:[I

    aget v3, v3, v4

    aput v3, v2, p1

    .line 993
    :cond_0
    :goto_0
    return-void

    .line 937
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataNetType:[I

    aget v2, v2, p1

    if-ne v2, v3, :cond_1

    .line 938
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataTypeIconId:[I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->TELEPHONY_SIGNAL_STRENGTH_LTE_IN:[I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastSignalLevel:[I

    aget v4, v4, p1

    aget v3, v3, v4

    aput v3, v2, p1

    goto :goto_0

    .line 939
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSDataTypeIconId:[I

    aget v2, v2, p1

    sget-object v3, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->QS_DATA_4G:[I

    aget v3, v3, v4

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSDataTypeIconId:[I

    aget v2, v2, p1

    sget-object v3, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->QS_DATA_4G:[I

    aget v3, v3, v5

    if-ne v2, v3, :cond_0

    .line 941
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataTypeIconId:[I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->TELEPHONY_SIGNAL_STRENGTH_4G_IN:[I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastSignalLevel:[I

    aget v4, v4, p1

    aget v3, v3, v4

    aput v3, v2, p1

    goto :goto_0

    .line 945
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataNetType:[I

    aget v2, v2, p1

    if-ne v2, v3, :cond_3

    .line 946
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataTypeIconId:[I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->TELEPHONY_SIGNAL_STRENGTH_LTE_OUT:[I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastSignalLevel:[I

    aget v4, v4, p1

    aget v3, v3, v4

    aput v3, v2, p1

    goto :goto_0

    .line 947
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSDataTypeIconId:[I

    aget v2, v2, p1

    sget-object v3, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->QS_DATA_4G:[I

    aget v3, v3, v4

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSDataTypeIconId:[I

    aget v2, v2, p1

    sget-object v3, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->QS_DATA_4G:[I

    aget v3, v3, v5

    if-ne v2, v3, :cond_0

    .line 949
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataTypeIconId:[I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->TELEPHONY_SIGNAL_STRENGTH_4G_OUT:[I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastSignalLevel:[I

    aget v4, v4, p1

    aget v3, v3, v4

    aput v3, v2, p1

    goto :goto_0

    .line 953
    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataNetType:[I

    aget v2, v2, p1

    if-ne v2, v3, :cond_9

    .line 954
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastDataTypeIconId:[I

    aget v2, v2, p1

    if-gez v2, :cond_5

    .line 955
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataTypeIconId:[I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->TELEPHONY_SIGNAL_STRENGTH_LTE_OUT:[I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastSignalLevel:[I

    aget v4, v4, p1

    aget v3, v3, v4

    aput v3, v2, p1

    goto/16 :goto_0

    .line 957
    :cond_5
    const/4 v1, 0x0

    .line 958
    .local v1, is_found:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->TELEPHONY_SIGNAL_STRENGTH_LTE_IN:[I

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 959
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataTypeIconId:[I

    aget v2, v2, p1

    sget-object v3, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->TELEPHONY_SIGNAL_STRENGTH_LTE_IN:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_7

    .line 960
    const/4 v1, 0x1

    .line 964
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataTypeIconId:[I

    if-eqz v1, :cond_8

    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->TELEPHONY_SIGNAL_STRENGTH_LTE_IN:[I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastSignalLevel:[I

    aget v4, v4, p1

    aget v2, v2, v4

    :goto_2
    aput v2, v3, p1

    goto/16 :goto_0

    .line 958
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 964
    :cond_8
    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->TELEPHONY_SIGNAL_STRENGTH_LTE_OUT:[I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastSignalLevel:[I

    aget v4, v4, p1

    aget v2, v2, v4

    goto :goto_2

    .line 967
    .end local v0           #i:I
    .end local v1           #is_found:Z
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSDataTypeIconId:[I

    aget v2, v2, p1

    sget-object v3, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->QS_DATA_4G:[I

    aget v3, v3, v4

    if-eq v2, v3, :cond_a

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSDataTypeIconId:[I

    aget v2, v2, p1

    sget-object v3, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->QS_DATA_4G:[I

    aget v3, v3, v5

    if-ne v2, v3, :cond_0

    .line 969
    :cond_a
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastDataTypeIconId:[I

    aget v2, v2, p1

    if-gez v2, :cond_b

    .line 970
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataTypeIconId:[I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->TELEPHONY_SIGNAL_STRENGTH_4G_OUT:[I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastSignalLevel:[I

    aget v4, v4, p1

    aget v3, v3, v4

    aput v3, v2, p1

    goto/16 :goto_0

    .line 972
    :cond_b
    const/4 v1, 0x0

    .line 973
    .restart local v1       #is_found:Z
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->TELEPHONY_SIGNAL_STRENGTH_4G_IN:[I

    array-length v2, v2

    if-ge v0, v2, :cond_c

    .line 974
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataTypeIconId:[I

    aget v2, v2, p1

    sget-object v3, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->TELEPHONY_SIGNAL_STRENGTH_4G_IN:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_d

    .line 975
    const/4 v1, 0x1

    .line 979
    :cond_c
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataTypeIconId:[I

    if-eqz v1, :cond_e

    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->TELEPHONY_SIGNAL_STRENGTH_4G_IN:[I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastSignalLevel:[I

    aget v4, v4, p1

    aget v2, v2, v4

    :goto_4
    aput v2, v3, p1

    goto/16 :goto_0

    .line 973
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 979
    :cond_e
    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->TELEPHONY_SIGNAL_STRENGTH_4G_OUT:[I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastSignalLevel:[I

    aget v4, v4, p1

    aget v2, v2, v4

    goto :goto_4

    .line 987
    .end local v0           #i:I
    .end local v1           #is_found:Z
    :cond_f
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSDataTypeIconId:[I

    aget v2, v2, p1

    sget-object v3, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->QS_DATA_4G:[I

    aget v3, v3, v4

    if-eq v2, v3, :cond_10

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSDataTypeIconId:[I

    aget v2, v2, p1

    sget-object v3, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->QS_DATA_4G:[I

    aget v3, v3, v5

    if-ne v2, v3, :cond_0

    .line 989
    :cond_10
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataTypeIconId:[I

    sget-object v3, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->TELEPHONY_SIGNAL_STRENGTH_4G_IN:[I

    aget v3, v3, v4

    aput v3, v2, p1

    goto/16 :goto_0

    .line 935
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateAirplaneMode()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 716
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mAirplaneMode:Z

    .line 718
    return-void

    :cond_0
    move v0, v1

    .line 716
    goto :goto_0
.end method

.method private updateConnectivity(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1246
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->CHATTY:Z

    if-eqz v0, :cond_0

    .line 1247
    const-string v0, "StatusBar.AsusNetworkControllerDualSim"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateConnectivity: intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1252
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1254
    if-nez v0, :cond_9

    .line 1255
    const-string v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    check-cast v0, Landroid/net/NetworkInfo;

    move-object v3, v0

    .line 1259
    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mConnected:Z

    .line 1260
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mConnected:Z

    if-eqz v0, :cond_3

    .line 1261
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mConnectedNetworkType:I

    .line 1262
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mConnectedNetworkTypeName:Ljava/lang/String;

    .line 1268
    :goto_2
    const-string v0, "inetCondition"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1270
    sget-boolean v4, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->CHATTY:Z

    if-eqz v4, :cond_1

    .line 1271
    const-string v4, "StatusBar.AsusNetworkControllerDualSim"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateConnectivity: networkInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    const-string v4, "StatusBar.AsusNetworkControllerDualSim"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateConnectivity: connectionStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    :cond_1
    const/16 v4, 0x32

    if-le v0, v4, :cond_4

    move v0, v1

    :goto_3
    iput v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mInetCondition:I

    .line 1277
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v4, 0x7

    if-ne v0, v4, :cond_5

    .line 1278
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mBluetoothTethered:Z

    .line 1283
    :goto_4
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/16 v4, 0x9

    if-ne v0, v4, :cond_7

    .line 1284
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_5
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mEthernetConnected:Z

    .line 1290
    :goto_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->updateWimaxIcons()V

    .line 1291
    :goto_7
    const/4 v0, 0x2

    if-ge v2, v0, :cond_8

    .line 1292
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->updateDataNetType(I)V

    .line 1293
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->updateTelephonySignalStrength(I)V

    .line 1291
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_2
    move v0, v2

    .line 1259
    goto/16 :goto_1

    .line 1264
    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mConnectedNetworkType:I

    .line 1265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mConnectedNetworkTypeName:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move v0, v2

    .line 1275
    goto :goto_3

    .line 1280
    :cond_5
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mBluetoothTethered:Z

    goto :goto_4

    :cond_6
    move v1, v2

    .line 1284
    goto :goto_5

    .line 1286
    :cond_7
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mEthernetConnected:Z

    goto :goto_6

    .line 1295
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->updateWifiIcons()V

    .line 1296
    return-void

    :cond_9
    move-object v3, v0

    goto/16 :goto_0
.end method

.method private final updateDataNetType(I)V
    .locals 8

    .prologue
    const v7, 0x7f0600e7

    const/4 v1, 0x0

    const v6, 0x7f0600e8

    const v2, 0x7f0201a3

    .line 818
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataConnected:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 819
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 820
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mIsWimaxEnabled:[Z

    aget-boolean v4, v4, p1

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxConnected:[Z

    aget-boolean v4, v4, p1

    if-eqz v4, :cond_3

    .line 822
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataTypeIconId:[I

    sget-boolean v5, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->AT_T:Z

    if-eqz v5, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->hasService(I)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->TELEPHONY_SIGNAL_STRENGTH_4G_IN:[I

    aget v1, v2, v1

    :goto_1
    aput v1, v4, p1

    .line 823
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSDataTypeIconId:[I

    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->QS_DATA_4G:[I

    aget v2, v2, v0

    aput v2, v1, p1

    .line 824
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionDataType:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    .line 914
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataTypeIconId:[I

    aget v1, v1, p1

    if-eqz v1, :cond_0

    const/high16 v1, 0x7f09

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 915
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataTypeIconId:[I

    const v2, 0x7f0201a4

    aput v2, v1, p1

    .line 916
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSDataTypeIconId:[I

    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->QS_DATA_D:[I

    aget v0, v2, v0

    aput v0, v1, p1

    .line 918
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 818
    goto :goto_0

    :cond_2
    move v1, v2

    .line 822
    goto :goto_1

    .line 827
    :cond_3
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 828
    const-string v1, "StatusBar.AsusNetworkControllerDualSim"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDataNetType mDataNetType["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataNetType:[I

    aget v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataNetType:[I

    aget v1, v1, p1

    packed-switch v1, :pswitch_data_0

    .line 906
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mShowAtLeastThreeGees:Z

    if-nez v1, :cond_10

    .line 907
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->setFailDataNetType(I)V

    goto :goto_2

    .line 832
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->setFailDataNetType(I)V

    goto :goto_2

    .line 835
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mShowAtLeastThreeGees:Z

    if-nez v1, :cond_5

    .line 836
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataTypeIconId:[I

    const v2, 0x7f0201a5

    aput v2, v1, p1

    .line 837
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSDataTypeIconId:[I

    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->QS_DATA_E:[I

    aget v2, v2, v0

    aput v2, v1, p1

    .line 838
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionDataType:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContext:Landroid/content/Context;

    const v4, 0x7f0600ec

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    goto :goto_2

    .line 842
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->setFailDataNetType(I)V

    goto/16 :goto_2

    .line 847
    :pswitch_3
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->set3GDataNetType(II)V

    goto/16 :goto_2

    .line 852
    :pswitch_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mHspaDataDistinguishable:Z

    if-eqz v1, :cond_9

    .line 853
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataTypeIconId:[I

    sget-boolean v4, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->AT_T:Z

    if-eqz v4, :cond_6

    :goto_3
    aput v2, v1, p1

    .line 854
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSDataTypeIconId:[I

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->AT_T:Z

    if-eqz v1, :cond_7

    sget-object v1, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->QS_DATA_4G:[I

    aget v1, v1, v0

    :goto_4
    aput v1, v2, p1

    .line 855
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionDataType:[Ljava/lang/String;

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->AT_T:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_5
    aput-object v1, v2, p1

    goto/16 :goto_2

    .line 853
    :cond_6
    const v2, 0x7f0201a7

    goto :goto_3

    .line 854
    :cond_7
    sget-object v1, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->QS_DATA_H:[I

    aget v1, v1, v0

    goto :goto_4

    .line 855
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 859
    :cond_9
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->set3GDataNetType(II)V

    goto/16 :goto_2

    .line 863
    :pswitch_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mHspaDataDistinguishable:Z

    if-eqz v1, :cond_d

    .line 864
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataTypeIconId:[I

    sget-boolean v4, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->AT_T:Z

    if-eqz v4, :cond_a

    :goto_6
    aput v2, v1, p1

    .line 865
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSDataTypeIconId:[I

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->AT_T:Z

    if-eqz v1, :cond_b

    sget-object v1, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->QS_DATA_4G:[I

    aget v1, v1, v0

    :goto_7
    aput v1, v2, p1

    .line 866
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionDataType:[Ljava/lang/String;

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->AT_T:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_8
    aput-object v1, v2, p1

    goto/16 :goto_2

    .line 864
    :cond_a
    const v2, 0x7f0201a8

    goto :goto_6

    .line 865
    :cond_b
    sget-object v1, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->QS_DATA_H_P:[I

    aget v1, v1, v0

    goto :goto_7

    .line 866
    :cond_c
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 870
    :cond_d
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->set3GDataNetType(II)V

    goto/16 :goto_2

    .line 875
    :pswitch_6
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mShowAtLeastThreeGees:Z

    if-nez v1, :cond_e

    .line 876
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataTypeIconId:[I

    const v2, 0x7f0201a1

    aput v2, v1, p1

    .line 877
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSDataTypeIconId:[I

    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->QS_DATA_1X:[I

    aget v2, v2, v0

    aput v2, v1, p1

    .line 878
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionDataType:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContext:Landroid/content/Context;

    const v4, 0x7f0600ea

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    goto/16 :goto_2

    .line 882
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->setFailDataNetType(I)V

    goto/16 :goto_2

    .line 889
    :pswitch_7
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->set3GDataNetType(II)V

    goto/16 :goto_2

    .line 892
    :pswitch_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f09000e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 893
    if-eqz v1, :cond_f

    .line 894
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataTypeIconId:[I

    aput v2, v1, p1

    .line 895
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSDataTypeIconId:[I

    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->QS_DATA_4G:[I

    aget v2, v2, v0

    aput v2, v1, p1

    .line 896
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionDataType:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    goto/16 :goto_2

    .line 899
    :cond_f
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataTypeIconId:[I

    const v2, 0x7f0201a9

    aput v2, v1, p1

    .line 900
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSDataTypeIconId:[I

    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->QS_DATA_LTE:[I

    aget v2, v2, v0

    aput v2, v1, p1

    .line 901
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionDataType:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContext:Landroid/content/Context;

    const v4, 0x7f0600e9

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    goto/16 :goto_2

    .line 909
    :cond_10
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->set3GDataNetType(II)V

    goto/16 :goto_2

    .line 830
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method private final updateSimState(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 664
    const-string v3, "ss"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 665
    .local v2, stateExtra:Ljava/lang/String;
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 666
    const-string v3, "StatusBar.AsusNetworkControllerDualSim"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSimState stateExtra="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_0
    const-string v3, "slot"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 669
    .local v1, slot:I
    const-string v3, "ABSENT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 670
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v4, v3, v1

    .line 690
    :goto_0
    return-void

    .line 672
    :cond_1
    const-string v3, "READY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 673
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v4, v3, v1

    goto :goto_0

    .line 675
    :cond_2
    const-string v3, "LOCKED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 676
    const-string v3, "reason"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 678
    .local v0, lockedReason:Ljava/lang/String;
    const-string v3, "PIN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 679
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v4, v3, v1

    goto :goto_0

    .line 681
    :cond_3
    const-string v3, "PUK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 682
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v4, v3, v1

    goto :goto_0

    .line 685
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v4, v3, v1

    goto :goto_0

    .line 688
    .end local v0           #lockedReason:Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v4, v3, v1

    goto :goto_0
.end method

.method private final updateTelephonySignalStrength(I)V
    .locals 9

    .prologue
    const v4, 0x7f0201db

    const v3, 0x7f020194

    const v8, 0x7f020122

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 735
    move v0, v2

    .line 736
    :goto_0
    const/4 v5, 0x2

    if-ge v0, v5, :cond_15

    .line 737
    if-ne p1, v0, :cond_1

    .line 736
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 740
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5, v0}, Landroid/telephony/TelephonyManager;->isSimOff(I)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v5, v5, v0

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v5, v6, :cond_0

    :cond_2
    move v0, v2

    .line 745
    :goto_1
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->getDataSimId()I

    move-result v0

    if-ne v0, p1, :cond_6

    move v0, v1

    .line 746
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataConnected:[Z

    aget-boolean v5, v5, p1

    if-eqz v5, :cond_7

    .line 747
    :goto_3
    sget-boolean v5, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->DEBUG:Z

    if-eqz v5, :cond_3

    .line 748
    const-string v5, "StatusBar.AsusNetworkControllerDualSim"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateTelephonySignalStrength: slotIndex ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " connectIndex ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5, p1}, Landroid/telephony/TelephonyManager;->isSimOff(I)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v5, v5, p1

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v5, v6, :cond_8

    .line 751
    :cond_4
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 752
    const-string v0, "StatusBar.AsusNetworkControllerDualSim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPhone.isSimOff("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, p1}, Landroid/telephony/TelephonyManager;->isSimOff(I)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const-string v0, "StatusBar.AsusNetworkControllerDualSim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSimState["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v3, v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mMobileNumId:[I

    aput v2, v0, p1

    .line 756
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mPhoneSignalIconId:[I

    aput v2, v0, p1

    .line 757
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataSignalIconId:[I

    aput v2, v0, p1

    .line 758
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSPhoneSignalIconId:[I

    aput v2, v0, p1

    .line 798
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataSignalIconId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mPhoneSignalIconId:[I

    aget v1, v1, p1

    aput v1, v0, p1

    .line 799
    return-void

    :cond_6
    move v0, v2

    .line 745
    goto/16 :goto_2

    :cond_7
    move v1, v2

    .line 746
    goto/16 :goto_3

    .line 759
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->hasService(I)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->isEmergencyOnly(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 760
    :cond_9
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->DEBUG:Z

    if-eqz v1, :cond_a

    .line 761
    const-string v1, "StatusBar.AsusNetworkControllerDualSim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasService("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ") ="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->hasService(I)Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    const-string v1, "StatusBar.AsusNetworkControllerDualSim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEmergencyOnly("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ") ="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->isEmergencyOnly(I)Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mMobileNumId:[I

    sget-object v2, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->TELEPHONY_NUM:[[I

    aget-object v2, v2, p1

    aget v0, v2, v0

    aput v0, v1, p1

    .line 765
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mPhoneSignalIconId:[I

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->AT_T:Z

    if-eqz v0, :cond_b

    move v0, v3

    :goto_5
    aput v0, v1, p1

    .line 766
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataSignalIconId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mPhoneSignalIconId:[I

    aget v1, v1, p1

    aput v1, v0, p1

    .line 767
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSPhoneSignalIconId:[I

    aput v8, v0, p1

    goto/16 :goto_4

    :cond_b
    move v0, v4

    .line 765
    goto :goto_5

    .line 769
    :cond_c
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mMobileNumId:[I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->TELEPHONY_NUM:[[I

    aget-object v5, v5, p1

    aget v5, v5, v0

    aput v5, v2, p1

    .line 770
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v2, v2, p1

    if-nez v2, :cond_f

    .line 771
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->CHATTY:Z

    if-eqz v0, :cond_d

    const-string v0, "StatusBar.AsusNetworkControllerDualSim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTelephonySignalStrength: mSignalStrength["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] == null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mPhoneSignalIconId:[I

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->AT_T:Z

    if-eqz v1, :cond_e

    :goto_6
    aput v3, v0, p1

    .line 773
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataSignalIconId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mPhoneSignalIconId:[I

    aget v1, v1, p1

    aput v1, v0, p1

    .line 774
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSPhoneSignalIconId:[I

    aput v8, v0, p1

    goto/16 :goto_4

    :cond_e
    move v3, v4

    .line 772
    goto :goto_6

    .line 778
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->isCdma(I)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mAlwaysShowCdmaRssi:Z

    if-eqz v2, :cond_11

    .line 779
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastSignalLevel:[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v2

    aput v2, v3, p1

    .line 780
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->DEBUG:Z

    if-eqz v3, :cond_10

    const-string v3, "StatusBar.AsusNetworkControllerDualSim"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAlwaysShowCdmaRssi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mAlwaysShowCdmaRssi:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " set to cdmaLevel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " instead of level="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :cond_10
    :goto_7
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->AT_T:Z

    if-eqz v3, :cond_12

    sget-object v3, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->TELEPHONY_ATT_SIGNAL_STRENGTH:[[I

    aget-object v0, v3, v0

    .line 790
    :goto_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mPhoneSignalIconId:[I

    aget v0, v0, v2

    aput v0, v3, p1

    .line 791
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSPhoneSignalIconId:[I

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->AT_T:Z

    if-eqz v0, :cond_13

    sget-object v0, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->QS_TELEPHONY_ATT_SIGNAL_STRENGTH:[[I

    aget-object v0, v0, v1

    aget v0, v0, v2

    :goto_9
    aput v0, v3, p1

    .line 793
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionPhoneSignal:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContext:Landroid/content/Context;

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->AT_T:Z

    if-eqz v0, :cond_14

    sget-object v0, Lcom/android/systemui/statusbar/policy/AsusAccessibilityContentDescriptions;->PHONE_ATT_SIGNAL_STRENGTH:[I

    aget v0, v0, v2

    :goto_a
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, p1

    goto/16 :goto_4

    .line 784
    :cond_11
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastSignalLevel:[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v2

    aput v2, v3, p1

    goto :goto_7

    .line 787
    :cond_12
    sget-object v3, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->TELEPHONY_SIGNAL_STRENGTH:[[I

    aget-object v0, v3, v0

    goto :goto_8

    .line 791
    :cond_13
    sget-object v0, Lcom/android/systemui/statusbar/policy/AsusTelephonyIconsDualSim;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    aget-object v0, v0, v1

    aget v0, v0, v2

    goto :goto_9

    .line 793
    :cond_14
    sget-object v0, Lcom/android/systemui/statusbar/policy/AsusAccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v0, v0, v2

    goto :goto_a

    :cond_15
    move v0, v1

    goto/16 :goto_1
.end method

.method private updateWifiIcons()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1157
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiConnected:Z

    if-eqz v0, :cond_0

    .line 1158
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiLevel:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiIconId:I

    .line 1159
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiLevel:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSWifiIconId:I

    .line 1160
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/statusbar/policy/AsusAccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiLevel:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionWifi:Ljava/lang/String;

    .line 1172
    :goto_0
    return-void

    .line 1163
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataAndWifiStacked:Z

    if-eqz v0, :cond_1

    .line 1164
    iput v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiIconId:I

    .line 1165
    iput v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSWifiIconId:I

    .line 1170
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContext:Landroid/content/Context;

    const v1, 0x7f0600cf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionWifi:Ljava/lang/String;

    goto :goto_0

    .line 1167
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiEnabled:Z

    if-eqz v0, :cond_3

    const v0, 0x7f020206

    :goto_2
    iput v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiIconId:I

    .line 1168
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiEnabled:Z

    if-eqz v0, :cond_2

    const v1, 0x7f020149

    :cond_2
    iput v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSWifiIconId:I

    goto :goto_1

    :cond_3
    move v0, v1

    .line 1167
    goto :goto_2
.end method

.method private updateWifiState(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1122
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1123
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1124
    const-string v0, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiEnabled:Z

    .line 1153
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->updateWifiIcons()V

    .line 1154
    return-void

    :cond_1
    move v0, v2

    .line 1124
    goto :goto_0

    .line 1127
    :cond_2
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1128
    const-string v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 1130
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiConnected:Z

    .line 1131
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiConnected:Z

    .line 1133
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiConnected:Z

    if-eqz v0, :cond_6

    if-nez v3, :cond_6

    .line 1135
    const-string v0, "wifiInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    .line 1136
    if-nez v0, :cond_3

    .line 1137
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1139
    :cond_3
    if-eqz v0, :cond_5

    .line 1140
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiSsid:Ljava/lang/String;

    goto :goto_1

    :cond_4
    move v1, v2

    .line 1131
    goto :goto_2

    .line 1142
    :cond_5
    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiSsid:Ljava/lang/String;

    goto :goto_1

    .line 1144
    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiConnected:Z

    if-nez v0, :cond_0

    .line 1145
    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiSsid:Ljava/lang/String;

    goto :goto_1

    .line 1147
    :cond_7
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1148
    const-string v0, "newRssi"

    const/16 v1, -0xc8

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiRssi:I

    .line 1149
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiRssi:I

    sget v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiLevel:I

    goto :goto_1
.end method

.method private updateWimaxIcons()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1223
    move v0, v1

    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_3

    .line 1224
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mIsWimaxEnabled:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_2

    .line 1225
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxConnected:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_1

    .line 1226
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxIdle:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    .line 1227
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxIconId:[I

    sget v3, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_IDLE:I

    aput v3, v2, v0

    .line 1231
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionWimax:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/statusbar/policy/AsusAccessibilityContentDescriptions;->WIMAX_CONNECTION_STRENGTH:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxSignal:[I

    aget v5, v5, v0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1223
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1229
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxIconId:[I

    sget-object v3, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_SIGNAL_STRENGTH:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mInetCondition:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxSignal:[I

    aget v4, v4, v0

    aget v3, v3, v4

    aput v3, v2, v0

    goto :goto_1

    .line 1234
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxIconId:[I

    sget v3, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_DISCONNECTED:I

    aput v3, v2, v0

    .line 1235
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionWimax:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContext:Landroid/content/Context;

    const v4, 0x7f0600d4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_2

    .line 1238
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxIconId:[I

    aput v1, v2, v0

    goto :goto_2

    .line 1241
    :cond_3
    return-void
.end method

.method private final updateWimaxState(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1198
    const-string v2, "slot"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1199
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1200
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxConnected:[Z

    aget-boolean v4, v4, v3

    .line 1201
    const-string v4, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1202
    const-string v2, "4g_state"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1204
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mIsWimaxEnabled:[Z

    const/4 v5, 0x3

    if-ne v2, v5, :cond_1

    :goto_0
    aput-boolean v0, v4, v3

    .line 1218
    :cond_0
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->updateDataNetType(I)V

    .line 1219
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->updateWimaxIcons()V

    .line 1220
    return-void

    :cond_1
    move v0, v1

    .line 1204
    goto :goto_0

    .line 1206
    :cond_2
    const-string v4, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1207
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxSignal:[I

    const-string v2, "newSignalLevel"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v3

    goto :goto_1

    .line 1208
    :cond_3
    const-string v4, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1209
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxState:[I

    const-string v4, "WimaxState"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    aput v4, v2, v3

    .line 1211
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxExtraState:[I

    const-string v4, "WimaxStateDetail"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    aput v4, v2, v3

    .line 1214
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxConnected:[Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxState:[I

    aget v2, v2, v3

    const/4 v5, 0x7

    if-ne v2, v5, :cond_4

    move v2, v0

    :goto_2
    aput-boolean v2, v4, v3

    .line 1216
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxIdle:[Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxExtraState:[I

    aget v4, v4, v3

    const/4 v5, 0x6

    if-ne v4, v5, :cond_5

    :goto_3
    aput-boolean v0, v2, v3

    goto :goto_1

    :cond_4
    move v2, v1

    .line 1214
    goto :goto_2

    :cond_5
    move v0, v1

    .line 1216
    goto :goto_3
.end method


# virtual methods
.method public addCombinedLabelView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    return-void
.end method

.method public addEmergencyLabelView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mEmergencyLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    return-void
.end method

.method public addMobileLabelView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    return-void
.end method

.method public addSignalCluster(Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$SignalCluster;)V
    .locals 1
    .parameter "cluster"

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$SignalCluster;)V

    .line 399
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1623
    const-string v0, "AsusNetworkControllerDualSim state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1624
    const-string v2, "  %s network type %d (%s)"

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mConnected:Z

    if-eqz v0, :cond_0

    const-string v0, "CONNECTED"

    :goto_0
    aput-object v0, v3, v1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mConnectedNetworkType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mConnectedNetworkTypeName:Ljava/lang/String;

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1627
    const-string v0, "  - telephony ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1628
    const-string v0, "  mHspaDataDistinguishable="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1629
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mHspaDataDistinguishable:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1630
    const-string v0, "  mNetworkNameDefault="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1631
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1632
    const-string v0, "  mNetworkNameSeparator="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1633
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mNetworkNameSeparator:Ljava/lang/String;

    const-string v2, "\n"

    const-string v3, "\\n"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v0, v1

    .line 1634
    :goto_1
    if-ge v0, v6, :cond_1

    .line 1635
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  hasService("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1636
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->hasService(I)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1637
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mDataConnected["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1638
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataConnected:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1639
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mSimState["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1640
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, v0

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1641
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mPhoneState["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1642
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mPhoneState:[I

    aget v2, v2, v0

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1643
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mDataState["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1644
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataState:[I

    aget v2, v2, v0

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1645
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mDataActivity["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1646
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataActivity:[I

    aget v2, v2, v0

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1647
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mDataNetType["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1648
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataNetType:[I

    aget v2, v2, v0

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1649
    const-string v2, "/"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1650
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataNetType:[I

    aget v2, v2, v0

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1651
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mServiceState["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1652
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v2, v2, v0

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1653
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mSignalStrength["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1654
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v2, v2, v0

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1655
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mLastSignalLevel["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1656
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastSignalLevel:[I

    aget v2, v2, v0

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1657
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mNetworkName["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1658
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mNetworkName:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1659
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mPhoneSignalIconId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1660
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mPhoneSignalIconId:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1661
    const-string v2, "/"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1662
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mQSPhoneSignalIconId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1663
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSPhoneSignalIconId:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1664
    const-string v2, "/"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1665
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mPhoneSignalIconId:[I

    aget v2, v2, v0

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1666
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mDataSignalIconId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1667
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataSignalIconId:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1668
    const-string v2, "/"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1669
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataSignalIconId:[I

    aget v2, v2, v0

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1670
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mDataTypeIconId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1671
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataTypeIconId:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1672
    const-string v2, "/"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1673
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataTypeIconId:[I

    aget v2, v2, v0

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1674
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mQSDataTypeIconId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1675
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSDataTypeIconId:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1676
    const-string v2, "/"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1677
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSDataTypeIconId:[I

    aget v2, v2, v0

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1678
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mLastPhoneSignalIconId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1679
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastPhoneSignalIconId:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1680
    const-string v2, "/"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1681
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastPhoneSignalIconId:[I

    aget v2, v2, v0

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1682
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mLastDataTypeIconId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1683
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastDataTypeIconId:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1684
    const-string v2, "/"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1685
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastDataTypeIconId:[I

    aget v2, v2, v0

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1634
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1624
    :cond_0
    const-string v0, "DISCONNECTED"

    goto/16 :goto_0

    .line 1688
    :cond_1
    const-string v0, "  - wifi ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1689
    const-string v0, "  mWifiEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1690
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1691
    const-string v0, "  mWifiConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1692
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1693
    const-string v0, "  mWifiRssi="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1694
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiRssi:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1695
    const-string v0, "  mWifiLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1696
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1697
    const-string v0, "  mWifiSsid="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1698
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiSsid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1699
    const-string v0, "  mWifiIconId=0x%08x/%s"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiIconId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiIconId:I

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1701
    const-string v0, "  mQSWifiIconId=0x%08x/%s"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSWifiIconId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSWifiIconId:I

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1703
    const-string v0, "  mWifiActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1704
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiActivity:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1706
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxSupported:Z

    if-eqz v0, :cond_2

    .line 1707
    const-string v0, "  - wimax ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v0, v1

    .line 1708
    :goto_2
    if-ge v0, v6, :cond_2

    .line 1709
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mIsWimaxEnabled["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mIsWimaxEnabled:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1710
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mWimaxConnected["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxConnected:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1711
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mWimaxIdle["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxIdle:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1712
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mWimaxIconId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]=0x%08x/%s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxIconId:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxIconId:[I

    aget v4, v4, v0

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1714
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mWimaxSignal["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]=%d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxSignal:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1715
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mWimaxState["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]=%d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxState:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1716
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mWimaxExtraState["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]=%d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxExtraState:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1708
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 1720
    :cond_2
    const-string v0, "  - Bluetooth ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1721
    const-string v0, "  mBtReverseTethered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1722
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mBluetoothTethered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1724
    const-string v0, "  - connectivity ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1725
    const-string v0, "  mInetCondition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1726
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mInetCondition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1728
    const-string v0, "  - icons ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1729
    const-string v0, "  mLastWifiIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1730
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastWifiIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1731
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1732
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastWifiIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1733
    const-string v0, "  mLastCombinedLabel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1734
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1735
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1736
    return-void
.end method

.method getDataSimId()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1739
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data_sim"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1742
    if-gez v1, :cond_0

    .line 1745
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method getDataSlot()I
    .locals 1

    .prologue
    .line 1783
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->getDataSimId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isCdmaEri(I)Z
    .locals 4
    .parameter "slot"

    .prologue
    const/4 v2, 0x1

    .line 921
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    if-eqz v3, :cond_1

    .line 922
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 923
    .local v0, iconIndex:I
    if-eq v0, v2, :cond_1

    .line 924
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    .line 925
    .local v1, iconMode:I
    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_1

    .line 931
    .end local v0           #iconIndex:I
    .end local v1           #iconMode:I
    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isEmergencyOnly()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 381
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->isEmergencyOnly(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->isEmergencyOnly(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isEmergencyOnly(I)Z
    .locals 1
    .parameter "slot"

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isNetworkRoaming(I)Z
    .locals 2
    .parameter "slot"

    .prologue
    .line 725
    const/4 v0, 0x0

    .line 726
    .local v0, ret:Z
    if-nez p1, :cond_1

    .line 727
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 731
    :cond_0
    :goto_0
    return v0

    .line 728
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 729
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mPhone2:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    goto :goto_0
.end method

.method notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/AsusNetworkController$NetworkSignalChangedCallback;)V
    .locals 19
    .parameter "cb"

    .prologue
    .line 457
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiEnabled:Z

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiConnected:Z

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mHasMobileDataFeature:Z

    if-nez v1, :cond_5

    :cond_0
    const/4 v2, 0x1

    .line 458
    .local v2, wifiEnabled:Z
    :goto_0
    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiSsid:Ljava/lang/String;

    .line 460
    .local v7, wifiDesc:Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiSsid:Ljava/lang/String;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiActivity:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiActivity:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_7

    :cond_1
    const/4 v4, 0x1

    .line 463
    .local v4, wifiIn:Z
    :goto_2
    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiSsid:Ljava/lang/String;

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiActivity:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiActivity:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_8

    :cond_2
    const/4 v5, 0x1

    .line 466
    .local v5, wifiOut:Z
    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSWifiIconId:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/systemui/statusbar/policy/AsusNetworkController$NetworkSignalChangedCallback;->onWifiSignalChanged(ZIZZLjava/lang/String;Ljava/lang/String;)V

    .line 468
    const/16 v18, 0x0

    .line 469
    .local v18, dataSignalIconId:I
    const-string v17, ""

    .line 470
    .local v17, contentDescriptionPhoneSignal:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataConnected:[Z

    const/4 v3, 0x0

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataActivity:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataActivity:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    const/4 v3, 0x1

    if-ne v1, v3, :cond_9

    :cond_3
    const/4 v13, 0x1

    .line 472
    .local v13, mobileIn:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataConnected:[Z

    const/4 v3, 0x0

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataActivity:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataActivity:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    const/4 v3, 0x2

    if-ne v1, v3, :cond_a

    :cond_4
    const/4 v14, 0x1

    .line 474
    .local v14, mobileOut:Z
    :goto_5
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->isEmergencyOnly(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 475
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSPhoneSignalIconId:[I

    const/4 v3, 0x0

    aget v10, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionPhoneSignal:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v11, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSDataTypeIconId:[I

    const/4 v3, 0x0

    aget v12, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionDataType:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v15, v1, v3

    const/16 v16, 0x0

    move-object/from16 v8, p1

    invoke-interface/range {v8 .. v16}, Lcom/android/systemui/statusbar/policy/AsusNetworkController$NetworkSignalChangedCallback;->onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v11, v17

    .end local v17           #contentDescriptionPhoneSignal:Ljava/lang/String;
    .local v11, contentDescriptionPhoneSignal:Ljava/lang/String;
    move/from16 v10, v18

    .line 489
    .end local v18           #dataSignalIconId:I
    .local v10, dataSignalIconId:I
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mAirplaneMode:Z

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/AsusNetworkController$NetworkSignalChangedCallback;->onAirplaneModeChanged(Z)V

    .line 490
    return-void

    .line 457
    .end local v2           #wifiEnabled:Z
    .end local v4           #wifiIn:Z
    .end local v5           #wifiOut:Z
    .end local v7           #wifiDesc:Ljava/lang/String;
    .end local v10           #dataSignalIconId:I
    .end local v11           #contentDescriptionPhoneSignal:Ljava/lang/String;
    .end local v13           #mobileIn:Z
    .end local v14           #mobileOut:Z
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 458
    .restart local v2       #wifiEnabled:Z
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 460
    .restart local v7       #wifiDesc:Ljava/lang/String;
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 463
    .restart local v4       #wifiIn:Z
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 470
    .restart local v5       #wifiOut:Z
    .restart local v17       #contentDescriptionPhoneSignal:Ljava/lang/String;
    .restart local v18       #dataSignalIconId:I
    :cond_9
    const/4 v13, 0x0

    goto :goto_4

    .line 472
    .restart local v13       #mobileIn:Z
    :cond_a
    const/4 v14, 0x0

    goto :goto_5

    .line 479
    .restart local v14       #mobileOut:Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataSignalIconId:[I

    const/4 v3, 0x0

    aget v10, v1, v3

    .line 480
    .end local v18           #dataSignalIconId:I
    .restart local v10       #dataSignalIconId:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionPhoneSignal:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v11, v1, v3

    .line 481
    .end local v17           #contentDescriptionPhoneSignal:Ljava/lang/String;
    .restart local v11       #contentDescriptionPhoneSignal:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxIconId:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    if-eqz v1, :cond_c

    .line 482
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxIconId:[I

    const/4 v3, 0x0

    aget v10, v1, v3

    .line 483
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionWimax:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v11, v1, v3

    .line 485
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mHasMobileDataFeature:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSDataTypeIconId:[I

    const/4 v3, 0x0

    aget v12, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionDataType:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v15, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mNetworkName:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v16, v1, v3

    move-object/from16 v8, p1

    invoke-interface/range {v8 .. v16}, Lcom/android/systemui/statusbar/policy/AsusNetworkController$NetworkSignalChangedCallback;->onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method notifySignalsChangedCallbacks2(Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$NetworkSignalChangedCallbackExt;)V
    .locals 11
    .parameter "cb"

    .prologue
    const/4 v7, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 494
    const/4 v10, 0x0

    .line 495
    .local v10, dataSignalIconId:I
    const-string v9, ""

    .line 496
    .local v9, contentDescriptionPhoneSignal:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataConnected:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataActivity:[I

    aget v4, v4, v0

    if-eq v4, v7, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataActivity:[I

    aget v4, v4, v0

    if-ne v4, v0, :cond_2

    :cond_0
    move v5, v0

    .line 498
    .local v5, mobileIn:Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataConnected:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataActivity:[I

    aget v4, v4, v0

    if-eq v4, v7, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataActivity:[I

    aget v4, v4, v0

    const/4 v7, 0x2

    if-ne v4, v7, :cond_3

    :cond_1
    move v6, v0

    .line 500
    .local v6, mobileOut:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->isEmergencyOnly(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 501
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSPhoneSignalIconId:[I

    aget v2, v4, v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionPhoneSignal:[Ljava/lang/String;

    aget-object v3, v4, v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSDataTypeIconId:[I

    aget v4, v4, v0

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionDataType:[Ljava/lang/String;

    aget-object v7, v7, v0

    const/4 v8, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$NetworkSignalChangedCallbackExt;->onMobileDataSignalChanged2(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V

    move-object v3, v9

    .end local v9           #contentDescriptionPhoneSignal:Ljava/lang/String;
    .local v3, contentDescriptionPhoneSignal:Ljava/lang/String;
    move v2, v10

    .line 515
    .end local v10           #dataSignalIconId:I
    .local v2, dataSignalIconId:I
    :goto_2
    return-void

    .end local v2           #dataSignalIconId:I
    .end local v3           #contentDescriptionPhoneSignal:Ljava/lang/String;
    .end local v5           #mobileIn:Z
    .end local v6           #mobileOut:Z
    .restart local v9       #contentDescriptionPhoneSignal:Ljava/lang/String;
    .restart local v10       #dataSignalIconId:I
    :cond_2
    move v5, v1

    .line 496
    goto :goto_0

    .restart local v5       #mobileIn:Z
    :cond_3
    move v6, v1

    .line 498
    goto :goto_1

    .line 505
    .restart local v6       #mobileOut:Z
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataSignalIconId:[I

    aget v2, v1, v0

    .line 506
    .end local v10           #dataSignalIconId:I
    .restart local v2       #dataSignalIconId:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionPhoneSignal:[Ljava/lang/String;

    aget-object v3, v1, v0

    .line 507
    .end local v9           #contentDescriptionPhoneSignal:Ljava/lang/String;
    .restart local v3       #contentDescriptionPhoneSignal:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxIconId:[I

    aget v1, v1, v0

    if-eqz v1, :cond_5

    .line 508
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxIconId:[I

    aget v2, v1, v0

    .line 509
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionWimax:[Ljava/lang/String;

    aget-object v3, v1, v0

    .line 511
    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mHasMobileDataFeature:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSDataTypeIconId:[I

    aget v4, v4, v0

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionDataType:[Ljava/lang/String;

    aget-object v7, v7, v0

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mNetworkName:[Ljava/lang/String;

    aget-object v8, v8, v0

    move-object v0, p1

    invoke-interface/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$NetworkSignalChangedCallbackExt;->onMobileDataSignalChanged2(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 523
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 524
    .local v6, action:Ljava/lang/String;
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 525
    const-string v0, "StatusBar.AsusNetworkControllerDualSim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_0
    const-string v0, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 530
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->updateWifiState(Landroid/content/Intent;)V

    .line 531
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->refreshViews()V

    .line 568
    :cond_2
    :goto_0
    return-void

    .line 532
    :cond_3
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "com.pekall.intent.SIM_STATE_CHANGED2"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 534
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->updateSimState(Landroid/content/Intent;)V

    .line 535
    const-string v0, "slot"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->updateTelephonySignalStrength(I)V

    .line 536
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->refreshViews()V

    goto :goto_0

    .line 537
    :cond_5
    const-string v0, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "com.pekall.intent.SPN_STRINGS_UPDATED.phone2"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 539
    :cond_6
    const-string v0, "slot"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 540
    .local v1, slot:I
    const-string v0, "showSpn"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v0, "spn"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "showPlmn"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v0, "plmn"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->updateNetworkName(IZLjava/lang/String;ZLjava/lang/String;)V

    .line 544
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->refreshViews()V

    goto :goto_0

    .line 545
    .end local v1           #slot:I
    :cond_7
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 547
    :cond_8
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->updateConnectivity(Landroid/content/Intent;)V

    .line 548
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->refreshViews()V

    goto :goto_0

    .line 549
    :cond_9
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 550
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->refreshLocale()V

    .line 551
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->refreshViews()V

    goto :goto_0

    .line 552
    :cond_a
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 553
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->updateAirplaneMode()V

    .line 554
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->refreshViews()V

    goto/16 :goto_0

    .line 555
    :cond_b
    const-string v0, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 558
    :cond_c
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->updateWimaxState(Landroid/content/Intent;)V

    .line 559
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->refreshViews()V

    goto/16 :goto_0

    .line 560
    :cond_d
    const-string v0, "intel.intent.action.MODEM_FAST_OOS_IND"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 561
    const-string v0, "phone"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 562
    .local v7, phoneName:Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->convertToSlotId(Ljava/lang/String;)I

    move-result v1

    .line 563
    .restart local v1       #slot:I
    const-string v0, "state"

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 564
    .local v8, toos:Z
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mToos:[Z

    aget-boolean v0, v0, v1

    if-eq v8, v0, :cond_2

    .line 565
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mToos:[Z

    aput-boolean v8, v0, v1

    .line 566
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->updateTelephonySignalStrength(I)V

    goto/16 :goto_0
.end method

.method public refreshSignalCluster(Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$SignalCluster;)V
    .locals 17
    .parameter "cluster"

    .prologue
    .line 412
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mRoamTypeIconId:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mRoamTypeIconId:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$SignalCluster;->setRoamTypeIcon(II)V

    .line 413
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mAirplaneMode:Z

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$SignalCluster;->setIsAirplaneMode(Z)V

    .line 415
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mEthernetConnected:Z

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mEthernetActivityIconId:I

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$SignalCluster;->setEthernetIndicators(ZI)V

    .line 418
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiEnabled:Z

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiConnected:Z

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mHasMobileDataFeature:Z

    if-nez v1, :cond_3

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiIconId:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiActivityIconId:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$SignalCluster;->setWifiIndicators(ZIILjava/lang/String;)V

    .line 425
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataSignalIconId:[I

    const/4 v2, 0x0

    aget v15, v1, v2

    .line 426
    .local v15, dataSignalIconId:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionPhoneSignal:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v6, v1, v2

    .line 427
    .local v6, contentDescriptionPhoneSignal:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxIconId:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-eqz v1, :cond_1

    .line 428
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxIconId:[I

    const/4 v2, 0x0

    aget v15, v1, v2

    .line 429
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionWimax:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v6, v1, v2

    .line 432
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataSignalIconId:[I

    const/4 v2, 0x1

    aget v16, v1, v2

    .line 433
    .local v16, dataSignalIconId2:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionPhoneSignal:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v12, v1, v2

    .line 434
    .local v12, contentDescriptionPhoneSignal2:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxIconId:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    if-eqz v1, :cond_2

    .line 435
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxIconId:[I

    const/4 v2, 0x1

    aget v16, v1, v2

    .line 436
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionWimax:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v12, v1, v2

    .line 439
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mHasMobileDataFeature:Z

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mShowPhoneRSSIForData:Z

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mPhoneSignalIconId:[I

    const/4 v3, 0x0

    aget v3, v1, v3

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mMobileActivityIconId:[I

    const/4 v4, 0x0

    aget v4, v1, v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataTypeIconId:[I

    const/4 v5, 0x0

    aget v5, v1, v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionDataType:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v7, v1, v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mMobileNumId:[I

    const/4 v8, 0x0

    aget v8, v1, v8

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mShowPhoneRSSIForData:Z

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mPhoneSignalIconId:[I

    const/4 v9, 0x1

    aget v9, v1, v9

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mMobileActivityIconId:[I

    const/4 v10, 0x1

    aget v10, v1, v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataTypeIconId:[I

    const/4 v11, 0x1

    aget v11, v1, v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionDataType:[Ljava/lang/String;

    const/4 v13, 0x1

    aget-object v13, v1, v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mMobileNumId:[I

    const/4 v14, 0x1

    aget v14, v1, v14

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v14}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$SignalCluster;->setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;I)V

    .line 453
    return-void

    .line 418
    .end local v6           #contentDescriptionPhoneSignal:Ljava/lang/String;
    .end local v12           #contentDescriptionPhoneSignal2:Ljava/lang/String;
    .end local v15           #dataSignalIconId:I
    .end local v16           #dataSignalIconId2:I
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_0

    .restart local v6       #contentDescriptionPhoneSignal:Ljava/lang/String;
    .restart local v12       #contentDescriptionPhoneSignal2:Ljava/lang/String;
    .restart local v15       #dataSignalIconId:I
    .restart local v16       #dataSignalIconId2:I
    :cond_4
    move v3, v15

    .line 439
    goto :goto_1

    :cond_5
    move/from16 v9, v16

    goto :goto_2
.end method

.method refreshViews()V
    .locals 13

    .prologue
    .line 1302
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContext:Landroid/content/Context;

    .line 1303
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->getDataSimId()I

    move-result v5

    .line 1304
    const-string v2, ""

    .line 1305
    const-string v0, ""

    .line 1306
    const-string v1, ""

    .line 1308
    const/4 v0, 0x2

    new-array v6, v0, [Z

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->isEmergencyOnly(I)Z

    move-result v3

    aput-boolean v3, v6, v0

    const/4 v0, 0x1

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->isEmergencyOnly(I)Z

    move-result v3

    aput-boolean v3, v6, v0

    .line 1310
    const/4 v0, 0x0

    move v12, v0

    move-object v0, v1

    move-object v1, v2

    move v2, v12

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_c

    .line 1311
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mHasMobileDataFeature:Z

    if-nez v3, :cond_1

    .line 1312
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataSignalIconId:[I

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mPhoneSignalIconId:[I

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSPhoneSignalIconId:[I

    const/4 v9, 0x0

    aput v9, v8, v2

    aput v9, v7, v2

    aput v9, v3, v2

    .line 1310
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1314
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->checkDataConnected(I)V

    .line 1316
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataConnected:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_5

    .line 1317
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mNetworkName:[Ljava/lang/String;

    aget-object v0, v0, v2

    .line 1330
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataConnected:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_b

    .line 1331
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->AT_T:Z

    if-nez v3, :cond_a

    sget-boolean v3, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->IS_CUCC:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mIsMobileDataEnabled:Z

    if-eqz v3, :cond_a

    if-ne v2, v5, :cond_a

    .line 1332
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataActivity:[I

    aget v3, v3, v2

    packed-switch v3, :pswitch_data_0

    .line 1343
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mMobileActivityIconId:[I

    const v7, 0x7f0201da

    aput v7, v3, v2

    .line 1349
    :goto_3
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->AT_T:Z

    if-eqz v3, :cond_4

    .line 1350
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->setShowAtt4G(I)V

    .line 1352
    :cond_4
    if-ne v5, v2, :cond_0

    .line 1354
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionDataType:[Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    move-object v1, v0

    goto :goto_1

    .line 1318
    :cond_5
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mConnected:Z

    if-nez v3, :cond_6

    aget-boolean v3, v6, v2

    if-eqz v3, :cond_9

    .line 1319
    :cond_6
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->hasService(I)Z

    move-result v3

    if-nez v3, :cond_7

    aget-boolean v3, v6, v2

    if-eqz v3, :cond_2

    .line 1320
    :cond_7
    if-lez v2, :cond_8

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mNetworkName:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 1321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1323
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mNetworkName:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1326
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v3, 0x7f06010f

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1334
    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mMobileActivityIconId:[I

    const v7, 0x7f0201d8

    aput v7, v3, v2

    goto :goto_3

    .line 1337
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mMobileActivityIconId:[I

    const v7, 0x7f0201dc

    aput v7, v3, v2

    goto/16 :goto_3

    .line 1340
    :pswitch_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mMobileActivityIconId:[I

    const v7, 0x7f0201d9

    aput v7, v3, v2

    goto/16 :goto_3

    .line 1347
    :cond_a
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mMobileActivityIconId:[I

    const/4 v7, 0x0

    aput v7, v3, v2

    goto/16 :goto_3

    .line 1357
    :cond_b
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mMobileActivityIconId:[I

    const/4 v7, 0x0

    aput v7, v3, v2

    .line 1358
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataTypeIconId:[I

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mRoamTypeIconId:[I

    const/4 v8, 0x0

    aput v8, v7, v2

    aput v8, v3, v2

    .line 1359
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSDataTypeIconId:[I

    const/4 v7, 0x0

    aput v7, v3, v2

    goto/16 :goto_1

    .line 1364
    :cond_c
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiConnected:Z

    if-eqz v2, :cond_16

    .line 1365
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiSsid:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 1366
    const v0, 0x7f060110

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1367
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiActivityIconId:I

    .line 1387
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionWifi:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 1388
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->IS_CUCC:Z

    if-nez v1, :cond_d

    .line 1389
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataTypeIconId:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataTypeIconId:[I

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput v8, v3, v7

    aput v8, v1, v2

    .line 1390
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mMobileActivityIconId:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mMobileActivityIconId:[I

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput v8, v3, v7

    aput v8, v1, v2

    .line 1392
    :cond_d
    const-string v1, ""

    move-object v2, v0

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    .line 1401
    :goto_5
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mBluetoothTethered:Z

    if-eqz v3, :cond_f

    .line 1402
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContext:Landroid/content/Context;

    const v1, 0x7f060097

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1404
    const-string v0, ""

    .line 1405
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContext:Landroid/content/Context;

    const v3, 0x7f0600ef

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 1407
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->IS_CUCC:Z

    if-nez v2, :cond_e

    .line 1408
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataTypeIconId:[I

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataTypeIconId:[I

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, v7, v8

    aput v9, v2, v3

    .line 1409
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mMobileActivityIconId:[I

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mMobileActivityIconId:[I

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, v7, v8

    aput v9, v2, v3

    :cond_e
    move-object v2, v1

    .line 1413
    :cond_f
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mEthernetConnected:Z

    if-eqz v3, :cond_12

    .line 1414
    const v0, 0x7f06011b

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1416
    const-string v0, ""

    .line 1417
    iget v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mEthernetActivityIconId:I

    if-nez v2, :cond_10

    .line 1418
    const v2, 0x7f02017f

    iput v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mEthernetActivityIconId:I

    .line 1420
    :cond_10
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->IS_CUCC:Z

    if-nez v2, :cond_11

    .line 1421
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataTypeIconId:[I

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataTypeIconId:[I

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, v7, v8

    aput v9, v2, v3

    .line 1422
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mMobileActivityIconId:[I

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mMobileActivityIconId:[I

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, v7, v8

    aput v9, v2, v3

    :cond_11
    move-object v2, v1

    .line 1426
    :cond_12
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mAirplaneMode:Z

    if-eqz v3, :cond_20

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mServiceState:[Landroid/telephony/ServiceState;

    const/4 v7, 0x0

    aget-object v3, v3, v7

    if-eqz v3, :cond_13

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->hasService(I)Z

    move-result v3

    if-nez v3, :cond_20

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mServiceState:[Landroid/telephony/ServiceState;

    const/4 v7, 0x0

    aget-object v3, v3, v7

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v3

    if-nez v3, :cond_20

    :cond_13
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mServiceState:[Landroid/telephony/ServiceState;

    const/4 v7, 0x1

    aget-object v3, v3, v7

    if-eqz v3, :cond_14

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->hasService(I)Z

    move-result v3

    if-nez v3, :cond_20

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mServiceState:[Landroid/telephony/ServiceState;

    const/4 v7, 0x1

    aget-object v3, v3, v7

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v3

    if-nez v3, :cond_20

    .line 1432
    :cond_14
    const/4 v3, 0x0

    :goto_6
    const/4 v7, 0x2

    if-ge v3, v7, :cond_18

    .line 1433
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionPhoneSignal:[Ljava/lang/String;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContext:Landroid/content/Context;

    const v9, 0x7f0600f0

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    .line 1435
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mPhoneSignalIconId:[I

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataSignalIconId:[I

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataTypeIconId:[I

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSDataTypeIconId:[I

    const/4 v11, 0x0

    aput v11, v10, v3

    aput v11, v9, v3

    aput v11, v8, v3

    aput v11, v7, v3

    .line 1436
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSPhoneSignalIconId:[I

    const/4 v8, 0x0

    aput v8, v7, v3

    .line 1432
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1369
    :cond_15
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiSsid:Ljava/lang/String;

    .line 1370
    iget v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiActivity:I

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_4

    .line 1381
    :pswitch_3
    const v1, 0x7f0201ff

    iput v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiActivityIconId:I

    goto/16 :goto_4

    .line 1372
    :pswitch_4
    const v1, 0x7f0201fd

    iput v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiActivityIconId:I

    goto/16 :goto_4

    .line 1375
    :pswitch_5
    const v1, 0x7f020200

    iput v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiActivityIconId:I

    goto/16 :goto_4

    .line 1378
    :pswitch_6
    const v1, 0x7f0201fe

    iput v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiActivityIconId:I

    goto/16 :goto_4

    .line 1394
    :cond_16
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mHasMobileDataFeature:Z

    if-eqz v2, :cond_17

    .line 1395
    const-string v2, ""

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    goto/16 :goto_5

    .line 1397
    :cond_17
    const v2, 0x7f06010f

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    goto/16 :goto_5

    .line 1440
    :cond_18
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiConnected:Z

    if-eqz v3, :cond_1e

    .line 1442
    const-string v0, ""

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    .line 1467
    :goto_7
    const/4 v3, 0x0

    :goto_8
    const/4 v4, 0x2

    if-ge v3, v4, :cond_25

    .line 1468
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataTypeIconId:[I

    aget v4, v4, v3

    if-nez v4, :cond_19

    .line 1469
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mMobileActivityIconId:[I

    const/4 v5, 0x0

    aput v5, v4, v3

    .line 1471
    :cond_19
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mAirplaneMode:Z

    if-eqz v4, :cond_1a

    .line 1472
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mPhoneSignalIconId:[I

    aget v4, v4, v3

    if-eqz v4, :cond_1a

    .line 1473
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSPhoneSignalIconId:[I

    const v5, 0x7f020122

    aput v5, v4, v3

    .line 1476
    :cond_1a
    sget-boolean v4, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->AT_T:Z

    if-nez v4, :cond_1d

    .line 1477
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->isCdma(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->isCdmaEri(I)Z

    move-result v4

    if-nez v4, :cond_1c

    :cond_1b
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->isNetworkRoaming(I)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1478
    :cond_1c
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mRoamTypeIconId:[I

    const v5, 0x7f0201aa

    aput v5, v4, v3

    .line 1467
    :cond_1d
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1444
    :cond_1e
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mHasMobileDataFeature:Z

    if-eqz v1, :cond_1f

    .line 1446
    const-string v1, ""

    .line 1451
    :goto_a
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionPhoneSignal:[Ljava/lang/String;

    aget-object v3, v3, v5

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    goto :goto_7

    .line 1448
    :cond_1f
    const v1, 0x7f06010f

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 1449
    goto :goto_a

    .line 1454
    :cond_20
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataConnected:[Z

    const/4 v7, 0x0

    aget-boolean v3, v3, v7

    if-nez v3, :cond_21

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataConnected:[Z

    const/4 v7, 0x1

    aget-boolean v3, v3, v7

    if-nez v3, :cond_21

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiConnected:Z

    if-nez v3, :cond_21

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mBluetoothTethered:Z

    if-nez v3, :cond_21

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxConnected:[Z

    const/4 v7, 0x0

    aget-boolean v3, v3, v7

    if-nez v3, :cond_21

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxConnected:[Z

    const/4 v7, 0x1

    aget-boolean v3, v3, v7

    if-nez v3, :cond_21

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mEthernetConnected:Z

    if-nez v3, :cond_21

    .line 1456
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1457
    const v3, 0x7f090001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_22

    .line 1458
    const v2, 0x7f06010f

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1463
    :goto_b
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mHasMobileDataFeature:Z

    if-eqz v3, :cond_23

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionDataType:[Ljava/lang/String;

    aget-object v3, v3, v5

    :goto_c
    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    :cond_21
    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    goto/16 :goto_7

    .line 1460
    :cond_22
    const-string v2, " "

    goto :goto_b

    .line 1463
    :cond_23
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mContentDescriptionWifi:Ljava/lang/String;

    goto :goto_c

    .line 1480
    :cond_24
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mRoamTypeIconId:[I

    const/4 v5, 0x0

    aput v5, v4, v3

    goto :goto_9

    .line 1485
    :cond_25
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->DEBUG:Z

    if-eqz v3, :cond_26

    .line 1486
    const-string v4, "StatusBar.AsusNetworkControllerDualSim"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshViews connected={"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiConnected:Z

    if-eqz v3, :cond_28

    const-string v3, " wifi"

    :goto_d
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataConnected:[Z

    const/4 v7, 0x0

    aget-boolean v3, v3, v7

    if-eqz v3, :cond_29

    const-string v3, " data[0]"

    :goto_e
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataConnected:[Z

    const/4 v7, 0x1

    aget-boolean v3, v3, v7

    if-eqz v3, :cond_2a

    const-string v3, " data[1]"

    :goto_f
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " } level="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mSignalStrength:[Landroid/telephony/SignalStrength;

    const/4 v7, 0x0

    aget-object v3, v3, v7

    if-nez v3, :cond_2b

    const-string v3, "??"

    :goto_10
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mSignalStrength:[Landroid/telephony/SignalStrength;

    const/4 v7, 0x1

    aget-object v3, v3, v7

    if-nez v3, :cond_2c

    const-string v3, "??"

    :goto_11
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mobileLabel="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " wifiLabel="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " emergencyOnly[0]="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x0

    aget-boolean v3, v6, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " emergencyOnly[1]="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x1

    aget-boolean v3, v6, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " combinedLabel="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " mAirplaneMode="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mAirplaneMode:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " mDataActivity[0]="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataActivity:[I

    const/4 v5, 0x0

    aget v3, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " mDataActivity[1]="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataActivity:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " mPhoneSignalIconId[0]=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mPhoneSignalIconId:[I

    const/4 v5, 0x0

    aget v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " mPhoneSignalIconId[1]=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mPhoneSignalIconId:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " mQSPhoneSignalIconId[0]=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSPhoneSignalIconId:[I

    const/4 v5, 0x0

    aget v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " mQSPhoneSignalIconId[1]=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSPhoneSignalIconId:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " mDataSignalIconId[0]=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataSignalIconId:[I

    const/4 v5, 0x0

    aget v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " mDataSignalIconId[1]=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataSignalIconId:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " mDataTypeIconId[0]=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataTypeIconId:[I

    const/4 v5, 0x0

    aget v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " mDataTypeIconId[1]=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataTypeIconId:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " mQSDataTypeIconId[0]=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSDataTypeIconId:[I

    const/4 v5, 0x0

    aget v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " mQSDataTypeIconId[1]=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSDataTypeIconId:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " mWifiIconId=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiIconId:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " mQSWifiIconId=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mQSWifiIconId:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    :cond_26
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastPhoneSignalIconId:[I

    const/4 v3, 0x0

    aget v0, v0, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mPhoneSignalIconId:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    if-ne v0, v3, :cond_27

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastPhoneSignalIconId:[I

    const/4 v3, 0x1

    aget v0, v0, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mPhoneSignalIconId:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    if-ne v0, v3, :cond_27

    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastWifiIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiIconId:I

    if-ne v0, v3, :cond_27

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastWimaxIconId:[I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxIconId:[I

    if-ne v0, v3, :cond_27

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastDataTypeIconId:[I

    const/4 v3, 0x0

    aget v0, v0, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataTypeIconId:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    if-ne v0, v3, :cond_27

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastDataTypeIconId:[I

    const/4 v3, 0x1

    aget v0, v0, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataTypeIconId:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    if-ne v0, v3, :cond_27

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastMobileActivityIconId:[I

    const/4 v3, 0x0

    aget v0, v0, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mMobileActivityIconId:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    if-ne v0, v3, :cond_27

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastMobileActivityIconId:[I

    const/4 v3, 0x1

    aget v0, v0, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mMobileActivityIconId:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    if-ne v0, v3, :cond_27

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastAirplaneMode:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mAirplaneMode:Z

    if-ne v0, v3, :cond_27

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastLocale:Ljava/util/Locale;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLocale:Ljava/util/Locale;

    if-ne v0, v3, :cond_27

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastEthernetConnected:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mEthernetConnected:Z

    if-ne v0, v3, :cond_27

    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastEthernetActivityIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mEthernetActivityIconId:I

    if-ne v0, v3, :cond_27

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastRoamTypeIconId:[I

    const/4 v3, 0x0

    aget v0, v0, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mRoamTypeIconId:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    if-ne v0, v3, :cond_27

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastRoamTypeIconId:[I

    const/4 v3, 0x1

    aget v0, v0, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mRoamTypeIconId:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    if-eq v0, v3, :cond_2f

    .line 1531
    :cond_27
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$SignalCluster;

    .line 1532
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$SignalCluster;)V

    goto :goto_12

    .line 1486
    :cond_28
    const-string v3, ""

    goto/16 :goto_d

    :cond_29
    const-string v3, ""

    goto/16 :goto_e

    :cond_2a
    const-string v3, ""

    goto/16 :goto_f

    :cond_2b
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mSignalStrength:[Landroid/telephony/SignalStrength;

    const/4 v7, 0x0

    aget-object v3, v3, v7

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_10

    :cond_2c
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mSignalStrength:[Landroid/telephony/SignalStrength;

    const/4 v7, 0x1

    aget-object v3, v3, v7

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_11

    .line 1534
    :cond_2d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController$NetworkSignalChangedCallback;

    .line 1535
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/AsusNetworkController$NetworkSignalChangedCallback;)V

    goto :goto_13

    .line 1537
    :cond_2e
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mSignalsChangedCallbacks2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$NetworkSignalChangedCallbackExt;

    .line 1538
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->notifySignalsChangedCallbacks2(Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$NetworkSignalChangedCallbackExt;)V

    goto :goto_14

    .line 1542
    :cond_2f
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastAirplaneMode:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mAirplaneMode:Z

    if-eq v0, v3, :cond_30

    .line 1543
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mAirplaneMode:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastAirplaneMode:Z

    .line 1546
    :cond_30
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastLocale:Ljava/util/Locale;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLocale:Ljava/util/Locale;

    if-eq v0, v3, :cond_31

    .line 1547
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLocale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastLocale:Ljava/util/Locale;

    .line 1551
    :cond_31
    const/4 v0, 0x0

    :goto_15
    const/4 v3, 0x2

    if-ge v0, v3, :cond_37

    .line 1552
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastPhoneSignalIconId:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mPhoneSignalIconId:[I

    aget v4, v4, v0

    if-eq v3, v4, :cond_32

    .line 1553
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastPhoneSignalIconId:[I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mPhoneSignalIconId:[I

    aget v4, v4, v0

    aput v4, v3, v0

    .line 1555
    :cond_32
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastDataTypeIconId:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataTypeIconId:[I

    aget v4, v4, v0

    if-eq v3, v4, :cond_33

    .line 1556
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastDataTypeIconId:[I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataTypeIconId:[I

    aget v4, v4, v0

    aput v4, v3, v0

    .line 1558
    :cond_33
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastMobileActivityIconId:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mMobileActivityIconId:[I

    aget v4, v4, v0

    if-eq v3, v4, :cond_34

    .line 1559
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastMobileActivityIconId:[I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mMobileActivityIconId:[I

    aget v4, v4, v0

    aput v4, v3, v0

    .line 1561
    :cond_34
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastRoamTypeIconId:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mRoamTypeIconId:[I

    aget v4, v4, v0

    if-eq v3, v4, :cond_35

    .line 1562
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastRoamTypeIconId:[I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mRoamTypeIconId:[I

    aget v4, v4, v0

    aput v4, v3, v0

    .line 1564
    :cond_35
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastMobileNumId:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mMobileNumId:[I

    aget v4, v4, v0

    if-eq v3, v4, :cond_36

    .line 1565
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastMobileNumId:[I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mMobileNumId:[I

    aget v4, v4, v0

    aput v4, v3, v0

    .line 1551
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 1570
    :cond_37
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastWifiIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiIconId:I

    if-eq v0, v3, :cond_38

    .line 1571
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWifiIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastWifiIconId:I

    .line 1575
    :cond_38
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastWimaxIconId:[I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxIconId:[I

    if-eq v0, v3, :cond_39

    .line 1576
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mWimaxIconId:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastWimaxIconId:[I

    .line 1580
    :cond_39
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 1581
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastCombinedLabel:Ljava/lang/String;

    .line 1582
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1583
    const/4 v0, 0x0

    move v3, v0

    :goto_16
    if-ge v3, v4, :cond_3a

    .line 1584
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1585
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1583
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_16

    .line 1590
    :cond_3a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1591
    const/4 v0, 0x0

    move v2, v0

    :goto_17
    if-ge v2, v3, :cond_3c

    .line 1592
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1593
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1594
    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 1595
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1591
    :goto_18
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_17

    .line 1597
    :cond_3b
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_18

    .line 1602
    :cond_3c
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mEmergencyLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1603
    const/4 v0, 0x0

    move v2, v0

    :goto_19
    if-ge v2, v3, :cond_3e

    .line 1604
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mEmergencyLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1605
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->isEmergencyOnly(I)Z

    move-result v4

    if-nez v4, :cond_3d

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->isEmergencyOnly(I)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 1606
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1603
    :goto_1a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_19

    .line 1608
    :cond_3d
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1609
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1a

    .line 1613
    :cond_3e
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastEthernetConnected:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mEthernetConnected:Z

    if-eq v0, v1, :cond_3f

    .line 1614
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mEthernetConnected:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastEthernetConnected:Z

    .line 1617
    :cond_3f
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastEthernetActivityIconId:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mEthernetActivityIconId:I

    if-eq v0, v1, :cond_40

    .line 1618
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mEthernetActivityIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mLastEthernetActivityIconId:I

    .line 1620
    :cond_40
    return-void

    .line 1332
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1370
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method updateNetworkName(IZLjava/lang/String;ZLjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1022
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1023
    const-string v1, "CarrierLabel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNetworkName showSpn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " spn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " showPlmn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " plmn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1027
    const/4 v1, 0x0

    .line 1028
    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    .line 1029
    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    .line 1032
    :cond_1
    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    .line 1033
    if-eqz v1, :cond_2

    .line 1034
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    :cond_2
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    :goto_0
    if-eqz v0, :cond_3

    .line 1040
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mNetworkName:[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    .line 1044
    :goto_1
    return-void

    .line 1042
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mNetworkName:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mNetworkNameDefault:Ljava/lang/String;

    aput-object v1, v0, p1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method
